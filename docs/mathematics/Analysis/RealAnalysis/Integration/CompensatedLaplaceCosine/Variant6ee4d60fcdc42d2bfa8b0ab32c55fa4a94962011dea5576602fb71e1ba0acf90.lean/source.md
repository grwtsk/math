# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CompensatedLaplaceCosine.Variant6ee4d60fcdc42d2bfa8b0ab32c55fa4a94962011dea5576602fb71e1ba0acf90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05a7d143364885ccdbc0cdd6a62e4d2cbab01928` · SHA-256 `5ab262dc8dd6d48f17d68bbc1722206be030788857d3f4c60762bb8e4ef83016`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.DampedCosineEqReal.Variant299781eb11ebc15ab3989ea7de7feaf68079d16e8bacd25387375ec255441eb2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"299781eb11ebc15ab3989ea7de7feaf68079d16e8bacd25387375ec255441eb2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.DampedCosineEqReal.Variant299781eb11ebc15ab3989ea7de7feaf68079d16e8bacd25387375ec255441eb2","mathematical_subject":"Analysis.Integration","original_sha256":"299781eb11ebc15ab3989ea7de7feaf68079d16e8bacd25387375ec255441eb2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass9/gamma_fourier/CompensatedLaplaceCosine.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import FormalResearch.Analysis.ReciprocalKernel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource

/-!
Scratch #146 adapter for the actual quarter-digamma reciprocal series.
The compensation is kept inside each genuine integral. The source multiplier
sum and Fourier-side interchange remain separate obligations.
Research direction: grwtsk contributors. Scratch proof: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.DampedCosineEqReal.Variant299781eb11ebc15ab3989ea7de7feaf68079d16e8bacd25387375ec255441eb2

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.CompensatedLaplaceCosine
open MeasureTheory Set
open FormalResearch.Analysis.ReciprocalKernel

theorem damped_cosine_eq_real (a b t : ℝ) :
    Real.exp (-a*t) * Real.cos (b*t) =
      (Complex.exp ((((-a : ℝ) : ℂ) + (b : ℂ)*Complex.I) * (t : ℂ))).re := by
  rw [Complex.exp_re]
  simp

theorem damped_cosine_integrable {a : ℝ} (ha : 0 < a) (b : ℝ) :
    IntegrableOn (fun t : ℝ => Real.exp (-a*t) * Real.cos (b*t)) (Ioi 0) := by
  have hc : (((-a : ℝ) : ℂ) + (b : ℂ)*Complex.I).re < 0 := by simpa
  simpa only [IntegrableOn, damped_cosine_eq_real, RCLike.re_to_complex] using
    (integrableOn_exp_mul_complex_Ioi hc 0).re

theorem damped_cosine_integral {a : ℝ} (ha : 0 < a) (b : ℝ) :
    (∫ t : ℝ in Ioi 0, Real.exp (-a*t)*Real.cos (b*t)) = a/(a^2+b^2) := by
  have hc : (((-a : ℝ) : ℂ) + (b : ℂ)*Complex.I).re < 0 := by simpa
  simp_rw [damped_cosine_eq_real]
  simp_rw [← RCLike.re_to_complex]
  rw [integral_re (integrableOn_exp_mul_complex_Ioi hc 0),
    integral_exp_mul_complex_Ioi hc 0]
  simp [Complex.div_re, Complex.normSq_apply, sq, mul_comm]

theorem compensated_integrable {a : ℝ} (ha : 0 < a) (b : ℝ) :
    IntegrableOn (fun t : ℝ => Real.exp (-a*t)*(1-Real.cos (b*t))) (Ioi 0) := by
  have he : (fun t : ℝ => Real.exp (-a*t)*(1-Real.cos (b*t))) =
      (fun t => Real.exp (-a*t) - Real.exp (-a*t)*Real.cos (b*t)) := by
    funext t; ring
  rw [he]
  exact (integrableOn_exp_mul_Ioi (by linarith : -a < 0) 0).sub
    (damped_cosine_integrable ha b)

theorem compensated_nonneg (a b t : ℝ) :
    0 ≤ Real.exp (-a*t)*(1-Real.cos (b*t)) :=
  mul_nonneg (Real.exp_pos _).le (sub_nonneg.mpr (Real.cos_le_one _))

theorem compensated_integral {a : ℝ} (ha : 0 < a) (b : ℝ) :
    (∫ t : ℝ in Ioi 0, Real.exp (-a*t)*(1-Real.cos (b*t))) =
      b^2/(a*(a^2+b^2)) := by
  have he : (fun t : ℝ => Real.exp (-a*t)*(1-Real.cos (b*t))) =
      (fun t => Real.exp (-a*t) - Real.exp (-a*t)*Real.cos (b*t)) := by
    funext t; ring
  rw [he, integral_sub (integrableOn_exp_mul_Ioi (by linarith : -a < 0) 0)
    (damped_cosine_integrable ha b), integral_exp_mul_Ioi (by linarith : -a < 0) 0,
    damped_cosine_integral ha b]
  have hsum : a^2+b^2 ≠ 0 := ne_of_gt (by positivity)
  simp only [mul_zero, Real.exp_zero, neg_div_neg_eq]
  field_simp
  ring

/-- Exact source rate 2n+1/2 and exact factor two, including zero frequency. -/
theorem quarter_kernel_integral (ξ : ℝ) (n : ℕ) :
    kernel (ξ/2) (n+1/4) =
      2 * (∫ t : ℝ in Ioi 0,
        Real.exp (-((2:ℝ)*n+1/2)*t)*(1-Real.cos (ξ*t))) := by
  rw [compensated_integral (by positivity : (0:ℝ) < (2:ℝ)*n+1/2) ξ]
  unfold kernel
  have hn : (n:ℝ)+1/4 ≠ 0 := ne_of_gt (by positivity)
  have hs : ((n:ℝ)+1/4)^2+(ξ/2)^2 ≠ 0 := ne_of_gt (by positivity)
  field_simp
  ring

theorem quarter_compensated_integrable (ξ : ℝ) (n : ℕ) :
    IntegrableOn (fun t : ℝ =>
      Real.exp (-((2:ℝ)*n+1/2)*t)*(1-Real.cos (ξ*t))) (Ioi 0) :=
  compensated_integrable (by positivity) ξ

/-- The actual quarter-line multiplier is a sum of genuine compensated integrals.
This does not yet interchange the sum and the improper integral. -/
theorem actual_multiplier_hasSum_integrals (ξ : ℝ) :
    HasSum (fun n : ℕ => 2 * (∫ t : ℝ in Ioi 0,
      Real.exp (-((2:ℝ)*n+1/2)*t)*(1-Real.cos (ξ*t))))
      (FormalResearch.RiemannHypothesis.SourcePairing.archimedeanMultiplier ξ +
        FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility.archimedeanConstant) := by
  simpa only [← quarter_kernel_integral] using
    FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource.quarter_series ξ

#print axioms damped_cosine_eq_real
#print axioms damped_cosine_integrable
#print axioms damped_cosine_integral
#print axioms compensated_integrable
#print axioms compensated_nonneg
#print axioms compensated_integral
#print axioms quarter_kernel_integral
#print axioms quarter_compensated_integrable
#print axioms actual_multiplier_hasSum_integrals

end ContinuousResearch.CompensatedLaplaceCosine
```
