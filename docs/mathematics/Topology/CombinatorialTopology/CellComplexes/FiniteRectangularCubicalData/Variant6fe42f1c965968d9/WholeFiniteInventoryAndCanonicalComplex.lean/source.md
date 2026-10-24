# Complete source: GRWTSK.Topology.CombinatorialTopology.CellComplexes.FiniteRectangularCubicalData.Variant6fe42f1c965968d9.WholeFiniteInventoryAndCanonicalComplex

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab7c686a03d6321b3c55cc7399bce5b18c339290` · SHA-256 `586c946c429dde01c04e46ebf2e44aa520394841fbf4d8574fd80a2ff979768d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeFiniteInventoryAndCanonicalComplex — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14
Organized SHA-256: de2c6219d73572c5bf91049f28edd7bf941de68224b40546e6098d2147a44c3e
PMD: 510.4.070.020 cell complexes (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- All four complete Fintype equivalence constructions including both inverse proofs, the complete cells=univ record, canonical complex and membership proof. This is only the supplied finite rectangular cell inventory. -/

import BitMatrix.Geometry.GridCell
import Mathlib.Data.Finset.Basic

import GRWTSK.Topology.CombinatorialTopology.CellComplexes.FiniteRectangularCubicalData.Variant6fe42f1c965968d9.TypedCellsFacesAndDimension
/-!
# Finite raster cubical complex

This module constructs the cells and face maps of the rectangular two-
dimensional cubical complex underlying a Boolean raster.  It is a finite
combinatorial object; none of the definitions below asserts that a selected
foreground is a manifold or that rasterization preserves continuous topology.
-/

namespace BitMatrix.Topology.Raster

open BitMatrix.Runtime.Semantics

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

end BitMatrix.Topology.Raster
```
