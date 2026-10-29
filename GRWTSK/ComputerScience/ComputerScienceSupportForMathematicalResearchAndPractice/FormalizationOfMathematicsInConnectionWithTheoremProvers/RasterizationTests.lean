import DAF.Geometry.RasterRefinement
import Mathlib.Tactic

/-!
# Concrete rasterization integration tests

The fixture has one global vertex, one geometric point, one active cell, and
one Boolean channel.  It exercises the exact vertex/raster agreement,
barycentric interpolation, unit-interval bound, and identity refinement laws.
-/

namespace DAF.Integration.RasterizationTests

open DAF.Geometry
open DAF.Terrain

/-- A one-point carrier covered by one finite cell. -/
def unitCarrier : GeometricPrismCarrier Unit where
  Point := Unit
  pointTopology := ⊥
  vertexPoint := fun _ => ()
  carrier := Set.univ
  vertex_mem := by simp
  CellId := Unit
  cellFintype := inferInstance
  cellDecEq := inferInstance
  cells := Finset.univ
  cellCarrier := fun _ => Set.univ
  cell_mem_carrier := by simp
  carrier_covered := by ext; simp

/-- Barycentric weight one on the unique vertex of the unique cell. -/
def unitMesh : PrismMesh unitCarrier where
  activeCells := Finset.univ
  activeCells_subset := by
    intro c hc
    cases c
    exact Finset.mem_singleton_self _
  activeCells_cover := by
    change Set.univ = ⋃ c ∈ (Finset.univ : Finset Unit), Set.univ
    ext p
    simp
  cellVertices := fun _ => Finset.univ
  cellVertices_nonempty := by
    intro c hc
    exact ⟨(), Finset.mem_univ _⟩
  vertex_lies_in_cell := by
    intro c v hc hv
    trivial
  orientation := fun _ => .positive
  boundaryCells := ∅
  boundaryCells_subset := by simp
  obstacleCells := ∅
  obstacleCells_subset := by simp
  interpolationWeight := fun _ _ _ => 1
  weight_nonnegative := by norm_num
  weight_supported := by
    intro c hc p hp v hv
    exact (hv (Finset.mem_univ v)).elim
  weights_sum_one := by
    intro c hc p hp
    simp

/-- One channel carrying `true` at the unique terrain vertex. -/
def unitCharge : BinaryVertexCharge Unit where
  channels := 1
  bits := fun _ _ => true
  f2 := fun _ _ => 1
  f2_spec := by simp

/-- Constant one traces for the fixture's (empty) marked boundary sets. -/
def unitBoundaryData : RasterBoundaryData unitMesh unitCharge.channels where
  boundaryTrace := fun _ _ _ => 1
  obstacleTrace := fun _ _ _ => 1

/-- The exact constant raster induced by the one-bit charge. -/
def unitRaster : ContinuousTerrainRaster unitMesh unitCharge where
  field := fun _ _ => 1
  continuous_field := continuous_const
  field_bounds := by norm_num
  vertexAgreement := by simp [unitCharge, DAF.Geometry.boolToReal]
  cellwiseInterpolation := by
    intro c hc p hp i
    simp [unitMesh]
  boundaryData := unitBoundaryData
  boundaryCompatible := by simp [unitMesh]
  obstacleCompatible := by simp [unitMesh]

/-- Identity refinement of the concrete one-cell mesh. -/
def unitMeshRefinement : MeshRefinement unitMesh unitMesh where
  pointMap := id
  continuous_pointMap := continuous_id
  vertex_preserving := by simp
  cellMap := id
  cellMap_mem := by simp
  cell_preserving := by simp [unitCarrier]
  boundary_preserving := by simp [unitMesh]
  obstacle_preserving := by simp [unitMesh]

/-- The constant raster commutes with the identity mesh refinement. -/
def unitRasterRefinement :
    RasterRefinement unitCharge unitRaster unitRaster where
  mesh := unitMeshRefinement
  field_commutes := by intros; rfl
  boundary_trace_commutes := by simp [unitMesh]

/-- The real raster reads exactly the embedded binary charge at the vertex. -/
example :
    unitRaster.field
        ⟨unitCarrier.vertexPoint (),
          unitCarrier.vertex_mem ()⟩
        (0 : Fin 1) = 1 := by
  rw [unitRaster.at_vertex]
  rfl

/-- Interior values satisfy the declared unit-interval bound. -/
example (p : unitCarrier.CarrierPoint) :
    unitRaster.field p (0 : Fin 1) ∈ Set.Icc (0 : ℝ) 1 :=
  unitRaster.value_mem_Icc p (0 : Fin 1)

/-- The exact raster field commutes with the supplied identity refinement. -/
example (p : unitCarrier.CarrierPoint) :
    unitRaster.field p (0 : Fin 1) =
      unitRaster.field (unitRasterRefinement.mesh.pointMap p) (0 : Fin 1) :=
  unitRasterRefinement.restrict_field p (0 : Fin 1)

/-- Refinement preserves the unique vertex value through the general theorem. -/
example :
    unitRaster.field
        ⟨unitCarrier.vertexPoint (),
          unitCarrier.vertex_mem ()⟩
        (0 : Fin 1) =
      unitRaster.field
        ⟨unitCarrier.vertexPoint (),
          unitCarrier.vertex_mem ()⟩
        (0 : Fin 1) :=
  unitRasterRefinement.vertex_value_commutes () (0 : Fin 1)

end DAF.Integration.RasterizationTests
