# Short/long cumulative-shift threshold split

Issue: #528. Parent short-interval bridge: #523 / draft PR #526. Parent cumulative-shift interface: #519 / PR #520.

Evidence state: **LITERATURE_REVIEWED / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / LONG_SHORT_INTERVAL_ESTIMATE_OPEN**.

## Purpose

The short-interval adapter from #523 should not be required to cover every interval length. The second-Abel representation from #519 has nonnegative coefficients, so cumulative lengths below a chosen threshold can be paid trivially and removed from the analytic burden.

## Trivial cumulative bound

The source proves

[
|C_h(N)|le N
]

from (|mu|le1), hence

[
|S_n(j,t)|le n(t+1)
]

for the cumulative active-shift correlation.

## Threshold split

For a threshold `H`, the interior second-Abel contribution is split exactly into:

```text
ShortContribution:
  cumulative lengths k+1 < H

LongContribution:
  cumulative lengths H <= k+1.
```

The source proves the exact additive decomposition; no term is discarded.

## Deterministic short-range payment

Let `d_k` be the nonnegative reciprocal second-difference coefficient. Since

[
sum_k d_k
le q_0-q_1,
]

the short piece satisfies the explicit source-level bound

[
|mathrm{ShortContribution}|
le
2^{j+1},H,(t+1),(q_0-q_1).
]

Here

[
q_0-q_1
=
rac{1}{t+1+L}-rac{1}{t+2+L},
qquad
L=max(1,2^j-t-1).
]

No asymptotic negligibility is claimed. The exact bound must still be compared with the packet normalization and the selected threshold.

## Literature comparison

Matomäki--Radziwiłł 2015 provides almost-all short-interval cancellation once the interval length tends to infinity, even slowly. Menon 2026 sharpens quantitative almost-all bounds. Results for all intervals require substantially longer power-scale intervals; for Möbius, the 2026 Matomäki--Pandey--Pliego--Teräväinen--Wang result reaches lengths (X^{19/35+arepsilon}).

The threshold decomposition isolates the only regime where such theorems could be invoked: cumulative lengths at or above an explicit scale-dependent threshold.

## Typed remaining source

The source defines:

```lean
LongShortIntervalMobiusSource
LongShortIntervalToHarmonicAdapter
```

with explicit obligations for:
- chosen threshold;
- long-length theorem;
- start-window coverage;
- all-depth uniformity;
- separate proof that the deterministic short range fits the RH-facing budget.

No adapter value is constructed.

## Hostile boundaries

- Small lengths are paid, not dropped.
- The threshold is explicit.
- Almost-all starts do not become every-start estimates.
- Coefficient positivity is not correlation positivity.
- The short-range deterministic estimate is not yet proved globally negligible.
- No long-range theorem is imported here.

## Next obstruction

Choose a threshold function (H(j)), prove the deterministic short-range payment is subpolynomial after the full depth sum, and then compare long lengths (nge H(j)) with quantitative almost-all short-interval Möbius bounds.
