# RH-G01 rewritten entirely in explicit arithmetic Fourier coordinates

For each octave X and finite frequency cutoff N define

F_X(N)
 =
 mass0(X)^2
 + mass1(X)^2
 + the first N symmetric Fourier shell energies.

Each shell is built from the exact coordinate

c_X(k)
 =
 B(k)
 -
 [S_X(k)-M_X]/[-2 pi i k],

where

S_X(k)
 = sum over X<n<=2X of
   (Lambda(n)/n) exp(-2 pi i k n/X),

M_X
 = sum over X<n<=2X of Lambda(n)/n,

and B(k) is the fixed continuum-background coordinate. The zero mode is exactly zero.

The source proves at draft level that F_X(N) tends to augmentedEnergy(X) and is bounded above by augmentedEnergy(X).

Define AllDyadicArithmeticFourierCoordinateBound by requiring that for every eta>0 there are C and j0 such that, for all j>=j0 and every finite N,

F_(2^(j+1))(N)
 <= C * 2^((j+1)(-1+eta)).

Then

AllDyadicArithmeticFourierCoordinateBound
iff
AllDyadicEnergyBound.

So the remaining RH-G01 supplier is now a concrete quantitative theorem about two explicit endpoint moments, weighted discrete Fourier transforms of the exact von Mangoldt measure on each octave, and one fixed continuum background.

No zero divisor, critical-line projection, PNT, Weil positivity, or fitted target coefficient is part of this reformulation.

The existing conditional dyadic return means that proving this coordinate bound would imply RH. This file does not prove the coordinate bound.
