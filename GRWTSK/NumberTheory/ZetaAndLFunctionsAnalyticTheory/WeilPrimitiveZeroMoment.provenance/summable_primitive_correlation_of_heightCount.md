# summable_primitive_correlation_of_heightCount

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.summable_primitive_correlation_of_heightCount` in [WeilPrimitiveZeroMoment.lean](../WeilPrimitiveZeroMoment.lean).

Statement and hypotheses: Primitive chi; D,L,A>=0; canonical admissible f supported in [-A,A]; k>=1; for every H>=2, heightCount(H)<=D*H*(log H+L). Then the original-correlation sum over the actual strip zeros with actual analytic multiplicities is absolutely summable.

Primary source/API: Vincent Beffara and Stefan Kebekus, [Mathlib/Analysis/Analytic/Order.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Analytic/Order.lean), `analyticOrderNatAt; Nat.cast_analyticOrderNatAt; AnalyticAt.analyticOrderAt_ne_zero; AnalyticAt.analyticOrderAt_ne_top; AnalyticOnNhd.analyticOrderAt_ne_top_of_isPreconnected; AnalyticOnNhd.preimage_zero_mem_codiscrete`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `5dd01cf403100219545c2c7c5c81cacfbf634460`. Upstream Apache-2.0.

Canonical consumer: [WeilCorrelationMoment.lean](https://github.com/grwtsk/math/blob/fce314b591c1c453dc0a432004a62b0add7921f1/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationMoment.lean), `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.summable_norm_correlation_of_height_count` and `WeilNegativeWitness.spectralCoordinate_radius_bounds_of_strip`, blob `ab532a6b1345b299c67a0eb18ce7b50ff093d402`. Local zero/index suppliers are in the companion module at this enclosing commit.

Argument and consumer: Convert the genuine count bound to the all-finite-subsets hypothesis. Use the unchanged complex spectral coordinate, its proved strip bound and Re coordinate = Im rho. Feed these source-derived inputs into summable_norm_correlation_of_height_count. The quantitative growth estimate and full arithmetic explicit formula remain unproved inputs/obligations.

Classification: local consequence or source-indexed construction, not a direct paper formalization and not a novelty assertion. Source comparison and the complete argument are in [README.md](README.md). No new frontier claim ID; novelty UNASSESSED. Maintained source is MIT; upstream licenses and bylines remain with their sources.

Pins: inspected math main `fce314b591c1c453dc0a432004a62b0add7921f1`; Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The enclosing commit binds this record and source. Elaboration/build, fresh kernel replay, transitive axiom audit, independent review and arithmetic certification NOT_RUN. Imported candidates retain their status. Proposed axiom query (NOT executed): `#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.summable_primitive_correlation_of_heightCount`.
