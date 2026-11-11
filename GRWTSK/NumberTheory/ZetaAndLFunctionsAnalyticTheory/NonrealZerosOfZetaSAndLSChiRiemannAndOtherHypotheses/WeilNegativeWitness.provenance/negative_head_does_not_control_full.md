# negative_head_does_not_control_full

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.negative_head_does_not_control_full` in [WeilNegativeWitness.lean](../WeilNegativeWitness.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `35111c956a8c68047199e1fb2aab9ca24848004d`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: local hostile example for sections 11.6, 14.2 and 19.3 of grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0, 2026-11-10; PDF SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`. Development: [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51).

Exact statement: (-2:Real)<0 and 0<(-2:Real)+3. Argument: exact arithmetic normalization. Consumer: guard against inferring a negative full value from a negative finite head without a remainder bound. This is only a scalar synthetic countermodel. It is not a Weil divisor, actual L-function zero configuration, numerical experiment, or refutation of GRH.

Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
