# CrossLayerSurgeryTransaction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8702694e5158357d9201a85cb334e59dd0c62f51f1ae9001b50f556da83c06ec",
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
  "slug": "crosslayersurgerytransaction--34d9138964fefcc948a1a0fa",
  "source": {
    "blob": "845aa17659b7d43d65c31f5b659e6a13250b3aa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variantc20148fe134fd2b4a388ecd486fc7e3161afb9c490d175f405d037d43f6b0e7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34d9138964fefcc948a1a0fa178aafda603739e1f68bcac7f33cad17e4c2611a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variantc20148fe134fd2b4a388ecd486fc7e3161afb9c490d175f405d037d43f6b0e7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8702694e5158357d9201a85cb334e59dd0c62f51f1ae9001b50f556da83c06ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–146.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variantc20148fe134fd2b4a388ecd486fc7e3161afb9c490d175f405d037d43f6b0e7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variantc20148fe134fd2b4a388ecd486fc7e3161afb9c490d175f405d037d43f6b0e7a.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `845aa17659b7d43d65c31f5b659e6a13250b3aa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
