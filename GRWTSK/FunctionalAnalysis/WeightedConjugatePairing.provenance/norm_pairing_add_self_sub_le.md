# norm_pairing_add_self_sub_le

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.norm_pairing_add_self_sub_le` in [WeightedConjugatePairing.lean](../WeightedConjugatePairing.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `727272783e1502265da0cb4281bd5c793a924e69`, SHA-256 `a59f9d99a9be54294d37a88cac184d583162149579d44aa61561158e700417ad`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: W1 and the error-budget part of W3 in [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51). Local abstract consequence, not the analytic integration-by-parts theorem. Under the named declaration's evaluation bounds, nonnegative invariant weight, summable weighted moment and mass bound M, the full pairing difference has norm at most M*(2*S*E+E^2).

Argument: first prove absolute summability of both complete pairings, rewrite their difference as an infinite sum of differences, and sum the three-term pointwise error majorant. Consumer: `pairing_add_self_re_le_neg` and a future Fourier cutoff adapter. The norm-square estimate in `QuadraticError.lean` is not substituted for this signed form. A finite positive majorant or finite negative head without full-tail control is insufficient.

Actual Fourier evaluations, exponential weighted Sobolev control and source-specific divisor bounds remain missing suppliers. No positive or Hermitian form is assumed. Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
