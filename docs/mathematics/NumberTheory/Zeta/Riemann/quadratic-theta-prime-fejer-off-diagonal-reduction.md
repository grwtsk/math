# Fejér diagonal closure and signed off-diagonal reduction

The boundary-minimal seven-eighths Fejér schedule and deterministic exact
correlation readout are already source-complete. The remaining exact arithmetic
theorem is

\[
\mathcal C_{X,N,m}\ll X^{3/2}(\log X)^4,
\qquad
N=\left\lceil X^{1/4}\right\rceil.
\]

This increment separates the elementary diagonal from the genuinely arithmetic
signed off-diagonal remainder.

## Unit-interval Fejér weights

The period-\(4X\) Fejér kernel is nonnegative and has total mass one. The cyclic
sharp prefix indicator takes only the values zero and one. Therefore its Fejér
convolution lies pointwise in the interval \([0,1]\).

The repository already identifies the arithmetic prefix weight with the
restriction of this cyclic convolution. Hence

\[
0\le w_{X,N,m}(n)\le1
\]

for every arithmetic point \(2X<n\le4X\).

For the weighted prime-discrepancy atom

\[
a_{X,N,m}(n)
=
w_{X,N,m}(n)
\bigl(\mathbf 1_{\mathbb P}(n)\log n-1\bigr),
\]

the existing safe atom estimate therefore gives

\[
|a_{X,N,m}(n)|
\le 1+\log(4X).
\]

## Diagonal closure

The diagonal part of the quadratic correlation is

\[
\mathcal D_{X,N,m}
=
\sum_{2X<n\le4X}a_{X,N,m}(n)^2.
\]

There are exactly \(2X\) terms, so

\[
\mathcal D_{X,N,m}
\le
2X\bigl(1+\log(4X)\bigr)^2.
\]

On the repository's dyadic scales, the previously proved logarithmic
normalization and \(X\ge2\) yield the source-level bound

\[
\boxed{
\mathcal D_{X,N,m}
\le
200\,X^{3/2}(\log X)^4.
}
\]

The fixed constant is deliberately non-optimized. It serves only to place the
diagonal inside the exact target scale.

## Signed off-diagonal frontier

The correlation ledger is now recorded in the form

\[
\mathcal C_{X,N,m}
=
\mathcal D_{X,N,m}
+
\mathcal O_{X,N,m},
\]

where \(\mathcal O\) is the signed off-diagonal remainder.

The exact remaining supplier is:

\[
\mathcal O_{X,N,m}
\ll X^{3/2}(\log X)^4
\]

under the threshold-graded seven-eighths premise, uniformly for
\(2X\le m\le4X\).

Only an upper bound for the signed remainder is logically necessary. The source
also types an absolute-value estimate as a stronger sufficient premise, but it
does not require that stronger theorem.

Once the signed off-diagonal bound is supplied, the closed diagonal estimate
gives the exact correlation theorem with a constant enlarged by \(200\). The
existing deterministic readout then yields the seven-eighths finite
partial-prime discrepancy target.

## Evidence status

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
FEJER_WEIGHT_UNIT_INTERVAL_SOURCE_PROVED
DIAGONAL_EXACT_TARGET_SOURCE_PROVED
EXACT_CORRELATION_REDUCED_TO_SIGNED_OFFDIAGONAL
SEVEN_EIGHTHS_SIGNED_OFFDIAGONAL_BOUND_OPEN
```

No signed off-diagonal cancellation estimate, exact correlation estimate,
threshold descent, zero-free theorem at \(1/2\), or Riemann Hypothesis result is
claimed.
