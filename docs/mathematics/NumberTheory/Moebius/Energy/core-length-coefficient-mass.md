# Left/right formulas for the depth-aggregated Abel coefficient mass

Issue: #585. Parent exact transpose: #583 / draft PR #584.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / COEFFICIENT_MASS_BOUND_OPEN**.

## Exact depth regimes

For `X=2^j`:

- if `t+1<X`, then
  ```text
  harmonicShiftLower = X-t-1
  harmonicShiftCount = X
  harmonicShiftReciprocal(k) = 1/(X+k)
  ```
  so the reciprocal kernel is independent of depth;

- if `X<=t+1`, then
  ```text
  harmonicShiftLower = 1
  harmonicShiftCount = 2^(j+1)-t-2
  harmonicShiftReciprocal(k) = 1/(t+2+k)
  ```
  so the reciprocal denominator advances literally with depth.

## Full-mass enlargement

The source defines
```lean
fullLengthCoefficientMass
leftLengthCoefficientMass
rightLengthCoefficientMass
```

and proves:
- the actual core coefficient mass is bounded by the full depth mass;
- the full depth mass splits exactly into left and right regimes.

## Fixed-length formulas

In the left regime:
- the terminal selector can occur only at `n=2^j`;
- interior coefficients are the same reciprocal second difference at every depth.

In the right regime:
- the interior coefficient at fixed retained length `n` is the second difference of
  `1/(t+n+1)`, so summing across depth is positioned for literal telescoping.

## Remaining deterministic theorem

The source isolates
```lean
ReciprocalLengthCoefficientMassBound
```
as the pure target
```text
fullLengthCoefficientMass(j,n)
  <= C * (1/(2^j+n))^2
```
on the retained range.

Any proof of this full-mass bound automatically controls the actual core coefficient mass.

## Nonclaims

The reciprocal mass bound itself is not yet proved. No Möbius estimate, short-interval theorem, Lean/Lake replay, merge, or RH proof is claimed.
