# Fejér shifted correlations: reduction to centered von Mangoldt pairs

Status: source draft; not elaborated or kernel-audited.

## Result of this increment

The preceding route reduced the seven-eighths arithmetic obstruction to

\[
\sum_{1\le h\le 2X-1}
\sum_{2X<n\le 4X-h}
w(n)w(n+h)
\bigl(\mathbf 1_{\mathbb P}(n)\log n-1\bigr)
\bigl(\mathbf 1_{\mathbb P}(n+h)\log(n+h)-1\bigr)
\ll X^{3/2}\log^4X.
\]

The prime-only centered atom is decomposed exactly as

\[
\mathbf 1_{\mathbb P}(n)\log n-1
=
(\Lambda(n)-1)-r(n),
\]

where

\[
r(n)=\Lambda(n)-\mathbf 1_{\mathbb P}(n)\log n.
\]

The correction \(r(n)\) is nonnegative, vanishes on primes, and equals
\(\Lambda(n)\) on non-primes. It therefore contains precisely the
higher-prime-power contribution.

## Square-root correction mass

Mathlib proves

\[
\psi(x)-\theta(x)=O(\sqrt x).
\]

Since

\[
\sum_{2X<n\le4X}r(n)
\le \psi(4X)-\theta(4X),
\]

the total correction mass on the octave is \(O(X^{1/2})\).

The period-\(4X\) Fejér prefix weights lie in \([0,1]\), so weighting does not
increase this mass. Every weighted centered von Mangoldt atom and every
weighted correction atom is bounded by the safe envelope
\(1+\log(4X)\).

## Pair-channel closure

Expanding the product produces:

\[
\Lambda_c(n)\Lambda_c(q)
-\Lambda_c(n)r(q)
-r(n)\Lambda_c(q)
+r(n)r(q),
\]

where \(\Lambda_c(n)=\Lambda(n)-1\), with the Fejér weights included in each
factor.

There are at most \(2X\) partners for either coordinate of a positive pair.
Thus each mixed or correction-correction channel is bounded by

\[
O(X)\cdot O(\log X)\cdot O(X^{1/2})
=
O(X^{3/2}\log X).
\]

On dyadic scales, \(\log X\ge \tfrac12\), so this is absorbed into
\(O(X^{3/2}\log^4X)\). The source uses a fixed non-optimized constant.

Therefore the aggregate prime-only shifted correlation equals the centered
von Mangoldt shifted correlation plus an unconditionally controlled
higher-prime-power remainder.

## Exact remaining supplier

The remaining proposition is

```lean
SevenEighthsBoundaryMinimalVonMangoldtShiftCorrelationBound
```

It asks, under the threshold-graded seven-eighths Fourier premise, for

\[
\sum_{1\le h\le2X-1}
\sum_{2X<n\le4X-h}
w(n)w(n+h)
(\Lambda(n)-1)(\Lambda(n+h)-1)
\ll X^{3/2}\log^4X.
\]

The source proves that this proposition implies the prior prime-only shifted
correlation supplier and therefore the already closed partial-prime
discrepancy readout.

## Nonclaims

This increment does not prove the centered von Mangoldt shift estimate. It
does not prove the seven-eighths-to-three-quarters descent, a zero-free
half-plane theorem at \(1/2\), or the Riemann Hypothesis.
