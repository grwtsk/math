# pairing_add_self_re_le_neg

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.pairing_add_self_re_le_neg` in [WeightedConjugatePairing.lean](../WeightedConjugatePairing.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `727272783e1502265da0cb4281bd5c793a924e69`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: local abstract W1/W3 consumer from [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51). The declaration retains all moment, reflection-weight and evaluation hypotheses. Additionally it assumes Re B(u,u) <= -2*m0+tail and tail+M*(2*S*E+E^2)<=m0; it concludes Re B(u+e,u+e)<=-m0.

Argument: apply the full-divisor perturbation estimate, then `re_le_neg_of_two_errors`. Consumer: a future adapter from an auxiliary Gaussian transform and its compact-test error to a negative arithmetic witness. This theorem supplies the comparison, not the test construction, smoothness, support, or arithmetic identification. A nonpositive m0 gives no strictly negative conclusion.

The positive majorant and the signed form remain distinct. Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
