# RasterSourceBridge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9efccb3e9ffc3f8dbe2f451a946d7797ab259c6c04da1b4f63d46363881e5dda",
  "kind": "structure",
  "lexical_name": "RasterSourceBridge",
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
  "slug": "rastersourcebridge--117623a1af27b61a7158ea7e",
  "source": {
    "blob": "19a038bf60ad42ec5b1095996a14e6c3d28c78c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:117623a1af27b61a7158ea7eab08767a761e6ac23fa438a09a9f81b230054f9a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9efccb3e9ffc3f8dbe2f451a946d7797ab259c6c04da1b4f63d46363881e5dda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RasterSourceBridge
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {F : DAF.Fabric.Fabric}
    {P : Theory}
    (terrain : TerrainSourceRealization G F P)
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {carrier : DAF.Geometry.GeometricPrismCarrier V}
    {mesh : DAF.Geometry.PrismMesh carrier}
    {charge : DAF.Terrain.BinaryVertexCharge V}
    (raster : DAF.Geometry.ContinuousTerrainRaster mesh charge) where
  vertexCoordinate : V ↪ G.Coord
  rasterRepresentation : (Fin charge.channels → ℝ) → P.DerivedAlg
  vertexSquare :
    ∀ v : V,
      rasterRepresentation
          (fun i ↦ raster.field
            ⟨carrier.vertexPoint v, carrier.vertex_mem v⟩ i) =
        terrain.source.cellCorrespondence
          (terrain.cellAt (vertexCoordinate v)).2

namespace RasterSourceBridge

/-- The bridge retains exact absolute coordinate identity for every vertex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RasterBridge/Varianta5a91cc728d206e7328607955ed229d0f837bede3c5662a0a1b14d5489c4bc5f.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19a038bf60ad42ec5b1095996a14e6c3d28c78c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
