# criticalStripStatement_of_detection_and_nonnegativity

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity` in [WeilNegativeWitness.lean](../WeilNegativeWitness.lean).
Exact Lean source: candidate revision `e8917c4aa71a0f88cefeb72036efbba259644eb3`, blob `35111c956a8c68047199e1fb2aab9ca24848004d`. Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean `v4.34.1`.

Source correspondence: backward target and W4 in [research issue 51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51), following RP-OC-02 section 19.3 of grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0, 2026-11-10; PDF SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`. Relation: conditional interface, not a formalized Weil criterion.

Exact scope: every positive modulus (via NeZero N), character chi, and real-valued functional Q on complex functions. The detector hypothesis sends each off-line zero of the analytically continued `DirichletCharacter.LFunction chi` in 0<Re(rho)<1 to a compact smooth f with Q(f)<0. A second hypothesis requires Q(f)>=0 for every such f. The conclusion is the critical-strip assertion for that same chi. No primitivity is needed for this abstract implication; construction of the intended arithmetic suppliers remains source-specific.

Argument: assume an off-line zero, obtain the admissible negative witness, and contradict the separately supplied nonnegativity for the SAME functional. Consumer: eventual backward GRH route. Setting Q to an auxiliary positive energy cannot establish the detector. Neither hard hypothesis is proved here. The actual divisor, all prime powers, conductor, parity, both relevant pole orientations, and full explicit-formula identity remain missing. Boundary/trivial-zero exclusions and all-character quantification are not silently inserted.

Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801). Elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Source candidate only; novelty UNASSESSED, none asserted.
