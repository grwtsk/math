import FormalResearch.RiemannHypothesis.WeightedPrimeAbel
import FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-!
# Actual prime diagonal: integral approximation with a uniform error

The test is the accepted source correlation at twice the logarithmic separation.
Its derivative energy supplies a uniform variation budget. Weighted-prime Abel
transport retains the exact cutoff `floor (A^2)` and the upper support endpoint.

This is the prime sector of the retained Vaughan diagonal. The complete unmerged
diagonal also contains proper prime powers; no joint covariance bound is proved.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel

open MeasureTheory Set
open scoped BigOperators Interval
open WeightedPrimeAbel SourceCorrelationEnergy SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

noncomputable section

/-- The actual correlation kernel used on the equal-index Vaughan sector. -/
def diagonalCorrelation (A t : ℝ) : ℝ := sourceCorrelation explicitSecondDerivative A (2 * t)

theorem diagonalCorrelation_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 1 (diagonalCorrelation A) := by
  exact (sourceCorrelation_contDiff A hA).comp (contDiff_const.mul contDiff_id)

theorem diagonalCorrelation_deriv (A t : ℝ) (hA : 0 < A) :
    deriv (diagonalCorrelation A) t =
      2 * deriv (sourceCorrelation explicitSecondDerivative A) (2 * t) := by
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hA)).1 (2 * t)).hasDerivAt
  have hd := hc.comp t ((hasDerivAt_id t).const_mul 2)
  change deriv (fun x : ℝ => sourceCorrelation explicitSecondDerivative A (2 * x)) t = _
  simpa only [Function.comp_def, one_mul, mul_comm] using hd.deriv

theorem diagonalCorrelation_abs_le_one (A t : ℝ) (hA : 1 ≤ A) :
    |diagonalCorrelation A t| ≤ 1 := actual_correlation_abs_le_one A (2 * t) hA

theorem diagonalCorrelation_at_zero (A : ℝ) (hA : 1 ≤ A) :
    diagonalCorrelation A 0 = 1 := by
  simpa only [diagonalCorrelation, mul_zero] using actual_correlation_at_zero A hA

theorem diagonalCorrelation_at_upper (A : ℝ) (hA : 0 < A) :
    diagonalCorrelation A A = 0 := by
  exact sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * A) hA
    (by rw [abs_of_pos (by positivity : 0 < 2 * A)])

