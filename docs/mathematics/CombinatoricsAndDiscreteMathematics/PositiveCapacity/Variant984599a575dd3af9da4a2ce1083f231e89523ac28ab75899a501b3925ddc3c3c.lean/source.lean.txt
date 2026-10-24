import Mathematics.SemiLocalDefect.OperatorOrder
import Mathematics.SemiLocalDefect.PrimeUniverse

/-!
# Positive monotone diagonal capacities

`PositiveCapacity` is abstract-first at the finite rational diagonal level.
The structure stores the exact lower bound, identity upper bound, and
monotonicity laws.  No Hardy, Sonin, transfer, or arithmetic object appears in
its definition.
-/

namespace Mathematics.SemiLocalDefect

structure PositiveCapacity
    (Prime : Type u)
    (Coordinate : Type v)
    [DecidableEq Prime] where
  primeUniverse : FinitePrimeUniverse Prime
  capacityId : String
  value : Finset Prime → DiagonalOperator Coordinate
  nonnegative :
    ∀ cut,
      cut ⊆ primeUniverse.primes →
      OperatorNonnegative (value cut)
  bounded_by_identity :
    ∀ cut,
      cut ⊆ primeUniverse.primes →
      OperatorLe (value cut) (identityOperator Coordinate)
  monotone :
    ∀ source target,
      source ⊆ target →
      target ⊆ primeUniverse.primes →
      OperatorLe (value source) (value target)

def PositiveCapacity.increment
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (prime : Prime) :
    DiagonalOperator Coordinate :=
  capacity.value (insert prime cut) - capacity.value cut

def PositiveCapacity.reduced
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime) :
    DiagonalOperator Coordinate :=
  capacity.value cut - capacity.value ∅

theorem reduced_empty_zero
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate) :
    capacity.reduced ∅ = 0 := by
  funext coordinate
  simp [PositiveCapacity.reduced]

theorem capacity_increment_nonnegative
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (prime : Prime)
    (cut_in_universe : cut ⊆ capacity.primeUniverse.primes)
    (prime_registered : prime ∈ capacity.primeUniverse.primes) :
    OperatorNonnegative (capacity.increment cut prime) := by
  apply operator_increment_nonnegative
  apply capacity.monotone cut (insert prime cut)
  · exact Finset.subset_insert prime cut
  · exact Finset.insert_subset
      prime_registered
      cut_in_universe

theorem capacity_value_bounded
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (cut_in_universe : cut ⊆ capacity.primeUniverse.primes) :
    OperatorLe
      (capacity.value cut)
      (identityOperator Coordinate) :=
  capacity.bounded_by_identity cut cut_in_universe

end Mathematics.SemiLocalDefect
