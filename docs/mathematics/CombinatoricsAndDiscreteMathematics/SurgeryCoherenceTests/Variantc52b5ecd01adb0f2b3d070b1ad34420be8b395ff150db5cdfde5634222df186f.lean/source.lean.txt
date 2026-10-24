-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Global.Variant1607fea12e392f5010711cc87d3dbc38c90bd2f0872ec382ba1c75db30dfe8e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1607fea12e392f5010711cc87d3dbc38c90bd2f0872ec382ba1c75db30dfe8e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Global.Variant1607fea12e392f5010711cc87d3dbc38c90bd2f0872ec382ba1c75db30dfe8e4","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1607fea12e392f5010711cc87d3dbc38c90bd2f0872ec382ba1c75db30dfe8e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Integration/SurgeryCoherenceTests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Integration.SurgeryTransaction

/-!
# Exact-locus surgery coherence tests

The concrete transaction carries a nontrivial one-cell matrix replacement and
maps it to one fixed terrain-global locus.  The generic examples then exercise
the production coherence theorems for every optional layer.  They do not call
a discrete patch smooth-manifold surgery and do not infer global invertibility
from the local replacement.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Global.Variant1607fea12e392f5010711cc87d3dbc38c90bd2f0872ec382ba1c75db30dfe8e4

namespace DAF.Integration.SurgeryCoherenceTests

open DAF.Terrain
open BitMatrix.Geometry
open BitMatrix.Surgery
open BitMatrix.Surgery.SubmatrixSurgery

abbrev global : KnownMaximalState Bool where
  Coord := Fin 2
  coordFintype := inferInstance
  coordDecEq := inferInstance
  cardinality := 2
  absoluteIndex := Equiv.refl _
  reference _ := false

local instance : Fintype global.Coord := global.coordFintype
local instance : DecidableEq global.Coord := global.coordDecEq

abbrev locus : GlobalSurgeryLocus global where
  region := ⟨{0}⟩
  globalIdentifier := "absolute-coordinate-zero"

def before : BitMatrix 2 2 := fun _ _ => false

def matrixLocus : MatrixLocus 2 2 where
  rows := {0}
  columns := {1}

def replacement :
    BitMatrix matrixLocus.rows.card matrixLocus.columns.card :=
  fun _ _ => true

def matrixSurgery : SubmatrixSurgery before matrixLocus :=
  SubmatrixSurgery.replace before matrixLocus replacement

abbrev matrixEnvelope : MatrixSurgeryEnvelope global where
  rows := 2
  columns := 2
  before := before
  matrixLocus := matrixLocus
  surgery := matrixSurgery
  globalLocus := locus
  matrixLocusMapsToGlobal := True
  matrixLocusMapsToGlobal_proof := trivial

/-- A transaction with one present matrix patch and no falsely manufactured
patches at the other abstraction layers. -/
def matrixOnlyTransaction
    {V : Type*} [Fintype V] [DecidableEq V]
    (carrier : DAF.Geometry.GeometricPrismCarrier V)
    (F : DAF.Fabric.Fabric)
    (P : DAF.Prismatic.Theory) :
    CrossLayerSurgeryTransaction global V carrier F P where
  globalLocus := locus
  matrixPatch := some matrixEnvelope
  terrainPatch := none
  meshPatch := none
  rasterPatch := none
  fabricPatch := none
  prismaticWitness := none
  matrix_locus_agrees patch h := by
    have hp : matrixEnvelope = patch := Option.some.inj h
    subst patch
    rfl
  terrain_locus_agrees patch h := by cases h
  mesh_locus_agrees patch h := by cases h
  raster_locus_agrees patch h := by cases h
  fabric_locus_agrees patch h := by cases h
  prismatic_locus_agrees patch h := by cases h
  allBoundariesAgree := True
  allBoundariesAgree_proof := trivial
  complementUnchanged := True
  complementUnchanged_proof := trivial
  globalRulesetReconciled := True
  globalRulesetReconciled_proof := trivial
  governance := .proposed
  unresolvedObligations := []

example :
    BitMatrix.extractSubmatrix matrixSurgery.result matrixLocus = replacement :=
  matrixSurgery.extract_result

example : matrixSurgery.result 0 1 = true := by native_decide

example : matrixSurgery.result 1 0 = before 1 0 :=
  matrixSurgery.outside_unchanged 1 0 (Or.inl (by decide))

example {i j : Fin 2}
    (h : (i, j) ∈ BitMatrix.differenceSupport matrixSurgery.result before) :
    i ∈ matrixLocus.rows ∧ j ∈ matrixLocus.columns :=
  matrixSurgery.difference_support_inside h

example
    {V : Type*} [Fintype V] [DecidableEq V]
    (carrier : DAF.Geometry.GeometricPrismCarrier V)
    (F : DAF.Fabric.Fabric)
    (P : DAF.Prismatic.Theory) :
    (matrixOnlyTransaction carrier F P).matrixPatch = some matrixEnvelope :=
  rfl

