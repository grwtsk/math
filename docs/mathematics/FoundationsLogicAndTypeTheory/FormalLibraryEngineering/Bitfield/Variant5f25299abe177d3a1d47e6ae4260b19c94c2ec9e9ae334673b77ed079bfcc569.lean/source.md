# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitfield.Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6b9898d5396cc439435639c793715211307740c` · SHA-256 `5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.PartialBitfield.Order
import Mathematics.BinaryFrontier.Completion.Core

/-!
# Boolean completions of partial bitfields

A full bitfield supplies a Boolean value at every finite coordinate.  Resolved
partial coordinates must agree with the full value; unresolved coordinates
impose no value.
-/

namespace Mathematics.BinaryFrontier

def FullBitfield (n : Nat) :=
  Fin n → Bool

def ExtendsPartialBitfield
    {n : Nat}
    (state : PartialBitfield n)
    (full : FullBitfield n) : Prop :=
  ∀ coordinate,
    match state coordinate with
    | .unresolved => True
    | .zero => full coordinate = false
    | .one => full coordinate = true

def bitfieldCompletionSemantics (n : Nat) :
    CompletionSemantics
      (PartialBitfield n)
      (FullBitfield n)
      Unit where
  refines := (· ≤ ·)
  extendsFull := ExtendsPartialBitfield
  satisfies := fun _ _ => True
  refines_refl := by
    intro state coordinate
    exact PartialBit.le_refl (state coordinate)
  refines_trans := by
    intro left middle right leftMiddle middleRight coordinate
    exact PartialBit.le_trans
      (leftMiddle coordinate)
      (middleRight coordinate)
  extendsFull_antitone := by
    intro parent child full parentChild childExtends coordinate
    have coordinateOrder := parentChild coordinate
    cases parentValue : parent coordinate
    · trivial
    · have same :
          parent coordinate = child coordinate :=
        PartialBit.resolved_le_eq
          (by simp [PartialBit.Resolved, parentValue])
          coordinateOrder
      have childValue : child coordinate = .zero := by
        rw [← same, parentValue]
      simpa [
        ExtendsPartialBitfield,
        parentValue,
        childValue
      ] using childExtends coordinate
    · have same :
          parent coordinate = child coordinate :=
        PartialBit.resolved_le_eq
          (by simp [PartialBit.Resolved, parentValue])
          coordinateOrder
      have childValue : child coordinate = .one := by
        rw [← same, parentValue]
      simpa [
        ExtendsPartialBitfield,
        parentValue,
        childValue
      ] using childExtends coordinate

def resolveAt
    {n : Nat}
    (parent : PartialBitfield n)
    (coordinate : Fin n)
    (value : Bool) :
    PartialBitfield n :=
  fun other =>
    if other = coordinate then
      PartialBit.ofBool value
    else
      parent other

def resolveAt_is_oneCoordinateResolution
    {n : Nat}
    (parent : PartialBitfield n)
    (coordinate : Fin n)
    (value : Bool)
    (unresolved : parent coordinate = .unresolved) :
    OneCoordinateResolution
      parent
      (resolveAt parent coordinate value) where
  coordinate := coordinate
  value := value
  parentUnresolved := unresolved
  childResolved := by
    simp [resolveAt]
  unchanged := by
    intro other otherNe
    simp [resolveAt, otherNe]

theorem completeSplit_siblings_differ_exactly_once
    {n : Nat}
    (parent : PartialBitfield n)
    (coordinate : Fin n) :
    ∀ other,
      resolveAt parent coordinate false other ≠
          resolveAt parent coordinate true other ↔
        other = coordinate := by
  intro other
  by_cases same : other = coordinate
  · subst other
    simp [resolveAt, PartialBit.ofBool]
  · simp [resolveAt, same]

end Mathematics.BinaryFrontier
```
