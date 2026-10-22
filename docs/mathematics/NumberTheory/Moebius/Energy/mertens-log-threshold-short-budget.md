# Logarithmic cumulative-length threshold and deterministic short-range budget

Issue: #531. Parent threshold split: #528 / draft PR #529.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / LONG_LENGTH_SHORT_INTERVAL_ESTIMATE_OPEN**.

## Selected threshold

The source fixes

```text
H(j) = j + 2.
```

Since the ambient dyadic scale is `X=2^j`, this is logarithmic in `X`.

## One-depth normalization

Restoring the exact `2/Y` depth-slice prefactor to the deterministic short contribution from #528 gives

[
rac{2}{Y}|mathrm{ShortContribution}(j,t,H(j))|
le
2H(j)(t+1)(q_0-q_1).
]

The source authors this as

```lean
normalized_shortContribution_le_budget
```

with the exact denominator coordinate

[
q_0-q_1
=
rac1{max(2^j,t+2)}
-
rac1{max(2^j,t+2)+1}.
]

## Packet-level reduction

Define

```lean
normalizedShortPacketBudget
```

as the sum of those deterministic one-depth budgets over every inherited depth.

The desired global bound reduces to the pure finite inequality

[
sum_{t<2^{j+1}}
(t+1)
left(
rac1{M_t}-rac1{M_t+1}
ight)
le 3,
qquad
M_t=max(2^j,t+2).
]

This is represented explicitly by

```lean
LogThresholdFiniteDepthBudget j
```

and the source proves

```lean
normalizedShortPacketBudget_le_six_logThreshold_of_finiteDepthBudget
```

so that this finite inequality implies

[
mathrm{ShortPacketBudget}(j)le 6(j+2).
]

No Möbius cancellation appears in the remaining finite-depth obligation.

## Correction during authorship

An initial source draft referred to two nonexistent convenience lemmas for the finite reciprocal sum. Those references were removed immediately. The current source does **not** claim that finite inequality is proved.

## Remaining deterministic obligations

Two elementary steps remain before the short-range part is fully discharged:

1. prove `LogThresholdFiniteDepthBudget j` for every `j`;
2. prove logarithmic exponent absorption
   [
   j+2 ll_delta (2^j)^delta.
   ]

After those steps, all cumulative lengths below `j+2` are paid deterministically and the analytic theorem only needs lengths `nge j+2`.

## Long-range interpretation

The remaining short-interval regime begins at a length tending to infinity with scale. This is the regime where Matomäki--Radziwiłł-type mean short-interval theorems become relevant, subject to the start-window and all-depth coverage obligations already typed in #523/#528.

## Nonclaims

This increment does not prove:
- the pure finite reciprocal-depth inequality;
- logarithm-to-power absorption;
- a long short-interval estimate;
- a complete harmonic packet bound;
- RH.
