/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.ConfigurationCounts

set_option autoImplicit false

/-!
# Landau targets and exact counting reformulations

These are definitions of conjectural propositions and proofs of elementary
reformulations, not proofs of the conjectures. Universal and unbounded
quantifiers remain distinct. A finite prefix and a separately supplied
all-input tail compose without proving either premise.
-/

namespace GRWTSK.NumberTheory.Primes.LandauStatements

open GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.BoundedWitnesses
open GRWTSK.NumberTheory.Primes.ConfigurationCounts

/-- Strong Goldbach, with its actual domain and quantifier order. -/
def Goldbach : Prop :=
  ∀ N : ℕ, 2 < N → Even N →
    ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p + q = N

/-- Unbounded smaller primes of pairs at the fixed distance two. -/
def TwinPrimes : Prop :=
  UnboundedWitnesses (fun p => Nat.Prime p ∧ Nat.Prime (p + 2))

/-- Every positive square interval, with strict endpoints. -/
def Legendre : Prop :=
  ∀ n : ℕ, 1 ≤ n → ∃ p, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2

/-- Unbounded natural indices on the thin quadratic source. -/
def QuadraticPrimeValues : Prop :=
  UnboundedWitnesses (fun n => 1 ≤ n ∧ Nat.Prime (n ^ 2 + 1))

/-- Goldbach is a positive count for every admissible even integer. -/
theorem goldbach_iff_positive_counts :
    Goldbach ↔ ∀ N : ℕ, 2 < N → Even N → 0 < goldbachCount N := by
  constructor
  · intro h N hN hEven
    exact (goldbachCount_pos_iff N).mpr (h N hN hEven)
  · intro h N hN hEven
    exact (goldbachCount_pos_iff N).mp (h N hN hEven)

/-- One fixed positive twin count cannot replace the outer `forall B`. -/
theorem twinPrimes_iff_positive_tails :
    TwinPrimes ↔ ∀ B, ∃ X, 0 < twinTailCount B X := by
  exact unbounded_iff_positive_tailCounts
    (fun p => Nat.Prime p ∧ Nat.Prime (p + 2))

/-- Legendre is positivity on all positive square intervals, not almost all. -/
theorem legendre_iff_positive_counts :
    Legendre ↔ ∀ n : ℕ, 1 ≤ n → 0 < squareCount n := by
  constructor
  · intro h n hn
    exact (squareCount_pos_iff n).mpr (h n hn)
  · intro h n hn
    exact (squareCount_pos_iff n).mp (h n hn)

/-- Quadratic infinitude requires new indices beyond every cutoff. -/
theorem quadraticPrimeValues_iff_positive_tails :
    QuadraticPrimeValues ↔ ∀ B, ∃ X, 0 < quadraticTailCount B X := by
  exact unbounded_iff_positive_tailCounts
    (fun n => 1 ≤ n ∧ Nat.Prime (n ^ 2 + 1))

/-- Complete finite-prefix coverage, not sampled interval checks. -/
def LegendreThrough (N : ℕ) : Prop :=
  ∀ n : ℕ, 1 ≤ n → n ≤ N → 0 < squareCount n

/-- A separately proved all-input tail supplier. -/
def LegendreBeyond (N : ℕ) : Prop :=
  ∀ n : ℕ, N < n → 0 < squareCount n

/-- Glue a complete finite prefix to an independently supplied universal tail. -/
theorem legendre_of_prefix_and_tail (N : ℕ)
    («prefix» : LegendreThrough N) (tail : LegendreBeyond N) : Legendre := by
  apply legendre_iff_positive_counts.mpr
  intro n hn
  by_cases hcut : n ≤ N
  · exact «prefix» n hn hcut
  · exact tail n (Nat.lt_of_not_ge hcut)

/-- An actual Legendre theorem would supply each finite prefix. -/
theorem legendre_through_of_legendre (h : Legendre) (N : ℕ) :
    LegendreThrough N := by
  intro n hn _
  exact legendre_iff_positive_counts.mp h n hn

end GRWTSK.NumberTheory.Primes.LandauStatements
