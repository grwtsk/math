# Complete source: GRWTSK.Topology.GeneralTopology.RasterRefinement.Variant6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1738f244d3da88ff4580acca3361a4d1783550c` · SHA-256 `6c22f88e90ce55ee8f32bccae13776fe338dcf4ff8cacaeadda1729b844b31d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Geometry.ContinuousRaster

/-!
# Raster refinement

Refinement is an explicit map from a fine geometric carrier to a coarse one.
The map preserves embedded global vertices and declared cell, boundary, and
obstacle data.  A `RasterRefinement` additionally certifies that raster fields
commute with this map; no such commutation is inferred from matching pictures.
-/

namespace DAF.Geometry

open DAF.Terrain

universe uV

/-- Exact geometric data needed to restrict a fine mesh to a coarse mesh. -/
structure MeshRefinement
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {coarseCarrier fineCarrier : GeometricPrismCarrier V}
    (coarse : PrismMesh coarseCarrier)
    (fine : PrismMesh fineCarrier) where
  pointMap : fineCarrier.CarrierPoint → coarseCarrier.CarrierPoint
  continuous_pointMap : Continuous pointMap
  vertex_preserving :
    ∀ v,
      pointMap ⟨fineCarrier.vertexPoint v, fineCarrier.vertex_mem v⟩ =
        ⟨coarseCarrier.vertexPoint v, coarseCarrier.vertex_mem v⟩
  cellMap : fineCarrier.CellId → coarseCarrier.CellId
  cellMap_mem :
    ∀ c, c ∈ fine.activeCells → cellMap c ∈ coarse.activeCells
  cell_preserving :
    ∀ c, ∀ hc : c ∈ fine.activeCells,
      ∀ p, ∀ hp : p ∈ fineCarrier.cellCarrier c,
        (pointMap (fineCarrier.cellPoint (fine.activeCell_mem hc) hp)).1 ∈
          coarseCarrier.cellCarrier (cellMap c)
  boundary_preserving :
    ∀ c, c ∈ fine.boundaryCells → cellMap c ∈ coarse.boundaryCells
  obstacle_preserving :
    ∀ c, c ∈ fine.obstacleCells → cellMap c ∈ coarse.obstacleCells

/-- Proof that two rasters are related by one exact mesh refinement. -/
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
theorem restrict_field
    (R : RasterRefinement charge coarseRaster fineRaster)
    (p : fineCarrier.CarrierPoint)
    (i : Fin charge.channels) :
    fineRaster.field p i = coarseRaster.field (R.mesh.pointMap p) i :=
  R.field_commutes p i

/-- Refinement preserves the binary values at every globally named vertex. -/
theorem vertex_value_commutes
    (R : RasterRefinement charge coarseRaster fineRaster)
    (v : V)
    (i : Fin charge.channels) :
    fineRaster.field
        ⟨fineCarrier.vertexPoint v, fineCarrier.vertex_mem v⟩ i =
      coarseRaster.field
        ⟨coarseCarrier.vertexPoint v, coarseCarrier.vertex_mem v⟩ i := by
  rw [R.field_commutes]
  rw [R.mesh.vertex_preserving]

end RasterRefinement

end DAF.Geometry
```
