# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SurgeryTransaction.Variantffd893b5af827ba2bdae09e519bde5f501e588ee3e59fad8d1b59b85faad5420

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13316f1594f85fa83a003da860789405ffd28e44` · SHA-256 `ffd893b5af827ba2bdae09e519bde5f501e588ee3e59fad8d1b59b85faad5420`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Surgery.Submatrix
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

namespace DAF.Integration

open BitMatrix.Geometry
open BitMatrix.Surgery

universe uState uV

/-- A matrix patch together with its explicit map into the terrain global locus. -/
structure MatrixSurgeryEnvelope
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State) where
  rows : Nat
  columns : Nat
  before : BitMatrix rows columns
  matrixLocus : MatrixLocus rows columns
  surgery : SubmatrixSurgery before matrixLocus
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
