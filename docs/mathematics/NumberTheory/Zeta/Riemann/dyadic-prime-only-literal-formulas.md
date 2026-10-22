# Literal prime-only witness formulas

The remaining RH-G01 hard core is now written entirely with classical prime sums.

On primes,

Lambda(p)/p = log(p)/p.

Define the octave masses

H_X = sum_(X<p<=2X) log(p)/p,

T_X = sum_(X<p<=2X) log(p).

Then

primeMass0 = H_X - log 2,

primeMass1 = T_X/X - H_X - (1-log 2),

so the weighted harmonic mass cancels:

primeMass0 + primeMass1
 = T_X/X - 1.

Moreover

T_X = theta(2X)-theta(X).

Thus one necessary endpoint channel is exactly

[theta(2X)-theta(X)]/X - 1.

The prime Fourier coordinate is also literal. For k nonzero define

S_X(k)
 = sum_(X<p<=2X)
   (log p/p) exp(-2 pi i k p/X),

H_X^C
 = sum_(X<p<=2X) log p/p.

Then the prime source coordinate before the fixed continuum background is

[S_X(k)-H_X^C]/[-2 pi i k].

The complete prime-only coordinate is the fixed continuum Fourier coordinate minus this quantity.

So the unresolved arithmetic supplier consists solely of:
- the theta octave discrepancy;
- the harmonic prime mass discrepancy H_X-log 2;
- the family of weighted prime DFT discrepancies S_X(k)-H_X^C.

Higher prime powers are already an O(1/X) energy residual.
