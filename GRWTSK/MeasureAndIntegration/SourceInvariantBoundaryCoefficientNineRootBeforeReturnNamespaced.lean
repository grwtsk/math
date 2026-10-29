-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.InvariantBoundaryCoefficient.Variantd6f03d988e4b107d0bd47f343d0b7dd12a40156b40dd2700748047477d8ec3a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6f03d988e4b107d0bd47f343d0b7dd12a40156b40dd2700748047477d8ec3a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.InvariantBoundaryCoefficient.Variantd6f03d988e4b107d0bd47f343d0b7dd12a40156b40dd2700748047477d8ec3a0","mathematical_subject":"Analysis.Calculus","original_sha256":"d6f03d988e4b107d0bd47f343d0b7dd12a40156b40dd2700748047477d8ec3a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/invariant-formal/SourceInvariantBoundaryCoefficient.nine-root-before-return.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceExactTailEnergy
import SourceActualF7TailAdapter

/-!
The literal zeroth moment of the F7 curvature kernel is nonzero on the source tail.
This identifies the invariant mean's paid boundary coefficient; no mean bound is supplied.
Direction and conceptual origin: grwtsk contributors.
Source calculation and native proof construction: OpenAI Codex assistance.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.InvariantBoundaryCoefficient.Variantd6f03d988e4b107d0bd47f343d0b7dd12a40156b40dd2700748047477d8ec3a0

set_option autoImplicit false
noncomputable section
namespace RH16InvariantBoundary

open MeasureTheory Set
open RH16ExactTailEnergy RH16ActualF7
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

/-- The actual lower endpoint coefficient, with unchanged source normalization. -/
def invariantBoundaryCoefficient (A : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A (Real.log 7) / 2 -
    deriv (sourceCorrelation explicitSecondDerivative A) (Real.log 7)

theorem log_seven_lt_two : Real.log (7 : ℝ) < 2 := by
  apply (Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 7)).mpr
  have h := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 2) 6
  norm_num [Finset.sum_range_succ] at h
  linarith

/-- FTC keeps the actual lower trace and actual zero upper trace. -/
theorem actual_kernel_zeroth_moment (A : ℝ) (hA : 0 < A) :
    (∫ t in Real.log 7..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2) =
      invariantBoundaryCoefficient A := by
  have hc := (minusCorrelationWeight_contDiff A hA).continuous_deriv (by norm_num)
  have he : deriv (minusCorrelationWeight A) = fun t =>
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2 :=
    funext fun t => (minusCorrelationWeight_hasDerivAt A t hA).deriv
  rw [he] at hc
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => minusCorrelationWeight_hasDerivAt A t hA) (hc.intervalIntegrable _ _),
    minusCorrelationWeight_at_upper A hA]
  unfold minusCorrelationWeight invariantBoundaryCoefficient
  ring

/-- Source evenness fixes the first derivative at zero. -/
theorem actual_correlation_deriv_zero (A : ℝ) (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hA)).1 0).hasDerivAt
  have hcn : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-(0 : ℝ)) := by
    simpa only [neg_zero] using hc
  have hn : HasDerivAt
      (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u))
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hcn.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  rw [he] at hn
  have hd := hc.unique hn
  linarith

/-- Curvature on the actual source tail is at most 5/A² in physical coordinates. -/
theorem actual_curvature_abs_le_five (A t : ℝ) (hA : 91 ≤ A) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤ 5 / A ^ 2 := by
  have h := actual_correlation_second_deriv_abs_le_tail (by norm_num : (1 : ℝ) ≤ 91) hA t
  exact h.trans (div_le_div_of_nonneg_right tailEnergyCoefficient_ninety_one_lt_five.le
    (sq_nonneg A))

/-- A centered first derivative retains the exact curvature scale. -/
theorem actual_deriv_abs_le_linear (A t : ℝ) (hA : 91 ≤ A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 / A ^ 2 * |t| := by
  have hp : 0 < A := by linarith
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := deriv (sourceCorrelation explicitSecondDerivative A))
    (fun x _ => (sourceCorrelation_deriv_contDiff hp).differentiable (by norm_num) x)
    (fun x _ => by simpa only [Real.norm_eq_abs] using actual_curvature_abs_le_five A x hA)
    convex_univ (mem_univ 0) (mem_univ t)
  simpa only [Real.norm_eq_abs, actual_correlation_deriv_zero A hp, sub_zero] using h

