# `hopfObservation_cliffordPoint` provenance

Local attribution: grwtsk contributors.

## Exact declaration and source

- File: [PrimeHopfKnotIntersection.lean](PrimeHopfKnotIntersection.lean).
- Fully qualified declaration: `GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization.PrimeHopfKnotIntersection.hopfObservation_cliffordPoint`.
- Checked local source Git blob: `9fb9b1863207192e2d695e8bbca8c687c22e5c0e`.
- Prior source: [grwtsk/math at `6e6578240b29`](https://github.com/grwtsk/math/blob/6e6578240b290ee838a8d4f2d0afc5cf8b73e726/GRWTSK/ManifoldsAndCellComplexes/PrimeHopfKnotIntersection.lean), declaration `hopfObservation_cliffordPoint`, prior blob `451f9711e6af57b52140b20e330557f6e82fed3c`.
- Source authors: grwtsk contributors. This is a local source-bound proof repair or verification of a local algebraic construction, not an adaptation attributed to an external paper. Historical source comments do not supply a paper-specific derivation for this declaration.
- Upstream library: [Lean mathlib4 revision d13f23b723b8a846827a245b89c10fc7d3f11612](https://github.com/leanprover-community/mathlib4/tree/d13f23b723b8a846827a245b89c10fc7d3f11612), under the project pin; Lean `leanprover/lean4:v4.34.1`.

## Hypotheses and representation

Two arbitrary Mathlib Circle points a,b, mapped into the existing ComplexThreeSphere by cliffordPoint. Hopf convention: 2 * conjugate(first) * second, with height norm(first)^2 - norm(second)^2.

No proof or statement change in this follow-up: compile the exact existing formula with its original imports, rather than only the isolated Mathlib diagnostic.

## Analytical argument and consumer

The real denominator sqrt(2) is nonzero and squares to 2. Its conjugate equals itself. The conjugate of a unit complex phase equals its inverse. Therefore the complex observation is b/a; both squared coordinate norms are 1/2 and their difference is zero.

Consumer: The actual normalized S³ coordinate observation used by hopfObservation_chosenKnot and the PrimePair return.

This is a coordinate pair in ℂ × ℝ, not a full S²-valued map. The chosen conjugation convention fixes the sign. No global bundle trivialization or simultaneous link reconstruction is asserted.

## Scoped evidence

On 2026-11-09, `lake build GRWTSK.ManifoldsAndCellComplexes.PrimeHopfKnotIntersection`
succeeded against the project pins, compiling this exact declaration in its
maintained source with the actual project imports. This is native Lean
elaboration/compilation evidence; dependencies may use cached compiled artifacts.
The earlier isolated diagnostic does not supply the evidence for this record.
No theorem statement was weakened and no new axiom or `sorry` was added.

- Native exact-source elaboration/compilation: PASS.
- Separate fresh kernel replay: NOT_RUN.
- Full transitive axiom audit: NOT_RUN.
- Independent analytical review: NOT_RUN.
- Novelty assessment: NOT_RUN; no novelty claim.

This record does not promote unrelated theorems or the written continuum claims.
