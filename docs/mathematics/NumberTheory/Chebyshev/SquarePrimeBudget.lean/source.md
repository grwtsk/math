# Complete source: GRWTSK.NumberTheory.Chebyshev.SquarePrimeBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c4d84032068fb77b1c6716957d387dfedeb2301` · SHA-256 `e7b0be783595b333dbe6be77350afd452c551023b1638c0b3f19764024acdf05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource
import GRWTSK.NumberTheory.Chebyshev.ProperPrimePowerCorrection

set_option autoImplicit false

/-!
# Explicit square-interval correction budgets and actual prime witnesses

This source-only integration of #256 and #265 advances #261 without redefining
any count, Chebyshev function, correction inventory, or conjectural target.
The two independently constructed correction sums are identified through their
proved source decompositions. This discharges the correction-bound premise of
#265's margin consumer at the exact supported square-interval scope.

The sole new definition is a scalar harmonic correction budget. Approximation
error and strict margins remain hypotheses. A finite mean-square threshold is
kept separate from the every-input tail required by the existing Legendre target.
All imported drafts and this integration remain NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.SquarePrimeBudget

open scoped BigOperators
open GRWTSK.RiemannHypothesis.SourcePairing
open GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals
open GRWTSK.NumberTheory.Chebyshev.HigherPrimePowers
open GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.LandauStatements

noncomputable section

/-- Normalize only the natural-square casts; both sides are the same source. -/
theorem squareIncrement_eq_source_difference (n : ℕ) :
    squareIncrement n =
      chebyshevPrimePower (((n + 1) ^ 2 : ℕ) : ℝ) -
        chebyshevPrimePower ((n ^ 2 : ℕ) : ℝ) := by
  simp only [squareIncrement, Nat.cast_pow, Nat.cast_add, Nat.cast_one]

/-- Equality of two independently constructed full corrections, not a new definition. -/
theorem proper_mass_eq_higher_mass (n : ℕ) (hn : 1 ≤ n) :
    ProperPrimePowerCorrection.properPrimePowerMass (n ^ 2) ((n + 1) ^ 2) =
      higherPrimePowerMass n := by
  have hproper := ProperPrimePowerCorrection.source_sub_eq_theta_sub_add_proper
    (n ^ 2) ((n + 1) ^ 2) (by nlinarith)
  rw [← squareIncrement_eq_source_difference n] at hproper
  change squareIncrement n = squarePrimeIncrement n +
    ProperPrimePowerCorrection.properPrimePowerMass (n ^ 2) ((n + 1) ^ 2) at hproper
  have hhigher := squareIncrement_decomposition n hn
  linarith

/-- A larger complete exponent cutoff represents the same concrete nonprime sum. -/
theorem proper_mass_eq_covering_sum (n K : ℕ) (hn : 1 ≤ n)
    (hK : exponentCutoff n ≤ K) :
    ProperPrimePowerCorrection.properPrimePowerMass (n ^ 2) ((n + 1) ^ 2) =
      higherPrimePowerMassUpTo n K := by
  rw [proper_mass_eq_higher_mass n hn, massUpTo_eq_complete n K hK]

/-- Use the finite harmonic bound before relaxing it to its logarithmic envelope. -/
def correctionBudget (n : ℕ) : ℝ :=
  2 * Real.log (n + 1 : ℕ) * ∑ k ∈ Finset.Icc 2 (exponentCutoff n), 1 / (k : ℝ)

/-- The already derived finite occupancy theorem supplies this budget. -/
theorem higher_mass_le_correctionBudget (n : ℕ) :
    higherPrimePowerMass n ≤ correctionBudget n := by
  exact massUpTo_le_harmonic_sum n (exponentCutoff n)

/-- Transport the budget to the exact correction consumed by #265. -/
theorem proper_mass_le_correctionBudget (n : ℕ) (hn : 1 ≤ n) :
    ProperPrimePowerCorrection.properPrimePowerMass (n ^ 2) ((n + 1) ^ 2) ≤
      correctionBudget n := by
  rw [proper_mass_eq_higher_mass n hn]
  exact higher_mass_le_correctionBudget n

/-- The budget is nonnegative, including an empty exponent inventory. -/
theorem correctionBudget_nonneg (n : ℕ) : 0 ≤ correctionBudget n :=
  (higherPrimePowerMass_nonneg n).trans (higher_mass_le_correctionBudget n)

