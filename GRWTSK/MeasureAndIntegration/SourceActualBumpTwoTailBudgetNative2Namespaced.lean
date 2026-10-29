-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualDensityContinuous.Variantb46bbe5978bc328d653190a36c9748e64d5f5468d5ca33561f1d9846a4eea4e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b46bbe5978bc328d653190a36c9748e64d5f5468d5ca33561f1d9846a4eea4e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualDensityContinuous.Variantb46bbe5978bc328d653190a36c9748e64d5f5468d5ca33561f1d9846a4eea4e6","mathematical_subject":"Analysis.Integration","original_sha256":"b46bbe5978bc328d653190a36c9748e64d5f5468d5ca33561f1d9846a4eea4e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-bessel-contour-recovery/SourceActualBumpTwoTailBudget-native2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualRightBumpTail

/-!
Genuine integrability and quantitative TWO initial-right-line tails for the literal
actual Mangoldt density and the prescribed source bump Mellin weight.
No contour shift, omitted residue, or signed growing-height head bound is used.
AI attribution: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualDensityContinuous.Variantb46bbe5978bc328d653190a36c9748e64d5f5468d5ca33561f1d9846a4eea4e6

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualBumpTwoTailBudget
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceBumpLaplace
open FormalResearch.RiemannHypothesis.SourceActualBumpMellinLineBudget
open FormalResearch.RiemannHypothesis.SourceActualRightBumpTail
noncomputable section

private theorem actual_density_continuous (A c : ℝ) (hc : 1 < c) :
    Continuous (actualRightBumpDensity A c) := by
  have hab : LSeries.abscissaOfAbsConv actualMangoldtCoefficients ≤ (1 : ℝ) := by
    apply LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable
    intro y hy
    exact ArithmeticFunction.LSeriesSummable_vonMangoldt (by simpa using hy)
  have hD : Continuous (fun t : ℝ =>
      LSeries actualMangoldtCoefficients ((c : ℂ) + (t : ℂ) * Complex.I)) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    have hs : LSeries.abscissaOfAbsConv actualMangoldtCoefficients <
        ((c : ℂ) + (t : ℂ) * Complex.I).re := by
      apply lt_of_le_of_lt hab
      simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re,
        Complex.I_im, Complex.ofReal_im, mul_zero, zero_mul, sub_zero, add_zero]
      exact_mod_cast hc
    exact (LSeries_hasDerivAt hs).continuousAt.comp (by fun_prop)
  have hB : Continuous bumpLaplace := by
    have he : bumpLaplace = bumpLaplaceMoment 0 := by
      funext z
      exact (bump_laplace_moment_zero z).symm
    rw [he]
    exact bump_laplace_moment_continuous 0
  have hb : Continuous (fun t : ℝ =>
      bumpLaplace ((A : ℂ) * ((c : ℂ) + (t : ℂ) * Complex.I - 1 / 2))) :=
    hB.comp (by fun_prop)
  unfold actualRightBumpDensity bumpMellinWeight
  fun_prop

private theorem tail_numerator_nonneg (A c : ℝ) (hA : 1 ≤ A) :
    0 ≤ actualRightBumpTailNumerator A c := by
  have hD := actualRightLineMass_nonneg c
  have hZ := source_normalization_pos A hA
  unfold actualRightBumpTailNumerator
  positivity

private theorem sixth_power_tail_integrable (T : ℝ) (hT : 1 ≤ T) (C : ℝ) :
    IntegrableOn (fun t : ℝ => C / t ^ 6) (Ioi T) := by
  have h := (integrableOn_Ioi_rpow_of_lt (a := (-6 : ℝ))
    (by norm_num) (show 0 < T by linarith)).const_mul C
  simpa only [Real.rpow_neg_natCast, zpow_neg, zpow_natCast, div_eq_mul_inv] using h

private theorem sixth_power_tail_integral (T : ℝ) (hT : 1 ≤ T) (C : ℝ) :
    (∫ t in Ioi T, C / t ^ 6) = C / (5 * T ^ 5) := by
  have hpow (t : ℝ) : t ^ (-6 : ℝ) = (t ^ 6)⁻¹ := by
    simpa only [Real.rpow_neg_natCast, zpow_neg, zpow_natCast]
  have hf : (fun t : ℝ => C / t ^ 6) = (fun t : ℝ => C * t ^ (-6 : ℝ)) := by
    funext t
    rw [hpow]
    rfl
  rw [hf, integral_const_mul,
    integral_Ioi_rpow_of_lt (by norm_num : (-6 : ℝ) < -1) (show 0 < T by linarith)]
  norm_num
  field_simp

