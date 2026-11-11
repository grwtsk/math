# abs_quadratic_sub_le

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.EvaluationModel.abs_quadratic_sub_le` in [canonical source](../WeightedConjugatePairingTopology.lean). Exact source blob: `3f2101e809d7d56a917a1283a3d3efe190cfad9b`.

Statement: for every model D and tests x,y, `abs(D.quadratic y-D.quadratic x) <= D.mass * (2*norm(x)*norm(y-x)+norm(y-x)^2)`. The model supplies the nonnegative reflection-invariant envelope, summable weighted mass, and the linear evaluation estimate. Neither positivity nor an involution is needed for this bound on the real part.

Primary argument: T(x)+T(y-x)=T(y); apply the canonical whole-divisor perturbation theorem and bound the absolute real part by the complex norm. Both mixed terms remain. Consumer: continuity and simultaneous negative-frame stability. Comparison: explicit specialization of RP-OC-02 W1; unlike positive norm-square reconstruction, it applies to the signed form.

Source pins, arithmetic limitations and reproduction: [continuous_quadratic](continuous_quadratic.md). Elaboration, kernel replay, transitive axiom audit and independent review: NOT_RUN. No novelty is asserted.
