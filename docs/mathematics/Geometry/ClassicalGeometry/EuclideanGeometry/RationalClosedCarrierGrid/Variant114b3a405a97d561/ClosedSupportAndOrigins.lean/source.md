# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561.ClosedSupportAndOrigins

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dc1b70b42319252ac314c45b4638ba667843151` · SHA-256 `54db616c6bfd5239b8571d0a0645c41ed09e996b75817e7272b633a28bcb05b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ClosedSupportAndOrigins — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012
Organized SHA-256: 0f79f53aaba330d5b99f48fad13607adae5cf8958c881aeab453dbe0769f4a6a
PMD: 510.3.010.010 euclidean geometry (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact rational point, closed axis supports, finite carriers and product-cardinality equivalence, with all Decidable instances and barycenter-to-support implications. Original GridCell provider namespace/import is retained, including its path/namespace discrepancy; no newly reviewed GridCell substitute is bound. -/

import BitMatrix.Geometry.GridCell
import Mathlib.Tactic

/-!
# Exact carrier-grid geometry

This module gives the closed-cell support relation used by the JavaScript
carrier grid an exact rational model.  It deliberately separates support from
origin matching: a point on an internal face is supported by two cells on that
axis, but it matches neither cell barycenter.
-/

namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561


namespace BitMatrix.Geometry.CarrierGrid

open BitMatrix.Runtime.Semantics

/-- A point in the grid's normalized geometric coordinates. -/
structure NormalizedPoint where
  x : ℚ
  y : ℚ
  deriving DecidableEq, Repr


/-- The closed normalized domain predicate. -/
def InClosedUnitInterval (coordinate : ℚ) : Prop :=
  0 ≤ coordinate ∧ coordinate ≤ 1


/-- One closed grid cell supports a coordinate exactly when the scaled
coordinate lies in its closed unit interval. -/
def AxisSupports (size : Nat) (coordinate : ℚ) (cell : Fin size) : Prop :=
  (cell.val : ℚ) ≤ (size : ℚ) * coordinate ∧
    (size : ℚ) * coordinate ≤ (cell.val : ℚ) + 1


instance axisSupportsDecidable
    (size : Nat) (coordinate : ℚ) (cell : Fin size) :
    Decidable (AxisSupports size coordinate cell) := by
  unfold AxisSupports
  infer_instance


/-- All exact closed-cell carriers on one axis. -/
def axisCarriers (size : Nat) (coordinate : ℚ) : Finset (Fin size) :=
  Finset.univ.filter (AxisSupports size coordinate)


/-- Exact two-dimensional closed-cell support.  Row supports `y`; column
supports `x`. -/
def ExactCarrier (size : Nat) (point : NormalizedPoint)
    (cell : GridCell size size) : Prop :=
  AxisSupports size point.y cell.row ∧
    AxisSupports size point.x cell.column


instance exactCarrierDecidablePred (size : Nat) (point : NormalizedPoint) :
    DecidablePred (ExactCarrier size point) := fun cell => by
  unfold ExactCarrier
  infer_instance


/-- Exact carrier multiplicity factors through the independent axis supports. -/
def carrierMultiplicity (size : Nat) (point : NormalizedPoint) : Nat :=
  (axisCarriers size point.x).card * (axisCarriers size point.y).card


/-- A coordinate matches a cell origin precisely when it is that cell's
barycenter.  This relation is strictly stronger than closed-cell support. -/
def AxisOriginMatches (size : Nat) (coordinate : ℚ) (cell : Fin size) : Prop :=
  2 * (cell.val : ℚ) + 1 = 2 * (size : ℚ) * coordinate


/-- Exact two-dimensional barycenter matching. -/
def OriginMatches (size : Nat) (point : NormalizedPoint)
    (cell : GridCell size size) : Prop :=
  AxisOriginMatches size point.y cell.row ∧
    AxisOriginMatches size point.x cell.column


@[simp]
theorem mem_axisCarriers_iff {size : Nat} {coordinate : ℚ}
    (cell : Fin size) :
    cell ∈ axisCarriers size coordinate ↔
      AxisSupports size coordinate cell := by
  simp [axisCarriers]


/-- The two-dimensional support predicate is exactly the product of its two
axis-carrier memberships. -/
theorem exactCarrier_iff_axis_membership {size : Nat}
    (point : NormalizedPoint) (cell : GridCell size size) :
    ExactCarrier size point cell ↔
      cell.row ∈ axisCarriers size point.y ∧
      cell.column ∈ axisCarriers size point.x := by
  simp [ExactCarrier]


/-- Exact two-dimensional carriers are precisely independent choices of a
supporting row and supporting column. -/
def exactCarrierEquivAxisCarriers {size : Nat} (point : NormalizedPoint) :
    { cell : GridCell size size // ExactCarrier size point cell } ≃
      { row : Fin size // row ∈ axisCarriers size point.y } ×
        { column : Fin size // column ∈ axisCarriers size point.x } where
  toFun cell :=
    (⟨cell.1.row, (mem_axisCarriers_iff cell.1.row).2 cell.2.1⟩,
      ⟨cell.1.column, (mem_axisCarriers_iff cell.1.column).2 cell.2.2⟩)
  invFun axes :=
    ⟨⟨axes.1.1, axes.2.1⟩,
      ⟨(mem_axisCarriers_iff axes.1.1).1 axes.1.2,
        (mem_axisCarriers_iff axes.2.1).1 axes.2.2⟩⟩
  left_inv cell := by
    apply Subtype.ext
    cases cell.1
    rfl
  right_inv axes := by
    apply Prod.ext <;> apply Subtype.ext <;> rfl


/-- The finite cardinality of the exact-carrier subtype agrees with the
explicit row/column carrier multiplicity. -/
theorem card_exactCarrier_eq_carrierMultiplicity {size : Nat}
    (point : NormalizedPoint) :
    Fintype.card { cell : GridCell size size // ExactCarrier size point cell } =
      carrierMultiplicity size point := by
  rw [Fintype.card_congr (exactCarrierEquivAxisCarriers point)]
  simp only [Fintype.card_prod]
  rw [Fintype.card_subtype, Fintype.card_subtype]
  simp [axisCarriers, carrierMultiplicity, Nat.mul_comm]


/-- Matching a cell barycenter implies membership in that cell's closed
support.  The converse fails on every non-barycentric point of the cell. -/
theorem axisOriginMatches_implies_support {size : Nat} {coordinate : ℚ}
    {cell : Fin size}
    (origin : AxisOriginMatches size coordinate cell) :
    AxisSupports size coordinate cell := by
  unfold AxisOriginMatches at origin
  unfold AxisSupports
  constructor <;> linarith


/-- A two-dimensional origin match is therefore an exact carrier, while an
exact carrier need not be an origin match (notably at shared faces). -/
theorem originMatches_implies_exactCarrier {size : Nat}
    {point : NormalizedPoint} {cell : GridCell size size}
    (origin : OriginMatches size point cell) :
    ExactCarrier size point cell := by
  exact ⟨axisOriginMatches_implies_support origin.1,
    axisOriginMatches_implies_support origin.2⟩


end BitMatrix.Geometry.CarrierGrid

end GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.RationalClosedCarrierGrid.Variant114b3a405a97d561
```
