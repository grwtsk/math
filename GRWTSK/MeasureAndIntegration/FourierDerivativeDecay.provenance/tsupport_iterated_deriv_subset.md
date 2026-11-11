# tsupport_iterated_deriv_subset

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [FourierDerivativeDecay.lean](../FourierDerivativeDecay.lean); `GRWTSK.MeasureAndIntegration.FourierDerivativeDecay.tsupport_iterated_deriv_subset`.
For every complex-valued function f and natural k, tsupport(deriv^[k] f) is contained in tsupport f. Induct on k using the derivative-support inclusion. No regularity or integrability is inferred from support alone.
Primary source: Floris van Doorn, [Deriv/Support.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/Deriv/Support.lean), `tsupport_deriv_subset`, blob `2e0f13e2809671ab3f7a797c8e33d1da18e45f2b`. Local iterated consequence; upstream Apache-2.0/authorship retained.
Consumer: one fixed support radius in every derivative-order estimate, including endpoints.
Complete argument, dependency pins and arithmetic limitations: [README.md](README.md). No novelty/direct-paper claim.
Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
