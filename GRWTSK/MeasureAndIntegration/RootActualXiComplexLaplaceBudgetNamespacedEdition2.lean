-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ActualXiComplexLaplace.Variant82d183993dd6619b0acede4422a081e304c3f020c8a47ac63004cc567d8bcf15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82d183993dd6619b0acede4422a081e304c3f020c8a47ac63004cc567d8bcf15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualXiComplexLaplace.Variant82d183993dd6619b0acede4422a081e304c3f020c8a47ac63004cc567d8bcf15","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"82d183993dd6619b0acede4422a081e304c3f020c8a47ac63004cc567d8bcf15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/owner-source-captures/RootActualXiComplexLaplaceBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualXiExponentialEnvelope
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
The literal actual F7 complex Laplace integral has genuine L1 and an explicit
norm budget on its initial domain Re(z)>1/2. The original closed psi, gamma
head and lower-seven anchor are unchanged. No critical-domain extension or
uniform arithmetic average is inferred from this initial-domain estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.ActualXiComplexLaplace.Variant82d183993dd6619b0acede4422a081e304c3f020c8a47ac63004cc567d8bcf15

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualXiComplexLaplaceBudget
open MeasureTheory Set Filter Complex
open scoped Interval Topology
open RootActualXiTailPrimitive RootActualXiExponentialEnvelope
noncomputable section

/-- The actual complex Laplace integral uses the same literal anchored F7 primitive. -/
def actualXiComplexLaplace (z : ℂ) : ℂ :=
  ∫ t in Ioi (Real.log 7), (actualAnchoredXiTailPrimitive t : ℂ) *
    Complex.exp (-z * (t : ℂ))

private theorem coefficient_nonneg : 0 ≤ actualXiExponentialEnvelopeConstant := by
  unfold actualXiExponentialEnvelopeConstant
  positivity

private theorem primitive_continuousOn_Ici :
    ContinuousOn actualAnchoredXiTailPrimitive (Ici (Real.log 7)) := by
  intro t ht
  change Real.log 7 ≤ t at ht
  have hb : Real.log 7 ≤ t + 1 := by linarith
  have hc := (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).continuousOn
  rw [uIcc_of_le hb] at hc
  apply (hc t ⟨ht, by linarith⟩).mono_of_mem_nhdsWithin
  rw [← Ici_inter_Iic]
  exact inter_mem self_mem_nhdsWithin
    (nhdsWithin_le_nhds (Iic_mem_nhds (by linarith : t < t + 1)))

/-- The true complex kernel norm retains both the actual source and complex damping. -/
theorem actualXiComplexLaplaceKernel_norm_le (z : ℂ) {t : ℝ} (ht : Real.log 7 ≤ t) :
    ‖(actualAnchoredXiTailPrimitive t : ℂ) * Complex.exp (-z * (t : ℂ))‖ ≤
      2 * actualXiExponentialEnvelopeConstant * Real.exp (-(z.re - 1 / 2) * t) := by
  have hF : |actualAnchoredXiTailPrimitive t| ≤
      2 * actualXiExponentialEnvelopeConstant * Real.exp (t / 2) :=
    (actualAnchoredXiTailPrimitive_abs_le ht).trans
      (by nlinarith [coefficient_nonneg, Real.sqrt_nonneg 7])
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_exp]
  simp only [mul_re, neg_re, ofReal_re, neg_im, ofReal_im, mul_zero, sub_zero]
  calc
    _ ≤ (2 * actualXiExponentialEnvelopeConstant * Real.exp (t / 2)) *
        Real.exp (-z.re * t) := mul_le_mul_of_nonneg_right hF (Real.exp_pos _).le
    _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2; ring

/-- Genuine complex source L1 precedes every signed improper integral estimate. -/
theorem actualXiComplexLaplace_integrableOn {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi (Real.log 7)) := by
  have hD : IntegrableOn (fun t : ℝ =>
      2 * actualXiExponentialEnvelopeConstant * Real.exp (-(z.re - 1 / 2) * t))
      (Ioi (Real.log 7)) :=
    (integrableOn_exp_mul_Ioi (by linarith : -(z.re - 1 / 2) < 0) (Real.log 7)).const_mul _
  have hc : ContinuousOn (fun t : ℝ => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi (Real.log 7)) := by
    exact ((Complex.continuous_ofReal.comp_continuousOn primitive_continuousOn_Ici).mul
      (by fun_prop)).mono Ioi_subset_Ici_self
  apply hD.mono' (hc.aestronglyMeasurable measurableSet_Ioi)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact actualXiComplexLaplaceKernel_norm_le z ht.le

/-- The initial-domain actual transform has an explicit unconditional complex norm budget. -/
theorem actualXiComplexLaplace_norm_le {z : ℂ} (hz : 1 / 2 < z.re) :
    ‖actualXiComplexLaplace z‖ ≤ 2 * actualXiExponentialEnvelopeConstant *
      Real.exp (-(z.re - 1 / 2) * Real.log 7) / (z.re - 1 / 2) := by
  have hF := actualXiComplexLaplace_integrableOn hz
  have hD : IntegrableOn (fun t : ℝ =>
      2 * actualXiExponentialEnvelopeConstant * Real.exp (-(z.re - 1 / 2) * t))
      (Ioi (Real.log 7)) :=
    (integrableOn_exp_mul_Ioi (by linarith : -(z.re - 1 / 2) < 0) (Real.log 7)).const_mul _
  have hh : (∫ t in Ioi (Real.log 7),
      ‖(actualAnchoredXiTailPrimitive t : ℂ) * Complex.exp (-z * (t : ℂ))‖) ≤
      ∫ t in Ioi (Real.log 7),
        2 * actualXiExponentialEnvelopeConstant * Real.exp (-(z.re - 1 / 2) * t) := by
    apply integral_mono_ae hF.norm hD
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact actualXiComplexLaplaceKernel_norm_le z ht.le
  unfold actualXiComplexLaplace
  apply (norm_integral_le_integral_norm _).trans
  apply hh.trans_eq
  rw [integral_const_mul,
    integral_exp_mul_Ioi (by linarith : -(z.re - 1 / 2) < 0)]
  simp only [div_neg, neg_div, neg_neg]
  ring

end
end FormalResearch.RiemannHypothesis.RootActualXiComplexLaplaceBudget
