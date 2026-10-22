# Necessary classical cancellation in the prime-only witness

The prime-only stage is a sum of nonnegative squares. Therefore its all-scale bound already implies RH-strength cancellation for elementary prime observables.

For every eta>0, eventually along dyadic X:

1. Harmonic prime mass:
   [sum_(X<p<=2X) log(p)/p - log 2]^2
   <= C X^(-1+eta).

2. Chebyshev-theta octave:
   [(theta(2X)-theta(X))/X - 1]^2
   <= C X^(-1+eta).

3. The first positive and negative prime-only weighted DFT coordinates have squared norm
   <= C X^(-1+eta).

Thus the remaining theorem is visibly a cancellation theorem, not a positivity theorem.

Chebyshev's unconditional linear upper bounds do not imply any of these square-root-scale discrepancies. Higher prime powers have already been removed as an O(1/X) energy residual, so these conditions isolate the prime-only difficulty.