/-- The convenient logarithmic envelope is weaker than the finite harmonic budget. -/
theorem correctionBudget_le_log_envelope (n : ℕ) (hn : 1 ≤ n) :
    correctionBudget n ≤
      2 * Real.log (n + 1 : ℕ) * Real.log (exponentCutoff n) := by
  exact mul_le_mul_of_nonneg_left
    (harmonic_sum_from_two_le_log _ (by have := two_le_exponentCutoff n hn; omega))
    (mul_nonneg (by norm_num) (Real.log_natCast_nonneg _))

/-- Positive logarithmic prime mass is the existing actual open-interval prime count. -/
theorem squarePrimeIncrement_pos_iff_squareCount (n : ℕ) :
    0 < squarePrimeIncrement n ↔ 0 < squareCount n := by
  exact PrimeIntervalWitness.theta_square_sub_pos_iff n

/-- Prime-only logarithmic mass is nonnegative without an analytic premise. -/
theorem squarePrimeIncrement_nonneg (n : ℕ) : 0 ≤ squarePrimeIncrement n := by
  rw [squarePrimeIncrement_eq_first_fiber]
  exact Finset.sum_nonneg (fun p _ ↦ Real.log_natCast_nonneg p)

/-- An actual prime-free interval has zero prime-only mass, not merely small mass. -/
theorem prime_increment_zero_of_count_zero (n : ℕ) (hn : squareCount n = 0) :
    squarePrimeIncrement n = 0 := by
  refine le_antisymm ?_ (squarePrimeIncrement_nonneg n)
  apply le_of_not_gt
  intro hpos
  have hc := (squarePrimeIncrement_pos_iff_squareCount n).mp hpos
  rw [hn] at hc
  exact (lt_irrefl 0) hc

/-- The complete correction estimate is now supplied, not an additional caller premise. -/
theorem squareCount_pos_of_budget_margin (n : ℕ) (hn : 1 ≤ n) (A ε : ℝ)
    (happrox : |squareIncrement n - A| ≤ ε)
    (hmargin : 0 < A - ε - correctionBudget n) : 0 < squareCount n := by
  apply ProperPrimePowerCorrection.squareCount_pos_of_source_margin n hn A ε
    (correctionBudget n)
  · simpa only [squareIncrement_eq_source_difference] using happrox
  · exact proper_mass_le_correctionBudget n hn
  · exact hmargin

/-- Extract the actual prime with both strict square endpoints. -/
theorem exists_prime_of_budget_margin (n : ℕ) (hn : 1 ≤ n) (A ε : ℝ)
    (happrox : |squareIncrement n - A| ≤ ε)
    (hmargin : 0 < A - ε - correctionBudget n) :
    ∃ p, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  (squareCount_pos_iff n).mp (squareCount_pos_of_budget_margin n hn A ε happrox hmargin)

/-- Source approximation and evaluation error meet at the same exact intermediate value. -/
theorem squareCount_pos_of_two_error_budget (n : ℕ) (hn : 1 ≤ n)
    (intermediate approximation sourceError evaluationError : ℝ)
    (hsource : |squareIncrement n - intermediate| ≤ sourceError)
    (hevaluation : |intermediate - approximation| ≤ evaluationError)
    (hmargin : 0 < approximation - (sourceError + evaluationError) - correctionBudget n) :
    0 < squareCount n := by
  refine squareCount_pos_of_budget_margin n hn approximation
    (sourceError + evaluationError) ?_ hmargin
  exact (abs_sub_le (squareIncrement n) intermediate approximation).trans
    (add_le_add hsource hevaluation)

/-- Reuse the existing target and prefix/tail composition; neither premise is constructed. -/
theorem legendre_of_prefix_and_budget_margins (N : ℕ) (prefix : LegendreThrough N)
    (A ε : ℕ → ℝ)
    (happrox : ∀ n, N < n → |squareIncrement n - A n| ≤ ε n)
    (hmargin : ∀ n, N < n → 0 < A n - ε n - correctionBudget n) : Legendre := by
  apply legendre_of_prefix_and_tail N prefix
  intro n hn
  exact squareCount_pos_of_budget_margin n (by omega) (A n) (ε n)
    (happrox n hn) (hmargin n hn)

