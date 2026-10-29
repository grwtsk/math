import Mathlib.Data.Finset.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Fintype.Basic

/-!
# Partial bitfields and their refinement order

`PartialBit` separates unresolved information from certified zero and one.
Refinement may resolve an unresolved value, but it may not change a resolved
value.  The coordinate type is `Fin n`, so every theorem in this module has an
explicit finite boundary.
-/

namespace Mathematics.BinaryFrontier

inductive PartialBit
  | unresolved
  | zero
  | one
  deriving DecidableEq, BEq, Repr

def PartialBit.refines : PartialBit → PartialBit → Prop
  | .unresolved, _ => True
  | .zero, .zero => True
  | .one, .one => True
  | _, _ => False

instance : LE PartialBit where
  le := PartialBit.refines

theorem PartialBit.le_refl (bit : PartialBit) : bit ≤ bit := by
  cases bit <;> trivial

theorem PartialBit.le_trans
    {left middle right : PartialBit}
    (leftMiddle : left ≤ middle)
    (middleRight : middle ≤ right) :
    left ≤ right := by
  cases left <;> cases middle <;> cases right <;> trivial

theorem PartialBit.le_antisymm
    {left right : PartialBit}
    (leftRight : left ≤ right)
    (rightLeft : right ≤ left) :
    left = right := by
  cases left <;> cases right <;> trivial

instance partialBitPartialOrder : PartialOrder PartialBit where
  le_refl := PartialBit.le_refl
  le_trans := fun _ _ _ => PartialBit.le_trans
  le_antisymm := fun _ _ => PartialBit.le_antisymm

@[reducible] def partialBit_partialOrder : PartialOrder PartialBit :=
  inferInstance

def PartialBit.Resolved : PartialBit → Prop
  | .unresolved => False
  | .zero => True
  | .one => True

theorem PartialBit.resolved_le_eq
    {left right : PartialBit}
    (leftResolved : left.Resolved)
    (leftRight : left ≤ right) :
    left = right := by
  cases left <;> cases right <;> trivial

def PartialBit.ofBool : Bool → PartialBit
  | false => .zero
  | true => .one

def PartialBitfield (n : Nat) :=
  Fin n → PartialBit

instance {n : Nat} : LE (PartialBitfield n) where
  le := fun left right =>
    ∀ coordinate, left coordinate ≤ right coordinate

def ResolvedSupport {n : Nat} (field : PartialBitfield n) : Finset (Fin n) :=
  Finset.univ.filter fun coordinate =>
    field coordinate ≠ .unresolved

structure OneCoordinateResolution
    {n : Nat}
    (parent child : PartialBitfield n) where
  coordinate : Fin n
  value : Bool
  parentUnresolved :
    parent coordinate = .unresolved
  childResolved :
    child coordinate = PartialBit.ofBool value
  unchanged :
    ∀ other, other ≠ coordinate →
      child other = parent other

theorem oneCoordinateResolution_extends
    {n : Nat}
    {parent child : PartialBitfield n}
    (resolution : OneCoordinateResolution parent child) :
    parent ≤ child := by
  intro coordinate
  by_cases isResolvedCoordinate :
      coordinate = resolution.coordinate
  · subst coordinate
    rw [resolution.parentUnresolved]
    trivial
  · rw [resolution.unchanged coordinate isResolvedCoordinate]

theorem oneCoordinateResolution_support
    {n : Nat}
    {parent child : PartialBitfield n}
    (resolution : OneCoordinateResolution parent child) :
    ResolvedSupport child =
      insert resolution.coordinate (ResolvedSupport parent) := by
  apply Finset.ext
  intro coordinate
  simp only [
    ResolvedSupport,
    Finset.mem_filter,
    Finset.mem_univ,
    true_and,
    Finset.mem_insert
  ]
  by_cases isResolvedCoordinate :
      coordinate = resolution.coordinate
  · subst coordinate
    have childResolved :
        child resolution.coordinate ≠ .unresolved := by
      rw [resolution.childResolved]
      cases resolution.value <;> decide
    simp [
      childResolved,
      resolution.parentUnresolved
    ]
  · rw [resolution.unchanged coordinate isResolvedCoordinate]
    simp [isResolvedCoordinate]

theorem oneCoordinateResolution_support_increment
    {n : Nat}
    {parent child : PartialBitfield n}
    (resolution : OneCoordinateResolution parent child) :
    (ResolvedSupport child).card =
      (ResolvedSupport parent).card + 1 := by
  rw [oneCoordinateResolution_support resolution]
  apply Finset.card_insert_of_notMem
  simp [ResolvedSupport, resolution.parentUnresolved]

end Mathematics.BinaryFrontier
