# `p_add_gap` provenance

Local attribution: grwtsk contributors.

## Exact declaration and source

- File: [PrimeLinkGeometrization.lean](PrimeLinkGeometrization.lean).
- Fully qualified declaration: `GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization.p_add_gap`.
- Checked local source Git blob: `5098c2937141e47dfa0020779cddb8774e28b1cd`.
- Prior source: [grwtsk/math at `6e6578240b29`](https://github.com/grwtsk/math/blob/6e6578240b290ee838a8d4f2d0afc5cf8b73e726/GRWTSK/ManifoldsAndCellComplexes/PrimeLinkGeometrization.lean), declaration `p_add_gap`, prior blob `d9beefbdf447c1b9cd4cb615b66ed29e2ab1d12a`.
- Source authors: grwtsk contributors. This is a local source-bound proof repair or verification of a local algebraic construction, not an adaptation attributed to an external paper. Historical source comments do not supply a paper-specific derivation for this declaration.
- Upstream library: [Lean mathlib4 revision d13f23b723b8a846827a245b89c10fc7d3f11612](https://github.com/leanprover-community/mathlib4/tree/d13f23b723b8a846827a245b89c10fc7d3f11612), under the project pin; Lean `leanprover/lean4:v4.34.1`.

## Hypotheses and representation

The existing ordered PrimePair x. No consecutiveness or prime-distribution premise.

Proof repair only; expose an already stored hypothesis. The statement is unchanged.

## Analytical argument and consumer

Since x.p < x.q, natural subtraction is exact and x.p + (x.q - x.p) = x.q. Expose x.ordered before omega.

Consumer: Exact arithmetic source recovery from the left endpoint and gap in the prime-link recipe.

For unordered labels truncated subtraction does not satisfy this identity in general. It does not reconstruct a link complement.

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
