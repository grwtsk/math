# `tailEnvelope_four_normalized_le_budget`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.tailEnvelope_four_normalized_le_budget`.
Canonical source: [../DirichletConductorTailBudgets.lean](../DirichletConductorTailBudgets.lean).
Source SHA-256: `39f8fdc31698c7dbdd239fd0455404c6f2983c167cebe2ee3110525f8771fc0b`.

## Statement and primary argument

For every real q>=2 and natural H>=4, tailEnvelope 4 q H / log(2*q) <= (fourthTailBudget H : Real).

Compose the existing tailEnvelope_normalized_le at s=4 with normalizedTailCeiling_four_le_rational at the cast integer H, and cast the exact rational definition of fourthTailBudget.

## Source comparison, consumer and limits

Local standard consequence, not an assertion of novelty or a theorem attributed to the motivating monograph. Exact dependencies, dated source comparison, proof-status boundaries and reproduction commands are in [README.md](README.md). The consumer is the original finite interval checker and conductor-filtered source return, not an auxiliary positive Weil form.

The left side is the previously defined scalar envelope, not an actual zero sum. The normalization is by positive log(2*q), not by silently removing conductor dependence. Conductor one is excluded.

## Evidence

`SOURCE_PROOF_CANDIDATE`. Lean elaboration/build, fresh kernel replay, transitive axiom audit and independent analytical review: `NOT_RUN`. The written argument and Lean script express the same reasoning, not independent proofs. No previous source status is promoted.