theorem diagonalCorrelation_deriv_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (diagonalCorrelation A) t| ≤ 10 / A := by
  rw [diagonalCorrelation_deriv A t (by linarith), abs_mul]
  rw [abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  have h := sourceCorrelation_deriv_abs_le_five_div hA (2 * t)
  calc
    2 * |deriv (sourceCorrelation explicitSecondDerivative A) (2 * t)| ≤ 2 * (5 / A) :=
      mul_le_mul_of_nonneg_left h (by norm_num)
    _ = 10 / A := by ring

theorem diagonalCorrelation_variation_le (A a b : ℝ) (hA : 1 ≤ A)
    (ha : 0 ≤ a) (hab : a ≤ b) (hb : b ≤ A) :
    (∫ t in a..b, |deriv (diagonalCorrelation A) t|) ≤ 10 := by
  have hcont := (diagonalCorrelation_contDiff A (by linarith)).continuous_deriv_one.abs
  have hi : (∫ t in a..b, |deriv (diagonalCorrelation A) t|) ≤
      ∫ t in a..b, (10 / A : ℝ) :=
    intervalIntegral.integral_mono_on hab (hcont.intervalIntegrable a b)
    (continuous_const.intervalIntegrable a b)
    (fun t _ => diagonalCorrelation_deriv_abs_le A t hA)
  rw [intervalIntegral.integral_const] at hi
  have hA0 : 0 < A := by linarith
  have hratio : (b - a) * (10 / A) ≤ 10 := by
    rw [← mul_div_assoc]
    apply (div_le_iff₀ hA0).2
    nlinarith
  exact hi.trans hratio

/-- The exact moving short cutoff has its logarithm in the actual diagonal support window. -/
theorem floor_square_log_bounds (A : ℝ) (hA : 1 ≤ A) :
    0 ≤ Real.log (⌊A ^ 2⌋₊ : ℝ) ∧ Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ A := by
  have hA0 : 0 < A := by linarith
  have hfloor : 1 ≤ ⌊A ^ 2⌋₊ := (Nat.one_le_floor_iff _).mpr (by nlinarith)
  have hfR : (1 : ℝ) ≤ ⌊A ^ 2⌋₊ := by exact_mod_cast hfloor
  have hlog2 : Real.log (2 : ℝ) ≤ 1 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    norm_num at h
    exact h
  have hlogA : 2 * Real.log A ≤ A := by
    have h := Real.log_le_sub_one_of_pos (div_pos hA0 (by norm_num : (0 : ℝ) < 2))
    rw [Real.log_div hA0.ne' (by norm_num : (2 : ℝ) ≠ 0)] at h
    linarith
  refine ⟨Real.log_nonneg hfR, ?_⟩
  calc
    Real.log (⌊A ^ 2⌋₊ : ℝ) ≤ Real.log (A ^ 2) :=
      Real.log_le_log (by linarith) (Nat.floor_le (sq_nonneg A))
    _ = 2 * Real.log A := by rw [Real.log_pow]; norm_num
    _ ≤ A := hlogA

/-- Negative prime sector of the retained diagonal, with the literal moving cutoffs. -/
def retainedPrimeDiagonal (A : ℝ) : ℝ :=
  -(∑ p ∈ (Finset.Ioc ⌊A ^ 2⌋₊ ⌊Real.exp A⌋₊).filter Nat.Prime,
    Real.log (p : ℝ) / (p : ℝ) * diagonalCorrelation A (Real.log p))

theorem retainedPrimeDiagonal_eq_window (A : ℝ) (hA : 1 ≤ A) :
    retainedPrimeDiagonal A =
      -primeLogWindow (Real.log (⌊A ^ 2⌋₊ : ℝ)) A (diagonalCorrelation A) := by
  rw [primeLogWindow_eq_interval_sum _ _ (floor_square_log_bounds A hA).2]
  have hfloor : 0 < (⌊A ^ 2⌋₊ : ℝ) := by
    have h := (Nat.one_le_floor_iff (A ^ 2)).mpr (by nlinarith : 1 ≤ A ^ 2)
    exact_mod_cast (by omega : 0 < ⌊A ^ 2⌋₊)
  rw [Real.exp_log hfloor, Nat.floor_natCast]
  rfl

/-- A fixed arithmetic constant controls the actual prime diagonal's signed integral replacement. -/
theorem retainedPrimeDiagonal_integral_error :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |retainedPrimeDiagonal A +
        (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := primeLogWindow_uniform_error_le
  refine ⟨11 * C, by positivity, ?_⟩
  intro A hA
  have hbounds := floor_square_log_bounds A hA
  have hg := diagonalCorrelation_contDiff A (by linarith)
  have he := hC (Real.log (⌊A ^ 2⌋₊ : ℝ)) A hbounds.1 hbounds.2 (diagonalCorrelation A) hg
  have hvar := diagonalCorrelation_variation_le A (Real.log (⌊A ^ 2⌋₊ : ℝ)) A hA
    hbounds.1 hbounds.2 le_rfl
  have hlo := diagonalCorrelation_abs_le_one A (Real.log (⌊A ^ 2⌋₊ : ℝ)) hA
  rw [diagonalCorrelation_at_upper A (by linarith), abs_zero, add_zero] at he
  rw [retainedPrimeDiagonal_eq_window A hA]
  have he' : |-primeLogWindow (Real.log (⌊A ^ 2⌋₊ : ℝ)) A (diagonalCorrelation A) +
      (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| =
      |primeLogWindow (Real.log (⌊A ^ 2⌋₊ : ℝ)) A (diagonalCorrelation A) -
        (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)| := by
    rw [← abs_neg]
    congr 1
    ring
  rw [he']
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel
