# GRWTSK.FunctionalAnalysis.WeightedNegativeFrames.negativeIndex_eq_of_weighted_approximation_and_observer

Local mathematical attribution: grwtsk contributors.
Source: [WeightedNegativeFrames.lean](../WeightedNegativeFrames.lean). Exact hashes, dependencies and reproduction: [source record](source.md).

**Statement/hypotheses:** Program 2's EvaluationModel D, linear model and reconstructed frames G,F on complex n-coordinates, a positive-away-from-zero nonnegative radius, envelopes S and epsilon, and a uniform negative margin eta with D.mass*(2*S*epsilon+epsilon^2)<eta. Additionally observe:E -> W is complex-linear, W is finite-dimensional of dimension n, and the entire observation kernel is nonnegative for the SAME D.quadratic.

**Primary argument:** Reuse NegativeFramePerturbation.hasNegativeFrame_of_weighted_approximation to obtain an actual n-dimensional negative frame. Apply NegativeIndexBounds.negativeIndex_eq_of_frame_and_observer to combine it with the matching finite-dimensional upper certificate. No part of the concurrent Program-2 perturbation proof is reimplemented.

**Consumer:** Exact finite negative index of the existing signed evaluation form, with its full mixed/quadratic perturbation cost retained. This pairs a source-bound lower certificate with a separate nonnegative-kernel certificate rather than promoting a lower bound to equality.

**Hostile control/limits:** Individual negative generators are not a frame certificate. The observation kernel must be globally nonnegative, not sampled. The arithmetic divisor, smooth test realization, compactification estimates and full pole-inclusive Weil return are not constructed. A nonzero synthetic index is not an off-critical arithmetic witness.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. No GRH result.
