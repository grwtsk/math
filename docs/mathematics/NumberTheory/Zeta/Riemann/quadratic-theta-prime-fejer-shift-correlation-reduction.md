# Fejér shifted prime-pair reduction

The diagonal contribution to the boundary-minimal seven-eighths Fejér
correlation is already source-closed. The remaining signed off-diagonal term is
now reindexed as an explicit aggregate of positive-shift correlations.

Let

```text
I_X = {n : 2X < n <= 4X}
```

and write

```text
a_X,N,m(n)
```

for the corrected Fejér-weighted prime-discrepancy atom. The previous source
defines

```text
Off(X,N,m)
```

as the full quadratic correlation minus its diagonal.

## Ordered-pair decomposition

The new source proves that the subtraction definition is exactly

```text
Off(X,N,m)
  = sum_{(n,q) in I_X x I_X, n != q} a(n) a(q).
```

The summand is symmetric under coordinate swap. Hence the lower- and
upper-triangular sums agree, giving

```text
Off(X,N,m)
  = 2 * sum_{n<q, n,q in I_X} a(n) a(q).
```

This is an exact finite identity. No asymptotic estimate is used.

## Positive-shift fibers

For an upper-triangular pair, define

```text
h = q - n.
```

The possible shifts are exactly contained in

```text
1 <= h <= 2X - 1.
```

For each admissible `h`, the corresponding pair fiber is equivalent to the
left endpoints

```text
2X < n <= 4X - h,
```

with the second coordinate equal to `n+h`. Therefore

```text
Off(X,N,m)
  = 2 * sum_{1 <= h <= 2X-1}
      sum_{2X < n <= 4X-h}
        a_X,N,m(n) * a_X,N,m(n+h).
```

The inner sum is named

```lean
nonAliasingFejerShiftCorrelation X N m h
```

and is also rewritten as a Fejér-weighted two-point correlation of the
centered prime atoms

```text
primeDiscrepancyAtom(n)
  = 1_prime(n) log(n) - 1.
```

Thus the remaining arithmetic input is no longer an opaque double sum. It is a
uniform averaged two-point correlation theorem for centered prime data.

## Exact and stronger supplier interfaces

The exact remaining interface is

```lean
SevenEighthsBoundaryMinimalExactShiftCorrelationBound
```

which asks for

```text
sum_h ShiftCorrelation(X,ceil(X^(1/4)),m,h)
  << X^(3/2) log(X)^4
```

under the threshold-graded seven-eighths Fourier premise, uniformly for
`2X <= m <= 4X`.

Two stronger sufficient interfaces are kept distinct:

```lean
SevenEighthsBoundaryMinimalExactShiftCorrelationAbsoluteBound
```

controls the sum of absolute values, while

```lean
SevenEighthsBoundaryMinimalPointwiseShiftSquareRootBound
```

asks for the pointwise upper estimate

```text
ShiftCorrelation(X,N,m,h)
  << X^(1/2) log(X)^4
```

for every admissible shift.

There are at most `2X` positive shifts, so the pointwise square-root estimate
implies the exact aggregate bound:

```text
X shifts * X^(1/2) per shift = X^(3/2).
```

This is a sufficient route, not a necessary strengthening. Signed aggregate
cancellation across shifts remains admissible.

## Power barrier

Elementary pair counting lies at exponent `2`, while the target is `3/2`.
The source records the strict half-power gap

```text
3/2 < 2.
```

The exact unresolved theorem must therefore capture genuine arithmetic
cancellation, either inside individual centered prime-pair shifts or across the
signed shift aggregate.

## Evidence status

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
OFFDIAGONAL_POSITIVE_SHIFT_REINDEXING_SOURCE_PROVED
CENTERED_PRIME_PAIR_SHIFT_FORM_SOURCE_PROVED
HALF_POWER_PER_SHIFT_SUFFICIENT_CRITERION_SOURCE_PROVED
SEVEN_EIGHTHS_SHIFT_CORRELATION_BOUND_OPEN
```

No Lean/Lake elaboration, kernel audit, shifted prime-pair estimate, threshold
descent, or Riemann Hypothesis result is claimed.
