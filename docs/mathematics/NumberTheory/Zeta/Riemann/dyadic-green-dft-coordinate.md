# Weighted DFT form of the arithmetic witness coordinate

The source feature location is

r_n = n/X - 1.

Because the Fourier carrier is the additive circle of period 1,

r_n and n/X are the same point.

Therefore the nonzero Fourier phase is literally

exp(-2 pi i k n/X).

The zero-endpoint primitive gives

phi_k(r_n)
 = [exp(-2 pi i k n/X)-1]/[-2 pi i k].

Hence the finite prime coordinate becomes

P_X(k)
 = [S_X(k)-M_X]/[-2 pi i k],

where

S_X(k)
 = sum_(X<n<=2X)
   (Lambda(n)/n) exp(-2 pi i k n/X),

M_X
 = sum_(X<n<=2X) Lambda(n)/n.

The complete centered witness coordinate is

c_X(k)
 = B(k) - P_X(k),

where B(k) is the fixed continuum-background coordinate.

This is a literal weighted discrete Fourier transform of the exact von Mangoldt measure on the octave. The arithmetic labels, coefficients, scale X, frequency k and continuum subtraction are all explicit.

By the preceding modules, finite symmetric sums of |c_X(k)|^2 recover the complete Green energy, and the all-scale uniform bound on the corresponding admissible action frame is equivalent to AllDyadicEnergyBound.

So the unresolved RH-G01 supplier can now be read as a quantitative theorem about the decay of these exact weighted DFT discrepancies together with mass0 and mass1.
