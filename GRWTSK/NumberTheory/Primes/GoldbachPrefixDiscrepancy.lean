/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite prefix control of the actual Goldbach progression discrepancy

Finite summation by parts transfers supplied bounds on every untwisted prefix
to twisted discrepancy bounds. The coefficient at zero and the complete
`k + 1` integer baseline are retained. No prime-distribution bound is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy

open scoped BigOperators Real
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer

noncomputable section

/-- Coefficients of the exact finite discrepancy, including frequency zero. -/
def goldbachResidueDiscrepancyCoefficient (q r n : ℕ) : ℂ :=
  (if n % q = r then (primeLogWeight n : ℂ) else 0) -
    (if q.Coprime r then (Nat.totient q : ℂ)⁻¹ else 0)

/-- The complete untwisted prefix through `k`, not just the terminal prefix. -/
def goldbachResiduePrefixDiscrepancy (k q r : ℕ) : ℂ :=
  ∑ n ∈ Finset.range (k + 1), goldbachResidueDiscrepancyCoefficient q r n

/-- The coefficient polynomial is precisely the inherited discrepancy. -/
theorem goldbachResidueProgressionDiscrepancy_eq_coefficient_sum
    (N q r : ℕ) (β : ℝ) :
    goldbachResidueProgressionDiscrepancy N q r β =
      ∑ n ∈ Finset.range (N + 1),
        goldbachResidueDiscrepancyCoefficient q r n * unitCharacter (n : ℤ) β := by
  classical
  by_cases h : q.Coprime r <;>
    simp [goldbachResidueProgressionDiscrepancy,
      goldbachResidueClassPrimeSum, goldbachCoprimeResidueMain,
      goldbachIntegerExponentialKernel, goldbachResidueDiscrepancyCoefficient,
      h, sub_mul, Finset.sum_sub_distrib, Finset.mul_sum,
      Finset.sum_filter, ite_mul]

/-- Every integer character at argument zero is one. -/
theorem unitCharacter_argument_zero (n : ℤ) : unitCharacter n 0 = 1 := by
  simp [unitCharacter]

/-- The prefix is bound to the actual source discrepancy at zero frequency. -/
theorem goldbachResiduePrefixDiscrepancy_eq_at_zero (k q r : ℕ) :
    goldbachResiduePrefixDiscrepancy k q r =
      goldbachResidueProgressionDiscrepancy k q r 0 := by
  rw [goldbachResidueProgressionDiscrepancy_eq_coefficient_sum]
  simp [goldbachResiduePrefixDiscrepancy, unitCharacter_argument_zero]

/-- Finite Abel identity, with both endpoints explicit. -/
theorem finite_abel_identity (c w : ℕ → ℂ) (N : ℕ) :
    (∑ n ∈ Finset.range (N + 1), c n * w n) =
      (∑ n ∈ Finset.range (N + 1), c n) * w N +
        ∑ k ∈ Finset.range N,
          (∑ n ∈ Finset.range (k + 1), c n) * (w k - w (k + 1)) := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ (f := fun n => c n * w n) (n := N + 1), ih]
      rw [Finset.sum_range_succ (f := c) (n := N + 1)]
      rw [Finset.sum_range_succ (f := fun k =>
        (∑ n ∈ Finset.range (k + 1), c n) * (w k - w (k + 1))) (n := N)]
      ring

/-- Summation by parts for the canonical finite progression discrepancy. -/
theorem goldbachResidueProgressionDiscrepancy_abel (N q r : ℕ) (β : ℝ) :
    goldbachResidueProgressionDiscrepancy N q r β =
      goldbachResiduePrefixDiscrepancy N q r * unitCharacter (N : ℤ) β +
        ∑ k ∈ Finset.range N,
          goldbachResiduePrefixDiscrepancy k q r *
            (unitCharacter (k : ℤ) β - unitCharacter ((k + 1 : ℕ) : ℤ) β) := by
  rw [goldbachResidueProgressionDiscrepancy_eq_coefficient_sum]
  exact finite_abel_identity
    (goldbachResidueDiscrepancyCoefficient q r)
    (fun n => unitCharacter (n : ℤ) β) N

