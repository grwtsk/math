# exists_negative_dictionary

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.EvaluationModel.exists_negative_dictionary` in [canonical source](../WeightedConjugatePairingTopology.lean), exact blob `3f2101e809d7d56a917a1283a3d3efe190cfad9b`.

Statement: for any model D, any type Code and encoding Code -> E with DenseRange, a test x with D.quadratic x<0 implies existence of d with D.quadratic(encode d)<0. Countability and computability are not inferred from density.

Primary argument: apply Program 10 `exists_negative_on_dense_range`, using the continuity derived here from the weighted envelope. Consumer: preservation of a strict Program 2 witness under dense approximation. Comparison: standard openness/density consequence of RP-OC-02 W4 and OCERT-1, not a new Weil criterion. Missing suppliers: actual smooth dictionary, density in the specified norm, Fourier model, and arithmetic return. No finite search guarantee follows.

Pins, shared source comparison and reproduction: [continuous_quadratic](continuous_quadratic.md). Elaboration, kernel replay, transitive axiom audit and independent review: NOT_RUN. No novelty is asserted.