example
    {V : Type*} [Fintype V] [DecidableEq V]
    (carrier : DAF.Geometry.GeometricPrismCarrier V)
    (F : DAF.Fabric.Fabric)
    (P : DAF.Prismatic.Theory) :
    matrixEnvelope.globalLocus =
      (matrixOnlyTransaction carrier F P).globalLocus :=
  (matrixOnlyTransaction carrier F P).matrix_targets_global_locus rfl

example
    {V : Type*} [Fintype V] [DecidableEq V]
    (carrier : DAF.Geometry.GeometricPrismCarrier V)
    (F : DAF.Fabric.Fabric)
    (P : DAF.Prismatic.Theory) :
    (matrixOnlyTransaction carrier F P).allBoundariesAgree ∧
      (matrixOnlyTransaction carrier F P).complementUnchanged ∧
      (matrixOnlyTransaction carrier F P).globalRulesetReconciled :=
  (matrixOnlyTransaction carrier F P).reconciliation_conditions

/-! Production coherence APIs for transactions with additional present layers. -/

example
    {State V : Type*} [Fintype V] [DecidableEq V]
    {G : KnownMaximalState State}
    {carrier : DAF.Geometry.GeometricPrismCarrier V}
    {F : DAF.Fabric.Fabric} {P : DAF.Prismatic.Theory}
    (transaction : CrossLayerSurgeryTransaction G V carrier F P)
    {patch : DAF.Terrain.TerrainSurgery G V}
    (h : transaction.terrainPatch = some patch) :
    patch.patch.locus = transaction.globalLocus :=
  transaction.terrain_targets_global_locus h

example
    {State V : Type*} [Fintype V] [DecidableEq V]
    {G : KnownMaximalState State}
    {carrier : DAF.Geometry.GeometricPrismCarrier V}
    {F : DAF.Fabric.Fabric} {P : DAF.Prismatic.Theory}
    (transaction : CrossLayerSurgeryTransaction G V carrier F P)
    {matrix : MatrixSurgeryEnvelope G}
    {terrain : DAF.Terrain.TerrainSurgery G V}
    (hm : transaction.matrixPatch = some matrix)
    (ht : transaction.terrainPatch = some terrain) :
    matrix.globalLocus = terrain.patch.locus :=
  (transaction.matrix_targets_global_locus hm).trans
    (transaction.terrain_targets_global_locus ht).symm

example
    {State V : Type*} [Fintype V] [DecidableEq V]
    {G : KnownMaximalState State}
    {carrier : DAF.Geometry.GeometricPrismCarrier V}
    {F : DAF.Fabric.Fabric} {P : DAF.Prismatic.Theory}
    (transaction : CrossLayerSurgeryTransaction G V carrier F P)
    {mesh : MeshSurgeryEnvelope G V carrier}
    (h : transaction.meshPatch = some mesh) :
    mesh.surgery.patch.locus = transaction.globalLocus :=
  transaction.mesh_targets_global_locus h

example
    {State V : Type*} [Fintype V] [DecidableEq V]
    {G : KnownMaximalState State}
    {carrier : DAF.Geometry.GeometricPrismCarrier V}
    {F : DAF.Fabric.Fabric} {P : DAF.Prismatic.Theory}
    (transaction : CrossLayerSurgeryTransaction G V carrier F P)
    {raster : RasterSurgeryEnvelope G V carrier}
    (h : transaction.rasterPatch = some raster) :
    raster.surgery.patch.locus = transaction.globalLocus :=
  transaction.raster_targets_global_locus h

example
    {State V : Type*} [Fintype V] [DecidableEq V]
    {G : KnownMaximalState State}
    {carrier : DAF.Geometry.GeometricPrismCarrier V}
    {F : DAF.Fabric.Fabric} {P : DAF.Prismatic.Theory}
    (transaction : CrossLayerSurgeryTransaction G V carrier F P)
    {fabric : FabricSurgeryEnvelope G F}
    (h : transaction.fabricPatch = some fabric) :
    fabric.adapter.globalLocus = transaction.globalLocus :=
  transaction.fabric_targets_global_locus h

example
    {State V : Type*} [Fintype V] [DecidableEq V]
    {G : KnownMaximalState State}
    {carrier : DAF.Geometry.GeometricPrismCarrier V}
    {F : DAF.Fabric.Fabric} {P : DAF.Prismatic.Theory}
    (transaction : CrossLayerSurgeryTransaction G V carrier F P)
    {prismatic : PrismaticSurgeryEnvelope G F P}
    (h : transaction.prismaticWitness = some prismatic) :
    prismatic.witness.locus = transaction.globalLocus :=
  transaction.prismatic_targets_global_locus h

end DAF.Integration.SurgeryCoherenceTests
