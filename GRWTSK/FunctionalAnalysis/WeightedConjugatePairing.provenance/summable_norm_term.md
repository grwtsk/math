# summable_norm_term

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.summable_norm_term` in [WeightedConjugatePairing.lean](../WeightedConjugatePairing.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `727272783e1502265da0cb4281bd5c793a924e69`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: local comparison-test consequence of W1 in [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51). The named declaration retains all quantified weights, reflection and evaluation bounds. Its additional hypothesis is summability of m(i)*w(i)^2; its conclusion is absolute summability of the signed complex summands.

Argument: multiply the summable majorant by A*B, apply Mathlib's norm comparison test, and use `norm_term_le`. Consumer: legitimate subtraction of the two infinite pairings in `norm_pairing_add_self_sub_le`. A finite head bound alone does not supply the required global summability. A totalized `tsum` without summability is not used as evidence of an analytic sum.

No source-specific moment bound or actual zero enumeration is constructed. This is not an adaptation of an external Lean proof. Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
