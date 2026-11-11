# mem_heightWindow

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.mem_heightWindow` in [DirichletZeroMultiplicity.lean](../DirichletZeroMultiplicity.lean).

Statement and hypotheses: Membership in heightWindow is equivalent to the exact strict absolute-height cutoff.

Primary source/API: Johannes Hölzl, Mario Carneiro and Kyle Miller, [Mathlib/Data/Set/Finite/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Data/Set/Finite/Basic.lean), `Set.Finite.of_injOn; Set.Finite.toFinset`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `40f8afca47062f1c7b3bcb90fe17761ceb927773`. Upstream Apache-2.0.

Argument and consumer: The finite-set conversion preserves every source-index element. Equality at a cutoff is handled by the stated strict predicate, not silently included or omitted.

Classification: local consequence or source-indexed construction, not a direct paper formalization and not a novelty assertion. Source comparison and the complete argument are in [README.md](README.md). No new frontier claim ID; novelty UNASSESSED. Maintained source is MIT; upstream licenses and bylines remain with their sources.

Pins: inspected math main `fce314b591c1c453dc0a432004a62b0add7921f1`; Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The enclosing commit binds this record and source. Elaboration/build, fresh kernel replay, transitive axiom audit, independent review and arithmetic certification NOT_RUN. Imported candidates retain their status. Proposed axiom query (NOT executed): `#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.mem_heightWindow`.