/-- Adjacent Fourier frequencies have the same chord length. -/
theorem norm_unitCharacter_adjacent_difference (k : ℕ) (β : ℝ) :
    ‖unitCharacter (k : ℤ) β - unitCharacter ((k + 1 : ℕ) : ℤ) β‖ =
      ‖1 - unitCharacter 1 β‖ := by
  rw [show ((k + 1 : ℕ) : ℤ) = (k : ℤ) + 1 by omega, unitCharacter_add]
  rw [show unitCharacter (k : ℤ) β -
      unitCharacter (k : ℤ) β * unitCharacter 1 β =
      unitCharacter (k : ℤ) β * (1 - unitCharacter 1 β) by ring]
  rw [norm_mul, norm_unitCharacter, one_mul]

/-- Chord length is bounded by the absolute angle, in the source normalization. -/
theorem norm_one_sub_unitCharacter_one_le (β : ℝ) :
    ‖1 - unitCharacter 1 β‖ ≤ 2 * Real.pi * |β| := by
  rw [norm_sub_rev]
  have he : unitCharacter 1 β =
      Complex.exp (Complex.I * ((2 * Real.pi * β : ℝ) : ℂ)) := by
    simp only [unitCharacter, fourier_coe_apply]
    congr 1
    push_cast
    ring
  rw [he]
  calc
    ‖Complex.exp (Complex.I * ((2 * Real.pi * β : ℝ) : ℂ)) - 1‖ ≤
        ‖2 * Real.pi * β‖ := Real.norm_exp_I_mul_ofReal_sub_one_le
    _ = 2 * Real.pi * |β| := by
      simp [Real.norm_eq_abs, abs_of_pos Real.pi_pos]

/-- A genuine prefix-bound premise gives a twisted bound with exact chord loss. -/
theorem norm_goldbachResidueProgressionDiscrepancy_le_of_prefix
    {N q r : ℕ} {B : ℝ} (_hB : 0 ≤ B)
    (hprefix : ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B)
    (β : ℝ) :
    ‖goldbachResidueProgressionDiscrepancy N q r β‖ ≤
      B * (1 + (N : ℝ) * ‖1 - unitCharacter 1 β‖) := by
  rw [goldbachResidueProgressionDiscrepancy_abel]
  calc
    ‖goldbachResiduePrefixDiscrepancy N q r * unitCharacter (N : ℤ) β +
        ∑ k ∈ Finset.range N, goldbachResiduePrefixDiscrepancy k q r *
          (unitCharacter (k : ℤ) β - unitCharacter ((k + 1 : ℕ) : ℤ) β)‖ ≤
      ‖goldbachResiduePrefixDiscrepancy N q r * unitCharacter (N : ℤ) β‖ +
        ‖∑ k ∈ Finset.range N, goldbachResiduePrefixDiscrepancy k q r *
          (unitCharacter (k : ℤ) β - unitCharacter ((k + 1 : ℕ) : ℤ) β)‖ :=
      norm_add_le _ _
    _ ≤ B + ∑ k ∈ Finset.range N,
        ‖goldbachResiduePrefixDiscrepancy k q r *
          (unitCharacter (k : ℤ) β - unitCharacter ((k + 1 : ℕ) : ℤ) β)‖ := by
      apply add_le_add
      · simpa [norm_mul, norm_unitCharacter] using hprefix N le_rfl
      · exact norm_sum_le _ _
    _ ≤ B + ∑ _k ∈ Finset.range N, B * ‖1 - unitCharacter 1 β‖ := by
      apply add_le_add_right
      apply Finset.sum_le_sum
      intro k hk
      rw [norm_mul, norm_unitCharacter_adjacent_difference]
      exact mul_le_mul_of_nonneg_right
        (hprefix k (Nat.le_of_lt (Finset.mem_range.mp hk))) (norm_nonneg _)
    _ = B * (1 + (N : ℝ) * ‖1 - unitCharacter 1 β‖) := by
      simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
      ring

