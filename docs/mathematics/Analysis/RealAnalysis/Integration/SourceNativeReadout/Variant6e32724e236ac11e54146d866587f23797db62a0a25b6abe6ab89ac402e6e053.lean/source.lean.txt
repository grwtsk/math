-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.WeightedCorrelation.Variant074f54b470d86d159bf0a06ab33cadc4dc323d4930e69b5245d6bde6055c5c60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"074f54b470d86d159bf0a06ab33cadc4dc323d4930e69b5245d6bde6055c5c60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.WeightedCorrelation.Variant074f54b470d86d159bf0a06ab33cadc4dc323d4930e69b5245d6bde6055c5c60","mathematical_subject":"Analysis.Integration","original_sha256":"074f54b470d86d159bf0a06ab33cadc4dc323d4930e69b5245d6bde6055c5c60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/scratch/rh16-followthrough-20261006-mellin/SourceNativeReadout.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceNativeAngularTail
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel

/-!
# Exact source Fourier normalization for the native Mellin readout

This proof slice uses the real source angular convention and genuine Fourier
inversion hypotheses. Dirichlet interchange and the literal cutoff adapter
remain separate until explicitly completed below.

AI attribution: developed with OpenAI Codex; checked locally by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.WeightedCorrelation.Variant074f54b470d86d159bf0a06ab33cadc4dc323d4930e69b5245d6bde6055c5c60

namespace FormalResearch.RiemannHypothesis.SourceNativeReadout

open MeasureTheory Set
open scoped FourierTransform
open SourcePairing SourceNativeMellin SourceNativeRightLine SourceNativeAngularTail
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel

noncomputable section

/-- The literal compact logarithmic-coordinate function on the fixed c = 2 line. -/
def weightedCorrelation (A x : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A x * Real.exp (3 * x / 2)

/-- The exact native transform has the source's positive angular convention. -/
theorem nativeMellin_two_eq_sourceFourier (A t : ℝ) :
    nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) =
      sourceFourier (weightedCorrelation A) t := by
  unfold nativeMellinTransform sourceFourier weightedCorrelation
  apply integral_congr_ae
  filter_upwards [] with x
  simp only [Complex.ofReal_mul]
  have he : (((2 : ℂ) + Complex.I * (t : ℂ)) - 1 / 2) * (x : ℂ) =
      ((3 * x / 2 : ℝ) : ℂ) + Complex.I * (t : ℂ) * (x : ℂ) := by
    push_cast
    ring
  rw [he, Complex.exp_add, ← Complex.ofReal_exp]
  ring

private theorem weightedCorrelation_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (weightedCorrelation A) := by
  exact (sourceCorrelation_contDiff A (by linarith)).continuous.mul (by fun_prop)

private theorem weightedCorrelation_compact (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (weightedCorrelation A) :=
  (sourceCorrelation_hasCompactSupport A (by linarith)).mul_right

private theorem integrable_of_height_decay (f : ℝ → ℂ) (hc : Continuous f) (M : ℝ)
    (hb : ∀ t : ℝ, 1 ≤ |t| → ‖f t‖ ≤ M / |t| ^ 6) : Integrable f := by
  have hg : IntegrableOn (fun t : ℝ ↦ M * t ^ (-6 : ℝ)) (Ioi 1) :=
    (integrableOn_Ioi_rpow_of_lt (by norm_num : (-6 : ℝ) < -1) (by norm_num)).const_mul _
  have hray : ∀ ε : ℝ, |ε| = 1 → IntegrableOn (fun t : ℝ ↦ f (ε * t)) (Ioi 1) := by
    intro ε hε
    apply hg.mono' ((hc.comp (by fun_prop)).aestronglyMeasurable)
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    change 1 < t at ht
    have htp : 0 < t := by linarith
    have he : |ε * t| = t := by rw [abs_mul, hε, abs_of_pos htp, one_mul]
    have hh := hb (ε * t) (by rw [he]; linarith)
    rw [he] at hh
    change ‖f (ε * t)‖ ≤ M * t ^ (-6 : ℝ)
    convert hh using 1
    rw [Real.rpow_neg htp.le, show (6 : ℝ) = (6 : ℕ) by norm_num,
      Real.rpow_natCast]
    ring
  have hpos : IntegrableOn f (Ioi 1) := by simpa using hray 1 (by norm_num)
  have hneg : IntegrableOn f (Iio (-1)) := by
    rw [← (Measure.measurePreserving_neg (volume : Measure ℝ)).integrableOn_comp_preimage
      (Homeomorph.neg ℝ).measurableEmbedding]
    simpa only [Function.comp_def, neg_preimage, neg_Iio, neg_neg, neg_one_mul]
      using hray (-1) (by norm_num)
  have hcover : (Icc (-1 : ℝ) 1 ∪ Ioi 1) ∪ Iio (-1) = univ := by
    ext t
    simp only [mem_union, mem_Icc, mem_Ioi, mem_Iio, mem_univ, iff_true]
    rcases lt_or_ge t (-1) with ht | ht
    · exact Or.inr ht
    · rcases le_or_gt t 1 with hh | hh
      · exact Or.inl (Or.inl ⟨ht, hh⟩)
      · exact Or.inl (Or.inr hh)
  have hsmall : IntegrableOn f (Icc (-1) 1) := hc.integrableOn_Icc
  have hu := (hsmall.union hpos).union hneg
  rw [hcover] at hu
  simpa using hu

/-- Genuine L¹ admission of the actual normalized native transform on c = 2. -/
theorem nativeMellin_two_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ ↦ nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) := by
  apply integrable_of_height_decay _ (native_two_line_continuous A hA)
    ((204288 ^ 2 * 10 / (4096 / 109395 : ℝ)) * Real.exp (3 * A) / A ^ 9)
  intro t ht
  convert nativeMellin_two_line_decay A hA t ht using 1
  ring

