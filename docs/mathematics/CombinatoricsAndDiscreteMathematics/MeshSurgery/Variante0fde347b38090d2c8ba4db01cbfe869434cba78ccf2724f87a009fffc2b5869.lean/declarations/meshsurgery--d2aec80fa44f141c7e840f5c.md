# MeshSurgery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c046ea5a4ff9561d702297519ae60c349ff5d9e4a3b7b37f74a5584f18135d8",
  "kind": "structure",
  "lexical_name": "MeshSurgery",
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
  "slug": "meshsurgery--d2aec80fa44f141c7e840f5c",
  "source": {
    "blob": "3811f170cfbd3ebdd1b1a5fd3e75d7e60c0d56ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2aec80fa44f141c7e840f5c27abc3d6a850ba8a3b9f7510707546f98e878d7b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c046ea5a4ff9561d702297519ae60c349ff5d9e4a3b7b37f74a5584f18135d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MeshSurgery
    {State : Type uState}
    (G : KnownMaximalState State)
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {M : GeometricPrismCarrier V}
    (before after : PrismMesh M) where
  patch : SurgeryPatch G
  isMeshLayer : patch.layer = .mesh
  vertexGlobal : V ↪ G.Coord
  locusVertices : Finset V
  locus_exact :
    letI := G.coordDecEq
    ∀ c, c ∈ patch.locus.region.coordinates ↔
      ∃ v ∈ locusVertices, vertexGlobal v = c
  removedCells : Finset M.CellId
  insertedCells : Finset M.CellId
  removedCells_spec : removedCells = before.activeCells \ after.activeCells
  insertedCells_spec : insertedCells = after.activeCells \ before.activeCells
  changed_cell_vertices_in_locus :
    ∀ c,
      c ∈ removedCells ∪ insertedCells →
      ∀ v, v ∈ before.cellVertices c ∪ after.cellVertices c →
        v ∈ locusVertices
  locus_vertices_changed :
    ∀ v, v ∈ locusVertices →
      ∃ c ∈ removedCells ∪ insertedCells,
        v ∈ before.cellVertices c ∪ after.cellVertices c
  sharedBoundary : Finset M.CellId
  sharedBoundary_before : sharedBoundary ⊆ before.boundaryCells
  sharedBoundary_after : sharedBoundary ⊆ after.boundaryCells
  orientation_preserved :
    ∀ c, c ∈ before.activeCells → c ∈ after.activeCells →
      before.orientation c = after.orientation c
  cellVertices_preserved :
    ∀ c, c ∈ before.activeCells → c ∈ after.activeCells →
      before.cellVertices c = after.cellVertices c
  interpolation_preserved :
    ∀ c, c ∈ before.activeCells → c ∈ after.activeCells →
      ∀ p v,
        before.interpolationWeight c p v = after.interpolationWeight c p v
  cover_preserved : M.carrier = ⋃ c ∈ after.activeCells, M.cellCarrier c
  declaredOverlap : M.CellId → M.CellId → Prop
  overlap_accounted :
    ∀ {c d}, c ∈ after.activeCells → d ∈ after.activeCells → c ≠ d →
      Disjoint (M.cellCarrier c) (M.cellCarrier d) ∨ declaredOverlap c d
  outside_unchanged :
    ∀ c,
      ¬ cellTouchesMeshLocus before patch.locus.region vertexGlobal c →
      ¬ cellTouchesMeshLocus after patch.locus.region vertexGlobal c →
      (c ∈ before.activeCells ↔ c ∈ after.activeCells) ∧
      before.cellVertices c = after.cellVertices c ∧
      before.orientation c = after.orientation c

namespace MeshSurgery

variable {State : Type uState} {G : KnownMaximalState State}
variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {M : GeometricPrismCarrier V}
variable {before after : PrismMesh M}

/-- Removed cells are exactly active-before but inactive-after. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MeshSurgery/Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3811f170cfbd3ebdd1b1a5fd3e75d7e60c0d56ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
