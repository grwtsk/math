# exists_complex_pair_interpolant

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.exists_complex_pair_interpolant` in [WeilNegativeWitness.lean](../WeilNegativeWitness.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `35111c956a8c68047199e1fb2aab9ca24848004d`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: the finite polynomial step of W2 in [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51). It is NOT a formalization of the Fourier evaluation surjectivity in monograph Proposition 14.1. For a finite set containing distinct z0 and conj(z0), it constructs a complex polynomial of degree below the set cardinality taking values 1,-1 at those nodes and zero at all other nodes.

Argument: apply Mathlib `Lagrange.interpolate`, `degree_interpolate_lt` and `eval_interpolate_at_node` to the piecewise prescribed values. Consumer: the fixed finite-head witness construction. Existing `ConjugateInterpolation.exists_real_interpolate` is not applicable: opposite real values at conjugate nodes are incompatible with real coefficients. If z0 is real the two values are inconsistent. Multiplicity remains a weight, not repeated independent nodes.

No seminorm/conditioning bound, Gaussian transform, Fourier realization or tail suppression is concluded. Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
