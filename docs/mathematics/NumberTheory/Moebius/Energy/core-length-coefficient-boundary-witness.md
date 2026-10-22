# Boundary witness for aggregated coefficient mass

Issue: #589. Parent coefficient geometry: #585 / draft PR #587.

Evidence state: **WITNESS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / PIECEWISE_COEFFICIENT_MASS_BOUND_OPEN**.

## Boundary obstruction

The proposed uniform reciprocal-square target is too strong at the retained boundary length
```text
n = 2^j.
```

In the left depth regime, every depth has the same active count `2^j`, so every left depth contributes the same terminal first-difference coefficient.

The source proves the exact formula
```text
leftLengthCoefficientMass(j,2^j)
 =
(2^j-1)
* (1/(2^(j+1)-1) - 1/2^(j+1)).
```

This has reciprocal-first-power scale in `2^j`, not reciprocal-square scale.

The source also proves the coarse bound
```text
leftLengthCoefficientMass(j,2^j) <= 1/2^j.
```

## Corrected target

The source defines
```lean
PiecewiseReciprocalLengthCoefficientMassBound
```
with:
- reciprocal-first-power control at `n=2^j`;
- reciprocal-square control for retained lengths `n<2^j`.

This preserves the exceptional repeated-terminal geometry rather than forcing a false uniform theorem.

## Status

The corrected piecewise bound itself remains open. The next deterministic task is:
1. telescope the right-regime mass;
2. prove the reciprocal-square estimate for `n<2^j`;
3. combine with the explicit boundary formula above.

## Nonclaims

No impossibility theorem, lower bound for the full core mass, Lean/Lake replay, merge, or RH proof is claimed.
