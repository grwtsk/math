# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.RateOneIntegrability.Variantfa220e0f0fc1ce6202965219716e8b8090f58d0794152d90f8aa8452d77516b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e30fd44e4bfafb51dbede2d14c3c7c748dd264e8` · SHA-256 `ff3e69635a6bba724668c8501f4fba2cbf86f5d908f85b53e7454949387c6401`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.RateOneIntegrableOnIoc.Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.RateOneIntegrableOnIoc.Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77","mathematical_subject":"Analysis.Integration","original_sha256":"e71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/pnt-rate-one/RateOneIntegrability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral


namespace GRWTSK.Analysis.RealAnalysis.Integration.RateOneIntegrableOnIoc.Variante71f938137e6ec54712fbdb424f4c57ae896d8b5d66bb2d9c9bc8344ebbd6f77

namespace RateOneIntegrabilityScratch

open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability

noncomputable section

/-- The finite initial interval uses the already proved rate-two source integral. -/
theorem rate_one_integrableOn_Ioc (R : ℝ) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioc 1 R) := by
  have h₂ := (negativeSource_integrable_of_one_lt 2 (by norm_num)).mono_set
    (show Ioc 1 R ⊆ Ioi 1 from fun _ h ↦ h.1)
  have hm : AEStronglyMeasurable (fun A : ℝ ↦ Real.exp (-A) * negativeSource A)
      (volume.restrict (Ioc 1 R)) := by
    simpa only [neg_mul, one_mul] using
      (weighted_negativeSource_aestronglyMeasurable 1).mono_measure
        (Measure.restrict_mono (show Ioc 1 R ⊆ Ioi 1 from fun _ h ↦ h.1) le_rfl)
  apply (h₂.const_mul (Real.exp R)).mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with A hA
  rw [Real.norm_eq_abs, abs_of_nonneg
    (mul_nonneg (Real.exp_pos _).le (negativeSource_nonneg A hA.1.le))]
  have he : Real.exp (-A) = Real.exp A * Real.exp (-2 * A) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [he, mul_assoc]
  exact mul_le_mul_of_nonneg_right (Real.exp_le_exp.mpr hA.2)
    (mul_nonneg (Real.exp_pos _).le (negativeSource_nonneg A hA.1.le))

/-- A summable eventual majorant suffices, with the finite prefix proved above. -/
theorem rate_one_integrable_of_eventual_majorant (g : ℝ → ℝ)
    (hg : IntegrableOn g (Ioi 1))
    (hbound : ∀ᶠ A : ℝ in atTop, Real.exp (-A) * negativeSource A ≤ g A) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi 1) := by
  obtain ⟨R, hR⟩ := eventually_atTop.1 hbound
  let T := max 1 R
  have hT : 1 ≤ T := le_max_left _ _
  have ht : Ioi T ⊆ Ioi (1 : ℝ) := fun _ h ↦ lt_of_le_of_lt hT h
  have hm : AEStronglyMeasurable (fun A : ℝ ↦ Real.exp (-A) * negativeSource A)
      (volume.restrict (Ioi T)) := by
    simpa only [neg_mul, one_mul] using
      (weighted_negativeSource_aestronglyMeasurable 1).mono_measure
        (Measure.restrict_mono ht le_rfl)
  have htail : IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi T) := by
    apply (hg.mono_set ht).mono' hm
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with A hA
    rw [Real.norm_eq_abs, abs_of_nonneg
      (mul_nonneg (Real.exp_pos _).le (negativeSource_nonneg A (ht hA).le))]
    exact hR A ((le_max_right 1 R).trans hA.le)
  have hu : Ioc (1 : ℝ) T ∪ Ioi T = Ioi 1 := by
    ext A
    simp only [mem_union, mem_Ioc, mem_Ioi]
    constructor
    · rintro (⟨ha, _⟩ | ha)
      · exact ha
      · exact lt_of_le_of_lt hT ha
    · intro ha
      by_cases hAT : A ≤ T
      · exact Or.inl ⟨ha, hAT⟩
      · exact Or.inr (lt_of_not_ge hAT)
  rw [← hu]
  exact (rate_one_integrableOn_Ioc T).union htail

