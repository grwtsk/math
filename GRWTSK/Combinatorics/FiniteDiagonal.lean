/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import Mathlib.Algebra.Order.Pi
import Mathlib.Data.Rat.Lemmas
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-! # Finite positive capacities with rational diagonal values
The declarations below are extracted verbatim from these archived sources
at math `6626236b41efc5724d86915d7f8df326d5860b63`:
- `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean`, Git blob `8d369f64a568cbd63412d452bc657e748a3e049d`, SHA-256 `6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837`.
- `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949.lean`, Git blob `bc6cb1bc44b99e49604ad7048f98bc36cb9baa7a`, SHA-256 `eea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949`.
- `GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c.lean`, Git blob `a193c5dae348b1fa9153014e4bd8a0638fcd254d`, SHA-256 `984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c`.

The parameterized finite universe matches the capacity field and its primes
Finset. No numerical primality, distinctness of selected elements or finite
coordinate-carrier hypothesis is added. Values are rational functions with
pointwise order; no Hilbert-operator or arithmetic realization is asserted.
Nonnegativity, identity upper bounds and monotonicity premises are retained.
The two-element attribution consumers do not prove an unrestricted finite
Shapley theorem. Native compilation and axiom verification are NOT_RUN. -/

set_option autoImplicit false
universe u v
namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveCapacity.FiniteDiagonal

abbrev DiagonalOperator (Coordinate : Type u) :=
  Coordinate → ℚ

def OperatorNonnegative
    {Coordinate : Type u}
    (operator : DiagonalOperator Coordinate) : Prop :=
  ∀ coordinate, 0 ≤ operator coordinate

def OperatorLe
    {Coordinate : Type u}
    (left right : DiagonalOperator Coordinate) : Prop :=
  ∀ coordinate, left coordinate ≤ right coordinate

def identityOperator
    (Coordinate : Type u) :
    DiagonalOperator Coordinate :=
  fun _ => 1

theorem operatorLe_refl
    {Coordinate : Type u}
    (operator : DiagonalOperator Coordinate) :
    OperatorLe operator operator :=
  fun _ => le_rfl

theorem operatorLe_trans
    {Coordinate : Type u}
    {first second third : DiagonalOperator Coordinate}
    (first_second : OperatorLe first second)
    (second_third : OperatorLe second third) :
    OperatorLe first third :=
  fun coordinate =>
    le_trans
      (first_second coordinate)
      (second_third coordinate)

theorem operator_increment_nonnegative
    {Coordinate : Type u}
    {source target : DiagonalOperator Coordinate}
    (ordered : OperatorLe source target) :
    OperatorNonnegative (target - source) :=
  fun coordinate =>
    sub_nonneg.mpr (ordered coordinate)

theorem nonnegative_add
    {Coordinate : Type u}
    {left right : DiagonalOperator Coordinate}
    (left_nonnegative : OperatorNonnegative left)
    (right_nonnegative : OperatorNonnegative right) :
    OperatorNonnegative (left + right) :=
  fun coordinate =>
    add_nonneg
      (left_nonnegative coordinate)
      (right_nonnegative coordinate)

structure FinitePrimeUniverse
    (Prime : Type u)
    [DecidableEq Prime] where
  universeId : String
  primes : Finset Prime
  canonicalOrderRef : String


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

end GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveCapacity.FiniteDiagonal
