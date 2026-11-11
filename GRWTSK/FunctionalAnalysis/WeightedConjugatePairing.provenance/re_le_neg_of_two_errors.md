# re_le_neg_of_two_errors

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.re_le_neg_of_two_errors` in [WeightedConjugatePairing.lean](../WeightedConjugatePairing.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `727272783e1502265da0cb4281bd5c793a924e69`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: local budget composition from W2-W3 in [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51). Exact hypotheses: g.re <= -2*m+tail, norm(q-g) <= cutoff, tail+cutoff <= m. Conclusion: q.re <= -m. Strict negativity additionally requires m>0 and is not part of the bare conclusion.

Argument: bound Re(q-g) by its norm and add the two supplied budgets. Consumers: `pairing_add_self_re_le_neg` and `WeilNegativeWitness.compactification_re_le_neg`. Each error bound must refer to the same q,g; two unrelated approximations do not satisfy the hypotheses. No Gaussian or compact test is constructed by this scalar theorem.

Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