/-- A finite exceptional-set bound whose exceptional predicate is the actual zero prime count. -/
theorem prime_free_card_mul_sq_le (S : Finset ℕ) (hS : ∀ n ∈ S, 1 ≤ n)
    (H U : ℝ) (hmargin : 0 ≤ H - U)
    (hmain : ∀ n ∈ S, H ≤ 2 * (n : ℝ) + 1)
    (hbudget : ∀ n ∈ S, correctionBudget n ≤ U) :
    ((S.filter (fun n ↦ squareCount n = 0)).card : ℝ) * (H - U) ^ 2 ≤
      ∑ n ∈ S, (squareIncrement n - (2 * (n : ℝ) + 1)) ^ 2 := by
  apply GRWTSK.Analysis.ErrorBounds.FiniteSquareBudget.card_mul_sq_le_of_zero
    S (S.filter (fun n ↦ squareCount n = 0)) squarePrimeIncrement
    (fun n ↦ 2 * (n : ℝ) + 1)
    (fun n ↦ squareIncrement n - (2 * (n : ℝ) + 1))
    higherPrimePowerMass H U (Finset.filter_subset _ _) hmargin
  · intro n hn
    have h := prime_error_eq n (hS n hn)
    linarith
  · intro n hn
    exact prime_increment_zero_of_count_zero n (Finset.mem_filter.mp hn).2
  · intro n hn
    exact hmain n (Finset.mem_filter.mp hn).1
  · intro n hn
    exact (higher_mass_le_correctionBudget n).trans
      (hbudget n (Finset.mem_filter.mp hn).1)

/-- Below one full exception's squared cost, a finite set has no prime-free interval.
This finite threshold does not replace every-input tail hypotheses. -/
theorem all_squareCounts_pos_of_small_budget (S : Finset ℕ)
    (hS : ∀ n ∈ S, 1 ≤ n) (H U : ℝ) (hmargin : 0 < H - U)
    (hmain : ∀ n ∈ S, H ≤ 2 * (n : ℝ) + 1)
    (hbudget : ∀ n ∈ S, correctionBudget n ≤ U)
    (hsmall : (∑ n ∈ S, (squareIncrement n - (2 * (n : ℝ) + 1)) ^ 2) <
      (H - U) ^ 2) : ∀ n ∈ S, 0 < squareCount n := by
  intro n hn
  by_contra hnot
  have hz : squareCount n = 0 := Nat.eq_zero_of_not_pos hnot
  let B := S.filter (fun n ↦ squareCount n = 0)
  have hmem : n ∈ B := Finset.mem_filter.mpr ⟨hn, hz⟩
  have hcardNat : 1 ≤ B.card := Nat.succ_le_of_lt (Finset.card_pos.mpr ⟨n, hmem⟩)
  have hcard : (1 : ℝ) ≤ (B.card : ℝ) := by exact_mod_cast hcardNat
  have hcost : (H - U) ^ 2 ≤ (B.card : ℝ) * (H - U) ^ 2 := by
    simpa only [one_mul] using mul_le_mul_of_nonneg_right hcard (sq_nonneg (H - U))
  have hsum := prime_free_card_mul_sq_le S hS H U hmargin.le hmain hbudget
  exact (not_le_of_gt hsmall) (hcost.trans hsum)

/-- The reconciliation still charges a prime square at the right endpoint. -/
theorem upper_square_charge_preserved (n : ℕ) (hn : 1 ≤ n)
    (hp : Nat.Prime (n + 1)) :
    Real.log (n + 1 : ℕ) ≤ higherPrimePowerMass n := by
  rw [← proper_mass_eq_higher_mass n hn]
  exact ProperPrimePowerCorrection.prime_square_endpoint_lower_bound n hp

/-- One abstract zero output can consume exactly one exception's squared cost.
This is an algebraic threshold control, not a prime-free square interval. -/
theorem threshold_equality_allows_zero_output :
    (0 : ℝ) = 1 + (-1) - 0 ∧
      (1 : ℝ) * (1 - 0) ^ 2 = (-1 : ℝ) ^ 2 ∧ ¬ (0 : ℝ) < 0 := by
  norm_num

end

end GRWTSK.NumberTheory.Chebyshev.SquarePrimeBudget
```
