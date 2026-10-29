import Mathlib

/-!
# Primitive majority-crossing frontier

The ambient tally is finite, nonempty, and ordered by `Fin magnitude`.
A first-crossing word ends exactly at its final selected position.  Every
earlier prefix remains below the majority threshold.
-/

namespace Mathematics.StratifiedBoundary.Frontier

def majorityThreshold (magnitude : Nat) : Nat :=
  magnitude / 2 + 1

def Crosses
    (magnitude : Nat)
    (selected : Finset (Fin magnitude)) : Prop :=
  magnitude < 2 * selected.card

def IsPrimitiveCrossing
    (magnitude : Nat)
    (selected : Finset (Fin magnitude)) : Prop :=
  0 < magnitude ∧
    selected.card = majorityThreshold magnitude

theorem primitiveCrossing_crosses
    {magnitude : Nat}
    {selected : Finset (Fin magnitude)}
    (primitive :
      IsPrimitiveCrossing magnitude selected) :
    Crosses magnitude selected := by
  simp only [IsPrimitiveCrossing,
    majorityThreshold] at primitive
  simp only [Crosses]
  omega

theorem primitiveCrossing_minimal
    {magnitude : Nat}
    {selected : Finset (Fin magnitude)}
    (primitive :
      IsPrimitiveCrossing magnitude selected)
    {subset : Finset (Fin magnitude)}
    (proper : subset ⊂ selected) :
    ¬Crosses magnitude subset := by
  have card_lt :
      subset.card < selected.card :=
    Finset.card_lt_card proper
  simp only [IsPrimitiveCrossing,
    majorityThreshold] at primitive
  simp only [Crosses]
  omega

def selectedCount (word : List Bool) : Nat :=
  word.count true

def ProperPrefix
    (prefix word : List Bool) : Prop :=
  prefix.IsPrefix word ∧ prefix ≠ word

structure IsFirstCrossingCode
    (magnitude : Nat)
    (word : List Bool) : Prop where
  magnitudePositive :
    0 < magnitude
  lengthPositive :
    1 ≤ word.length
  lengthBounded :
    word.length ≤ magnitude
  selectedCount_eq :
    selectedCount word =
      majorityThreshold magnitude
  terminalSelected :
    word.getLast? = some true
  everyPriorPrefixBelow :
    ∀ prefix,
      ProperPrefix prefix word →
      selectedCount prefix <
        majorityThreshold magnitude

structure FirstCrossingCode
    (magnitude : Nat) where
  word : List Bool
  firstCrossing :
    IsFirstCrossingCode magnitude word
  deriving Repr

theorem firstCrossing_crosses
    {magnitude : Nat}
    {word : List Bool}
    (crossing :
      IsFirstCrossingCode magnitude word) :
    magnitude < 2 * selectedCount word := by
  rw [crossing.selectedCount_eq]
  simp [majorityThreshold]
  omega

theorem majority_crossing_prefix_free
    {magnitude : Nat}
    {left right : List Bool}
    (leftCrossing :
      IsFirstCrossingCode magnitude left)
    (rightCrossing :
      IsFirstCrossingCode magnitude right)
    (different : left ≠ right) :
    ¬left.IsPrefix right := by
  intro prefix
  have below :=
    rightCrossing.everyPriorPrefixBelow
      left ⟨prefix, different⟩
  rw [leftCrossing.selectedCount_eq] at below
  exact (Nat.lt_irrefl _ below)

/-!
The implementation may choose any concrete encoding of subsets as words, but
admission requires the complete bijection and cardinality proof below.  This
keeps order dependence inside the immutable cut rather than hiding it in a
sorting convention.
-/
structure MajorityCrossingBijectionCertificate
    (magnitude : Nat) where
  magnitudePositive :
    0 < magnitude
  allCodes : Finset (List Bool)
  enumeratesExactly :
    ∀ word,
      word ∈ allCodes ↔
        IsFirstCrossingCode magnitude word
  toPrimitiveSubset :
    FirstCrossingCode magnitude →
      { selected : Finset (Fin magnitude) //
        IsPrimitiveCrossing magnitude selected }
  fromPrimitiveSubset :
    { selected : Finset (Fin magnitude) //
      IsPrimitiveCrossing magnitude selected } →
      FirstCrossingCode magnitude
  leftInverse :
    Function.LeftInverse
      fromPrimitiveSubset toPrimitiveSubset
  rightInverse :
    Function.RightInverse
      fromPrimitiveSubset toPrimitiveSubset
  endsAtGreatestSelectedPosition :
    Prop
  greatestPositionProof :
    endsAtGreatestSelectedPosition
  cardinality :
    allCodes.card =
      Nat.choose magnitude
        (majorityThreshold magnitude)

end Mathematics.StratifiedBoundary.Frontier
