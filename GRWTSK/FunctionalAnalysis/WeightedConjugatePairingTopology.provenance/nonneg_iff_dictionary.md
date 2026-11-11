# nonneg_iff_dictionary

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.EvaluationModel.nonneg_iff_dictionary` in [canonical source](../WeightedConjugatePairingTopology.lean), exact blob `3f2101e809d7d56a917a1283a3d3efe190cfad9b`.

Statement: for any model D and encoding Code -> E with dense range, nonnegativity of D.quadratic on every x:E is equivalent to nonnegativity on every encoded d:Code. Quantification over the entire dictionary is essential.

Primary argument: apply canonical Program 10 `nonneg_iff_on_dense_range` with the derived continuity theorem. Consumer: countable positivity reductions when a countable dense dictionary is separately supplied. Comparison: closedness of the nonnegative locus; standard RP-OC-02 W4/OCERT-1 consequence. A finite positive prefix or positive basis vectors do not establish either universal side. No actual arithmetic nonnegativity is proved.

Pins, analytical boundaries and reproduction: [continuous_quadratic](continuous_quadratic.md). Elaboration, kernel replay, transitive axiom audit and independent review: NOT_RUN. No novelty is asserted.
