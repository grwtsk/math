# `hopfObservation_chosenKnot` provenance

Local attribution: grwtsk contributors.

## Exact declaration and source

- File: [PrimeHopfKnotIntersection.lean](PrimeHopfKnotIntersection.lean).
- Fully qualified declaration: `GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization.PrimeHopfKnotIntersection.hopfObservation_chosenKnot`.
- Checked local source Git blob: `9fb9b1863207192e2d695e8bbca8c687c22e5c0e`.
- Prior source: [grwtsk/math at `6e6578240b29`](https://github.com/grwtsk/math/blob/6e6578240b290ee838a8d4f2d0afc5cf8b73e726/GRWTSK/ManifoldsAndCellComplexes/PrimeHopfKnotIntersection.lean), declaration `hopfObservation_chosenKnot`, prior blob `451f9711e6af57b52140b20e330557f6e82fed3c`.
- Source authors: grwtsk contributors. This is a local source-bound proof repair or verification of a local algebraic construction, not an adaptation attributed to an external paper. Historical source comments do not supply a paper-specific derivation for this declaration.
- Upstream library: [Lean mathlib4 revision d13f23b723b8a846827a245b89c10fc7d3f11612](https://github.com/leanprover-community/mathlib4/tree/d13f23b723b8a846827a245b89c10fc7d3f11612), under the project pin; Lean `leanprover/lean4:v4.34.1`.

## Hypotheses and representation

A natural label p with 0 < p and a Mathlib Circle point u. The representative is the existing chosenKnot p u, normalized into the complex-coordinate S³ subtype.

No proof or statement change in this follow-up; exact source compilation now succeeds through the repaired prerequisites.

## Analytical argument and consumer

Apply hopfObservation_cliffordPoint to a=u² and b=u^(2p+1). Positivity gives 2p+1 = projectedWinding p + 2 in natural arithmetic. Cancel u² to obtain u^projectedWinding p and zero height.

Consumer: Connects the actual chosen S³ representative to the winding defined in PrimeHopfKnotProjection, consumed by hopfObservation_primePair_return.

At p=0 the actual phase exponent is -1 whereas projectedWinding 0=0, so positivity is essential. This is a phase formula, not a topological degree or smooth embedding theorem.

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
