# re_neg_of_error_budget

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.re_neg_of_error_budget` in [WeightedConjugatePairing.lean](../WeightedConjugatePairing.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `727272783e1502265da0cb4281bd5c793a924e69`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: local complex-valued extension of section 11.6 of grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0, 2026-11-10; PDF SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`. Source and development: [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51).

Exact hypotheses: head.re <= -eta, norm(q-head) <= R, R < eta. Conclusion: q.re < 0. Argument: Re(q-head) <= norm(q-head), followed by real linear inequalities. Consumer: `WeilNegativeWitness.full_re_neg_of_interpolated_head`. Strictness is necessary: eta=R=1, head=-1, q=0 refutes the conclusion with only R<=eta.

This consumes a complete error bound; it does not produce one or identify q with the Weil form. Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
