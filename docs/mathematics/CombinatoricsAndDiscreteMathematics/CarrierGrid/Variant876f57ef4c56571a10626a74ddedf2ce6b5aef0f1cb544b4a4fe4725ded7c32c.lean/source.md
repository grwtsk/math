# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CarrierGrid.Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12d82ed2af813090359f3c90581ce0c90f916569` · SHA-256 `876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Geometry.GridCell
import Mathlib.Tactic

/-!
# Exact carrier-grid geometry

This module gives the closed-cell support relation used by the JavaScript
carrier grid an exact rational model.  It deliberately separates support from
origin matching: a point on an internal face is supported by two cells on that
axis, but it matches neither cell barycenter.
-/

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

/-! ## Interior-stratum witnesses

The hypotheses below exclude the outer domain boundary.  A `cell` witness is
strictly inside one cell.  An `internalBoundary` witness names two adjacent
in-grid cells and the common boundary coordinate.  Thus the cardinality law
does not incorrectly assign two carriers at `0` or `1`.
-/

/-- An exact interior stratum on one grid axis. -/
inductive InteriorAxisStratum (size : Nat) (coordinate : ℚ) where
  | cell (index : Fin size)
      (lower : (index.val : ℚ) < (size : ℚ) * coordinate)
      (upper : (size : ℚ) * coordinate < (index.val : ℚ) + 1)
  | internalBoundary (left right : Fin size)
      (adjacent : right.val = left.val + 1)
      (boundaryEquation : (size : ℚ) * coordinate = (right.val : ℚ))

/-- Interior-axis codimension: zero inside a cell and one on an internal face. -/
def InteriorAxisStratum.codimension {size coordinate}
    (stratum : InteriorAxisStratum size coordinate) : Nat :=
  match stratum with
  | .cell .. => 0
  | .internalBoundary .. => 1

private theorem fin_eq_of_val_eq {size : Nat} {left right : Fin size}
    (equality : left.val = right.val) : left = right :=
  Fin.ext equality

/-- Strict cell-interior hypotheses select exactly one axis carrier. -/
theorem axisCarriers_eq_singleton_of_cell
    {size : Nat} {coordinate : ℚ} (index : Fin size)
    (lower : (index.val : ℚ) < (size : ℚ) * coordinate)
    (upper : (size : ℚ) * coordinate < (index.val : ℚ) + 1) :
    axisCarriers size coordinate = {index} := by
  ext candidate
  simp only [axisCarriers, Finset.mem_filter, Finset.mem_univ, true_and,
    Finset.mem_singleton]
  constructor
  · rintro ⟨candidateLower, candidateUpper⟩
    apply fin_eq_of_val_eq
    have leftRational :
        (candidate.val : ℚ) < (index.val : ℚ) + 1 :=
      lt_of_le_of_lt candidateLower upper
    have rightRational :
        (index.val : ℚ) < (candidate.val : ℚ) + 1 :=
      lt_of_lt_of_le lower candidateUpper
    have leftNatural : candidate.val < index.val + 1 := by
      exact_mod_cast leftRational
    have rightNatural : index.val < candidate.val + 1 := by
      exact_mod_cast rightRational
    omega
  · rintro rfl
    exact ⟨lower.le, upper.le⟩

/-- An internal boundary between adjacent in-grid cells selects exactly those
two cells. -/
theorem axisCarriers_eq_pair_of_internalBoundary
    {size : Nat} {coordinate : ℚ} (left right : Fin size)
    (adjacent : right.val = left.val + 1)
    (boundaryEquation : (size : ℚ) * coordinate = (right.val : ℚ)) :
    axisCarriers size coordinate = {left, right} := by
  ext candidate
  simp only [axisCarriers, Finset.mem_filter, Finset.mem_univ, true_and,
    Finset.mem_insert, Finset.mem_singleton]
  constructor
  · rintro ⟨candidateLower, candidateUpper⟩
    have lowerRational : (candidate.val : ℚ) ≤ (right.val : ℚ) := by
      rw [← boundaryEquation]
      exact candidateLower
    have upperRational : (right.val : ℚ) ≤ (candidate.val : ℚ) + 1 := by
      rw [← boundaryEquation]
      exact candidateUpper
    have lowerNatural : candidate.val ≤ right.val := by
      exact_mod_cast lowerRational
    have upperNatural : right.val ≤ candidate.val + 1 := by
      exact_mod_cast upperRational
    have range : candidate.val = left.val ∨ candidate.val = right.val := by
      omega
    rcases range with equality | equality
    · exact Or.inl (fin_eq_of_val_eq equality)
    · exact Or.inr (fin_eq_of_val_eq equality)
  · rintro (rfl | rfl)
    · constructor
      · rw [boundaryEquation, adjacent]
        norm_num
      · rw [boundaryEquation, adjacent]
        norm_num
    · constructor <;> rw [boundaryEquation] <;> norm_num

/-- A two-dimensional interior stratum, with boundary status certified
independently on each axis. -/
structure InteriorGridStratum (size : Nat) (point : NormalizedPoint) where
  x : InteriorAxisStratum size point.x
  y : InteriorAxisStratum size point.y

/-- The number of independent internal grid faces containing the point. -/
def InteriorGridStratum.codimension {size point}
    (stratum : InteriorGridStratum size point) : Nat :=
  stratum.x.codimension + stratum.y.codimension

