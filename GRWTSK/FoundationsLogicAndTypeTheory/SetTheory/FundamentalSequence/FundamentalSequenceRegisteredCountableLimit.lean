import Mathlib.SetTheory.Ordinal.Family
import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm

/-!
# Registered countable limits

A countable limit is not executable ordinal syntax.  It is a separately named
target together with one certified, strictly increasing, cofinal
`Nat`-indexed family of executable normal forms.  The `Nat` index explicitly
restricts this registry to limits of cofinality omega.
-/

namespace Mathematics.StratifiedBoundary.OrdinalTally

structure RegisteredCountableLimit where
  id : FundamentalSequenceId
  target : Ordinal
  approximation :
    Nat → ExecutableNormalForm
  strictMono :
    StrictMono
      (fun stage =>
        (approximation stage).value)
  belowTarget :
    ∀ stage,
      (approximation stage).value < target
  cofinal :
    ∀ {candidate},
      candidate < target →
      ∃ stage,
        candidate ≤
          (approximation stage).value
  supremum_eq :
    (⨆ stage : Nat,
      (approximation stage).value) =
        target

namespace RegisteredCountableLimit

theorem stage_lt_target
    (registered : RegisteredCountableLimit)
    (stage : Nat) :
    (registered.approximation stage).value <
      registered.target :=
  registered.belowTarget stage

theorem has_declared_supremum
    (registered : RegisteredCountableLimit) :
    (⨆ stage : Nat,
      (registered.approximation stage).value) =
        registered.target :=
  registered.supremum_eq

def SemanticallyEquivalent
    (left right : RegisteredCountableLimit) : Prop :=
  left.target = right.target ∧
    ∀ stage,
      (left.approximation stage).value =
        (right.approximation stage).value

structure EqualityCertificate
    (left right : RegisteredCountableLimit) : Prop where
  sameTarget :
    left.target = right.target
  mutuallyCofinal :
    (∀ stage,
      ∃ later,
        (left.approximation stage).value ≤
          (right.approximation later).value) ∧
    (∀ stage,
      ∃ later,
        (right.approximation stage).value ≤
          (left.approximation later).value)

end RegisteredCountableLimit

structure CountableLimitRegistry where
  entries : List RegisteredCountableLimit
  uniqueIds :
    (entries.map RegisteredCountableLimit.id).Nodup

def CountableLimitRegistry.Admits
    (registry : CountableLimitRegistry)
    (sequenceId : FundamentalSequenceId) : Prop :=
  ∃ registered ∈ registry.entries,
    registered.id = sequenceId

def CountableLimitRegistry.AdmitsTarget
    (registry : CountableLimitRegistry)
    (registered : RegisteredCountableLimit) : Prop :=
  ∃ entry ∈ registry.entries,
    entry.id = registered.id ∧
      entry.target = registered.target

end Mathematics.StratifiedBoundary.OrdinalTally