/-- Positive stretched exponential damping integrates the natural seventeenth power. -/
theorem polynomial_stretched_integrable (c p : ℝ) (hc : 0 < c) (hp : 0 < p) :
    IntegrableOn (fun A : ℝ ↦ A ^ 17 * Real.exp (-c * A ^ p)) (Ioi 1) := by
  have h := (integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (17 : ℝ)) (p := p) (b := c) (by norm_num) hp hc).mono_set
      (show Ioi (1 : ℝ) ⊆ Ioi 0 from fun x h ↦ show 0 < x from zero_lt_one.trans h)
  apply h.congr_fun _ measurableSet_Ioi
  intro A _
  dsimp only
  rw [show A ^ (17 : ℝ) = A ^ (17 : ℕ) from Real.rpow_natCast A 17]

/-- The three terms arising from the actual correction and the PNT split are integrable. -/
theorem rate_one_majorant_integrable (C c : ℝ) (hc : 0 < c) :
    IntegrableOn (fun A : ℝ ↦ C * (A ^ 17 * Real.exp (-A) +
      A ^ 17 * Real.exp (-A / 2) +
      A ^ 17 * Real.exp (-c * A ^ ((1 : ℝ) / 10)))) (Ioi 1) := by
  have h₁ : IntegrableOn (fun A : ℝ ↦ A ^ 17 * Real.exp (-A)) (Ioi 1) := by
    simpa using polynomial_stretched_integrable 1 1 (by norm_num) (by norm_num)
  have h₂ : IntegrableOn (fun A : ℝ ↦ A ^ 17 * Real.exp (-A / 2)) (Ioi 1) := by
    convert polynomial_stretched_integrable (1 / 2) 1 (by norm_num) (by norm_num) using 1
    simp only [Real.rpow_one]
    funext A
    congr 2
    ring
  exact ((h₁.add h₂).add (polynomial_stretched_integrable c (1 / 10) hc (by norm_num))).const_mul C

/-- This explicitly conditional transport does not assert the PNT source bound. -/
theorem rate_one_integrable_of_stretched_majorant (C c : ℝ) (hc : 0 < c)
    (hbound : ∀ᶠ A : ℝ in atTop, Real.exp (-A) * negativeSource A ≤
      C * (A ^ 17 * Real.exp (-A) + A ^ 17 * Real.exp (-A / 2) +
        A ^ 17 * Real.exp (-c * A ^ ((1 : ℝ) / 10)))) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi 1) :=
  rate_one_integrable_of_eventual_majorant _ (rate_one_majorant_integrable C c hc) hbound

/-- The exact three-term normalization is bounded by a fixed degree-seventeen polynomial. -/
theorem actual_scale_le (A : ℝ) (hA : 1 ≤ A) :
    A ^ 17 * sourceNormalization A ≤ 42 * A ^ 17 := by
  rw [SourceLaplaceReduction.scaled_normalization A (by linarith)]
  have h₁₅ : A ^ 15 ≤ A ^ 17 := pow_le_pow_right₀ hA (by norm_num)
  have h₁₃ : A ^ 13 ≤ A ^ 17 := pow_le_pow_right₀ hA (by norm_num)
  have h₁₇ : 0 ≤ A ^ 17 := pow_nonneg (by linarith) _
  unfold SourceLaplaceReduction.normalizationPolynomial
  nlinarith

