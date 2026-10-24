# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ShapleyAttribution.Variant1678164e1baa581c51245cc0c2b0c0aab85c8542b2dd458f2463c5cfb79ae9bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06d4ccf674ee6f96a50daf0af22b0400ca3112f9` · SHA-256 `1678164e1baa581c51245cc0c2b0c0aab85c8542b2dd458f2463c5cfb79ae9bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.PositiveCapacity

/-!
# Exact two-prime Shapley attribution

This module proves the complete two-prime case directly.  Each attribution is
the average of the two possible conditional insertion histories.  Positivity
follows from capacity monotonicity and efficiency follows by exact
telescoping.  The unrestricted finite-universe combinatorial theorem remains
an explicit open obligation in the theorem-status registry.
-/

namespace Mathematics.SemiLocalDefect

def twoPrimeAttributionFirst
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (first second : Prime) :
    DiagonalOperator Coordinate :=
  fun coordinate =>
    (capacity.increment ∅ first coordinate +
      capacity.increment {second} first coordinate) / 2

def twoPrimeAttributionSecond
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (first second : Prime) :
    DiagonalOperator Coordinate :=
  fun coordinate =>
    (capacity.increment ∅ second coordinate +
      capacity.increment {first} second coordinate) / 2

theorem shapley_attribution_nonnegative
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (first second : Prime)
    (first_registered : first ∈ capacity.primeUniverse.primes)
    (second_registered : second ∈ capacity.primeUniverse.primes) :
    OperatorNonnegative
        (twoPrimeAttributionFirst capacity first second) ∧
      OperatorNonnegative
        (twoPrimeAttributionSecond capacity first second) := by
  have empty_in_universe :
      (∅ : Finset Prime) ⊆ capacity.primeUniverse.primes :=
    Finset.empty_subset _
  have first_cut_in_universe :
      ({first} : Finset Prime) ⊆ capacity.primeUniverse.primes :=
    Finset.singleton_subset_iff.mpr first_registered
  have second_cut_in_universe :
      ({second} : Finset Prime) ⊆ capacity.primeUniverse.primes :=
    Finset.singleton_subset_iff.mpr second_registered
  have first_from_empty :=
    capacity_increment_nonnegative
      capacity
      ∅
      first
      empty_in_universe
      first_registered
  have first_after_second :=
    capacity_increment_nonnegative
      capacity
      {second}
      first
      second_cut_in_universe
      first_registered
  have second_from_empty :=
    capacity_increment_nonnegative
      capacity
      ∅
      second
      empty_in_universe
      second_registered
  have second_after_first :=
    capacity_increment_nonnegative
      capacity
      {first}
      second
      first_cut_in_universe
      second_registered
  constructor
  · intro coordinate
    exact div_nonneg
      (add_nonneg
        (first_from_empty coordinate)
        (first_after_second coordinate))
      (by norm_num)
  · intro coordinate
    exact div_nonneg
      (add_nonneg
        (second_from_empty coordinate)
        (second_after_first coordinate))
      (by norm_num)

theorem shapley_attribution_efficiency
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (first second : Prime) :
    twoPrimeAttributionFirst capacity first second +
        twoPrimeAttributionSecond capacity first second =
      capacity.value (insert first {second}) -
        capacity.value ∅ := by
  have terminal_cuts_equal :
      insert second ({first} : Finset Prime) =
        insert first ({second} : Finset Prime) := by
    ext prime
    simp [or_comm]
  funext coordinate
  simp only [
    twoPrimeAttributionFirst,
    twoPrimeAttributionSecond,
    PositiveCapacity.increment,
    Finset.insert_empty,
    Pi.add_apply,
    Pi.sub_apply,
  ]
  rw [terminal_cuts_equal]
  ring

end Mathematics.SemiLocalDefect
```
