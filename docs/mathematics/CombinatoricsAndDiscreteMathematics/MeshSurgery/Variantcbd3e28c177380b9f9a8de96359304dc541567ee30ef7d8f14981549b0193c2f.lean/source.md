# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.MeshSurgery.Variantcbd3e28c177380b9f9a8de96359304dc541567ee30ef7d8f14981549b0193c2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23b523e53ee619af349c2ccff7975a722e9eebea` · SHA-256 `70c6e523b8fc1823cb1d082af568e7c5fa3c8515f2bbc52fcea3dabb468a2bf5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MeshSurgery.Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MeshSurgery.Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Geometry/MeshSurgery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Geometry.PrismMesh
import DAF.Terrain.Surgery

/-!
# Globally anchored finite mesh surgery

Mesh surgery is a typed replacement of active cells on one geometric carrier.
It names an absolute global region, removed and inserted cells, a shared seam,
orientation and cover obligations, overlap policy, and exact interpolation data.
It is not smooth-manifold surgery.  It is not reversible unless a separate
`ReversibleMeshSurgery` supplies a backward patch.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MeshSurgery.Variante0fde347b38090d2c8ba4db01cbfe869434cba78ccf2724f87a009fffc2b5869

namespace DAF.Geometry

open DAF.Terrain

universe uState uV

/-- Whether a globally located mesh vertex belongs to a surgical region. -/
def vertexInMeshLocus
    {State : Type uState}
    {G : KnownMaximalState State}
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    (locus : AbsoluteRegion G)
    (vertexGlobal : V ↪ G.Coord)
    (v : V) : Prop := by
  letI : DecidableEq G.Coord := G.coordDecEq
  exact vertexGlobal v ∈ locus.coordinates

/-- A cell touches the locus when one of its declared vertices lies there. -/
def cellTouchesMeshLocus
    {State : Type uState}
    {G : KnownMaximalState State}
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {M : GeometricPrismCarrier V}
    (mesh : PrismMesh M)
    (locus : AbsoluteRegion G)
    (vertexGlobal : V ↪ G.Coord)
    (c : M.CellId) : Prop :=
  ∃ v ∈ mesh.cellVertices c, vertexInMeshLocus locus vertexGlobal v

/--
One exact replacement between two finite meshes over the same geometric
carrier and absolute coordinate frame.
-/
structure MeshSurgery
    {State : Type uState}
    (G : KnownMaximalState State)
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {M : GeometricPrismCarrier V}
    (before after : PrismMesh M) where
  patch : SurgeryPatch G
  isMeshLayer : patch.layer = .mesh
  vertexGlobal : V ↪ G.Coord
  locusVertices : Finset V
  locus_exact :
    letI := G.coordDecEq
    ∀ c, c ∈ patch.locus.region.coordinates ↔
      ∃ v ∈ locusVertices, vertexGlobal v = c
  removedCells : Finset M.CellId
  insertedCells : Finset M.CellId
  removedCells_spec : removedCells = before.activeCells \ after.activeCells
  insertedCells_spec : insertedCells = after.activeCells \ before.activeCells
  changed_cell_vertices_in_locus :
    ∀ c,
      c ∈ removedCells ∪ insertedCells →
      ∀ v, v ∈ before.cellVertices c ∪ after.cellVertices c →
        v ∈ locusVertices
  locus_vertices_changed :
    ∀ v, v ∈ locusVertices →
      ∃ c ∈ removedCells ∪ insertedCells,
        v ∈ before.cellVertices c ∪ after.cellVertices c
  sharedBoundary : Finset M.CellId
  sharedBoundary_before : sharedBoundary ⊆ before.boundaryCells
  sharedBoundary_after : sharedBoundary ⊆ after.boundaryCells
  orientation_preserved :
    ∀ c, c ∈ before.activeCells → c ∈ after.activeCells →
      before.orientation c = after.orientation c
  cellVertices_preserved :
    ∀ c, c ∈ before.activeCells → c ∈ after.activeCells →
      before.cellVertices c = after.cellVertices c
  interpolation_preserved :
    ∀ c, c ∈ before.activeCells → c ∈ after.activeCells →
      ∀ p v,
        before.interpolationWeight c p v = after.interpolationWeight c p v
  cover_preserved : M.carrier = ⋃ c ∈ after.activeCells, M.cellCarrier c
  declaredOverlap : M.CellId → M.CellId → Prop
  overlap_accounted :
    ∀ {c d}, c ∈ after.activeCells → d ∈ after.activeCells → c ≠ d →
      Disjoint (M.cellCarrier c) (M.cellCarrier d) ∨ declaredOverlap c d
  outside_unchanged :
    ∀ c,
      ¬ cellTouchesMeshLocus before patch.locus.region vertexGlobal c →
      ¬ cellTouchesMeshLocus after patch.locus.region vertexGlobal c →
      (c ∈ before.activeCells ↔ c ∈ after.activeCells) ∧
      before.cellVertices c = after.cellVertices c ∧
      before.orientation c = after.orientation c

namespace MeshSurgery

variable {State : Type uState} {G : KnownMaximalState State}
variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {M : GeometricPrismCarrier V}
variable {before after : PrismMesh M}

/-- Removed cells are exactly active-before but inactive-after. -/
theorem mem_removedCells_iff
    (S : MeshSurgery G before after)
    (c : M.CellId) :
    c ∈ S.removedCells ↔
      c ∈ before.activeCells ∧ c ∉ after.activeCells := by
  rw [S.removedCells_spec]
  simp

/-- Inserted cells are exactly inactive-before but active-after. -/
theorem mem_insertedCells_iff
    (S : MeshSurgery G before after)
    (c : M.CellId) :
    c ∈ S.insertedCells ↔
      c ∈ after.activeCells ∧ c ∉ before.activeCells := by
  rw [S.insertedCells_spec]
  simp

/-- The post-surgery cells still cover the complete geometric carrier. -/
theorem after_covers_carrier
    (S : MeshSurgery G before after) :
    M.carrier = ⋃ c ∈ after.activeCells, M.cellCarrier c :=
  S.cover_preserved

end MeshSurgery

/-- Reversibility is additional data: a separately certified backward patch. -/
structure ReversibleMeshSurgery
    {State : Type uState}
    (G : KnownMaximalState State)
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    {M : GeometricPrismCarrier V}
    (before after : PrismMesh M) where
  forward : MeshSurgery G before after
  backward : MeshSurgery G after before

end DAF.Geometry
```
