# Higher prime powers are already a square-root-scale remainder

Pinned Mathlib supplies two exact facts:

1. psi(x)-theta(x) is the sum of von Mangoldt over non-primes.
2. psi(x)-theta(x) is O(sqrt x).

On the octave X<n<=2X, division by n gives an additional factor at most 1/X. Therefore

sum_(X<n<=2X, n not prime) Lambda(n)/n
 <= [psi(2X)-theta(2X)]/X
 = O(X^(-1/2)).

The exact weighted DFT source is split into:
- a prime-only channel;
- a non-prime von Mangoldt channel, i.e. the higher prime powers.

For any fixed nonzero Fourier mode k, the higher-prime-power correction to the prime coordinate is bounded by its total weighted mass divided by the fixed frequency scale. Hence it is already O(X^(-1/2)).

This is significant for the RH-G01 witness. The target full-coordinate size is X^(-1/2+o(1)) at amplitude level. Higher prime powers therefore do not carry the difficult cancellation: their contribution is already at the natural square-root scale unconditionally.

The unresolved arithmetic content is reduced to:
- prime-only weighted DFT discrepancy cancellation;
- mass0 and mass1, with their higher-prime-power pieces treated as controlled remainders;
- simultaneous square-summability across modes.

No PNT or RH is used in this reduction.