/-- On a small centered interval the loss is at most `1 + 2*pi*N*rho`. -/
theorem norm_goldbachResidueProgressionDiscrepancy_le_of_prefix_radius
    {N q r : ℕ} {B ρ β : ℝ} (hB : 0 ≤ B)
    (hprefix : ∀ k ≤ N, ‖goldbachResiduePrefixDiscrepancy k q r‖ ≤ B)
    (hβ : |β| ≤ ρ) :
    ‖goldbachResidueProgressionDiscrepancy N q r β‖ ≤
      B * (1 + 2 * Real.pi * (N : ℝ) * ρ) := by
  have hchord : ‖1 - unitCharacter 1 β‖ ≤ 2 * Real.pi * ρ :=
    (norm_one_sub_unitCharacter_one_le β).trans
      (mul_le_mul_of_nonneg_left hβ (by positivity))
  calc
    ‖goldbachResidueProgressionDiscrepancy N q r β‖ ≤
        B * (1 + (N : ℝ) * ‖1 - unitCharacter 1 β‖) :=
      norm_goldbachResidueProgressionDiscrepancy_le_of_prefix hB hprefix β
    _ ≤ B * (1 + (N : ℝ) * (2 * Real.pi * ρ)) := by
      exact mul_le_mul_of_nonneg_left
        (add_le_add_right (mul_le_mul_of_nonneg_left hchord (by positivity)) 1) hB
    _ = B * (1 + 2 * Real.pi * (N : ℝ) * ρ) := by ring

/-- Integral period shifts preserve the actual residue discrepancy. -/
theorem goldbachResidueProgressionDiscrepancy_add_int
    (N q r : ℕ) (β : ℝ) (j : ℤ) :
    goldbachResidueProgressionDiscrepancy N q r (β + (j : ℝ)) =
      goldbachResidueProgressionDiscrepancy N q r β := by
  simp only [goldbachResidueProgressionDiscrepancy_eq_coefficient_sum,
    unitCharacter_add_int]

/-- Exact nonnegative prime mass of one residue fibre; no model is inserted. -/
def goldbachResiduePrimeLogTotal (N q r : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1) with n % q = r, primeLogWeight n

theorem goldbachResiduePrimeLogTotal_nonneg (N q r : ℕ) :
    0 ≤ goldbachResiduePrimeLogTotal N q r := by
  exact Finset.sum_nonneg fun n hn => primeLogWeight_nonneg n

/-- Non-reduced classes are charged directly instead of receiving Abel loss. -/
theorem norm_goldbachResidueProgressionDiscrepancy_le_of_not_coprime
    (N q r : ℕ) (h : ¬ q.Coprime r) (β : ℝ) :
    ‖goldbachResidueProgressionDiscrepancy N q r β‖ ≤
      goldbachResiduePrimeLogTotal N q r := by
  simp only [goldbachResidueProgressionDiscrepancy, goldbachCoprimeResidueMain,
    if_neg h, sub_zero, goldbachResidueClassPrimeSum]
  calc
    ‖∑ n ∈ (Finset.range (N + 1)).filter (fun n => n % q = r),
        (primeLogWeight n : ℂ) * unitCharacter (n : ℤ) β‖ ≤
      ∑ n ∈ (Finset.range (N + 1)).filter (fun n => n % q = r),
        ‖(primeLogWeight n : ℂ) * unitCharacter (n : ℤ) β‖ := norm_sum_le _ _
    _ = goldbachResiduePrimeLogTotal N q r := by
      unfold goldbachResiduePrimeLogTotal
      apply Finset.sum_congr rfl
      intro n hn
      simp [norm_unitCharacter, abs_of_nonneg (primeLogWeight_nonneg n)]

end
end GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy
