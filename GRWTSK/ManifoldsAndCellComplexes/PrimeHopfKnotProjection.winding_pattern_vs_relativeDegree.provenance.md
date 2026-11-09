# `winding_pattern_vs_relativeDegree` provenance

Local attribution: grwtsk contributors.

## Exact declaration and source

- File: [PrimeHopfKnotProjection.lean](PrimeHopfKnotProjection.lean).
- Fully qualified declaration: `GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization.PrimeHopfKnotProjection.winding_pattern_vs_relativeDegree`.
- Checked local source Git blob: `9bcd00234a550d0b85a129bd2f019f844a8ee4cb`.
- Prior source: [grwtsk/math at `6e6578240b29`](https://github.com/grwtsk/math/blob/6e6578240b290ee838a8d4f2d0afc5cf8b73e726/GRWTSK/ManifoldsAndCellComplexes/PrimeHopfKnotProjection.lean), declaration `winding_pattern_vs_relativeDegree`, prior blob `8714f9593a94008884324bce81e5ea8c7bcbdccb`.
- Source authors: grwtsk contributors. This is a local source-bound proof repair or verification of a local algebraic construction, not an adaptation attributed to an external paper. Historical source comments do not supply a paper-specific derivation for this declaration.
- Upstream library: [Lean mathlib4 revision d13f23b723b8a846827a245b89c10fc7d3f11612](https://github.com/leanprover-community/mathlib4/tree/d13f23b723b8a846827a245b89c10fc7d3f11612), under the project pin; Lean `leanprover/lean4:v4.34.1`.

## Hypotheses and representation

OffsetPattern m, positive base p, indices i < j, and the original strictly increasing offsets. The displayed quotient is integer division: the annotation : ℤ coerces the winding operands to integers.

Proof repair only: establish winding order and perform the explicit natural-to-integer subtraction bridge before rewriting. Preserve the existing integer-division statement, not a substituted natural quotient.

## Analytical argument and consumer

Strictly increasing offsets imply ordered natural windings. Apply Nat.cast_sub to identify their signed integer difference with the cast natural difference. Apply winding_pattern_gap to obtain twice the offset gap, then divide by 2 and use relativeDegree_ordered.

Consumer: Returns the chosen projected winding data to PrimeSphericalDisplacement.relativeDegree for the exact original offset pattern.

The relative degree is numerical data, not a constructed Chern class. Positive base and ordered offsets are retained; finite meridian phases need not be periodic.

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
