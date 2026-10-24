# Complete source: GRWTSK.Topology.GeneralTopology.ContinuousRaster.Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33fc797ff29fbc528857f99e438f6bc5aede599a` · SHA-256 `00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Geometry.PrismMesh
import DAF.Terrain.BinaryCharge
import Mathlib.Topology.UniformSpace.Real

/-!
# Continuous terrain rasterization

A `ContinuousTerrainRaster` is one exact real-valued field on a geometric
carrier.  It agrees with the binary terrain charge only at embedded vertices;
interior values are barycentric and are merely bounded in `[0,1]`.  Boundary
and obstacle traces are explicit typed data rather than implicit rendering
conventions.
-/

namespace DAF.Geometry

open DAF.Terrain

universe uV

/-- Exact real embedding of a Boolean charge. -/
def boolToReal : Bool → ℝ
  | false => 0
  | true => 1

@[simp] theorem boolToReal_false : boolToReal false = 0 := rfl
@[simp] theorem boolToReal_true : boolToReal true = 1 := rfl

/-- Pointwise trace data retained for boundary and obstacle cells. -/
structure RasterBoundaryData
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {M : GeometricPrismCarrier V}
    (mesh : PrismMesh M)
    (channels : Nat) where
  boundaryTrace : M.CellId → M.CarrierPoint → Fin channels → ℝ
  obstacleTrace : M.CellId → M.CarrierPoint → Fin channels → ℝ

/-- One continuous, cellwise-barycentric raster of a binary vertex charge. -/
structure ContinuousTerrainRaster
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {M : GeometricPrismCarrier V}
    (mesh : PrismMesh M)
    (charge : BinaryVertexCharge V) where
  field : M.CarrierPoint → Fin charge.channels → ℝ
  continuous_field : Continuous field
  field_bounds : ∀ p i, 0 ≤ field p i ∧ field p i ≤ 1
  vertexAgreement :
    ∀ v i,
      field ⟨M.vertexPoint v, M.vertex_mem v⟩ i =
        boolToReal (charge.bits v i)
  cellwiseInterpolation :
    ∀ c, ∀ hc : c ∈ mesh.activeCells, ∀ p, ∀ hp : p ∈ M.cellCarrier c, ∀ i,
      field (M.cellPoint (mesh.activeCell_mem hc) hp) i =
        ∑ v ∈ mesh.cellVertices c,
          mesh.interpolationWeight c p v *
            field ⟨M.vertexPoint v, M.vertex_mem v⟩ i
  boundaryData : RasterBoundaryData mesh charge.channels
  boundaryCompatible :
    ∀ c, ∀ hc : c ∈ mesh.boundaryCells,
      ∀ p, ∀ hp : p ∈ M.cellCarrier c, ∀ i,
        field (M.cellPoint (mesh.boundaryCell_mem hc) hp) i =
          boundaryData.boundaryTrace c
            (M.cellPoint (mesh.boundaryCell_mem hc) hp) i
  obstacleCompatible :
    ∀ c, ∀ hc : c ∈ mesh.obstacleCells,
      ∀ p, ∀ hp : p ∈ M.cellCarrier c, ∀ i,
        field (M.cellPoint (mesh.obstacleCell_mem hc) hp) i =
          boundaryData.obstacleTrace c
            (M.cellPoint (mesh.obstacleCell_mem hc) hp) i

namespace ContinuousTerrainRaster

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {M : GeometricPrismCarrier V}
variable {mesh : PrismMesh M} {charge : BinaryVertexCharge V}

/-- Raster values agree with the binary charge at every embedded vertex. -/
@[simp]
theorem at_vertex
    (raster : ContinuousTerrainRaster mesh charge)
    (v : V)
    (i : Fin charge.channels) :
    raster.field ⟨M.vertexPoint v, M.vertex_mem v⟩ i =
      boolToReal (charge.bits v i) :=
  raster.vertexAgreement v i

/-- Every raster value lies in the declared closed unit interval. -/
theorem value_mem_Icc
    (raster : ContinuousTerrainRaster mesh charge)
    (p : M.CarrierPoint)
    (i : Fin charge.channels) :
    raster.field p i ∈ Set.Icc (0 : ℝ) 1 :=
  raster.field_bounds p i

/-- The concrete barycentric law used on each declared cell. -/
theorem interpolate_on_cell
    (raster : ContinuousTerrainRaster mesh charge)
    {c : M.CellId}
    (hc : c ∈ mesh.activeCells)
    {p : M.Point}
    (hp : p ∈ M.cellCarrier c)
    (i : Fin charge.channels) :
    raster.field (M.cellPoint (mesh.activeCell_mem hc) hp) i =
      ∑ v ∈ mesh.cellVertices c,
        mesh.interpolationWeight c p v *
          raster.field ⟨M.vertexPoint v, M.vertex_mem v⟩ i :=
  raster.cellwiseInterpolation c hc p hp i

end ContinuousTerrainRaster

end DAF.Geometry
```