/-- On a certified interior stratum, exact closed-cell multiplicity is
`2^codimension`.  The outer boundary is intentionally outside the theorem's
hypotheses. -/
theorem carrierMultiplicity_eq_two_pow_codimension
    {size : Nat} {point : NormalizedPoint}
    (stratum : InteriorGridStratum size point) :
    carrierMultiplicity size point = 2 ^ stratum.codimension := by
  unfold carrierMultiplicity InteriorGridStratum.codimension
  cases stratum with
  | mk x y =>
    cases x with
    | cell xIndex xLower xUpper =>
      rw [axisCarriers_eq_singleton_of_cell xIndex xLower xUpper]
      cases y with
      | cell yIndex yLower yUpper =>
        rw [axisCarriers_eq_singleton_of_cell yIndex yLower yUpper]
        simp [InteriorAxisStratum.codimension]
      | internalBoundary yLeft yRight yAdjacent yEquation =>
        rw [axisCarriers_eq_pair_of_internalBoundary
          yLeft yRight yAdjacent yEquation]
        have unequal : yLeft ≠ yRight := by
          intro equality
          have values := congrArg Fin.val equality
          omega
        simp [InteriorAxisStratum.codimension, unequal]
    | internalBoundary xLeft xRight xAdjacent xEquation =>
      rw [axisCarriers_eq_pair_of_internalBoundary
        xLeft xRight xAdjacent xEquation]
      have xUnequal : xLeft ≠ xRight := by
        intro equality
        have values := congrArg Fin.val equality
        omega
      cases y with
      | cell yIndex yLower yUpper =>
        rw [axisCarriers_eq_singleton_of_cell yIndex yLower yUpper]
        simp [InteriorAxisStratum.codimension, xUnequal]
      | internalBoundary yLeft yRight yAdjacent yEquation =>
        rw [axisCarriers_eq_pair_of_internalBoundary
          yLeft yRight yAdjacent yEquation]
        have yUnequal : yLeft ≠ yRight := by
          intro equality
          have values := congrArg Fin.val equality
          omega
        simp [InteriorAxisStratum.codimension, xUnequal, yUnequal]

/-! ## Center parity -/

/-- The normalized center coordinate. -/
def center : ℚ := 1 / 2

def oddCenterIndex (half : Nat) : Fin (2 * half + 1) :=
  ⟨half, by omega⟩

def evenCenterLeft (half : Nat) : Fin (2 * (half + 1)) :=
  ⟨half, by omega⟩

def evenCenterRight (half : Nat) : Fin (2 * (half + 1)) :=
  ⟨half + 1, by omega⟩

/-- An odd grid has one exact center carrier on each axis. -/
theorem odd_center_axisCarriers (half : Nat) :
    axisCarriers (2 * half + 1) center = {oddCenterIndex half} := by
  apply axisCarriers_eq_singleton_of_cell
  · dsimp [center, oddCenterIndex]
    push_cast
    linarith
  · dsimp [center, oddCenterIndex]
    push_cast
    linarith

/-- A positive even grid has two exact center carriers on each axis. -/
theorem even_center_axisCarriers (half : Nat) :
    axisCarriers (2 * (half + 1)) center =
      {evenCenterLeft half, evenCenterRight half} := by
  apply axisCarriers_eq_pair_of_internalBoundary
  · simp [evenCenterLeft, evenCenterRight]
  · dsimp [center, evenCenterRight]
    push_cast
    ring

/-- An odd square grid has one exact carrier at its normalized center. -/
theorem odd_center_carrierMultiplicity (half : Nat) :
    carrierMultiplicity (2 * half + 1) { x := center, y := center } = 1 := by
  simp [carrierMultiplicity, odd_center_axisCarriers]

/-- A positive even square grid has four exact carriers at its normalized
center: two choices independently on each axis. -/
theorem even_center_carrierMultiplicity (half : Nat) :
    carrierMultiplicity (2 * (half + 1)) { x := center, y := center } = 4 := by
  unfold carrierMultiplicity
  rw [even_center_axisCarriers]
  have unequal : evenCenterLeft half ≠ evenCenterRight half := by
    intro equality
    have values : half = half + 1 := by
      simpa [evenCenterLeft, evenCenterRight] using congrArg Fin.val equality
    omega
  simp [unequal]

/-- On an odd grid, the unique supporting center cell is also the unique
origin match. -/
theorem odd_center_axisOriginMatches_iff (half : Nat)
    (index : Fin (2 * half + 1)) :
    AxisOriginMatches (2 * half + 1) center index ↔
      index = oddCenterIndex half := by
  unfold AxisOriginMatches center
  constructor
  · intro equality
    apply Fin.ext
    dsimp [oddCenterIndex]
    push_cast at equality
    ring_nf at equality
    have rationalEquality : (index.val : ℚ) = (half : ℚ) := by
      linarith
    exact_mod_cast rationalEquality
  · rintro rfl
    dsimp [oddCenterIndex]
    push_cast
    ring

/-- On a positive even grid, the normalized center is an internal boundary
and therefore is not any cell's barycenter. -/
theorem even_center_axisOriginMatches_false (half : Nat)
    (index : Fin (2 * (half + 1))) :
    ¬ AxisOriginMatches (2 * (half + 1)) center index := by
  unfold AxisOriginMatches center
  intro equality
  push_cast at equality
  ring_nf at equality
  have naturalEquality : 2 * index.val + 1 = 2 * (half + 1) := by
    apply Nat.cast_injective (R := ℚ)
    push_cast
    linarith
  omega

end BitMatrix.Geometry.CarrierGrid
```
