# RasterSurgery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aebd6bf9bb5ee5f4ca5deabdc0fda6634d8c9a6d3d06a51e7bddea58896cb758",
  "kind": "structure",
  "lexical_name": "RasterSurgery",
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
  "slug": "rastersurgery--ad412d8d4c435cda76cc1c35",
  "source": {
    "blob": "bc9c85d13373ef49e33c46671b1d42acac6d672c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad412d8d4c435cda76cc1c35afe17887f2d35803bfd045dadbef0c2d75063a1f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aebd6bf9bb5ee5f4ca5deabdc0fda6634d8c9a6d3d06a51e7bddea58896cb758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RasterSurgery
    {State : Type uState}
    (G : KnownMaximalState State)
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {M : GeometricPrismCarrier V}
    {beforeMesh afterMesh : PrismMesh M}
    (meshSurgery : MeshSurgery G beforeMesh afterMesh)
    (charge : BinaryVertexCharge V)
    (beforeRaster : ContinuousTerrainRaster beforeMesh charge)
    (afterRaster : ContinuousTerrainRaster afterMesh charge) where
  patch : SurgeryPatch G
  isRasterLayer : patch.layer = .raster
  same_global_locus :
    patch.locus.region.coordinates =
      meshSurgery.patch.locus.region.coordinates
  seam : Set M.CarrierPoint
  seam_lies_on_shared_boundary :
    ∀ p, p ∈ seam →
      ∃ c ∈ meshSurgery.sharedBoundary, p.1 ∈ M.cellCarrier c
  seamAgreement :
    ∀ p, p ∈ seam → ∀ i,
      afterRaster.field p i = beforeRaster.field p i
  retainedCellContinuous :
    ∀ c, ∀ _hbefore : c ∈ beforeMesh.activeCells,
      ∀ hafter : c ∈ afterMesh.activeCells,
        Continuous (rasterFieldOnCell afterRaster hafter)
  insertedCellContinuous :
    ∀ c, ∀ _hc : c ∈ meshSurgery.insertedCells,
      ∀ hactive : c ∈ afterMesh.activeCells,
        Continuous (rasterFieldOnCell afterRaster hactive)
  outside_unchanged :
    ∀ p, ¬ pointInMeshSurgery meshSurgery p → ∀ i,
      afterRaster.field p i = beforeRaster.field p i

namespace RasterSurgery

variable {State : Type uState} {G : KnownMaximalState State}
variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {M : GeometricPrismCarrier V}
variable {beforeMesh afterMesh : PrismMesh M}
variable {meshSurgery : MeshSurgery G beforeMesh afterMesh}
variable {charge : BinaryVertexCharge V}
variable {beforeRaster : ContinuousTerrainRaster beforeMesh charge}
variable {afterRaster : ContinuousTerrainRaster afterMesh charge}

/-- Raster surgery preserves the common binary charge at every vertex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RasterSurgery/Variant1d902b6353c6517d6c65088dcd782d5b01fb186afc9565351b4e38aad129e7d5.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc9c85d13373ef49e33c46671b1d42acac6d672c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
