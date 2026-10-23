# Complete higher-prime-power witness residual is O(1/X)

The entire higher-prime-power contribution is now controlled, not only its individual Fourier modes.

Define:
- higher-power mass0 contribution = weighted non-prime octave mass;
- higher-power mass1 contribution = the same weights multiplied by the normalized location;
- higher-power Fourier energy = the sum over all squared higher-power Fourier corrections.

Because every location lies in [0,1], the second endpoint contribution is bounded by the first. The Fourier channel is bounded by C_freq times the first mass squared.

Hence the complete residual satisfies

R_hp(X)
 <= (2+C_freq) M_hp(X)^2.

Pinned Chebyshev gives

M_hp(X)
 <= C sqrt(2X)/X.

Therefore there is one constant K such that

R_hp(X) <= K/X

for every positive X.

This is exactly the scale needed for the RH-G01 target: for every eta>0, K/X is stronger than K X^(-1+eta) for X>=1.

The hard arithmetic supplier can therefore be reduced to the prime-only witness. Higher prime powers can be carried as a fully explicit, independently controlled residual channel.
