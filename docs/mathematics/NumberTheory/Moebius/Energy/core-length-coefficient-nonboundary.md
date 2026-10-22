# Non-boundary coefficient mass below the retained boundary length

Issue: #591. Parent boundary witness: #589 / draft PR #590.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / RIGHT_REGIME_TELESCOPE_OPEN**.

## Generic reciprocal calculus

The source defines reciprocal first and second differences and proves:
- finite telescoping of second differences over an `Ico` range;
- exact rational formulas;
- the first difference is bounded by the reciprocal square of its left endpoint.

## Left regime

For retained lengths
```text
j+2 <= n < 2^j,
```
the terminal selector vanishes throughout the left regime, while every left depth has the same interior second difference.

The source proves the exact identity
```text
leftLengthCoefficientMass(j,n)
 =
(2^j-1) * reciprocalSecondDifference(2^j+n-1).
```

From the exact rational formula it derives
```text
leftLengthCoefficientMass(j,n)
  <= 2 * (1/(2^j+n))^2.
```

## Remaining right telescope

The source isolates
```lean
RightLengthCoefficientTelescoping
```
as the exact theorem
```text
rightLengthCoefficientMass(j,n)
  = reciprocalFirstDifference(2^j+n)
```
for retained non-boundary lengths.

Once this single finite identity is supplied, the source proves
```text
fullLengthCoefficientMass(j,n)
  <= 3 * (1/(2^j+n))^2.
```

## Status

The left half and the generic reciprocal estimates are discharged at source level. Only the right-depth selector/telescoping identity remains.

No Möbius estimate, external theorem, Lean/Lake replay, merge, or RH proof is claimed.
