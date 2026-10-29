-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualInitialSeriesContinuous.Variantfe8e04f1fa71eb05f3b1d06372856b301aedd8b65f1d274b429e5ebf3a8f864a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe8e04f1fa71eb05f3b1d06372856b301aedd8b65f1d274b429e5ebf3a8f864a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualInitialSeriesContinuous.Variantfe8e04f1fa71eb05f3b1d06372856b301aedd8b65f1d274b429e5ebf3a8f864a","mathematical_subject":"Analysis.Integration","original_sha256":"fe8e04f1fa71eb05f3b1d06372856b301aedd8b65f1d274b429e5ebf3a8f864a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/owner-source-captures/SourceActualInitialPrimeLineL1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualInitialPrimeContour
import SourceActualRightBumpTail
import Mathlib.MeasureTheory.Measure.Lebesgue.Integral

/-!
Genuine initial-line L1 and the exact finite signed head plus both-tail partition.
The actual normalized correlation and full Mangoldt logarithmic derivative are retained.
No shifted contour, excluded pole, or uniform growing-head witness is asserted.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualInitialSeriesContinuous.Variantfe8e04f1fa71eb05f3b1d06372856b301aedd8b65f1d274b429e5ebf3a8f864a

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualInitialPrimeLineL1
open MeasureTheory Set
open SourcePairing SourceActualInitialPrimeContour SourceActualRightBumpTail
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
noncomputable section

private theorem actual_initial_series_continuous (c : ℝ) (hc : 1 < c) :
    Continuous (fun t : ℝ =>
      LSeries actualMangoldtCoefficients ((c : ℂ) + (t : ℂ) * Complex.I)) := by
  have hab : LSeries.abscissaOfAbsConv actualMangoldtCoefficients ≤ (1 : ℝ) := by
    apply LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable
    intro y hy
    exact ArithmeticFunction.LSeriesSummable_vonMangoldt (by simpa using hy)
  apply continuous_iff_continuousAt.mpr
  intro t
  have hs : LSeries.abscissaOfAbsConv actualMangoldtCoefficients <
      ((c : ℂ) + (t : ℂ) * Complex.I).re := by
    apply lt_of_le_of_lt hab
    simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re,
      Complex.I_im, Complex.ofReal_im, mul_zero, zero_mul, sub_zero, add_zero]
    exact_mod_cast hc
  have hh : ContinuousAt (fun u : ℝ => (c : ℂ) + (u : ℂ) * Complex.I) t := by fun_prop
  exact ContinuousAt.comp (f := fun u : ℝ => (c : ℂ) + (u : ℂ) * Complex.I)
    (LSeries_hasDerivAt hs).continuousAt hh

/-- Literal initial-line density of the actual normalized source. -/
def actualInitialPrimeDensity (A c t : ℝ) : ℂ :=
  actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * Complex.I) *
    (-deriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I) /
      riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I))

/-- Actual initial arithmetic is the full Mangoldt Dirichlet series only for c>1. -/
theorem actualInitialPrimeDensity_eq_series (A c t : ℝ) (hc : 1 < c) :
    actualInitialPrimeDensity A c t =
      actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * Complex.I) *
        LSeries actualMangoldtCoefficients ((c : ℂ) + (t : ℂ) * Complex.I) := by
  unfold actualInitialPrimeDensity actualMangoldtCoefficients
  rw [ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div
    (show 1 < ((c : ℂ) + (t : ℂ) * Complex.I).re by simpa using hc)]

/-- Compact C2 angular Fourier inversion supplies genuine L1 of the entire tilted line. -/
theorem actualInitialPrimeMellin_on_line_integrable (A c : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ => actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * Complex.I)) := by
  have h := Zeta23.EF.integrable_fourier_of_contDiff_two
    (Zeta23.WeilEF.tilt_contDiff (actualInitialPrimeKernel_contDiff A hA) (c - 1 / 2))
    (Zeta23.WeilEF.tilt_hasCompactSupport
      (actualInitialPrimeKernel_hasCompactSupport A hA) (c - 1 / 2))
  simpa only [actualInitialPrimeMellin_eq_Hfn, Zeta23.WeilEF.Hfn_line] using
    Zeta23.EF.integrable_paperFT_ofReal h

/-- Genuine L1 for the full actual prime contour in its initial arithmetic domain. -/
theorem actualInitialPrimeDensity_integrable (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    Integrable (actualInitialPrimeDensity A c) := by
  have hH := actualInitialPrimeMellin_on_line_integrable A c hA
  have hm := hH.aestronglyMeasurable.mul
    (actual_initial_series_continuous c hc).aestronglyMeasurable
  have hm' : AEStronglyMeasurable (actualInitialPrimeDensity A c) := by
    have he : actualInitialPrimeDensity A c = fun t : ℝ =>
        actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * Complex.I) *
          LSeries actualMangoldtCoefficients ((c : ℂ) + (t : ℂ) * Complex.I) :=
      funext fun t => actualInitialPrimeDensity_eq_series A c t hc
    rw [he]
    exact hm
  apply (hH.norm.mul_const (actualRightLineMass c)).mono' hm'
  filter_upwards [] with t
  unfold actualInitialPrimeDensity
  rw [norm_mul]
  exact mul_le_mul_of_nonneg_left (actual_zeta_logDeriv_on_line_norm_le c t hc)
    (norm_nonneg _)

/-- The literal signed finite head, retaining the actual prime multiplier. -/
def actualInitialPrimeHead (A c T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℂ) * ∫ t in -T..T, actualInitialPrimeDensity A c t

/-- Both actual tails with their correct opposite-frequency parametrization. -/
def actualInitialPrimeTwoTail (A c T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℂ) *
    ((∫ t in Ioi T, actualInitialPrimeDensity A c t) +
      ∫ t in Ioi T, actualInitialPrimeDensity A c (-t))

/-- Exact signed head/two-tail split; the actual upper and lower contour pieces are complete. -/
theorem actualInitialPrimeContour_eq_head_add_twoTail (A c T : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) :
    (primePowerContribution explicitSecondDerivative A : ℂ) =
      actualInitialPrimeHead A c T + actualInitialPrimeTwoTail A c T := by
  have hi := actualInitialPrimeDensity_integrable A c hA hc
  have hs := intervalIntegral.integral_Iic_sub_Iic
    (hi.integrableOn (s := Iic (-T))) (hi.integrableOn (s := Iic T))
  have ht := intervalIntegral.integral_Iic_add_Ioi
    (hi.integrableOn (s := Iic T)) (hi.integrableOn (s := Ioi T))
  have hn : (∫ t in Ioi T, actualInitialPrimeDensity A c (-t)) =
      ∫ t in Iic (-T), actualInitialPrimeDensity A c t := integral_comp_neg_Ioi _ _
  rw [← actualInitialPrimeContour_eq_strict A c hA hc]
  change (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, actualInitialPrimeDensity A c t) = _
  unfold actualInitialPrimeHead actualInitialPrimeTwoTail
  rw [hn, ← ht, ← hs]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualInitialPrimeLineL1
