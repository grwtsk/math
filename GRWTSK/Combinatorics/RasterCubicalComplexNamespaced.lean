-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Vertex.Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Vertex.Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Topology/RasterCubicalComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Geometry.GridCell
import Mathlib.Data.Finset.Basic

/-!
# Finite raster cubical complex

This module constructs the cells and face maps of the rectangular two-
dimensional cubical complex underlying a Boolean raster.  It is a finite
combinatorial object; none of the definitions below asserts that a selected
foreground is a manifold or that rasterization preserves continuous topology.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Vertex.Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14

namespace BitMatrix.Topology.Raster

open BitMatrix.Runtime.Semantics

/-- A vertex of an `rows × columns` rectangular raster complex. -/
structure Vertex (rows columns : Nat) where
  row : Fin (rows + 1)
  column : Fin (columns + 1)
  deriving DecidableEq, Repr

/-- A horizontal unit edge, named by its left endpoint. -/
structure HorizontalEdge (rows columns : Nat) where
  row : Fin (rows + 1)
  column : Fin columns
  deriving DecidableEq, Repr

/-- A vertical unit edge, named by its upper endpoint. -/
structure VerticalEdge (rows columns : Nat) where
  row : Fin rows
  column : Fin (columns + 1)
  deriving DecidableEq, Repr

/-- The endpoints of a horizontal edge. -/
def horizontalEndpoints {rows columns : Nat}
    (edge : HorizontalEdge rows columns) :
    Vertex rows columns × Vertex rows columns :=
  (⟨edge.row, ⟨edge.column, Nat.lt_succ_of_lt edge.column.isLt⟩⟩,
    ⟨edge.row, ⟨edge.column + 1, Nat.add_lt_add_right edge.column.isLt 1⟩⟩)

/-- The endpoints of a vertical edge. -/
def verticalEndpoints {rows columns : Nat}
    (edge : VerticalEdge rows columns) :
    Vertex rows columns × Vertex rows columns :=
  (⟨⟨edge.row, Nat.lt_succ_of_lt edge.row.isLt⟩, edge.column⟩,
    ⟨⟨edge.row + 1, Nat.add_lt_add_right edge.row.isLt 1⟩, edge.column⟩)

/-- All four one-dimensional faces of one top-dimensional raster cell. -/
structure SquareBoundary (rows columns : Nat) where
  top : HorizontalEdge rows columns
  bottom : HorizontalEdge rows columns
  left : VerticalEdge rows columns
  right : VerticalEdge rows columns
  deriving DecidableEq, Repr

/-- The canonical four-face boundary of a closed raster square. -/
def squareBoundary {rows columns : Nat} (cell : GridCell rows columns) :
    SquareBoundary rows columns where
  top := ⟨⟨cell.row, Nat.lt_succ_of_lt cell.row.isLt⟩, cell.column⟩
  bottom :=
    ⟨⟨cell.row + 1, Nat.add_lt_add_right cell.row.isLt 1⟩, cell.column⟩
  left := ⟨cell.row, ⟨cell.column, Nat.lt_succ_of_lt cell.column.isLt⟩⟩
  right :=
    ⟨cell.row, ⟨cell.column + 1,
      Nat.add_lt_add_right cell.column.isLt 1⟩⟩

/-- The complete finite cell inventory of the rectangular complex. -/
inductive Cell (rows columns : Nat) where
  | vertex : Vertex rows columns → Cell rows columns
  | horizontal : HorizontalEdge rows columns → Cell rows columns
  | vertical : VerticalEdge rows columns → Cell rows columns
  | square : GridCell rows columns → Cell rows columns
  deriving DecidableEq

/-- Cubical dimension of each typed cell. -/
def Cell.dimension {rows columns : Nat} : Cell rows columns → Nat
  | .vertex _ => 0
  | .horizontal _ | .vertical _ => 1
  | .square _ => 2

instance vertexFintype (rows columns : Nat) : Fintype (Vertex rows columns) :=
  Fintype.ofEquiv (Fin (rows + 1) × Fin (columns + 1))
    { toFun := fun value => ⟨value.1, value.2⟩
      invFun := fun value => (value.row, value.column)
      left_inv := fun value => by cases value; rfl
      right_inv := fun value => by cases value; rfl }

instance horizontalEdgeFintype (rows columns : Nat) :
    Fintype (HorizontalEdge rows columns) :=
  Fintype.ofEquiv (Fin (rows + 1) × Fin columns)
    { toFun := fun value => ⟨value.1, value.2⟩
      invFun := fun value => (value.row, value.column)
      left_inv := fun value => by cases value; rfl
      right_inv := fun value => by cases value; rfl }

instance verticalEdgeFintype (rows columns : Nat) :
    Fintype (VerticalEdge rows columns) :=
  Fintype.ofEquiv (Fin rows × Fin (columns + 1))
    { toFun := fun value => ⟨value.1, value.2⟩
      invFun := fun value => (value.row, value.column)
      left_inv := fun value => by cases value; rfl
      right_inv := fun value => by cases value; rfl }

