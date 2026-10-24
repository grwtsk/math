# Complete source: GRWTSK.Topology.GeneralTopology.ContinuousRaster.Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a091455720fbbd9e94371c4971b6e91356bb1a4` · SHA-256 `af66f171ccd86da9acfeff261bf7c8bea307d93c5146f059f6324c7ddcb96cc1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RasterBoundaryData.Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RasterBoundaryData.Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359","mathematical_subject":"Topology.GeneralTopology","original_sha256":"00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Geometry/ContinuousRaster.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Topology.GeneralTopology.RasterBoundaryData.Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359

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
