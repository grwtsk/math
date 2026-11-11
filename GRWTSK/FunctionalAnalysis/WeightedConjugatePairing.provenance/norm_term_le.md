# norm_term_le

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.norm_term_le` in [WeightedConjugatePairing.lean](../WeightedConjugatePairing.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `727272783e1502265da0cb4281bd5c793a924e69`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: local consequence of W1 in [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51), not an imported external proof. The full quantified statement is the named Lean declaration. Nonnegative weights m,w, invariance w(j i)=w i, A>=0, and the two evaluation bounds imply norm(term i) <= A*B*m(i)*w(i)^2. No involution or positivity of the signed pairing is assumed.

Argument: take norms of the three complex factors, use the reflection-invariant majorant, multiply inequalities only by nonnegative quantities, and rearrange. Consumer: `summable_norm_term` and `norm_pairing_le`. The positive majorant does not identify the signed summand with a square. Negative multiplicities or unbounded reflected evaluations invalidate this comparison.

Arithmetic divisor identification and Fourier decay are not provided. Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
