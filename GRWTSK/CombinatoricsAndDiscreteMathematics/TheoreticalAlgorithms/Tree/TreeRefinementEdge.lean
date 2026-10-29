import Mathematics.BinaryFrontier.Completion.Bitfield

/-!
# Finite one-coordinate refinement trees

Every certified edge carries a `OneCoordinateResolution`.  A complete Boolean
split resolves the same unresolved coordinate to zero and one in its two
children.
-/

namespace Mathematics.BinaryFrontier

structure RefinementEdge
    {n : Nat}
    (parent child : PartialBitfield n) where
  resolution :
    OneCoordinateResolution parent child
  presentationDeltaRef : String
  verificationRef : String
  rollbackRef : String

structure CompleteBooleanSplit
    {n : Nat}
    (parent : PartialBitfield n) where
  coordinate : Fin n
  parentUnresolved :
    parent coordinate = .unresolved
  zeroChild : PartialBitfield n :=
    resolveAt parent coordinate false
  oneChild : PartialBitfield n :=
    resolveAt parent coordinate true
  zeroChild_exact :
    zeroChild = resolveAt parent coordinate false
  oneChild_exact :
    oneChild = resolveAt parent coordinate true

def CompleteBooleanSplit.zeroResolution
    {n : Nat}
    {parent : PartialBitfield n}
    (split : CompleteBooleanSplit parent) :
    OneCoordinateResolution parent split.zeroChild := by
  rw [split.zeroChild_exact]
  exact resolveAt_is_oneCoordinateResolution
    parent split.coordinate false split.parentUnresolved

def CompleteBooleanSplit.oneResolution
    {n : Nat}
    {parent : PartialBitfield n}
    (split : CompleteBooleanSplit parent) :
    OneCoordinateResolution parent split.oneChild := by
  rw [split.oneChild_exact]
  exact resolveAt_is_oneCoordinateResolution
    parent split.coordinate true split.parentUnresolved

theorem completeBooleanSplit_children_extend
    {n : Nat}
    {parent : PartialBitfield n}
    (split : CompleteBooleanSplit parent) :
    parent ≤ split.zeroChild ∧
      parent ≤ split.oneChild :=
  ⟨oneCoordinateResolution_extends split.zeroResolution,
    oneCoordinateResolution_extends split.oneResolution⟩

end Mathematics.BinaryFrontier
