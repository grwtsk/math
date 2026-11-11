# finiteHead_eq_neg_two_mul

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.finiteHead_eq_neg_two_mul` in [WeilNegativeWitness.lean](../WeilNegativeWitness.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `35111c956a8c68047199e1fb2aab9ca24848004d`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0, 2026-11-10, section 14.1 and section 19.3; PDF SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`. Development W2: [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51). Relation: local finite-sum consequence of the pair-block calculation.

The named declaration specifies a finite set containing distinct conjugate nodes, equal weights there, evaluations 1,-1, and zero at other head nodes. It concludes finiteHead = -2*m(z0) as a complex equality. Argument: each of the selected nodes contributes -m(z0); every other summand vanishes. Consumer: `full_re_neg_of_interpolated_head`.

This exact equality requires no global conjugation closure of the finite set, but actual divisor symmetry remains an arithmetic obligation. Positive m(z0) is needed to infer negativity. A repeated root contributes a multiplicity weight, not new independent evaluation coordinates. No infinite-tail assertion follows.

Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
