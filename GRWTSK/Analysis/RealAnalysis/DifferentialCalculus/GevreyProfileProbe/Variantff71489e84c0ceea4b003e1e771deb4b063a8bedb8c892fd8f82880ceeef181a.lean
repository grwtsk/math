-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SquaredExpNegInvGlue.Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SquaredExpNegInvGlue.Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5","mathematical_subject":"Analysis.Calculus","original_sha256":"7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/GevreyProfileProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.SmoothTransition
import Mathlib.Topology.Algebra.Support


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SquaredExpNegInvGlue.Variant7709481f3f126d8b7598f5e2a92e72afacc01f4cb0e491ffec2fff8b96c475f5

open Filter Polynomial
open scoped Topology

namespace FormalResearch.RiemannHypothesis.GevreyProfile

noncomputable def squaredExpNegInvGlue (x : ℝ) : ℝ :=
  if x ≤ 0 then 0 else Real.exp (-(x⁻¹) ^ 2)

theorem squaredExpNegInvGlue_zero_of_nonpos {x : ℝ} (hx : x ≤ 0) :
    squaredExpNegInvGlue x = 0 := by
  simp [squaredExpNegInvGlue, hx]

@[simp] theorem squaredExpNegInvGlue_zero : squaredExpNegInvGlue 0 = 0 := by
  exact squaredExpNegInvGlue_zero_of_nonpos le_rfl

theorem tendsto_polynomial_inv_mul_zero (p : ℝ[X]) :
    Tendsto (fun x ↦ p.eval x⁻¹ * squaredExpNegInvGlue x) (𝓝 0) (𝓝 0) := by
  simp only [squaredExpNegInvGlue, mul_ite, mul_zero]
  refine tendsto_const_nhds.if ?_
  simp only [not_le]
  have h1 : Tendsto (fun x ↦ p.eval x⁻¹ / Real.exp x⁻¹) (𝓝[>] 0) (𝓝 0) :=
    p.tendsto_div_exp_atTop.comp tendsto_inv_nhdsGT_zero
  have h2 : Tendsto (fun x ↦ p.eval x⁻¹ * Real.exp (-(x⁻¹) ^ 2))
      (𝓝[>] 0) (𝓝 0) := by
    apply tendsto_zero_iff_norm_tendsto_zero.mpr
    refine squeeze_zero' (g := fun x ↦ ‖p.eval x⁻¹ / Real.exp x⁻¹‖)
      (Eventually.of_forall fun _ ↦ norm_nonneg _) ?_ ?_
    · filter_upwards [tendsto_inv_nhdsGT_zero.eventually (eventually_ge_atTop 1)] with x hx
      simp only [norm_mul, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _), norm_div]
      rw [div_eq_mul_inv, ← Real.exp_neg]
      exact mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr (by nlinarith)) (abs_nonneg _)
    · simpa using h1.norm
  exact h2

