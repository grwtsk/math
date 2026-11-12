# GRWTSK.NumberTheory.WeilNegativeWitness.sourceCountConstant

Local attribution: grwtsk contributors. Edition 1, 2026-11-11; math#1801.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Source [../DirichletZeroCounting.lean](../DirichletZeroCounting.lean).
Source SHA-256 `7f73b08b2d3cab644d22063c94722d119ac249d645d81a0fba33780adc1abb9f`; Git blob `9a9fc7bcf6f16b8953ce4d69cf86cbe1b161614a`.

```lean
def sourceCountConstant (chi : DirichletCharacter ℂ N) : ℝ
```

Displayed all-height counting constant for the actual primitive source.
Ambient variables/instances are those of the linked module; number-theory
levels carry `[NeZero N]`. Retained hypotheses are exactly the displayed header.
Consumer: The existing actual-zero moment/correlation chain; the next missing return is the full arithmetic explicit formula, not another assumed counting bound.
Full argument, local dependencies and hostile boundary checks: [README.md](README.md).
This is a local consequence/pinned-API adaptation, not a new paper formalization.

Stefan Kebekus, [JensenFormula.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/JensenFormula.lean), `AnalyticOnNhd.sum_divisor_le`; blob `3dd78e234df51703431c913f5bc6081233542e97`. Apache-2.0. Used through the existing source Jensen/count consumers, not re-proved here.

Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Elaboration, fresh kernel replay,
transitive axiom audit and independent review NOT_RUN; prior candidate statuses
are unchanged. Proposed, NOT EXECUTED: `#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.sourceCountConstant`.
