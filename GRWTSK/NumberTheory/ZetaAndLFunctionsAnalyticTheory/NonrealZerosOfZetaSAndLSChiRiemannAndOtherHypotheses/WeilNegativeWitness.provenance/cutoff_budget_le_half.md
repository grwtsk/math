# cutoff_budget_le_half

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.cutoff_budget_le_half` in [WeilNegativeWitness.lean](../WeilNegativeWitness.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `35111c956a8c68047199e1fb2aab9ca24848004d`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: W3 stopping budget in [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51), a local scalar consequence. Exact hypotheses: M>0, S>=0, 0<=E<=1, E<=m/(2*M*(2*S+1)). Conclusion: M*(2*S*E+E^2)<=m/2.

Argument: E^2<=E on [0,1], and multiplication by the positive denominator gives the remaining linear budget. Consumer: `compactification_re_le_neg`. The restriction E<=1 is essential to this bound; it is not justified by smallness language without an actual estimate.

This does not construct a smooth cutoff, bound its derivative, enclose Gaussian integrals, or prove that the resulting error tends to zero. Those are separate W3 obligations. Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