instance cellFintype (rows columns : Nat) : Fintype (Cell rows columns) :=
  Fintype.ofEquiv
    (Vertex rows columns ⊕
      (HorizontalEdge rows columns ⊕
        (VerticalEdge rows columns ⊕ GridCell rows columns)))
    { toFun := fun value =>
        match value with
        | .inl vertex => .vertex vertex
        | .inr (.inl edge) => .horizontal edge
        | .inr (.inr (.inl edge)) => .vertical edge
        | .inr (.inr (.inr square)) => .square square
      invFun := fun value =>
        match value with
        | .vertex vertex => .inl vertex
        | .horizontal edge => .inr (.inl edge)
        | .vertical edge => .inr (.inr (.inl edge))
        | .square square => .inr (.inr (.inr square))
      left_inv := fun value => by rcases value with _ | (_ | (_ | _)) <;> rfl
      right_inv := fun value => by cases value <;> rfl }

/-- A concrete finite rectangular cubical complex, including every face. -/
structure Complex (rows columns : Nat) where
  cells : Finset (Cell rows columns)
  complete : cells = Finset.univ

/-- The canonical complex contains exactly the full typed cell inventory. -/
def rectangularComplex (rows columns : Nat) : Complex rows columns where
  cells := Finset.univ
  complete := rfl

@[simp]
theorem mem_rectangularComplex {rows columns : Nat}
    (cell : Cell rows columns) :
    cell ∈ (rectangularComplex rows columns).cells := by
  simp [rectangularComplex]

/-- Four-neighbor adjacency: two distinct squares share an entire edge. -/
def EdgeAdjacent {rows columns : Nat}
    (left right : GridCell rows columns) : Prop :=
  (left.row = right.row ∧
      (left.column.val + 1 = right.column.val ∨
        right.column.val + 1 = left.column.val)) ∨
    (left.column = right.column ∧
      (left.row.val + 1 = right.row.val ∨
        right.row.val + 1 = left.row.val))

instance edgeAdjacentDecidable {rows columns : Nat}
    (left right : GridCell rows columns) : Decidable (EdgeAdjacent left right) :=
  by
    unfold EdgeAdjacent
    exact inferInstance

theorem edgeAdjacent_symmetric {rows columns : Nat}
    {left right : GridCell rows columns} :
    EdgeAdjacent left right ↔ EdgeAdjacent right left := by
  constructor <;> rintro (h | h)
  · exact Or.inl ⟨h.1.symm, h.2.symm⟩
  · exact Or.inr ⟨h.1.symm, h.2.symm⟩
  · exact Or.inl ⟨h.1.symm, h.2.symm⟩
  · exact Or.inr ⟨h.1.symm, h.2.symm⟩

theorem not_edgeAdjacent_self {rows columns : Nat}
    (cell : GridCell rows columns) : ¬ EdgeAdjacent cell cell := by
  intro adjacent
  rcases adjacent with h | h <;> omega

/-- Two raster coordinates are equal or differ by exactly one. -/
def NeighboringCoordinate (left right : Nat) : Prop :=
  left = right ∨ left + 1 = right ∨ right + 1 = left

instance neighboringCoordinateDecidable (left right : Nat) :
    Decidable (NeighboringCoordinate left right) := by
  unfold NeighboringCoordinate
  exact inferInstance

theorem neighboringCoordinate_symmetric {left right : Nat} :
    NeighboringCoordinate left right ↔ NeighboringCoordinate right left := by
  constructor <;> intro neighboring
  · rcases neighboring with equal | forward | backward
    · exact Or.inl equal.symm
    · exact Or.inr (Or.inr forward)
    · exact Or.inr (Or.inl backward)
  · rcases neighboring with equal | forward | backward
    · exact Or.inl equal.symm
    · exact Or.inr (Or.inr forward)
    · exact Or.inr (Or.inl backward)

/-- Eight-neighbor adjacency: two distinct squares meet along an edge or a
vertex. -/
def VertexAdjacent {rows columns : Nat}
    (left right : GridCell rows columns) : Prop :=
  left ≠ right ∧
    NeighboringCoordinate left.row.val right.row.val ∧
    NeighboringCoordinate left.column.val right.column.val

instance vertexAdjacentDecidable {rows columns : Nat}
    (left right : GridCell rows columns) : Decidable (VertexAdjacent left right) :=
  by
    unfold VertexAdjacent
    exact inferInstance

theorem vertexAdjacent_symmetric {rows columns : Nat}
    {left right : GridCell rows columns} :
    VertexAdjacent left right ↔ VertexAdjacent right left := by
  constructor <;> intro adjacent
  · exact ⟨adjacent.1.symm,
      neighboringCoordinate_symmetric.mp adjacent.2.1,
      neighboringCoordinate_symmetric.mp adjacent.2.2⟩
  · exact ⟨adjacent.1.symm,
      neighboringCoordinate_symmetric.mp adjacent.2.1,
      neighboringCoordinate_symmetric.mp adjacent.2.2⟩

theorem not_vertexAdjacent_self {rows columns : Nat}
    (cell : GridCell rows columns) : ¬ VertexAdjacent cell cell := by
  simp [VertexAdjacent]

end BitMatrix.Topology.Raster
