# norm_value_le

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.EvaluationModel.norm_value_le` in [canonical source](../WeightedConjugatePairingTopology.lean). Exact source blob: `3f2101e809d7d56a917a1283a3d3efe190cfad9b`.

Statement: for every model D and x, `norm(D.value x) <= D.mass * norm(x)^2`. The value is the full signed conjugation-swap pairing; the mass is only its majorant. The model supplies an actual summable weighted moment and a norm-bounded linear evaluation map.

Primary argument: use `norm_pairing_le` with both evaluation vectors equal and the exact moment sum as M; reassociate the scalar product. Consumer: full-value quantitative control. Comparison: standard RP-OC-02 W1 consequence; an upper bound on absolute value is not a positivity theorem. No Fourier realization or arithmetic identification is supplied.

Source pins, boundaries and reproduction: [continuous_quadratic](continuous_quadratic.md). Elaboration, kernel replay, transitive axiom audit and independent review: NOT_RUN. No novelty is asserted.
