-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.OverlapP1.Variant683acb50fa27db6517db514899bdbe49f158ab16f8edc138fcf3043330dc2c75","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"683acb50fa27db6517db514899bdbe49f158ab16f8edc138fcf3043330dc2c75","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.OverlapP1.Variant683acb50fa27db6517db514899bdbe49f158ab16f8edc138fcf3043330dc2c75","mathematical_subject":"Analysis.Calculus","original_sha256":"683acb50fa27db6517db514899bdbe49f158ab16f8edc138fcf3043330dc2c75","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-external-math-scan/working-source-final/primary/FormalResearch/RiemannHypothesis/SourceBumpPeano.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation

/-!
# Exact derivative certificates for the source bump overlap

Research direction, source selection and evaluation: grwtsk contributors.
Formal construction: OpenAI Codex, from the attached ChatGPT Peano proof note.
The imported overlap is the actual unit source-bump autocorrelation on its
half-support. These certificates concern its polynomial profile and the sharp
positivity threshold of its second-primitive numerator. They supply no signed
arithmetic bound or RH witness.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.OverlapP1.Variant683acb50fa27db6517db514899bdbe49f158ab16f8edc138fcf3043330dc2c75

set_option autoImplicit false

noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceBumpPeano

open SourceBumpAutocorrelation

/-- Positive coefficient polynomial in the negative first derivative. -/
def overlapP1 (u : ℝ) : ℝ :=
  7 * u ^ 7 + 112 * u ^ 6 + 768 * u ^ 5 + 2880 * u ^ 4 +
    6144 * u ^ 3 + 6912 * u ^ 2 + 4096 * u + 1024

/-- Positive coefficient polynomial in the sharp curvature certificate. -/
def overlapP2 (u : ℝ) : ℝ :=
  7 * u ^ 8 + 98 * u ^ 7 + 904 * u ^ 6 + 6384 * u ^ 5 +
    30096 * u ^ 4 + 88032 * u ^ 3 + 149056 * u ^ 2 + 108416 * u + 30976

/-- The exact derivative factorization, using the actual derivative operator. -/
theorem overlapProfile_neg_deriv (u : ℝ) :
    -deriv overlapProfile u = u * (2 - u) ^ 8 * overlapP1 u / 90090 := by
  unfold overlapProfile overlapP0
  simp (disch := fun_prop) only [deriv_div_const, deriv_fun_mul, deriv_fun_add,
    deriv_const_mul_id, deriv_fun_pow, deriv_const_sub_id, deriv_id'', deriv_const]
  dsimp [overlapP1]
  ring

theorem overlapProfile_deriv (u : ℝ) :
    deriv overlapProfile u = -(u * (2 - u) ^ 8 * overlapP1 u / 90090) := by
  have h := overlapProfile_neg_deriv u
  linarith

/-- Equality of functions makes the second derivative a derivative of the exact first one. -/
theorem overlapProfile_deriv_eq :
    deriv overlapProfile = fun u => -(u * (2 - u) ^ 8 * overlapP1 u / 90090) :=
  funext overlapProfile_deriv

/-- The curvature floor is sharp at the center of the actual overlap. -/
theorem overlapProfile_second_deriv_certificate (u : ℝ) :
    deriv (deriv overlapProfile) u + (34 / 7) * overlapProfile u =
      u ^ 2 * (2 - u) ^ 7 * overlapP2 u / 315315 := by
  rw [overlapProfile_deriv_eq]
  unfold overlapP1 overlapProfile overlapP0
  simp (disch := fun_prop) only [deriv.fun_neg, deriv_div_const, deriv_fun_mul,
    deriv_fun_add, deriv_const_mul_id, deriv_fun_pow, deriv_const_sub_id,
    deriv_id'', deriv_const]
  dsimp [overlapP2]
  ring

theorem overlapP0_nonneg {u : ℝ} (hu : 0 ≤ u) : 0 ≤ overlapP0 u := by
  unfold overlapP0
  positivity

theorem overlapP1_nonneg {u : ℝ} (hu : 0 ≤ u) : 0 ≤ overlapP1 u := by
  unfold overlapP1
  positivity

theorem overlapP2_nonneg {u : ℝ} (hu : 0 ≤ u) : 0 ≤ overlapP2 u := by
  unfold overlapP2
  positivity

/-- Positivity is restricted to the actual half-support. -/
theorem overlapProfile_nonneg {u : ℝ} (hu0 : 0 ≤ u) (hu2 : u ≤ 2) :
    0 ≤ overlapProfile u := by
  have hp := overlapP0_nonneg hu0
  have he : 0 ≤ 2 - u := by linarith
  unfold overlapProfile
  positivity

