# Finite reciprocal-depth budget closure

Issue: #535. Parent logarithmic threshold: #531 / draft PR #533.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / LOG_ABSORPTION_AND_LONG_LENGTH_OPEN**.

## Result

For `X=2^j` and `M_t=max(X,t+2)`, the deterministic depth summand is

[
(t+1)left(rac1{M_t}-rac1{M_t+1}ight).
]

The source proves it is nonnegative and bounded by `1/X`.

Since there are exactly `2^(j+1)=2X` inherited depths,

[
sum_{t<2^{j+1}}
(t+1)left(rac1{M_t}-rac1{M_t+1}ight)
le 2.
]

This discharges the parent proposition `LogThresholdFiniteDepthBudget j`, whose bound was only `<=3`.

Consequently the complete deterministic short-range packet satisfies

[
mathrm{normalizedShortPacketBudget}(j)
le 4(j+2).
]

No Möbius cancellation theorem is used.

## Remaining obligations

1. absorb the logarithmic factor into arbitrary dyadic power slack:
   [
   j+2 ll_delta (2^j)^delta;
   ]
2. discharge the long cumulative-length short-interval supplier for `n>=j+2`.

Only those two obligations remain on this threshold branch.

## Nonclaims

No Lean/Lake execution, kernel acceptance, short-interval theorem application, or RH proof is claimed.