/-- The quadratic source remainder is controlled by the same actual tail energy. -/
theorem actual_correlation_zero_taylor_bound (A t : ℝ) (hA : 91 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ 5 / A ^ 2 * t ^ 2 / 2 := by
  have hp : 0 < A := by linarith
  by_cases ht : t = 0
  · subst t
    rw [actual_correlation_at_zero A (by linarith)]
    norm_num
  have hne : (0 : ℝ) ≠ t := Ne.symm ht
  have hf := sourceCorrelation_contDiff_two hp
  obtain ⟨z, _, hz⟩ := taylor_mean_remainder_lagrange_iteratedDeriv
    (n := 1) hne hf.contDiffOn
  have he : taylorWithinEval (sourceCorrelation explicitSecondDerivative A) 1
      (uIcc 0 t) 0 t = (1 : ℝ) := by
    rw [show (1 : ℕ) = 0 + 1 from rfl, taylorWithinEval_succ]
    simp only [taylor_within_zero_eval, Nat.cast_zero, zero_add, Nat.factorial_zero,
      Nat.cast_one, mul_one, inv_one, one_mul, pow_one, smul_eq_mul, iteratedDerivWithin_one,
      sub_zero]
    rw [((hf.differentiable (by norm_num)) 0).derivWithin
      ((uniqueDiffOn_uIcc hne) 0 (left_mem_uIcc)), actual_correlation_deriv_zero A hp,
      actual_correlation_at_zero A (by linarith)]
    ring
  rw [he] at hz
  simp only [iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial_succ,
    Nat.factorial_zero, Nat.cast_mul, mul_one, sub_zero] at hz
  have heq : sourceCorrelation explicitSecondDerivative A t - 1 =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) z * t ^ 2 / 2 := by
    linarith [hz]
  rw [heq, abs_div, abs_mul, abs_of_nonneg (sq_nonneg t),
    abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  gcongr
  exact actual_curvature_abs_le_five A z hA

/-- The invariant mean keeps a zeroth-order coefficient close to one half. -/
theorem invariantBoundaryCoefficient_bounds (A : ℝ) (hA : 91 ≤ A) :
    (1 / 2 : ℝ) - 15 / A ^ 2 ≤ invariantBoundaryCoefficient A ∧
      invariantBoundaryCoefficient A ≤ (1 / 2 : ℝ) + 10 / A ^ 2 := by
  have hlog0 : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hlog2 : Real.log (7 : ℝ) ≤ 2 := log_seven_lt_two.le
  have hg : 0 ≤ 5 / A ^ 2 := by positivity
  have hder := actual_deriv_abs_le_linear A (Real.log 7) hA
  rw [abs_of_nonneg hlog0] at hder
  have hder10 : |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log 7)| ≤
      10 / A ^ 2 := by
    calc
      _ ≤ 5 / A ^ 2 * Real.log 7 := hder
      _ ≤ 5 / A ^ 2 * 2 := mul_le_mul_of_nonneg_left hlog2 hg
      _ = _ := by ring
  have hC := actual_correlation_zero_taylor_bound A (Real.log 7) hA
  have hlogSq : (Real.log (7 : ℝ)) ^ 2 ≤ 4 := by nlinarith
  have hC10 : |sourceCorrelation explicitSecondDerivative A (Real.log 7) - 1| ≤
      10 / A ^ 2 := by
    calc
      _ ≤ 5 / A ^ 2 * Real.log 7 ^ 2 / 2 := hC
      _ ≤ 5 / A ^ 2 * 4 / 2 := div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_left hlogSq hg) (by norm_num)
      _ = _ := by ring
  have hl := (abs_le.mp hC10).1
  have hCu := (abs_le.mp (actual_correlation_abs_le_one A (Real.log 7) (by linarith))).2
  have hd := abs_le.mp hder10
  unfold invariantBoundaryCoefficient
  have hbudget : (15 : ℝ) / A ^ 2 = (3 / 2 : ℝ) * (10 / A ^ 2) := by ring
  rw [hbudget]
  constructor <;> linarith [hd.1, hd.2]

/-- The source coefficient cannot be removed by an invariant-mean centering. -/
theorem invariantBoundaryCoefficient_pos (A : ℝ) (hA : 91 ≤ A) :
    0 < invariantBoundaryCoefficient A := by
  have hb := (invariantBoundaryCoefficient_bounds A hA).1
  have hden : (30 : ℝ) < A ^ 2 := by nlinarith
  have hsmall : 15 / A ^ 2 < (1 / 2 : ℝ) := (div_lt_iff₀ (by positivity)).mpr (by nlinarith)
  linarith

end RH16InvariantBoundary
