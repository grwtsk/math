# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Frontier.Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3abed52e09e9bc816614d6c4e4d0c5d1b5531aad` · SHA-256 `cf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Origin

/-!
# Finite graded frequency frontier

One grade is retained for each distinct unresolved frequency.  Removing a
displayed grade is a representation reduction only.
-/

namespace Mathematics.Resolution

universe u v w

def frequencyValues
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation) :
    Finset Nat :=
  unresolvedSet.image cut.frequency

def frequencyLayer
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation)
    (frequency : Nat) :
    Finset Obligation :=
  unresolvedSet.filter fun obligation ↦
    cut.frequency obligation = frequency

def maximumFrequency
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation)
    (nonempty : unresolvedSet.Nonempty) :
    Nat :=
  (frequencyValues cut unresolvedSet).max'
    (nonempty.image cut.frequency)

def firstFrequencyLayer
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation)
    (nonempty : unresolvedSet.Nonempty) :
    Finset Obligation :=
  frequencyLayer cut unresolvedSet
    (maximumFrequency cut unresolvedSet nonempty)

theorem first_layer_has_maximum_frequency
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    {cut : InvocationCut Obligation Proof Event}
    {unresolvedSet : Finset Obligation}
    {nonempty : unresolvedSet.Nonempty}
    {obligation : Obligation}
    (member :
      obligation ∈
        firstFrequencyLayer cut unresolvedSet nonempty) :
    cut.frequency obligation =
      maximumFrequency cut unresolvedSet nonempty :=
  (Finset.mem_filter.mp member).2

theorem frequency_bounded_by_maximum
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    {cut : InvocationCut Obligation Proof Event}
    {unresolvedSet : Finset Obligation}
    (nonempty : unresolvedSet.Nonempty)
    {obligation : Obligation}
    (member : obligation ∈ unresolvedSet) :
    cut.frequency obligation ≤
      maximumFrequency cut unresolvedSet nonempty := by
  apply Finset.le_max'
  exact Finset.mem_image.mpr ⟨obligation, member, rfl⟩

theorem finite_grade_bound
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation) :
    (frequencyValues cut unresolvedSet).card ≤
      unresolvedSet.card :=
  Finset.card_image_le

/--
The dimension list is a checked runtime witness for the basis-cardinality
chain.  Strict drops certify removal of exactly one nonempty frequency grade.
-/
structure GradedFrontierCertificate where
  frequencies : List Nat
  dimensions : List Nat
  descending : frequencies.Pairwise (· > ·)
  terminalZero : dimensions.getLast? = some 0
  oneDimensionPerLayer :
    dimensions.length = frequencies.length + 1
  strictDrops : dimensions.Pairwise (· > ·)
  bounded :
    frequencies.length ≤ unresolvedCount
  unresolvedCount : Nat

end Mathematics.Resolution
```
