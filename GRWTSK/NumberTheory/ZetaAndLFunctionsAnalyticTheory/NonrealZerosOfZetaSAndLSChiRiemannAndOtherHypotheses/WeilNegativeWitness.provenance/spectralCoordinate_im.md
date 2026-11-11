# spectralCoordinate_im

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.spectralCoordinate_im` in [WeilNegativeWitness.lean](../WeilNegativeWitness.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `35111c956a8c68047199e1fb2aab9ca24848004d`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: coordinate convention in [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51), a local algebraic consequence. For every complex rho, z=-I*(rho-1/2) has imaginary part 1/2-Re(rho). No zero or critical-strip hypothesis is needed.

Argument: expand the imaginary part of complex multiplication and subtraction. Consumer: `spectralCoordinate_im_eq_zero_iff`. The sign belongs to the convention rho=1/2+I*z; replacing it by the opposite Fourier convention changes this identity. It does not identify any divisor or prove a symmetry of L-function zeros.

Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
