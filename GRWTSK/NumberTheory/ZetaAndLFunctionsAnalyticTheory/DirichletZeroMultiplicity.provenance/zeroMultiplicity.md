# zeroMultiplicity

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.zeroMultiplicity` in [DirichletZeroMultiplicity.lean](../DirichletZeroMultiplicity.lean).

Statement and hypotheses: Natural analytic order of LFunction chi at the actual indexed rho.

Primary source/API: Vincent Beffara and Stefan Kebekus, [Mathlib/Analysis/Analytic/Order.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Analytic/Order.lean), `analyticOrderNatAt; Nat.cast_analyticOrderNatAt; AnalyticAt.analyticOrderAt_ne_zero; AnalyticAt.analyticOrderAt_ne_top; AnalyticOnNhd.analyticOrderAt_ne_top_of_isPreconnected; AnalyticOnNhd.preimage_zero_mem_codiscrete`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `5dd01cf403100219545c2c7c5c81cacfbf634460`. Upstream Apache-2.0.

Argument and consumer: The definition uses the upstream order, not an independently chosen weight. Consumers must use zeroMultiplicity_cast and zeroMultiplicity_pos, which exclude the infinite-order-to-zero convention.

Classification: local consequence or source-indexed construction, not a direct paper formalization and not a novelty assertion. Source comparison and the complete argument are in [README.md](README.md). No new frontier claim ID; novelty UNASSESSED. Maintained source is MIT; upstream licenses and bylines remain with their sources.

Pins: inspected math main `fce314b591c1c453dc0a432004a62b0add7921f1`; Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The enclosing commit binds this record and source. Elaboration/build, fresh kernel replay, transitive axiom audit, independent review and arithmetic certification NOT_RUN. Imported candidates retain their status. Proposed axiom query (NOT executed): `#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.zeroMultiplicity`.
