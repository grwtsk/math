# Dyadic logarithmic absorption

Issue: #538. Parent finite budget: #535 / draft PR #536. Reuse target: #437.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / LONG_LENGTH_SHORT_INTERVAL_ESTIMATE_OPEN**.

## Generic theorem

For every `δ>0`, define
```text
c = δ log 2
A = max 2 c^{-1}.
```

Using the elementary inequality `1+x <= exp x`, the source authors
```text
j+2 <= A * exp(c j)
```
for every natural `j`.

The source then identifies
```text
exp((δ log 2) j) = ((2^j : ℝ)^δ)
```
at the repository's real-rpow type and obtains:

```lean
nat_add_two_le_const_mul_dyadic_rpow
```

stating
[
oralldelta>0;exists Age0;orall j,qquad
j+2le A(2^j)^delta.
]

This is a reusable deterministic asymptotic lemma for RH-E02 and the earlier dyadic-maximal branch #437.

## Deterministic short packet

Combining the theorem with PR #536's source-level estimate

[
mathrm{normalizedShortPacketBudget}(j)le4(j+2)
]

authors the all-scale proposition

```lean
SubpolynomialLogThresholdShortPacketBudget
```

and a source-level inhabitant

```lean
subpolynomialLogThresholdShortPacketBudget.
```

Thus the cumulative-length regime below `j+2` is completely removed from the arithmetic supplier at source level.

## Remaining obstruction

Only the long cumulative-length regime remains analytic:

```text
n >= j+2.
```

The next theorem must provide short-interval/average-over-shifts control with the exact start windows and all-depth uniformity from #523/#528.

## Verification boundary

The proof scripts use current Mathlib real-rpow and exponential identities. No Lean/Lake execution occurred, so exact elaboration and kernel acceptance remain open. Source presence is not replay evidence.

## Nonclaims

No long short-interval theorem, Chowla theorem, or RH proof is claimed.
