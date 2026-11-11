# term_add_self_sub

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.term_add_self_sub` in [WeightedConjugatePairing.lean](../WeightedConjugatePairing.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `727272783e1502265da0cb4281bd5c793a924e69`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: elementary algebra used in W1 of [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51), a local consequence rather than an external proof adaptation. For arbitrary m,j,u,e and each index, the diagonal difference is exactly the sum of the u,e mixed term, the e,u mixed term and the e,e term.

Argument: distribute multiplication and complex conjugation over addition. Consumer: `norm_term_add_self_sub_le`. Both mixed terms are retained. Without a Hermitian hypothesis they cannot be identified; no positivity, involution or infinite-sum interchange is needed for this pointwise identity.

No arithmetic or analytic realization is claimed. Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
