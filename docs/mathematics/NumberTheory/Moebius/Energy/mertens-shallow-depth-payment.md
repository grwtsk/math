# Shallow-depth deterministic payment

Issue: #547. Parent long supplier: #541 / draft PR #542.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / DEEP_LONG_SHORT_INTERVAL_SUPPLIER_OPEN**.

## Shallow depth cutoff

For `Y=2^(j+1)`, define

```text
D(j) = min (j+2) (Y-1).
```

This guarantees every shallow depth `t<D(j)` satisfies `t+2<=Y`, including the smallest dyadic scales.

## Complete shallow depth bound

Using the exact weighted-Chowla representation and the subprobability kernel,

[
|WeightedChowlaAverage(j,t)|le t+1.
]

Restoring the depth prefactor gives

[
|DepthSlice(j,t)|le 2
]

for every shallow depth.

Therefore

[
|ShallowDepthPacket(j)|
le 2D(j)
le 2(j+2).
]

Using the dyadic logarithmic absorption theorem from #538, the source authors a subpolynomial shallow-depth supplier.

## Exact long-remainder depth decomposition

Define

```text
LongDepthRemainder(j,t)
  = DepthSlice(j,t)
    - normalized short cumulative-length contribution(j,t).
```

The packet-level long harmonic remainder from #541 is authored as the sum of these per-depth remainders.

It is then split exactly into:
- shallow long remainder, `t<D(j)`;
- deep long remainder, `D(j)<=t<Y`.

No depth or endpoint is dropped.

## Remaining analytic regime

The source defines `DeepLongShortIntervalRegime` with:
- depth `t>=D(j)`;
- depth `t<Y`;
- cumulative length `n>=j+2`;
- cumulative length within the active shift count.

Thus, away from finitely many small scales, both:
- short-interval length;
- number of starting points

grow at least logarithmically with scale.

This still does not imply that current short-interval theorems apply to the resulting short starting windows.

## Remaining supplier

```lean
SubpolynomialDeepLongHarmonicRemainderPacket
```

is the next analytic target.

## Nonclaims

No short-interval theorem, all-depth estimate, kernel acceptance, or RH proof is claimed.
