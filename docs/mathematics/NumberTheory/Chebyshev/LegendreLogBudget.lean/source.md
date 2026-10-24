# Complete source: GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86278ca72089e9548adc0c70ad99f03a0146e742` · SHA-256 `b933f49877574e77b470a85287bc21713501f6d520ef83ed2682b4954525b630`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource
import GRWTSK.NumberTheory.Chebyshev.ProperPrimePowerCorrection

set_option autoImplicit false

/-!
# Source-identical logarithmic correction and actual Legendre witnesses

This integration reuses the exact producer files from PR #256 and the exact
consumer from PR #265. It constructs neither a new Chebyshev source nor a new
prime count. Equality of the two independently defined correction sums is
proved from their source-bound decompositions, with casts made explicit.

The logarithmic correction supplier is discharged at source level. An actual
approximation error, a strict margin and the all-input quantifier remain
independent hypotheses. All new and inherited declarations are SOURCE_ONLY /
NOT_RUN / NOT_KERNEL_AUDITED; integration does not upgrade their trust status.
-/

namespace GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget

open scoped BigOperators
open GRWTSK.RiemannHypothesis.SourcePairing
open GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals
open GRWTSK.NumberTheory.Chebyshev.HigherPrimePowers
open GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource
open GRWTSK.NumberTheory.Chebyshev.PrimeIntervalWitness
open GRWTSK.NumberTheory.Chebyshev.ProperPrimePowerCorrection
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.LandauStatements

noncomputable section

/-- The source producer and consumer use literally the same square cutoffs. -/
theorem squareIncrement_eq_nat_source (n : ℕ) :
    squareIncrement n =
      chebyshevPrimePower (((n + 1) ^ 2 : ℕ) : ℝ) -
        chebyshevPrimePower ((n ^ 2 : ℕ) : ℝ) := by
  simp only [squareIncrement, Nat.cast_pow, Nat.cast_add, Nat.cast_one]

/-- Reconcile integer-indexed and prime/exponent-indexed corrections, not just their sizes. -/
theorem properMass_eq_higherMass (n : ℕ) (hn : 1 ≤ n) :
    properPrimePowerMass (n ^ 2) ((n + 1) ^ 2) = higherPrimePowerMass n := by
  have hproducer := squareIncrement_decomposition n hn
  have hconsumer := source_sub_eq_theta_sub_add_proper
    (n ^ 2) ((n + 1) ^ 2) (pow_le_pow_left₀ (Nat.zero_le n) (by omega : n ≤ n + 1) 2)
  rw [← squareIncrement_eq_nat_source n] at hconsumer
  change squareIncrement n = squarePrimeIncrement n +
    properPrimePowerMass (n ^ 2) ((n + 1) ^ 2) at hconsumer
  linarith

/-- The producer's prime-only increment has the consumer's exact open-interval meaning. -/
theorem squarePrimeIncrement_pos_iff_count (n : ℕ) :
    0 < squarePrimeIncrement n ↔ 0 < squareCount n := by
  exact theta_square_sub_pos_iff n

/-- Nonnegativity follows from the actual monotone theta function. -/
theorem squarePrimeIncrement_nonneg (n : ℕ) : 0 ≤ squarePrimeIncrement n := by
  unfold squarePrimeIncrement
  exact sub_nonneg.mpr (_root_.Chebyshev.theta_mono
    (by exact_mod_cast (pow_le_pow_left₀ (Nat.zero_le n) (by omega : n ≤ n + 1) 2)))

/-- Zero prime count is exactly zero prime-only mass; this is not a statement about psi. -/
theorem squarePrimeIncrement_eq_zero_iff_count_zero (n : ℕ) :
    squarePrimeIncrement n = 0 ↔ squareCount n = 0 := by
  constructor
  · intro hzero
    by_contra hne
    have hpos := (squarePrimeIncrement_pos_iff_count n).mpr (Nat.pos_of_ne_zero hne)
    linarith
  · intro hzero
    apply le_antisymm _ (squarePrimeIncrement_nonneg n)
    apply le_of_not_gt
    intro hpos
    have hcount := (squarePrimeIncrement_pos_iff_count n).mp hpos
    rw [hzero] at hcount
    exact (lt_irrefl 0) hcount

/-- Name the producer's exact bound, without choosing or fitting a new constant. -/
def squareCorrectionBudget (n : ℕ) : ℝ :=
  2 * Real.log (n + 1 : ℕ) * Real.log (exponentCutoff n)

/-- The sharp finite logarithmic supplier now applies to the consumer's actual correction. -/
theorem properMass_le_log_budget (n : ℕ) (hn : 1 ≤ n) :
    properPrimePowerMass (n ^ 2) ((n + 1) ^ 2) ≤ squareCorrectionBudget n := by
  rw [properMass_eq_higherMass n hn]
  exact higherPrimePowerMass_le_log_budget n hn

/-- The bound is nonnegative on the admitted stage domain. -/
theorem squareCorrectionBudget_nonneg (n : ℕ) (hn : 1 ≤ n) :
    0 ≤ squareCorrectionBudget n :=
  (properPrimePowerMass_nonneg _ _).trans (properMass_le_log_budget n hn)

/-- No external higher-power upper-bound premise remains; the source error still must be proved. -/
theorem squareCount_pos_of_log_budget (n : ℕ) (hn : 1 ≤ n) (A ε : ℝ)
    (happrox : |squareIncrement n - A| ≤ ε)
    (hmargin : 0 < A - ε - squareCorrectionBudget n) : 0 < squareCount n := by
  apply squareCount_pos_of_source_margin n hn A ε (squareCorrectionBudget n)
  · simpa only [squareIncrement_eq_nat_source] using happrox
  · exact properMass_le_log_budget n hn
  · exact hmargin