private theorem actual_one_tail_integrable (A c T ε : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (hT : 1 ≤ T) (hε : |ε| = 1) :
    IntegrableOn (fun t => actualRightBumpDensity A c (ε * t)) (Ioi T) := by
  have hM := sixth_power_tail_integrable T hT (actualRightBumpTailNumerator A c)
  have hm : AEStronglyMeasurable (fun t => actualRightBumpDensity A c (ε * t))
      (volume.restrict (Ioi T)) :=
    ((actual_density_continuous A c hc).comp
      (continuous_const.mul continuous_id)).aestronglyMeasurable
  apply hM.mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  have hgt : T < t := ht
  have ht0 : 0 ≤ t := by linarith
  have ht1 : 1 ≤ |ε * t| := by rw [abs_mul, hε, one_mul, abs_of_nonneg ht0]; linarith
  have h := actualRightBumpDensity_norm_le A c (ε * t) hA hc ht1
  simpa only [abs_mul, hε, one_mul, abs_of_nonneg ht0] using h

private theorem actual_one_tail_norm_le (A c T ε : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (hT : 1 ≤ T) (hε : |ε| = 1) :
    ‖∫ t in Ioi T, actualRightBumpDensity A c (ε * t)‖ ≤
      actualRightBumpTailNumerator A c / (5 * T ^ 5) := by
  have hi := actual_one_tail_integrable A c T ε hA hc hT hε
  have hM := sixth_power_tail_integrable T hT (actualRightBumpTailNumerator A c)
  calc
    _ ≤ ∫ t in Ioi T, ‖actualRightBumpDensity A c (ε * t)‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t in Ioi T, actualRightBumpTailNumerator A c / t ^ 6 := by
      apply integral_mono_ae hi.norm hM
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      have hgt : T < t := ht
      have ht0 : 0 ≤ t := by linarith
      have ht1 : 1 ≤ |ε * t| := by
        rw [abs_mul, hε, one_mul, abs_of_nonneg ht0]
        linarith
      simpa only [abs_mul, hε, one_mul, abs_of_nonneg ht0] using
        actualRightBumpDensity_norm_le A c (ε * t) hA hc ht1
    _ = _ := sixth_power_tail_integral T hT _

/-- Genuine original positive and negative high-frequency tails, with both signs preserved. -/
def actualBumpTwoTail (A c T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℂ) *
    ((∫ t in Ioi T, actualRightBumpDensity A c t) +
      ∫ t in Ioi T, actualRightBumpDensity A c (-t))

/-- Both actual tails are L1; the negative branch is parametrized with its correct orientation. -/
theorem actualBumpTwoTail_integrable (A c T : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (hT : 1 ≤ T) :
    IntegrableOn (actualRightBumpDensity A c) (Ioi T) ∧
      IntegrableOn (fun t => actualRightBumpDensity A c (-t)) (Ioi T) := by
  constructor
  · simpa only [one_mul] using actual_one_tail_integrable A c T 1 hA hc hT (by norm_num)
  · simpa only [neg_one_mul] using actual_one_tail_integrable A c T (-1) hA hc hT (by norm_num)

/-- The exact normalized two-tail loss is the literal paper numerator/(5πT⁵). -/
theorem actualBumpTwoTail_norm_le (A c T : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (hT : 1 ≤ T) :
    ‖actualBumpTwoTail A c T‖ ≤
      actualRightBumpTailNumerator A c / (5 * Real.pi * T ^ 5) := by
  have hp := actual_one_tail_norm_le A c T 1 hA hc hT (by norm_num)
  have hn := actual_one_tail_norm_le A c T (-1) hA hc hT (by norm_num)
  simp only [one_mul] at hp
  simp only [neg_one_mul] at hn
  unfold actualBumpTwoTail
  rw [norm_mul]
  have hcoef : ‖(1 / (2 * Real.pi) : ℂ)‖ = 1 / (2 * Real.pi) := by
    change ‖((1 / (2 * Real.pi) : ℝ) : ℂ)‖ = 1 / (2 * Real.pi)
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  rw [hcoef]
  calc
    _ ≤ (1 / (2 * Real.pi)) *
      (actualRightBumpTailNumerator A c / (5 * T ^ 5) +
        actualRightBumpTailNumerator A c / (5 * T ^ 5)) := by
      gcongr
      exact (norm_add_le _ _).trans (add_le_add hp hn)
    _ = _ := by field_simp; ring

end
end FormalResearch.RiemannHypothesis.SourceActualBumpTwoTailBudget
