# Cumulative shift correlations as short-interval Möbius averages

Issue: #523. Parent cumulative-shift interface: #519 / draft PR #520. Literature witness: #516 / PR #518.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / SHORT_INTERVAL_ADAPTER_OPEN**.

## Exact Fubini bridge

For fixed `j,t`, lower active shift `L = harmonicShiftLower j t`, and cumulative length `n`, define

```text
ShortMobius(j,t,n,a)
  = sum_(k<n) μ(a+1+L+k).
```

Then the cumulative active-shift correlation satisfies the exact identity

[
S_n(j,t)
=
sum_{a<t+1}
mu(a+1),mathrm{ShortMobius}(j,t,n,a).
]

This is finite Fubini only.

## First-moment transfer

Using `|μ|le1`, the source proves

[
|S_n(j,t)|
le
sum_{a<t+1}
|mathrm{ShortMobius}(j,t,n,a)|.
]

This triangle bound is a stronger sufficient estimate than the signed identity.

## Relation to short-interval technology

The right side has the exact shape consumed by mean-value results for multiplicative functions in short intervals: a sum over starting points of absolute short-interval Möbius sums.

This is materially closer to Matomäki--Radziwiłł technology than the prior shift-averaged formulation.

However, a literature theorem still must cover all repository ranges:
- interval lengths `n` from zero through dyadic scale;
- start windows induced by `a+1+L`;
- every depth `t`;
- all dyadic scales;
- finite/small interval regimes not covered by asymptotic hypotheses.

No claim is made here that current theorems discharge these obligations.

## Typed coverage boundary

The source defines:

```lean
QuantitativeShortIntervalMobiusSource
ShortIntervalToHarmonicPacketAdapter
```

with explicit fields for:
- interval-length coverage;
- starting-window coverage;
- all-depth uniformity;
- finite small-range control.

Only an explicit adapter paying all four fields may reach the harmonic packet and its conditional RH endpoint.

## Hostile boundaries

- Almost-all starting points may be used only through a summed/mean estimate; they do not become pointwise control.
- Liouville statements do not become Möbius statements without source coverage.
- Large interval asymptotics do not automatically cover small `n`.
- Fubini is exact; the L1 transfer is not reversible.
- No current theorem is declared sufficient in this increment.

## Next obstruction

Compare quantitative short-interval Möbius first-moment bounds against the exact four coverage obligations, particularly the simultaneous small-`n` and all-depth regimes.
