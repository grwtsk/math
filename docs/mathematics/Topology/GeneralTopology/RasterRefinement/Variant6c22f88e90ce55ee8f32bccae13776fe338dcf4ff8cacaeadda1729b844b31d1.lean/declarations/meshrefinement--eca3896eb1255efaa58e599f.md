# MeshRefinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:697bcf09c80b5a5fa0ecc0df9028409c81cecb325030f7d6a7230446b14f76c5",
  "kind": "structure",
  "lexical_name": "MeshRefinement",
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
  "slug": "meshrefinement--eca3896eb1255efaa58e599f",
  "source": {
    "blob": "d1738f244d3da88ff4580acca3361a4d1783550c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 19,
    "path": "GRWTSK/Topology/GeneralTopology/RasterRefinement/Variant6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eca3896eb1255efaa58e599fd9dfd7fc15be7793ca1c8f1054648cd8ce0b28e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RasterRefinement/Variant6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:697bcf09c80b5a5fa0ecc0df9028409c81cecb325030f7d6a7230446b14f76c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MeshRefinement
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {coarseCarrier fineCarrier : GeometricPrismCarrier V}
    (coarse : PrismMesh coarseCarrier)
    (fine : PrismMesh fineCarrier) where
  pointMap : fineCarrier.CarrierPoint → coarseCarrier.CarrierPoint
  continuous_pointMap : Continuous pointMap
  vertex_preserving :
    ∀ v,
      pointMap ⟨fineCarrier.vertexPoint v, fineCarrier.vertex_mem v⟩ =
        ⟨coarseCarrier.vertexPoint v, coarseCarrier.vertex_mem v⟩
  cellMap : fineCarrier.CellId → coarseCarrier.CellId
  cellMap_mem :
    ∀ c, c ∈ fine.activeCells → cellMap c ∈ coarse.activeCells
  cell_preserving :
    ∀ c, ∀ hc : c ∈ fine.activeCells,
      ∀ p, ∀ hp : p ∈ fineCarrier.cellCarrier c,
        (pointMap (fineCarrier.cellPoint (fine.activeCell_mem hc) hp)).1 ∈
          coarseCarrier.cellCarrier (cellMap c)
  boundary_preserving :
    ∀ c, c ∈ fine.boundaryCells → cellMap c ∈ coarse.boundaryCells
  obstacle_preserving :
    ∀ c, c ∈ fine.obstacleCells → cellMap c ∈ coarse.obstacleCells

/-- Proof that two rasters are related by one exact mesh refinement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RasterRefinement/Variant6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RasterRefinement/Variant6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1738f244d3da88ff4580acca3361a4d1783550c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
