# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SurgeryCoherenceTests.Variant27d68d88b41ac1128267d88b98046a2d51e605effaa8e257ed8b127f315fd53e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4ae3a97b1f9516050158a52d1069194e2a07e76` · SHA-256 `27d68d88b41ac1128267d88b98046a2d51e605effaa8e257ed8b127f315fd53e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Integration.SurgeryTransaction

/-!
# Exact-locus surgery coherence tests

The concrete transaction carries a nontrivial one-cell matrix replacement and
maps it to one fixed terrain-global locus.  The generic examples then exercise
the production coherence theorems for every optional layer.  They do not call
a discrete patch smooth-manifold surgery and do not infer global invertibility
from the local replacement.
-/

namespace DAF.Integration.SurgeryCoherenceTests

open DAF.Terrain

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

def before : BinMat 2 2 := fun _ _ => false

def matrixLocus : MatrixLocus 2 2 where
  rows := {0}
  columns := {1}

def replacement :
    BinMat matrixLocus.rows.card matrixLocus.columns.card :=
  fun _ _ => true

def matrixSurgery : BinarySubmatrixSurgery before matrixLocus :=
  BinarySubmatrixSurgery.replace before matrixLocus replacement

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
    BinMat.extractSubmatrix matrixSurgery.result matrixLocus = replacement :=
  matrixSurgery.extract_result

example : matrixSurgery.result 0 1 = true := by native_decide

example : matrixSurgery.result 1 0 = before 1 0 :=
  matrixSurgery.outside_unchanged 1 0 (Or.inl (by decide))

example {i j : Fin 2}
    (h : (i, j) ∈ BinMat.differenceSupport matrixSurgery.result before) :
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
```
