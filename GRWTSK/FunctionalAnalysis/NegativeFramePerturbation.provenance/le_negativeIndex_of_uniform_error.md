# le_negativeIndex_of_uniform_error

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.NegativeFramePerturbation.le_negativeIndex_of_uniform_error` in [canonical source](../NegativeFramePerturbation.lean), exact blob `ad1027a32525519477026631827daeab4c29f16b`.

Statement: under exactly the hypotheses of hasNegativeFrame_of_uniform_error (Q(0)=0, a linear F, positive radius away from zero, all-vector negative reference and uniform error bounds, error<eta), `(n : ENat) <= negativeIndex (scalar := Complex) Q`.

Primary argument: construct the preceding actual negative frame, then apply Program 3 `natCast_le_negativeIndex`. Consumer: existing ENat-valued complex negative index. Comparison: direct order consequence, not a replacement index or a spectral counting theorem. No finite-global-index or finite-off-critical-exception premise is introduced. Without a source-return identity this is not an arithmetic zero statement.

Pins, comparison and reproduction: [hasNegativeFrame_of_weighted_approximation](hasNegativeFrame_of_weighted_approximation.md). Elaboration, kernel replay, transitive axiom audit and independent review: NOT_RUN. No novelty is asserted.
