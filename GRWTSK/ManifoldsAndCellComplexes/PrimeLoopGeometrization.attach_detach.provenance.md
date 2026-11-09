# `attach_detach` provenance

Local attribution: grwtsk contributors.

## Exact declaration and source

- File: [PrimeLoopGeometrization.lean](PrimeLoopGeometrization.lean).
- Fully qualified declaration: `GRWTSK.Topology.GeometricTopology.PrimeLoopGeometrization.attach_detach`.
- Checked local source Git blob: `a32d83ce33bd9258be1cc4e370ca3292a63adb37`.
- Prior source: [grwtsk/math at `6e6578240b29`](https://github.com/grwtsk/math/blob/6e6578240b290ee838a8d4f2d0afc5cf8b73e726/GRWTSK/ManifoldsAndCellComplexes/PrimeLoopGeometrization.lean), declaration `attach_detach`, prior blob `c37a6402441eae820cc6a53d8eb7c753cb8fda8f`.
- Source authors: grwtsk contributors. This is a local source-bound proof repair or verification of a local algebraic construction, not an adaptation attributed to an external paper. Historical source comments do not supply a paper-specific derivation for this declaration.
- Upstream library: [Lean mathlib4 revision d13f23b723b8a846827a245b89c10fc7d3f11612](https://github.com/leanprover-community/mathlib4/tree/d13f23b723b8a846827a245b89c10fc7d3f11612), under the project pin; Lean `leanprover/lean4:v4.34.1`.

## Hypotheses and representation

An arbitrary endpoint-dependent edge family E, group G, voltage assignment U, and genuine lifted edge occurrence p. No finiteness or connectivity is assumed.

Proof repair only: reduce the dependent witness types before substituting the terminal sheet, replacing failing direct equality elimination. The statement and all dependent original edge identities are unchanged.

## Analytical argument and consumer

Unpack the two endpoints and the full original edge witness. Reduce product projections in the witness type and target equation, obtaining g * U e = h. Substitute the forced terminal sheet; the reconstructed sigma record equals the original by reflexivity and proof irrelevance.

Consumer: edgeOccurrenceEquiv uses this as its right inverse, counting actual voltage-cover edges rather than endpoint pairs. This prerequisite enables the exact PrimePair/Hopf import chain.

No topological graph covering or three-manifold classification follows. Parallel edge witnesses remain distinct; an endpoint-only enumeration would not prove this statement.

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