/-- The exact positive-angular Fourier inversion normalization for any admitted real input. -/
theorem sourceFourier_inversion (f : ℝ → ℝ) (hc : Continuous f) (hf : Integrable f)
    (hF : Integrable (sourceFourier f)) (u : ℝ) :
    (f u : ℂ) = (1 / (2 * Real.pi) : ℝ) *
      ∫ t : ℝ, sourceFourier f t * Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ)) := by
  have hscale : -(2 * Real.pi) ≠ 0 :=
    neg_ne_zero.mpr (mul_ne_zero two_ne_zero Real.pi_ne_zero)
  have hfreq : 𝓕 (fun x : ℝ ↦ (f x : ℂ)) =
      fun ξ : ℝ ↦ sourceFourier f (-(2 * Real.pi) * ξ) :=
    funext (standardFourier_eq_sourceFourier f)
  have hFC : Integrable (𝓕 (fun x : ℝ ↦ (f x : ℂ))) := by
    rw [hfreq]
    exact (integrable_comp_mul_left_iff _ hscale).mpr hF
  have hh := (Complex.ofRealCLM.integrable_comp hf).fourierInv_fourier_eq hFC
    (Complex.continuous_ofReal.comp hc).continuousAt (v := u)
  change 𝓕⁻ (𝓕 (fun x : ℝ ↦ (f x : ℂ))) u = (f u : ℂ) at hh
  rw [Real.fourierInv_eq_fourier_neg, Real.fourier_real_eq_integral_exp_smul] at hh
  rw [hfreq] at hh
  calc
    (f u : ℂ) = ∫ ξ : ℝ,
        sourceFourier f (-(2 * Real.pi) * ξ) *
          Complex.exp (-Complex.I * ((-(2 * Real.pi) * ξ : ℝ) : ℂ) * (u : ℂ)) := by
      rw [← hh]
      apply integral_congr_ae
      filter_upwards [] with ξ
      simp only [smul_eq_mul]
      rw [mul_comm]
      congr 1
      congr 1
      push_cast
      ring
    _ = _ := by
      rw [Measure.integral_comp_mul_left
        (fun t : ℝ ↦ sourceFourier f t * Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ)))
        (-(2 * Real.pi))]
      simp only [Complex.real_smul, abs_inv, abs_neg,
        abs_of_pos (by positivity : 0 < 2 * Real.pi), one_div]

/-- Exact angular inversion of the actual c = 2 native transform at every real log coordinate. -/
theorem weightedCorrelation_eq_native_inverse (A : ℝ) (hA : 1 ≤ A) (u : ℝ) :
    (weightedCorrelation A u : ℂ) = (1 / (2 * Real.pi) : ℝ) *
      ∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
        Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ)) := by
  have heq : sourceFourier (weightedCorrelation A) =
      fun t : ℝ ↦ nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) := by
    funext t
    exact (nativeMellin_two_eq_sourceFourier A t).symm
  have hF : Integrable (sourceFourier (weightedCorrelation A)) := by
    rw [heq]
    exact nativeMellin_two_integrable A hA
  simp_rw [nativeMellin_two_eq_sourceFourier]
  exact sourceFourier_inversion (weightedCorrelation A) (weightedCorrelation_continuous A hA)
    ((weightedCorrelation_continuous A hA).integrable_of_hasCompactSupport
      (weightedCorrelation_compact A hA)) hF u

end
end FormalResearch.RiemannHypothesis.SourceNativeReadout