theorem overlapProfile_deriv_nonpos {u : ℝ} (hu0 : 0 ≤ u) (hu2 : u ≤ 2) :
    deriv overlapProfile u ≤ 0 := by
  have hp := overlapP1_nonneg hu0
  have he : 0 ≤ 2 - u := by linarith
  have hn : 0 ≤ u * (2 - u) ^ 8 * overlapP1 u / 90090 := by positivity
  rw [overlapProfile_deriv]
  linarith

theorem overlapProfile_second_deriv_lower {u : ℝ} (hu0 : 0 ≤ u) (hu2 : u ≤ 2) :
    -(34 / 7) * overlapProfile u ≤ deriv (deriv overlapProfile) u := by
  have hp := overlapP2_nonneg hu0
  have he : 0 ≤ 2 - u := by linarith
  have hn : 0 ≤ u ^ 2 * (2 - u) ^ 7 * overlapP2 u / 315315 := by positivity
  have h := overlapProfile_second_deriv_certificate u
  linarith

theorem overlapProfile_zero : overlapProfile 0 = (65536 / 109395 : ℝ) := by
  norm_num [overlapProfile, overlapP0]

theorem overlapProfile_deriv_zero : deriv overlapProfile 0 = 0 := by
  rw [overlapProfile_deriv]
  norm_num

theorem overlapProfile_second_deriv_zero :
    deriv (deriv overlapProfile) 0 = -(131072 / 45045 : ℝ) := by
  have h := overlapProfile_second_deriv_certificate 0
  rw [overlapProfile_zero] at h
  norm_num at h ⊢
  linarith

/-- The numerator before multiplication by the positive exponential and normalization. -/
def peanoNumerator (A u : ℝ) : ℝ :=
  deriv (deriv overlapProfile) u / A ^ 2 - deriv overlapProfile u / A +
    overlapProfile u / 4

theorem peanoNumerator_decomposition (A u : ℝ) :
    peanoNumerator A u =
      (deriv (deriv overlapProfile) u + (34 / 7) * overlapProfile u) / A ^ 2 +
        (-deriv overlapProfile u) / A +
        (1 / 4 - (34 / 7) / A ^ 2) * overlapProfile u := by
  unfold peanoNumerator
  ring

/-- The paper threshold applies to every real point of the actual half-support. -/
theorem peanoNumerator_nonneg {A u : ℝ} (hA : 0 < A)
    (hthreshold : (136 / 7 : ℝ) ≤ A ^ 2) (hu0 : 0 ≤ u) (hu2 : u ≤ 2) :
    0 ≤ peanoNumerator A u := by
  have hAsq : 0 < A ^ 2 := by positivity
  have hF := overlapProfile_nonneg hu0 hu2
  have hD := overlapProfile_deriv_nonpos hu0 hu2
  have hC := overlapProfile_second_deriv_lower hu0 hu2
  have hC0 : 0 ≤ deriv (deriv overlapProfile) u + (34 / 7) * overlapProfile u :=
    by linarith
  have hD0 : 0 ≤ -deriv overlapProfile u := by linarith
  have hc : 0 ≤ (1 / 4 : ℝ) - (34 / 7) / A ^ 2 := by
    apply sub_nonneg.mpr
    apply (div_le_iff₀ hAsq).mpr
    nlinarith
  rw [peanoNumerator_decomposition]
  positivity

/-- Necessity comes from the exact center traces, rather than finite sampling. -/
theorem peanoNumerator_nonneg_iff {A : ℝ} (hA : 0 < A) :
    (∀ u : ℝ, 0 ≤ u → u ≤ 2 → 0 ≤ peanoNumerator A u) ↔
      (136 / 7 : ℝ) ≤ A ^ 2 := by
  constructor
  · intro h
    have h0 := h 0 (by norm_num) (by norm_num)
    rw [peanoNumerator, overlapProfile_zero, overlapProfile_deriv_zero,
      overlapProfile_second_deriv_zero] at h0
    have hAsq : 0 < A ^ 2 := by positivity
    have hquot : (131072 / 45045 : ℝ) / A ^ 2 ≤ (65536 / 109395 : ℝ) / 4 := by
      simp only [zero_div, sub_zero, neg_div] at h0
      linarith
    have hb := (div_le_iff₀ hAsq).mp hquot
    nlinarith
  · intro h u hu0 hu2
    exact peanoNumerator_nonneg hA h hu0 hu2

end FormalResearch.RiemannHypothesis.SourceBumpPeano
