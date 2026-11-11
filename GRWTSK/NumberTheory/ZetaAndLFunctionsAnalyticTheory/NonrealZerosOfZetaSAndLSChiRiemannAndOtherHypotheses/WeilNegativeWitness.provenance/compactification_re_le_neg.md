# compactification_re_le_neg

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.compactification_re_le_neg` in [WeilNegativeWitness.lean](../WeilNegativeWitness.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `35111c956a8c68047199e1fb2aab9ca24848004d`, SHA-256 `dd8467e9bafa216f3facb048513115017ea1d8a0fe174b4b66a40a9cdfe4613e`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: W2-W3 budget composition in [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51). Relation: conditional consumer, not full compactification. Exact hypotheses are the named declaration: positive K,m,Delta,M; the logarithmic b threshold; an upper bound for gaussian.re by -2*m plus the exponential tail; nonnegative S,E with E<=1 and the stopping bound; and norm(full-gaussian)<=M*(2*S*E+E^2). Conclusion: full.re<=-m.

Argument: bound each of the two errors by m/2, then use `re_le_neg_of_two_errors`. Since m>0, the conclusion gives a strict negative margin. Consumer: future source-bound admissible test construction. The two complex values must be supplied by the same analytic construction and have all stated estimates proved.

No Fourier inversion, Gaussian tail sum, compact smooth function, source divisor, full arithmetic explicit formula or unconditional positivity is supplied here. An omitted residual term defeats the budget. Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
