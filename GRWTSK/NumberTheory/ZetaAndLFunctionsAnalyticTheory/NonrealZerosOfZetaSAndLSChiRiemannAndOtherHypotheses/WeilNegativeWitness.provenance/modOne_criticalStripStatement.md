# modOne_criticalStripStatement

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.modOne_criticalStripStatement` in [WeilNegativeWitness.lean](../WeilNegativeWitness.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `35111c956a8c68047199e1fb2aab9ca24848004d`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Primary formal dependency: `DirichletCharacter.LFunction_modOne_eq` in [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), upstream authors David Loeffler and Michael Stoll, file blob `89c72580697983d86706cff17ccbea2cee6475a3`. Relation: local specialization using an imported theorem, not a new paper formalization or copied proof.

The statement identifies the module's open-critical-strip assertion for the unique character modulo one with the corresponding assertion for riemannZeta. Argument: unfold the proposition and rewrite by the pinned Mathlib identity. Consumer: source-identity check for the conductor-one case of Program 2, [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51).

This does not prove the assertion. It is not an equivalence with Mathlib's full RiemannHypothesis target without separate boundary and trivial-zero exclusions. No pole term is deleted by this comparison.

Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