/-- Extract an actual prime, retaining both strict square endpoints. -/
theorem prime_in_square_of_log_budget (n : ℕ) (hn : 1 ≤ n) (A ε : ℝ)
    (happrox : |squareIncrement n - A| ≤ ε)
    (hmargin : 0 < A - ε - squareCorrectionBudget n) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  (squareCount_pos_iff n).mp (squareCount_pos_of_log_budget n hn A ε happrox hmargin)

/-- The same theorem consumes #256's nonintegral endpoints without a source substitution. -/
theorem squareCount_pos_of_shifted_log_budget (n : ℕ) (hn : 1 ≤ n) (A ε : ℝ)
    (happrox : |(chebyshevPrimePower (squareEndpoint (n + 1)) -
      chebyshevPrimePower (squareEndpoint n)) - A| ≤ ε)
    (hmargin : 0 < A - ε - squareCorrectionBudget n) : 0 < squareCount n := by
  apply squareCount_pos_of_log_budget n hn A ε _ hmargin
  simpa only [squareIncrement_eq_shifted] using happrox

/-- Global Legendre remains conditional on a complete prefix and every-input error/margin suppliers. -/
theorem legendre_of_prefix_and_log_budgets (N : ℕ) («prefix» : LegendreThrough N)
    (A ε : ℕ → ℝ)
    (happrox : ∀ n, N < n → |squareIncrement n - A n| ≤ ε n)
    (hmargin : ∀ n, N < n → 0 < A n - ε n - squareCorrectionBudget n) : Legendre := by
  apply legendre_of_prefix_and_tail N «prefix»
  intro n hn
  exact squareCount_pos_of_log_budget n (by omega) (A n) (ε n)
    (happrox n hn) (hmargin n hn)

/-- A genuinely prime-free interval forces an error at least the corrected proposed main term. -/
theorem prime_free_forces_error (n : ℕ) (hn : 1 ≤ n) (A : ℝ)
    (hzero : squareCount n = 0) :
    A - squareCorrectionBudget n ≤ |squareIncrement n - A| := by
  have htheta := (squarePrimeIncrement_eq_zero_iff_count_zero n).mpr hzero
  have hsource := squareIncrement_decomposition n hn
  rw [htheta, zero_add] at hsource
  have hupper := higherPrimePowerMass_le_log_budget n hn
  change higherPrimePowerMass n ≤ squareCorrectionBudget n at hupper
  have habs := neg_le_abs (squareIncrement n - A)
  linarith

/-- An actual error upper bound on a prime-free interval cannot pass the strict margin. -/
theorem prime_free_obstructs_margin (n : ℕ) (hn : 1 ≤ n) (A ε : ℝ)
    (hzero : squareCount n = 0) (happrox : |squareIncrement n - A| ≤ ε) :
    A ≤ ε + squareCorrectionBudget n := by
  have h := (prime_free_forces_error n hn A hzero).trans happrox
  linarith

/-- A finite set of genuine prime-free intervals consumes the actual source-error square budget.
This bound permits exceptions; its existence is not universal interval coverage. -/
theorem prime_free_card_mul_sq_le (S : Finset ℕ) (hS : ∀ n ∈ S, 1 ≤ n)
    (A : ℕ → ℝ) (margin : ℝ) (hm : 0 ≤ margin)
    (hmargin : ∀ n ∈ S, margin ≤ A n - squareCorrectionBudget n) :
    (((S.filter (fun n => squareCount n = 0)).card : ℕ) : ℝ) * margin ^ 2 ≤
      ∑ n ∈ S, (squareIncrement n - A n) ^ 2 := by
  apply GRWTSK.Analysis.ErrorBounds.FiniteSquareBudget.card_mul_sq_le
    S (S.filter (fun n => squareCount n = 0))
    (fun n => squareIncrement n - A n) margin (Finset.filter_subset _ _) hm
  intro n hn
  have hmem := Finset.mem_filter.mp hn
  exact (hmargin n hmem.1).trans
    (prime_free_forces_error n (hS n hmem.1) (A n) hmem.2)

/-- A strict total square budget below one failure cost rules out every exception in this finite set.
Neither a density-one estimate nor equality at the threshold satisfies this premise. -/
theorem squareCount_pos_on_finset_of_budget_lt (S : Finset ℕ)
    (hS : ∀ n ∈ S, 1 ≤ n) (A : ℕ → ℝ) (margin : ℝ) (hm : 0 ≤ margin)
    (hmargin : ∀ n ∈ S, margin ≤ A n - squareCorrectionBudget n)
    (hbudget : (∑ n ∈ S, (squareIncrement n - A n) ^ 2) < margin ^ 2) :
    ∀ n ∈ S, 0 < squareCount n := by
  have hcard := prime_free_card_mul_sq_le S hS A margin hm hmargin
  intro n hn
  apply Nat.pos_of_ne_zero
  intro hzero
  have hmem : n ∈ S.filter (fun j => squareCount j = 0) :=
    Finset.mem_filter.mpr ⟨hn, hzero⟩
  have hnat : 1 ≤ (S.filter (fun j => squareCount j = 0)).card :=
    Finset.one_le_card.mpr ⟨n, hmem⟩
  have hreal : (1 : ℝ) ≤ ((S.filter (fun j => squareCount j = 0)).card : ℝ) := by
    exact_mod_cast hnat
  have hlower := mul_le_mul_of_nonneg_right hreal (sq_nonneg margin)
  nlinarith

end

end GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget
```