theorem hasDerivAt_polynomial_eval_inv_mul (p : ℝ[X]) (x : ℝ) :
    HasDerivAt (fun x ↦ p.eval x⁻¹ * squaredExpNegInvGlue x)
      ((2 * X ^ 3 * p - X ^ 2 * derivative p).eval x⁻¹ * squaredExpNegInvGlue x) x := by
  rcases lt_trichotomy x 0 with hx | rfl | hx
  · rw [squaredExpNegInvGlue_zero_of_nonpos hx.le, mul_zero]
    refine (hasDerivAt_const _ 0).congr_of_eventuallyEq ?_
    filter_upwards [gt_mem_nhds hx] with y hy
    rw [squaredExpNegInvGlue_zero_of_nonpos hy.le, mul_zero]
  · rw [squaredExpNegInvGlue_zero, mul_zero, hasDerivAt_iff_tendsto_slope]
    refine ((tendsto_polynomial_inv_mul_zero (p * X)).mono_left inf_le_left).congr fun x ↦ ?_
    simp [slope_def_field, div_eq_mul_inv, mul_right_comm]
  · have hd := ((p.hasDerivAt x⁻¹).mul
      (((hasDerivAt_id x⁻¹).pow 2).neg.exp)).comp x (hasDerivAt_inv hx.ne')
    convert! hd.congr_of_eventuallyEq _ using 1
    · simp [squaredExpNegInvGlue, hx.not_ge]
      ring
    · filter_upwards [lt_mem_nhds hx] with y hy
      simp [squaredExpNegInvGlue, hy.not_ge]

theorem differentiable_polynomial_eval_inv_mul (p : ℝ[X]) :
    Differentiable ℝ (fun x ↦ p.eval x⁻¹ * squaredExpNegInvGlue x) := fun x ↦
  (hasDerivAt_polynomial_eval_inv_mul p x).differentiableAt

theorem continuous_polynomial_eval_inv_mul (p : ℝ[X]) :
    Continuous (fun x ↦ p.eval x⁻¹ * squaredExpNegInvGlue x) :=
  (differentiable_polynomial_eval_inv_mul p).continuous

theorem contDiff_polynomial_eval_inv_mul {n : ℕ∞} (p : ℝ[X]) :
    ContDiff ℝ n (fun x ↦ p.eval x⁻¹ * squaredExpNegInvGlue x) := by
  apply contDiff_all_iff_nat.2 (fun m ↦ ?_) n
  induction m generalizing p with
  | zero => exact contDiff_zero.2 <| continuous_polynomial_eval_inv_mul _
  | succ m ihm =>
    rw [show ((m + 1 : ℕ) : WithTop ℕ∞) = m + 1 from rfl]
    refine contDiff_succ_iff_deriv.2 ⟨differentiable_polynomial_eval_inv_mul _, by simp, ?_⟩
    convert! ihm (2 * X ^ 3 * p - X ^ 2 * derivative p) using 2
    exact (hasDerivAt_polynomial_eval_inv_mul p _).deriv

theorem squaredExpNegInvGlue_contDiff {n : ℕ∞} :
    ContDiff ℝ n squaredExpNegInvGlue := by
  simpa using contDiff_polynomial_eval_inv_mul (n := n) 1

noncomputable def profile (y : ℝ) : ℝ :=
  if |y| < 1 then Real.exp (-1 / (1 - y ^ 2) ^ 2) else 0

theorem profile_eq_glue (y : ℝ) :
    profile y = squaredExpNegInvGlue (1 - y ^ 2) := by
  have hi : |y| < 1 ↔ 0 < 1 - y ^ 2 := by
    rw [← sq_lt_one_iff_abs_lt_one]
    exact (sub_pos).symm
  simp only [profile, squaredExpNegInvGlue, ← not_lt, ← hi]
  by_cases hy : |y| < 1
  · simp only [hy, not_true_eq_false, if_false, if_true]
    congr 1
    simp [div_eq_mul_inv, inv_pow]
  · simp [hy]

theorem profile_contDiff {n : ℕ∞} : ContDiff ℝ n profile := by
  have h : ContDiff ℝ n (fun y : ℝ ↦ squaredExpNegInvGlue (1 - y ^ 2)) :=
    squaredExpNegInvGlue_contDiff.comp (contDiff_const.sub (contDiff_id.pow 2))
  have heq : profile = (fun y : ℝ ↦ squaredExpNegInvGlue (1 - y ^ 2)) :=
    funext profile_eq_glue
  rw [heq]
  exact h

theorem profile_pos_of_abs_lt_one {y : ℝ} (hy : |y| < 1) : 0 < profile y := by
  simp [profile, hy, Real.exp_pos]

theorem profile_zero_of_one_le_abs {y : ℝ} (hy : 1 ≤ |y|) : profile y = 0 := by
  simp [profile, not_lt.mpr hy]

@[simp] theorem profile_zero : profile 0 = Real.exp (-1) := by
  simp [profile]

theorem profile_nonzero : ∃ y, profile y ≠ 0 := by
  exact ⟨0, by simp⟩

theorem profile_support : Function.support profile = Set.Ioo (-1) 1 := by
  ext y
  simp only [Function.mem_support, Set.mem_Ioo]
  rw [← abs_lt]
  constructor
  · intro hy
    by_contra h
    exact hy (profile_zero_of_one_le_abs (not_lt.mp h))
  · intro hy
    exact (profile_pos_of_abs_lt_one hy).ne'

theorem profile_hasCompactSupport : HasCompactSupport profile := by
  apply HasCompactSupport.of_support_subset_isCompact (isCompact_Icc (a := (-1 : ℝ)) (b := 1))
  rw [profile_support]
  exact Set.Ioo_subset_Icc_self

end FormalResearch.RiemannHypothesis.GevreyProfile
