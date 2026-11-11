# derivativeL1Cost_nonneg

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [FourierDerivativeDecay.lean](../FourierDerivativeDecay.lean); `GRWTSK.MeasureAndIntegration.FourierDerivativeDecay.derivativeL1Cost_nonneg`.
For every f,k the cost is nonnegative because both norm integrals and 2^k are nonnegative. This does not infer integrability from the sign of a totalized integral.
Source: local elementary consequence of mandate RP-OC-01 and the companion definition; `MeasureTheory.integral_nonneg` in pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Consumer: multiplication comparisons and the nonnegative envelope premise of WeightedConjugatePairing. Finite derivative integrals are separately supplied by integrable_iterated_deriv on compact smooth tests.
No direct paper formalization or novelty claim. Exact definition digest, upstream links/authorship, full argument and arithmetic obligations: [README.md](README.md) and [definition record](derivativeL1Cost.md).
Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
