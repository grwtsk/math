# Adapter from the classical von-Koch theta error

A standard RH-strength prime-number-theorem error term has the form

|theta(x)-x| <= C sqrt(x) (log x)^2

for all sufficiently large x.

This module does not import an external theorem asserting that bound. Instead it proves the transport from that proposition into the recovered dyadic witness.

Mathlib provides

(log x)^2 = o(x^delta)

for every delta>0.

Given eta>0, take delta=eta/4. On a dyadic octave X<=u<=2X,

sqrt(u) (log u)^2
 <= constant * X^(1/2+eta/4)
 <= constant * X^(1/2+eta/2).

The remaining +1 floor correction is absorbed because X^(1/2+eta/2)>=1.

Hence the source route is

ClassicalThetaSqrtLogSqBound
 -> AllDyadicThetaOctaveSquareRootBound
 -> AllDyadicEnergyBound
 -> RH.

External audit: PrimeNumberTheoremAnd contains RH-conditional sqrt(x) log^2(x) statements in its TMEEMT material, but the inspected declarations still use sorry; they are not treated as trusted proof inputs here.
