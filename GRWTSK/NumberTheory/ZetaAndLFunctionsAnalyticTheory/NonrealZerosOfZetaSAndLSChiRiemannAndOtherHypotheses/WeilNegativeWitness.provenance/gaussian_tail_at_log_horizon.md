# gaussian_tail_at_log_horizon

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.gaussian_tail_at_log_horizon` in [WeilNegativeWitness.lean](../WeilNegativeWitness.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `35111c956a8c68047199e1fb2aab9ca24848004d`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: scalar threshold in W2 of [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51), not the full Gaussian tail theorem. Exact hypotheses: K,m,Delta>0 and b>=1+max(0,log(2*K/m))/(2*Delta). Conclusion: K*exp(-2*(b-1)*Delta)<=m/2.

Argument: multiply the threshold by the positive denominator, use log(2*K/m)<=max(0,log(2*K/m)), apply monotonicity of exp and exp(-log(x))=1/x for x>0. Consumer: `compactification_re_le_neg`. Division and logarithmic simplification require the strict positivity assumptions.

No estimate identifying this scalar expression with the infinite divisor tail is provided. Fixed-head separation, polynomial conditioning, moment constants and the proposed W2 constant K all remain analytic suppliers. The standard logarithmic rearrangement carries no novelty claim.

Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
