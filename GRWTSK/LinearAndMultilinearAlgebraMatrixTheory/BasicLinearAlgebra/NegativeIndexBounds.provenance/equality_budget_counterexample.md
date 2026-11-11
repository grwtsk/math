# GRWTSK.LinearAlgebra.NegativeIndexBounds.equality_budget_counterexample

Local mathematical attribution: grwtsk contributors.
Source: [NegativeIndexBounds.lean](../NegativeIndexBounds.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** For any real x, compare the model -x^2 and perturbed value 0 with error allowance x^2.

**Primary argument:** Their absolute difference is exactly x^2, so the equality-sized error bound holds, while the perturbed value is not strictly negative. This is a direct order calculation.

**Consumer:** Guard the strict inequality in hasNegativeFrame_of_error_bound and weighted-frame budgets.

**Hostile control/limits:** This concerns a lower negative-frame certificate; it does not prohibit non-strict inequalities in upper-index kernel certificates.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
