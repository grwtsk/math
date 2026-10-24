# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltBandProjection.Variantb4d28af1ae6e0d15a5b420ea5173a089b59f6bc749d788c237d0bfda086f88a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbc3a8f6cbec9239dc5feb840f8273dac4ecb412` · SHA-256 `61b67c8e1e4c1143605984d5feb818c3f20c6036a4788b8aae61b1e7c6c1b11f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualStandardBand.Variantd393310c02e367307026494e1429cd1c12fb127f3d357071e88b775206786092","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d393310c02e367307026494e1429cd1c12fb127f3d357071e88b775206786092","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualStandardBand.Variantd393310c02e367307026494e1429cd1c12fb127f3d357071e88b775206786092","mathematical_subject":"Analysis.Integration","original_sha256":"d393310c02e367307026494e1429cd1c12fb127f3d357071e88b775206786092","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T121524Z-1791375324741525000/SourceActualTiltBandProjection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualTiltFourierDictionary

/-!
The true Fourier band cut of the actual tilted source is realized in L2.
All energy identities retain the complete state norm and the exact 2 pi scale.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualStandardBand.Variantd393310c02e367307026494e1429cd1c12fb127f3d357071e88b775206786092

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualTiltBandProjection
open MeasureTheory Filter Set FourierTransform
open scoped FourierTransform InnerProductSpace
open SourceActualTiltEnergy SourceActualTiltL2State SourceActualTiltFourierDictionary
open SourceReflectionDuality

/-- The physical standard-frequency band associated to angular height T. -/
def actualStandardBand (T : ℝ) : Set ℝ :=
  Icc (-T / (2 * Real.pi)) (T / (2 * Real.pi))

/-- The literal indicator cut of the actual Fourier L2 state. -/
def actualTiltBandSpectrum (A T : ℝ) : ComplexL2 :=
  ((Lp.memLp (𝓕 (actualUnitTiltState A) : ComplexL2)).indicator
    (show MeasurableSet (actualStandardBand T) from measurableSet_Icc)).toLp
    ((actualStandardBand T).indicator
      ((𝓕 (actualUnitTiltState A) : ComplexL2) : ℝ → ℂ))

/-- The actual physical projected state, with no normalization. -/
def actualTiltBandState (A T : ℝ) : ComplexL2 :=
  (Lp.fourierTransformₗᵢ ℝ ℂ).symm (actualTiltBandSpectrum A T)

private theorem state_norm_sq_integral (f : ComplexL2) :
    ‖f‖ ^ 2 = ∫ x : ℝ, ‖f x‖ ^ 2 := by
  rw [norm_sq_eq_re_inner (𝕜 := ℂ), L2.inner_def,
    ← integral_re (L2.integrable_inner (𝕜 := ℂ) f f)]
  apply integral_congr_ae
  exact Eventually.of_forall fun x => (norm_sq_eq_re_inner (𝕜 := ℂ) (f x)).symm

/-- Inverse Fourier construction gives exactly the declared cut spectrum. -/
theorem actualTiltBandState_fourier_eq (A T : ℝ) :
    𝓕 (actualTiltBandState A T) = actualTiltBandSpectrum A T :=
  (Lp.fourierTransformₗᵢ ℝ ℂ).apply_symm_apply _

/-- The cut spectrum represents the true entire-phase spectrum on its band. -/
theorem actualTiltBandSpectrum_coe_ae {A : ℝ} (hA : 1 ≤ A) (T : ℝ) :
    actualTiltBandSpectrum A T =ᵐ[volume]
      (actualStandardBand T).indicator (actualTiltStandardSpectrum A) := by
  have hcut := ((Lp.memLp (𝓕 (actualUnitTiltState A) : ComplexL2)).indicator
    (show MeasurableSet (actualStandardBand T) from measurableSet_Icc)).coeFn_toLp
  apply hcut.trans
  filter_upwards [actualUnitTiltState_fourier_coe_ae hA] with ξ hξ
  by_cases h : ξ ∈ actualStandardBand T <;> simp [h, hξ]

/-- The actual uncut spectral energy is genuinely integrable. -/
theorem actualTiltStandardSpectrum_norm_sq_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun ξ => ‖actualTiltStandardSpectrum A ξ‖ ^ 2) volume := by
  have hi := (L2.integrable_inner (𝕜 := ℂ)
    (𝓕 (actualUnitTiltState A)) (𝓕 (actualUnitTiltState A))).re
  apply hi.congr
  filter_upwards [actualUnitTiltState_fourier_coe_ae hA] with ξ hξ
  rw [hξ, ← norm_sq_eq_re_inner (𝕜 := ℂ)]

/-- The projected norm square is precisely the source energy in the physical band. -/
theorem actualTiltBandState_norm_sq {A : ℝ} (hA : 1 ≤ A) (T : ℝ) :
    ‖actualTiltBandState A T‖ ^ 2 =
      ∫ ξ in actualStandardBand T, ‖actualTiltStandardSpectrum A ξ‖ ^ 2 := by
  rw [← Lp.norm_fourier_eq (actualTiltBandState A T), actualTiltBandState_fourier_eq,
    state_norm_sq_integral,
    ← integral_indicator (show MeasurableSet (actualStandardBand T) from measurableSet_Icc)]
  apply integral_congr_ae
  filter_upwards [actualTiltBandSpectrum_coe_ae hA T] with ξ hξ
  rw [hξ]
  by_cases h : ξ ∈ actualStandardBand T <;> simp [h]

/-- Plancherel retains the entire actual tilted energy. -/
theorem actualTiltStandardSpectrum_energy {A : ℝ} (hA : 1 ≤ A) :
    (∫ ξ : ℝ, ‖actualTiltStandardSpectrum A ξ‖ ^ 2) = actualUnitTiltEnergy A := by
  calc
    _ = ∫ ξ : ℝ, ‖(𝓕 (actualUnitTiltState A) : ComplexL2) ξ‖ ^ 2 := by
      apply integral_congr_ae
      filter_upwards [actualUnitTiltState_fourier_coe_ae hA] with ξ hξ
      rw [hξ]
    _ = ‖𝓕 (actualUnitTiltState A)‖ ^ 2 := (state_norm_sq_integral _).symm
    _ = _ := by rw [Lp.norm_fourier_eq, actualUnitTiltState_norm_sq hA]

/-- Cutting a band loses energy without renormalizing the actual state. -/
theorem actualTiltBandState_norm_sq_le_energy {A : ℝ} (hA : 1 ≤ A) (T : ℝ) :
    ‖actualTiltBandState A T‖ ^ 2 ≤ actualUnitTiltEnergy A := by
  rw [actualTiltBandState_norm_sq hA T, ← actualTiltStandardSpectrum_energy hA]
  exact setIntegral_le_integral (actualTiltStandardSpectrum_norm_sq_integrable hA)
    (Eventually.of_forall fun ξ => sq_nonneg _)

end FormalResearch.RiemannHypothesis.SourceActualTiltBandProjection
```