/-- Transport of an explicitly supplied actual signed-pairing bound through the proved
correction lower bound and exact source normalization. -/
theorem weighted_negativeSource_le_of_pairing_bound
    (C c A : ℝ) (hC : 0 ≤ C) (hA : 1 ≤ A)
    (hI : |signedPairing Realization.explicitSecondDerivative A| ≤
      C * (Real.exp (A / 2) + Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10)))) :
    Real.exp (-A) * negativeSource A ≤
      (42 * (|archimedeanMultiplier 0 - 6 * Real.sqrt 2| + 2 * C)) *
        (A ^ 17 * Real.exp (-A) + A ^ 17 * Real.exp (-A / 2) +
          A ^ 17 * Real.exp (-c * A ^ ((1 : ℝ) / 10))) := by
  let M := |archimedeanMultiplier 0 - 6 * Real.sqrt 2|
  let P := Real.exp (A / 2) + Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10))
  have hM : 0 ≤ M := abs_nonneg _
  have hP : 0 ≤ P := by dsimp [P]; positivity
  have hI' : -C * P ≤ signedPairing Realization.explicitSecondDerivative A := by
    have h := neg_abs_le (signedPairing Realization.explicitSecondDerivative A)
    dsimp [P] at *
    linarith
  have hcorr := SourceCorrectionEstimate.actual_correction_lower A hA
  have hM' : -M ≤ archimedeanMultiplier 0 - 6 * Real.sqrt 2 := neg_abs_le _
  have hQ := CorrelationAssembly.source_arithmetic_representation A hA
  have hneg : max (-sourceQuadraticValue Realization.explicitSecondDerivative A) 0 ≤
      M + 2 * C * P := max_le (by linarith) (by positivity)
  have hscale := actual_scale_le A hA
  have hbound : negativeSource A ≤ 42 * A ^ 17 * (M + 2 * C * P) := by
    unfold negativeSource
    exact mul_le_mul hscale hneg (le_max_right _ _) (by positivity)
  have he₁ : Real.exp (-A) * Real.exp (A / 2) = Real.exp (-A / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have he₂ : Real.exp (-A) * Real.exp A = 1 := by
    rw [← Real.exp_add, neg_add_cancel, Real.exp_zero]
  have hp₁ : 0 ≤ A ^ 17 * Real.exp (-A) := by positivity
  have hp₂ : 0 ≤ A ^ 17 * Real.exp (-A / 2) := by positivity
  have hp₃ : 0 ≤ A ^ 17 * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by positivity
  calc
    _ ≤ Real.exp (-A) * (42 * A ^ 17 * (M + 2 * C * P)) :=
      mul_le_mul_of_nonneg_left hbound (Real.exp_pos _).le
    _ = 42 * (M * (A ^ 17 * Real.exp (-A)) +
        (2 * C) * (A ^ 17 * Real.exp (-A / 2)) +
        (2 * C) * (A ^ 17 * Real.exp (-c * A ^ ((1 : ℝ) / 10)))) := by
      dsimp [P]
      calc
        _ = 42 * (M * (A ^ 17 * Real.exp (-A)) +
            (2 * C) * (A ^ 17 * (Real.exp (-A) * Real.exp (A / 2))) +
            (2 * C) * (A ^ 17 * (Real.exp (-A) * Real.exp A) *
              Real.exp (-c * A ^ ((1 : ℝ) / 10)))) := by ring
        _ = _ := by rw [he₁, he₂, mul_one]
    _ ≤ _ := by dsimp [M] at *; nlinarith

/-- The final rate-one source transport keeps the eventual arithmetic premise explicit. -/
theorem rate_one_integrable_of_pairing_bound (C c : ℝ) (hC : 0 ≤ C) (hc : 0 < c)
    (hI : ∀ᶠ A : ℝ in atTop,
      |signedPairing Realization.explicitSecondDerivative A| ≤
        C * (Real.exp (A / 2) + Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10)))) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi 1) := by
  apply rate_one_integrable_of_stretched_majorant
    (42 * (|archimedeanMultiplier 0 - 6 * Real.sqrt 2| + 2 * C)) c hc
  filter_upwards [hI, eventually_ge_atTop (1 : ℝ)] with A hIA hA
  exact weighted_negativeSource_le_of_pairing_bound C c A hC hA hIA

/-- Integrability at the boundary rate transports to every larger rate by domination. -/
theorem integrable_of_one_le_rate
    (h₁ : IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi 1))
    (σ : ℝ) (hσ : 1 ≤ σ) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-σ * A) * negativeSource A) (Ioi 1) := by
  apply h₁.mono' (weighted_negativeSource_aestronglyMeasurable σ)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with A hA
  rw [Real.norm_eq_abs, abs_of_nonneg
    (mul_nonneg (Real.exp_pos _).le (negativeSource_nonneg A hA.le))]
  apply mul_le_mul_of_nonneg_right _ (negativeSource_nonneg A hA.le)
  apply Real.exp_le_exp.mpr
  have hA0 : 0 ≤ A := (zero_lt_one.trans hA).le
  nlinarith

end
end RateOneIntegrabilityScratch
```
