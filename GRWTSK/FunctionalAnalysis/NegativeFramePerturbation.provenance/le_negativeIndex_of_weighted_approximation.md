# le_negativeIndex_of_weighted_approximation

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.NegativeFramePerturbation.le_negativeIndex_of_weighted_approximation` in [canonical source](../NegativeFramePerturbation.lean), exact blob `ad1027a32525519477026631827daeab4c29f16b`.

Statement: under the exact hypotheses recorded for hasNegativeFrame_of_weighted_approximation, `(n : ENat) <= negativeIndex (scalar := Complex) D.quadratic`. In particular all coefficient vectors, the same full pairing, a common linear approximation and the strict budget M(2S epsilon+epsilon^2)<eta are retained.

Primary argument: construct the actual injective negative frame from the preceding theorem, then apply canonical Program 3 `natCast_le_negativeIndex`. Consumer: quantitative lower bounds on the same full-form negative index. Comparison: standard order consequence of the stability theorem. This neither identifies index with arithmetic zero multiplicity nor proves a finite-index hypothesis; ENat still permits infinity.

Exact pins, full argument, countermodel, arithmetic limitations and reproduction: [principal record](hasNegativeFrame_of_weighted_approximation.md). Elaboration, kernel replay, transitive axiom audit and independent review: NOT_RUN. No novelty or GRH claim.
