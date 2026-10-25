# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ActualMellinFilterAttempt04.Variantd3d488aa35b732697a32e43654fcc98e46dcbfeece35b6e9ff2f2291bc825030

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d720e8111cca2da03eafeee32f9cd664bc8fb7e` · SHA-256 `6f3f37dae673a18d2d3a153e26b63c3b13587dd1a804c8688a15d7dcf231375b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuarticBumpLaplace.Variant4a1507492f20f64e7cef691a7f4e1c06a6e277fa476f5ce92214955efcae8a2c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a1507492f20f64e7cef691a7f4e1c06a6e277fa476f5ce92214955efcae8a2c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.QuarticBumpLaplace.Variant4a1507492f20f64e7cef691a7f4e1c06a6e277fa476f5ce92214955efcae8a2c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"4a1507492f20f64e7cef691a7f4e1c06a6e277fa476f5ce92214955efcae8a2c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass18/mellin_hypotheses/ActualMellinFilter-attempt04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualGoodKernel
import SourceBoundaryOrder

/-! Literal Mellin pole filter for the fixed actual logarithmic source.
Direction: grwtsk contributors. Focused scratch adapter: OpenAI Codex.
The primitive transform is independently defined as its compact integral.
No Mellin zero-free theorem, Nyman closure or signed arithmetic budget is assumed. -/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuarticBumpLaplace.Variant4a1507492f20f64e7cef691a7f4e1c06a6e277fa476f5ce92214955efcae8a2c

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMellinFilter
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open ContinuousResearch.LogarithmicSource ContinuousResearch.SourceBoundaryTransform
open ContinuousResearch.SourceBoundaryOrder

/-- Independently defined literal quartic-bump integral, with no special-function assumption. -/
def quarticBumpLaplace (w : ℂ) : ℂ :=
  ∫ v in (-1 : ℝ)..1, (((1-v^2)^4 : ℝ) : ℂ)*Complex.exp (w*(v : ℂ))

theorem quarticBumpLaplace_integrable (w : ℂ) :
    IntervalIntegrable (fun v : ℝ => (((1-v^2)^4 : ℝ) : ℂ)*
      Complex.exp (w*(v : ℂ))) volume (-1) 1 := by
  exact (show Continuous (fun v : ℝ => (((1-v^2)^4 : ℝ) : ℂ)*
    Complex.exp (w*(v : ℂ))) by fun_prop).intervalIntegrable _ _

theorem primitiveTransform_eq_interval {A : ℝ} (hA : 0 < A) (z : ℂ) :
    primitiveTransform A z =
      ∫ x in -A..A, (bumpInterior A x : ℂ)*Complex.exp (z*(x : ℂ)) := by
  have he : (fun x : ℝ => (scaledBump A x : ℂ)*Complex.exp (z*(x : ℂ))) =
      (Icc (-A) A).indicator (fun x : ℝ => (bumpInterior A x : ℂ)*
        Complex.exp (z*(x : ℂ))) := by
    funext x
    rw [scaledBump_eq_indicator A hA]
    by_cases hx : x ∈ Icc (-A) A <;> simp [hx]
  unfold primitiveTransform compactLaplace
  rw [he,integral_indicator measurableSet_Icc,integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (show -A ≤ A by linarith)]

theorem primitiveTransform_eq_quartic {A : ℝ} (hA : 0 < A) (z : ℂ) :
    primitiveTransform A z = (Real.sqrt A : ℂ)*quarticBumpLaplace ((A : ℂ)*z) := by
  rw [primitiveTransform_eq_interval hA]
  have hc := intervalIntegral.smul_integral_comp_mul_left
    (f := fun x : ℝ => (bumpInterior A x : ℂ)*Complex.exp (z*(x : ℂ)))
    (a := -1) (b := 1) A
  simp only [mul_neg_one,mul_one,Complex.real_smul] at hc
  rw [← hc]
  have he (v : ℝ) : (bumpInterior A (A*v) : ℂ)*Complex.exp (z*((A*v : ℝ) : ℂ)) =
      ((((1-v^2)^4 : ℝ) : ℂ)*Complex.exp (((A : ℂ)*z)*(v : ℂ))) /
        (Real.sqrt A : ℂ) := by
    simp only [bumpInterior,mul_div_cancel_left₀ _ hA.ne',Complex.ofReal_div,
      Complex.ofReal_mul]
    rw [show z*((A : ℂ)*(v : ℂ)) = ((A : ℂ)*z)*(v : ℂ) by ring]
    ring
  simp_rw [he]
  rw [intervalIntegral.integral_div]
  change (A : ℂ)*(quarticBumpLaplace ((A : ℂ)*z)/(Real.sqrt A : ℂ)) = _
  have hs : (Real.sqrt A : ℂ)^2 = (A : ℂ) := by exact_mod_cast Real.sq_sqrt hA.le
  have hn : (Real.sqrt A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr hA).ne'
  rw [← hs]
  field_simp


theorem actual_mellin_eq_normalizedTransform (A : ℝ) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s = normalizedTransform A (s-1/2) := by
  rw [actualLogSource,lift_mellin_eq_bilateral]
  rfl

theorem actual_mellin_pole_filter {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s =
      s*(s-1)*normalizedPrimitiveTransform A (s-1/2) := by
  rw [actual_mellin_eq_normalizedTransform,actual_complex_pole_filter hA]
  congr 1
  ring

theorem actual_mellin_pole_filter_unnormalized {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s =
      s*(s-1)*primitiveTransform A (s-1/2)/(Real.sqrt (sourceNormalization A) : ℂ) := by
  rw [actual_mellin_pole_filter hA,primitive_transform_normalization]
  ring

theorem actual_mellin_nonzero_iff_bump {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    mellin (fun x => (actualLogSource A x : ℂ)) s ≠ 0 ↔
      primitiveTransform A (s-1/2) ≠ 0 := by
  have hz := (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne'
  rw [actual_mellin_pole_filter_unnormalized hA]
  simp only [ne_eq,div_eq_zero_iff,mul_eq_zero,sub_eq_zero]
  have hz' : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hz
  tauto

theorem actual_mellin_halfstrip_nonzero_iff_bump {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (fun x => (actualLogSource A x : ℂ)) s ≠ 0 ↔
      primitiveTransform A (s-1/2) ≠ 0 := by
  apply actual_mellin_nonzero_iff_bump hA
  · intro he; norm_num [he] at hl
  · intro he; simp [he] at hu

end ContinuousResearch.ActualMellinFilter
```
