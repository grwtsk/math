# RH-G01 is equivalent to a prime-only weighted-DFT bound

The full recovered witness and the prime-only witness differ only by the higher-prime-power residual.

Finite stages satisfy

fullStage <= 2 primeStage + 2 R_hp,

primeStage <= 2 fullStage + 2 R_hp.

The higher-prime-power analysis proves

R_hp(X) <= K/X.

For every eta>0 and X>=1,

X^(-1) <= X^(-1+eta).

Therefore the residual has exactly the right strength to be absorbed into every RH-G01 exponent, and the two all-scale statements are equivalent:

AllDyadicPrimeOnlyFourierCoordinateBound
iff
AllDyadicArithmeticFourierCoordinateBound
iff
AllDyadicEnergyBound.

The hard arithmetic theorem has therefore been reduced completely to primes.

The prime-only finite stage consists of:
- the prime contribution to mass0, centered by log 2;
- the prime contribution to mass1, centered by 1-log 2;
- finite symmetric sums of squared prime-only weighted-DFT discrepancies against the fixed continuum Fourier background.

Higher prime powers are no longer part of the hard supplier; they are an explicit O(1/X) residual.

The existing conditional dyadic return now reads:

prime-only all-scale weighted-DFT bound -> RH.

This file does not prove that bound.
