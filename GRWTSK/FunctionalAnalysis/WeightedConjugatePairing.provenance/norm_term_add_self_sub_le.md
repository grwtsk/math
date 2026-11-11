# norm_term_add_self_sub_le

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.norm_term_add_self_sub_le` in [WeightedConjugatePairing.lean](../WeightedConjugatePairing.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `727272783e1502265da0cb4281bd5c793a924e69`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: local pointwise perturbation estimate for W1 in [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51). The named declaration gives the exact nonnegative-weight, reflection-invariance and evaluation hypotheses. The pointwise diagonal error is bounded by (2*S*E+E^2)*m(i)*w(i)^2.

Argument: expand with `term_add_self_sub`, apply the triangle inequality and apply `norm_term_le` separately to all three summands. Consumer: `norm_pairing_add_self_sub_le`. This is an upper norm bound, not positivity of the signed form; dropping either mixed term would give an unjustified budget.

It does not establish global summability or evaluate any arithmetic source. Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
