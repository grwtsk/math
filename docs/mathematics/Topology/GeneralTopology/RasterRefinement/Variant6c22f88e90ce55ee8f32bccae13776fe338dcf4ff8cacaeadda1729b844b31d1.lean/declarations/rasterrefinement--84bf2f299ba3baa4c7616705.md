# RasterRefinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:184e8dbd1456da6a3c934ab00e539282b25999a6124007b6bb2a92da7fb2f602",
  "kind": "structure",
  "lexical_name": "RasterRefinement",
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
  "slug": "rasterrefinement--84bf2f299ba3baa4c7616705",
  "source": {
    "blob": "d1738f244d3da88ff4580acca3361a4d1783550c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/RasterRefinement/Variant6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84bf2f299ba3baa4c7616705eb3e9302e7dbd517752e311b471d141f8d13ec2a",
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

Occurrence: `declaration:184e8dbd1456da6a3c934ab00e539282b25999a6124007b6bb2a92da7fb2f602`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RasterRefinement
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {coarseCarrier fineCarrier : GeometricPrismCarrier V}
    {coarse : PrismMesh coarseCarrier}
    {fine : PrismMesh fineCarrier}
    (charge : BinaryVertexCharge V)
    (coarseRaster : ContinuousTerrainRaster coarse charge)
    (fineRaster : ContinuousTerrainRaster fine charge) where
  mesh : MeshRefinement coarse fine
  field_commutes :
    ∀ p i,
      fineRaster.field p i = coarseRaster.field (mesh.pointMap p) i
  boundary_trace_commutes :
    ∀ c, ∀ hc : c ∈ fine.boundaryCells,
      ∀ p, ∀ hp : p ∈ fineCarrier.cellCarrier c, ∀ i,
        fineRaster.boundaryData.boundaryTrace c
            (fineCarrier.cellPoint (fine.boundaryCell_mem hc) hp) i =
          coarseRaster.boundaryData.boundaryTrace (mesh.cellMap c)
            (mesh.pointMap
              (fineCarrier.cellPoint (fine.boundaryCell_mem hc) hp)) i

namespace RasterRefinement

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {coarseCarrier fineCarrier : GeometricPrismCarrier V}
variable {coarse : PrismMesh coarseCarrier} {fine : PrismMesh fineCarrier}
variable {charge : BinaryVertexCharge V}
variable {coarseRaster : ContinuousTerrainRaster coarse charge}
variable {fineRaster : ContinuousTerrainRaster fine charge}

/-- Raster restriction is exactly pointwise precomposition by the mesh map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RasterRefinement/Variant6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RasterRefinement/Variant6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1738f244d3da88ff4580acca3361a4d1783550c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
