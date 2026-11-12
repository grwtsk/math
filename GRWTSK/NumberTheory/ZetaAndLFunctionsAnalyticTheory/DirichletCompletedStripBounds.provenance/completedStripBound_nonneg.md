# GRWTSK.NumberTheory.DirichletStripBounds.completedStripBound_nonneg

Local attribution: grwtsk contributors. Edition 1, 2026-11-11; math#1801.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Source [../DirichletCompletedStripBounds.lean](../DirichletCompletedStripBounds.lean).
Source SHA-256 `25181e732f2671d89c4d087b4d3f38dd039dc1339aec4e3e40d4b756afe0d7e0`; Git blob `4a3de09ed9a906482beae04c1a5e8d44879344e6`.

```lean
theorem completedStripBound_nonneg : 0 ≤ completedStripBound N
```

Positivity needed in all later product comparisons.
Ambient variables/instances are those of the linked module; number-theory
levels carry `[NeZero N]`. Retained hypotheses are exactly the displayed header.
Consumer: `WeilNegativeWitness.poleClearedLFunction_central_circle_growth`, on the unchanged Jensen circle.
Full argument, local dependencies and hostile boundary checks: [README.md](README.md).
This is a local consequence/pinned-API adaptation, not a new paper formalization.

David Loeffler, [Mathlib/NumberTheory/LSeries/ZMod.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/ZMod.lean), `ZMod.completedLFunction`; blob `877b3290807830b2260b8959a1fbfd32a04f196b`. Apache-2.0.

Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Elaboration, fresh kernel replay,
transitive axiom audit and independent review NOT_RUN; prior candidate statuses
are unchanged. Proposed, NOT EXECUTED: `#print axioms GRWTSK.NumberTheory.DirichletStripBounds.completedStripBound_nonneg`.
