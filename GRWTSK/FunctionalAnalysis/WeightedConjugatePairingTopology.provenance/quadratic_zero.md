# quadratic_zero

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.EvaluationModel.quadratic_zero` in [canonical source](../WeightedConjugatePairingTopology.lean). Exact source blob: `3f2101e809d7d56a917a1283a3d3efe190cfad9b`.

Statement: for every model D, `D.quadratic 0 = 0`. The quadratic value is explicitly the real part of the full signed pairing. Primary argument: linearity maps zero to zero, so every summand, the sum, and its real part vanish.

Consumer: strict negativity forces the approximation map's kernel to be zero in NegativeFramePerturbation. Comparison: algebraic property of the RP-OC-02 pairing, not nondegeneracy and not a GRH conclusion. A nonzero vector can still have zero quadratic value.

Source pins, boundaries and reproduction: [continuous_quadratic](continuous_quadratic.md). Elaboration, kernel replay, transitive axiom audit and independent review: NOT_RUN. No novelty is asserted.
