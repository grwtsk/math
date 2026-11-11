# CriticalStripZero.ne_one

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.CriticalStripZero.ne_one` in [DirichletZeroMultiplicity.lean](../DirichletZeroMultiplicity.lean).

Statement and hypotheses: Every indexed open-strip zero differs from 1.

Primary source/API: David Loeffler and Michael Stoll, [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `differentiableAt_LFunction; differentiable_LFunction; LFunction_modOne_eq`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`. Upstream Apache-2.0.

Argument and consumer: Its real part is strictly less than 1, so it cannot be the pole location. This supplies the exact domain of the order theorem.

Classification: local consequence or source-indexed construction, not a direct paper formalization and not a novelty assertion. Source comparison and the complete argument are in [README.md](README.md). No new frontier claim ID; novelty UNASSESSED. Maintained source is MIT; upstream licenses and bylines remain with their sources.

Pins: inspected math main `fce314b591c1c453dc0a432004a62b0add7921f1`; Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The enclosing commit binds this record and source. Elaboration/build, fresh kernel replay, transitive axiom audit, independent review and arithmetic certification NOT_RUN. Imported candidates retain their status. Proposed axiom query (NOT executed): `#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.CriticalStripZero.ne_one`.
