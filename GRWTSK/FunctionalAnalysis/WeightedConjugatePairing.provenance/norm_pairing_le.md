# norm_pairing_le

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.norm_pairing_le` in [WeightedConjugatePairing.lean](../WeightedConjugatePairing.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `727272783e1502265da0cb4281bd5c793a924e69`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: local abstract form of W1 in [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51). The exact statement is in the named declaration: nonnegative m,w,A,B, a reflection-invariant weight, two evaluation majorants, summability, and total weighted mass <= M imply norm(pairing u v) <= M*A*B.

Argument: sum the pointwise norm majorant by Mathlib's quantitative comparison theorem and apply the mass bound. Consumer: continuity/error estimates for the complete signed pairing. The representation is an arbitrary index type with supplied evaluations, not yet Fourier transforms of compact smooth tests. Unlike a positive norm-square energy, the pairing may be indefinite. No Hermitian-symmetry conclusion follows without further hypotheses.

The Fourier and arithmetic moment suppliers remain open. Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
