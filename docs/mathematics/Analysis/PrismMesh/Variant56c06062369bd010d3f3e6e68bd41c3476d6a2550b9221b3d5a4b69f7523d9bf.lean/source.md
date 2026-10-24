# Complete source: GRWTSK.Analysis.PrismMesh.Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91fc94242282f4068393cc2117a276b9c1ececc0` · SHA-256 `f2aa929e114fb7c3c7cf5b056eaa5cbd1ab85649aff206b6aca40833b849c9ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeshOrientation.Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.MeshOrientation.Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"d3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Geometry/PrismMesh.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Geometry.PrismCarrier
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Finite prism meshes

`PrismMesh` is a proof-bearing finite mesh on a `GeometricPrismCarrier`.  Its
interpolation law is concrete: each cell carries finite barycentric weights,
with support, nonnegativity, and partition-of-unity laws.  Boundary and
obstacle cells remain explicit data.
-/


namespace GRWTSK.Analysis.MeshOrientation.Variantd3ab7612c451c789add66d6d8cf489e38167a5b8caab57202df742ce51c16c74

namespace DAF.Geometry

universe uV uPoint uCell

/-- Orientation information retained by each geometric cell. -/
inductive MeshOrientation
  | positive
  | reversed
  | unoriented
  deriving DecidableEq, Repr

/-- A finite mesh and its declared barycentric interpolation weights. -/
structure PrismMesh
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    (M : GeometricPrismCarrier V) where
  activeCells : Finset M.CellId
  activeCells_subset : activeCells ⊆ M.cells
  activeCells_cover : M.carrier = ⋃ c ∈ activeCells, M.cellCarrier c
  cellVertices : M.CellId → Finset V
  cellVertices_nonempty :
    ∀ c, c ∈ activeCells → (cellVertices c).Nonempty
  vertex_lies_in_cell :
    ∀ c {v}, c ∈ activeCells → v ∈ cellVertices c →
      M.vertexPoint v ∈ M.cellCarrier c
  orientation : M.CellId → MeshOrientation
  boundaryCells : Finset M.CellId
  boundaryCells_subset : boundaryCells ⊆ activeCells
  obstacleCells : Finset M.CellId
  obstacleCells_subset : obstacleCells ⊆ activeCells
  interpolationWeight : M.CellId → M.Point → V → ℝ
  weight_nonnegative :
    ∀ c, c ∈ activeCells → ∀ p, p ∈ M.cellCarrier c → ∀ v,
      0 ≤ interpolationWeight c p v
  weight_supported :
    ∀ c, c ∈ activeCells → ∀ p, p ∈ M.cellCarrier c → ∀ {v},
      v ∉ cellVertices c → interpolationWeight c p v = 0
  weights_sum_one :
    ∀ c, c ∈ activeCells → ∀ p ∈ M.cellCarrier c,
      (∑ v ∈ cellVertices c, interpolationWeight c p v) = 1

namespace PrismMesh

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {M : GeometricPrismCarrier V}

/--
An active cell retains both its carrier identifier and the proof that it
participates in this mesh.  Absolute placement is intentionally supplied by a
downstream terrain/geometry bridge rather than by the geometry layer itself.
-/
abbrev ActiveCell (mesh : PrismMesh M) :=
  {c : M.CellId // c ∈ mesh.activeCells}

/-- Forgetting the active-cell wrapper preserves the exact carrier cell ID. -/
def activeCellId (mesh : PrismMesh M) : mesh.ActiveCell → M.CellId :=
  Subtype.val

/-- The active-cell wrapper cannot alias two distinct carrier cell IDs. -/
theorem activeCellId_injective (mesh : PrismMesh M) :
    Function.Injective mesh.activeCellId :=
  Subtype.val_injective

/-- An active mesh cell is necessarily a declared carrier cell. -/
theorem activeCell_mem
    (mesh : PrismMesh M)
    {c : M.CellId}
    (hc : c ∈ mesh.activeCells) : c ∈ M.cells :=
  mesh.activeCells_subset hc

/-- A boundary cell is necessarily active. -/
theorem boundaryCell_active
    (mesh : PrismMesh M)
    {c : M.CellId}
    (hc : c ∈ mesh.boundaryCells) : c ∈ mesh.activeCells :=
  mesh.boundaryCells_subset hc

/-- A boundary cell is necessarily a declared carrier cell. -/
theorem boundaryCell_mem
    (mesh : PrismMesh M)
    {c : M.CellId}
    (hc : c ∈ mesh.boundaryCells) : c ∈ M.cells :=
  mesh.activeCell_mem (mesh.boundaryCell_active hc)

/-- An obstacle cell is necessarily active. -/
theorem obstacleCell_active
    (mesh : PrismMesh M)
    {c : M.CellId}
    (hc : c ∈ mesh.obstacleCells) : c ∈ mesh.activeCells :=
  mesh.obstacleCells_subset hc

/-- An obstacle cell is necessarily a declared carrier cell. -/
theorem obstacleCell_mem
    (mesh : PrismMesh M)
    {c : M.CellId}
    (hc : c ∈ mesh.obstacleCells) : c ∈ M.cells :=
  mesh.activeCell_mem (mesh.obstacleCell_active hc)

/-- The barycentric interpolation weights on an active cell sum to one. -/
theorem interpolation_partition_of_unity
    (mesh : PrismMesh M)
    {c : M.CellId}
    (hc : c ∈ mesh.activeCells)
    {p : M.Point}
    (hp : p ∈ M.cellCarrier c) :
    (∑ v ∈ mesh.cellVertices c, mesh.interpolationWeight c p v) = 1 :=
  mesh.weights_sum_one c hc p hp

/-- A weight outside the declared vertex support of a cell vanishes. -/
theorem interpolationWeight_eq_zero_of_not_mem
    (mesh : PrismMesh M)
    {c : M.CellId}
    (hc : c ∈ mesh.activeCells)
    {p : M.Point}
    (hp : p ∈ M.cellCarrier c)
    {v : V}
    (hv : v ∉ mesh.cellVertices c) :
    mesh.interpolationWeight c p v = 0 :=
  mesh.weight_supported c hc p hp hv

end PrismMesh

end DAF.Geometry
```
