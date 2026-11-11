# mass_nonneg

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.EvaluationModel.mass_nonneg` in [canonical source](../WeightedConjugatePairingTopology.lean). Exact source blob: `3f2101e809d7d56a917a1283a3d3efe190cfad9b`.

Statement: for every `EvaluationModel ι E`, its full majorant mass `sum' i, multiplicity i * weight i^2` is nonnegative. The model retains nonnegative multiplicities and weights, reflection-invariant weights, a summable weighted moment, and the linear evaluation estimate. No signed-form positivity is among its fields.

Primary argument: every summand is nonnegative, so `tsum_nonneg` applies. Consumer: the quadratic continuity modulus and uniform family error estimate. Comparison: elementary order consequence of RP-OC-02 W1, not a new theorem. A positive majorant does not imply positivity of the signed pairing.

Source pins, analytical boundaries and reproduction instructions: [continuous_quadratic](continuous_quadratic.md). Elaboration, kernel replay, transitive axiom audit and independent review: NOT_RUN. No novelty or arithmetic positivity is claimed.
