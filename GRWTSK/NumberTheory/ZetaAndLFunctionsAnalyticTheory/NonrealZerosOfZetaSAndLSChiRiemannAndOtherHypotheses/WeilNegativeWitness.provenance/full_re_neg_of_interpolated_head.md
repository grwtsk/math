# full_re_neg_of_interpolated_head

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.full_re_neg_of_interpolated_head` in [WeilNegativeWitness.lean](../WeilNegativeWitness.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `35111c956a8c68047199e1fb2aab9ca24848004d`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source: grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0, 2026-11-10, sections 11.6 and 19.3; PDF SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`. Development: [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51). Relation: conditional finite-head/error consumer.

Exact hypotheses are in the named declaration: the interpolation and equal-weight conditions for the selected pair, norm(full-finiteHead)<=R, and R<2*m(z0). Conclusion: full.re<0. Argument: evaluate the finite head exactly, then apply `re_neg_of_error_budget`. Consumer: a complete source-bound negative witness certificate.

The complex parameter full is not automatically an arithmetic Weil value. The remainder estimate, admissible compact test, actual divisor, conductor/parity terms, every prime power and both relevant pole orientations remain the adapter's responsibility. An uncontrolled positive tail can reverse the head sign; `negative_head_does_not_control_full` records a scalar countermodel.

Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
