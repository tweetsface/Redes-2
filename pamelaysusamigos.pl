nombre(pamela).
nombre(fernando).
nombre(tina).
nombre(diego).

apellido(rodriguez).
apellido(barrios).
apellido(vargas).
apellido(rios).

comida(pastel).
comida(ravioles).
comida(estofado).
comida(ensalada).

mujer(pamela).
mujer(tina).

hombre(fernando).
hombre(diego).

lleva(N,A,estofado):- nombre(N), N\=fernando, mujer(N) ,apellido(A), A\=rodriguez,A\=rios,A\=barrios.

lleva(N,rodriguez,pastel):- nombre(N), N\=fernando, hombre(N).

lleva(N,barrios,ensalada):-nombre(N), N\=fernando, N\=diego,N\=tina .

lleva(N,A,ravioles):-nombre(N),hombre(N),apellido(A), A\=rodriguez, A\=barrios.

diferentes(A,B,C,D):- A \=B, A\=C, A\=D, B\=C, B\=D, C\=D.
respuesta([Nom1, Ape1,Com1],[Nom2, Ape2,Com2],[Nom3, Ape3,Com3],[Nom4, Ape4,Com4]):-
    nombre(Nom1),nombre(Nom2),nombre(Nom3),nombre(Nom4),
    apellido(Ape1),apellido(Ape2),apellido(Ape3),apellido(Ape4),
    comida(Com1),comida(Com2),comida(Com3),comida(Com4),
    diferentes(Nom1,Nom2,Nom3,Nom4),
    diferentes(Com1,Com2,Com3,Com4),
    diferentes(Ape1,Ape2,Ape3,Ape4),
    lleva(Nom1,Ape1,Com1),lleva(Nom2,Ape2,Com2),lleva(Nom3,Ape3,Com3),lleva(Nom4,Ape4,Com4).


