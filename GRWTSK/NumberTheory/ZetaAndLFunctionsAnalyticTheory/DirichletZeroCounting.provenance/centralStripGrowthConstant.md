# GRWTSK.NumberTheory.WeilNegativeWitness.centralStripGrowthConstant

Local attribution: grwtsk contributors. Edition 1, 2026-11-11; math#1801.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Source [../DirichletZeroCounting.lean](../DirichletZeroCounting.lean).
Source SHA-256 `7f73b08b2d3cab644d22063c94722d119ac249d645d81a0fba33780adc1abb9f`; Git blob `9a9fc7bcf6f16b8953ce4d69cf86cbe1b161614a`.

```lean
def centralStripGrowthConstant : ℝ
```

Explicit source-defined central-strip growth cost, independent of height.
Ambient variables/instances are those of the linked module; number-theory
levels carry `[NeZero N]`. Retained hypotheses are exactly the displayed header.
Consumer: The existing actual-zero moment/correlation chain; the next missing return is the full arithmetic explicit formula, not another assumed counting bound.
Full argument, local dependencies and hostile boundary checks: [README.md](README.md).
This is a local consequence/pinned-API adaptation, not a new paper formalization.

Local source prerequisite [DirichletLFunctionLeftBounds.lean](https://github.com/grwtsk/math/blob/a551bd9c1a17ec6c42eb373ac844a9a5d11931c2/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletLFunctionLeftBounds.lean), `circle_growth_of_strip_growth, heightCount_le_of_strip_growth, farLeftGrowthConstant_ge_four`; blob `2c47565053a5f684e543f03da4d3f7181b2d0493`. This preserves the dual-character equation, parity and root number. Its own evidence status is unchanged.

Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Elaboration, fresh kernel replay,
transitive axiom audit and independent review NOT_RUN; prior candidate statuses
are unchanged. Proposed, NOT EXECUTED: `#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.centralStripGrowthConstant`.
