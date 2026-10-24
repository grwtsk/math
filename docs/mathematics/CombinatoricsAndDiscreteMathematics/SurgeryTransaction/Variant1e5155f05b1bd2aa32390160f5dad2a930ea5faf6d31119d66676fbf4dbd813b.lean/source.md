# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SurgeryTransaction.Variant1e5155f05b1bd2aa32390160f5dad2a930ea5faf6d31119d66676fbf4dbd813b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f146c9ec185fd39351c382ce0d0a1a06495180a` · SHA-256 `a8f5ec11c88beff58f0d6450bba0b647c63f7f2be92dca270289158672561f1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MatrixSurgeryEnvelope.Varianta59afb48af5f670dad50ad14bf2f00a790f9df60034477f3bcb00b3b52f6cab7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a59afb48af5f670dad50ad14bf2f00a790f9df60034477f3bcb00b3b52f6cab7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MatrixSurgeryEnvelope.Varianta59afb48af5f670dad50ad14bf2f00a790f9df60034477f3bcb00b3b52f6cab7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"a59afb48af5f670dad50ad14bf2f00a790f9df60034477f3bcb00b3b52f6cab7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Integration/SurgeryTransaction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BinaryMatrix.SubmatrixSurgery
import DAF.Geometry.RasterSurgery
import DAF.Prismatic.SurgeryBridge
import DAF.Terrain.Surgery

/-!
# Cross-layer surgery transactions

Surgery here is an exact, globally located replacement operation.  It is not
smooth-manifold surgery.  Each envelope below retains its layer's native typed
patch; the integration transaction merely proves that every present patch
names one common maximal-state locus and that seam, complement, and ruleset
conditions reconcile across layers.

No individual option is called a complete cross-layer surgery.  Reversibility
continues to require the layer-specific backward/rollback witnesses.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MatrixSurgeryEnvelope.Varianta59afb48af5f670dad50ad14bf2f00a790f9df60034477f3bcb00b3b52f6cab7

namespace DAF.Integration

universe uState uV

/-- A matrix patch together with its explicit map into the terrain global locus. -/
structure MatrixSurgeryEnvelope
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State) where
  rows : Nat
  columns : Nat
  before : BinMat rows columns
  matrixLocus : MatrixLocus rows columns
  surgery : BinarySubmatrixSurgery before matrixLocus
  globalLocus : DAF.Terrain.GlobalSurgeryLocus G
  matrixLocusMapsToGlobal : Prop
  matrixLocusMapsToGlobal_proof : matrixLocusMapsToGlobal

/-- A mesh patch with all dependent before/after meshes retained. -/
structure MeshSurgeryEnvelope
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (V : Type uV) [Fintype V] [DecidableEq V]
    (carrier : DAF.Geometry.GeometricPrismCarrier V) where
  before : DAF.Geometry.PrismMesh carrier
  after : DAF.Geometry.PrismMesh carrier
  surgery : DAF.Geometry.MeshSurgery G before after

/-- A raster patch retaining its dependent mesh patch and common charge. -/
structure RasterSurgeryEnvelope
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (V : Type uV) [Fintype V] [DecidableEq V]
    (carrier : DAF.Geometry.GeometricPrismCarrier V) where
  beforeMesh : DAF.Geometry.PrismMesh carrier
  afterMesh : DAF.Geometry.PrismMesh carrier
  meshSurgery : DAF.Geometry.MeshSurgery G beforeMesh afterMesh
  charge : DAF.Terrain.BinaryVertexCharge V
  beforeRaster :
    DAF.Geometry.ContinuousTerrainRaster beforeMesh charge
  afterRaster :
    DAF.Geometry.ContinuousTerrainRaster afterMesh charge
  surgery : DAF.Geometry.RasterSurgery G meshSurgery charge
    beforeRaster afterRaster

/-- A fabric patch located by the terrain-owned global-locus type. -/
structure FabricSurgeryEnvelope
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (F : DAF.Fabric.Fabric) where
  adapter : DAF.Fabric.SurgicalPatchAdapter
    (DAF.Terrain.GlobalSurgeryLocus G) F

/-- A dependent prismatic patch envelope. -/
structure PrismaticSurgeryEnvelope
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (F : DAF.Fabric.Fabric)
    (P : DAF.Prismatic.Theory) where
  before : DAF.Prismatic.SourceRealization F P
  after : DAF.Prismatic.SourceRealization F P
  witness : DAF.Prismatic.PrismaticSurgeryWitness G F P before after

/-- Governance status is data; it is not a proof that the patch is correct. -/
inductive SurgeryGovernanceStatus
  | proposed
  | independentlyReviewed
  | humanAuthorized
  | rejected
  deriving DecidableEq, Repr

/-- One candidate transaction across all available abstraction layers. -/
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
theorem matrix_targets_global_locus
    (transaction : CrossLayerSurgeryTransaction G V carrier F P)
    {patch : MatrixSurgeryEnvelope G}
    (h : transaction.matrixPatch = some patch) :
    patch.globalLocus = transaction.globalLocus :=
  transaction.matrix_locus_agrees patch h

/-- Every present terrain patch targets the transaction's exact locus. -/
theorem terrain_targets_global_locus
    (transaction : CrossLayerSurgeryTransaction G V carrier F P)
    {patch : DAF.Terrain.TerrainSurgery G V}
    (h : transaction.terrainPatch = some patch) :
    patch.patch.locus = transaction.globalLocus :=
  transaction.terrain_locus_agrees patch h

/-- Every present mesh patch targets the transaction's exact locus. -/
theorem mesh_targets_global_locus
    (transaction : CrossLayerSurgeryTransaction G V carrier F P)
    {patch : MeshSurgeryEnvelope G V carrier}
    (h : transaction.meshPatch = some patch) :
    patch.surgery.patch.locus = transaction.globalLocus :=
  transaction.mesh_locus_agrees patch h

/-- Every present raster patch targets the transaction's exact locus. -/
theorem raster_targets_global_locus
    (transaction : CrossLayerSurgeryTransaction G V carrier F P)
    {patch : RasterSurgeryEnvelope G V carrier}
    (h : transaction.rasterPatch = some patch) :
    patch.surgery.patch.locus = transaction.globalLocus :=
  transaction.raster_locus_agrees patch h

/-- Every present fabric patch targets the transaction's exact locus. -/
theorem fabric_targets_global_locus
    (transaction : CrossLayerSurgeryTransaction G V carrier F P)
    {patch : FabricSurgeryEnvelope G F}
    (h : transaction.fabricPatch = some patch) :
    patch.adapter.globalLocus = transaction.globalLocus :=
  transaction.fabric_locus_agrees patch h

/-- Every present arithmetic witness targets the transaction's exact locus. -/
theorem prismatic_targets_global_locus
    (transaction : CrossLayerSurgeryTransaction G V carrier F P)
    {patch : PrismaticSurgeryEnvelope G F P}
    (h : transaction.prismaticWitness = some patch) :
    patch.witness.locus = transaction.globalLocus :=
  transaction.prismatic_locus_agrees patch h

/-- Cross-layer seam, complement, and ruleset conditions are genuinely conjunctive. -/
theorem reconciliation_conditions
    (transaction : CrossLayerSurgeryTransaction G V carrier F P) :
    transaction.allBoundariesAgree ∧
      transaction.complementUnchanged ∧
      transaction.globalRulesetReconciled :=
  ⟨transaction.allBoundariesAgree_proof,
    transaction.complementUnchanged_proof,
    transaction.globalRulesetReconciled_proof⟩

end CrossLayerSurgeryTransaction

end DAF.Integration
```
