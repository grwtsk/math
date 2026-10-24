# CrossLayerSurgeryTransaction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8838d2c9d1788f372a4ce2e04a7b01afd009f088a4abb19111359c6bbc8b050",
  "kind": "structure",
  "lexical_name": "CrossLayerSurgeryTransaction",
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
  "slug": "crosslayersurgerytransaction--742a5083c1e31e396326e2b1",
  "source": {
    "blob": "e4ef5562e0d01e3c663f4dc45070ed3866e28c89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Varianta59afb48af5f670dad50ad14bf2f00a790f9df60034477f3bcb00b3b52f6cab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:742a5083c1e31e396326e2b1c84012d6776ec4b25752b7024026348994c8e85f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Varianta59afb48af5f670dad50ad14bf2f00a790f9df60034477f3bcb00b3b52f6cab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8838d2c9d1788f372a4ce2e04a7b01afd009f088a4abb19111359c6bbc8b050`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CrossLayerSurgeryTransaction
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (V : Type uV) [Fintype V] [DecidableEq V]
    (carrier : DAF.Geometry.GeometricPrismCarrier V)
    (F : DAF.Fabric.Fabric)
    (P : DAF.Prismatic.Theory) where
  globalLocus : DAF.Terrain.GlobalSurgeryLocus G
  matrixPatch : Option (MatrixSurgeryEnvelope G)
  terrainPatch : Option (DAF.Terrain.TerrainSurgery G V)
  meshPatch : Option (MeshSurgeryEnvelope G V carrier)
  rasterPatch : Option (RasterSurgeryEnvelope G V carrier)
  fabricPatch : Option (FabricSurgeryEnvelope G F)
  prismaticWitness : Option (PrismaticSurgeryEnvelope G F P)
  matrix_locus_agrees : ∀ patch,
    matrixPatch = some patch → patch.globalLocus = globalLocus
  terrain_locus_agrees : ∀ patch,
    terrainPatch = some patch → patch.patch.locus = globalLocus
  mesh_locus_agrees : ∀ patch,
    meshPatch = some patch → patch.surgery.patch.locus = globalLocus
  raster_locus_agrees : ∀ patch,
    rasterPatch = some patch → patch.surgery.patch.locus = globalLocus
  fabric_locus_agrees : ∀ patch,
    fabricPatch = some patch → patch.adapter.globalLocus = globalLocus
  prismatic_locus_agrees : ∀ patch,
    prismaticWitness = some patch → patch.witness.locus = globalLocus
  allBoundariesAgree : Prop
  allBoundariesAgree_proof : allBoundariesAgree
  complementUnchanged : Prop
  complementUnchanged_proof : complementUnchanged
  globalRulesetReconciled : Prop
  globalRulesetReconciled_proof : globalRulesetReconciled
  governance : SurgeryGovernanceStatus
  unresolvedObligations : List String

namespace CrossLayerSurgeryTransaction

variable
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {V : Type uV} [Fintype V] [DecidableEq V]
    {carrier : DAF.Geometry.GeometricPrismCarrier V}
    {F : DAF.Fabric.Fabric}
    {P : DAF.Prismatic.Theory}

/-- Every present matrix patch targets the transaction's exact locus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Varianta59afb48af5f670dad50ad14bf2f00a790f9df60034477f3bcb00b3b52f6cab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Varianta59afb48af5f670dad50ad14bf2f00a790f9df60034477f3bcb00b3b52f6cab7.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4ef5562e0d01e3c663f4dc45070ed3866e28c89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
