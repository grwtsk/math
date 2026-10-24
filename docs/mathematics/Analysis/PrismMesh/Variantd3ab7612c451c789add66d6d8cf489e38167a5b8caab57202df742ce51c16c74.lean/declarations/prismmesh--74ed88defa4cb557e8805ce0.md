# PrismMesh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c7e36439691c88f359e1c7bb90bf7b114b8bbf39d91dc5181e5bb8a3504e340",
  "kind": "structure",
  "lexical_name": "PrismMesh",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "prismmesh--74ed88defa4cb557e8805ce0",
  "source": {
    "blob": "9cf30650159e9d5d48157b92d94ea11924f0955f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 25,
    "path": "GRWTSK/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74ed88defa4cb557e8805ce075bb76716e53bdcb97d34b9345b99ec2eb5b0452",
  "verification": {
    "reference": "docs/verification/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c7e36439691c88f359e1c7bb90bf7b114b8bbf39d91dc5181e5bb8a3504e340`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrismMesh
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    (M : GeometricPrismCarrier V) where
  activeCells : Finset M.CellId
  activeCells_subset : activeCells ⊆ M.cells
  activeCells_cover : M.carrier = ⋃ c ∈ activeCells, M.cellCarrier c
  cellVertices : M.CellId → Finset V
  cellVertices_nonempty :
    ∀ c, c ∈ activeCells → (cellVertices c).Nonempty
  vertex_lies_in_cell :
    ∀ c {v}, c ∈ activeCells → v ∈ cellVertices c →
      M.vertexPoint v ∈ M.cellCarrier c
  orientation : M.CellId → MeshOrientation
  boundaryCells : Finset M.CellId
  boundaryCells_subset : boundaryCells ⊆ activeCells
  obstacleCells : Finset M.CellId
  obstacleCells_subset : obstacleCells ⊆ activeCells
  interpolationWeight : M.CellId → M.Point → V → ℝ
  weight_nonnegative :
    ∀ c, c ∈ activeCells → ∀ p, p ∈ M.cellCarrier c → ∀ v,
      0 ≤ interpolationWeight c p v
  weight_supported :
    ∀ c, c ∈ activeCells → ∀ p, p ∈ M.cellCarrier c → ∀ {v},
      v ∉ cellVertices c → interpolationWeight c p v = 0
  weights_sum_one :
    ∀ c, c ∈ activeCells → ∀ p ∈ M.cellCarrier c,
      (∑ v ∈ cellVertices c, interpolationWeight c p v) = 1

namespace PrismMesh

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {M : GeometricPrismCarrier V}

/--
An active cell retains both its carrier identifier and the proof that it
participates in this mesh.  Absolute placement is intentionally supplied by a
downstream terrain/geometry bridge rather than by the geometry layer itself.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PrismMesh/Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cf30650159e9d5d48157b92d94ea11924f0955f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
