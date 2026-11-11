# compact_inter_primitive_LFunction_zeros_finite

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.compact_inter_primitive_LFunction_zeros_finite` in [DirichletZeroMultiplicity.lean](../DirichletZeroMultiplicity.lean).

Statement and hypotheses: Every compact complex set contains only finitely many distinct zeros of the actual primitive LFunction.

Primary source/API: Huanyu Zheng, [Mathlib/NumberTheory/LSeries/ZetaZeros.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/ZetaZeros.lean), `isClosed_riemannZetaZeros; isDiscrete_riemannZetaZeros; IsCompact.inter_riemannZetaZeros_finite`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `a061262f567eb33cac8ef5f52e5212246254e708`. Upstream Apache-2.0.

Argument and consumer: The zero intersection is compact by closedness and discrete by restriction; compact discrete sets are finite. This adapts the upstream zeta argument to the derived primitive-source theorem, without a counting-growth assertion.

Classification: local consequence or source-indexed construction, not a direct paper formalization and not a novelty assertion. Source comparison and the complete argument are in [README.md](README.md). No new frontier claim ID; novelty UNASSESSED. Maintained source is MIT; upstream licenses and bylines remain with their sources.

Pins: inspected math main `fce314b591c1c453dc0a432004a62b0add7921f1`; Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The enclosing commit binds this record and source. Elaboration/build, fresh kernel replay, transitive axiom audit, independent review and arithmetic certification NOT_RUN. Imported candidates retain their status. Proposed axiom query (NOT executed): `#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.compact_inter_primitive_LFunction_zeros_finite`.
