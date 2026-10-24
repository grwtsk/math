# Complete source: GRWTSK.Topology.GeneralTopology.SourceDualFourierJump.Variantab4e54d7ad1a03cf02158de563b761dae3e5d44000306fc96b368b67e0d0685b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4a1d3db8fc9d07557fc5503cd81b89e58f21297` · SHA-256 `28e8539e77c7eeeb2a9a5a5795950ce58879a8a0306414630486e43b3f7c644d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SignModulated.Variantdbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SignModulated.Variantdbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40","mathematical_subject":"Topology.GeneralTopology","original_sha256":"dbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-reflection-duality/parent/SourceDualFourierJump.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
import Mathlib.Data.Real.Sign
import Mathlib.MeasureTheory.Measure.OpenPos

/-!
# The actual source Fourier jump under sign multiplication

A nonzero zero-frequency value prevents the sign-modulated transform from
having any continuous almost-everywhere representative. This spectral statement
is proved for the literal source. The companion L¹/L² Fourier compatibility
adapter supplies the missing
link to an actual dual class; this module first isolates the spectral obstruction.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.Topology.GeneralTopology.SignModulated.Variantdbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDualFourierJump

open MeasureTheory Set Filter
open scoped FourierTransform
open SourcePairing SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

/-- Standard-frequency sign multiplication, with the value at zero explicit. -/
def signModulated (g : ℝ → ℂ) (ξ : ℝ) : ℂ := (Real.sign ξ : ℂ) * g ξ

/-- A nonzero value at zero gives an unavoidable two-sided spectral jump. -/
theorem no_continuous_ae_signModulated {g : ℝ → ℂ} (hg : Continuous g) (h0 : g 0 ≠ 0) :
    ¬ ∃ h : ℝ → ℂ, Continuous h ∧ h =ᵐ[volume] signModulated g := by
  rintro ⟨h, hh, he⟩
  have hp : EqOn h g (Ioi 0) := by
    apply Measure.eqOn_open_of_ae_eq (μ := volume) _ isOpen_Ioi hh.continuousOn hg.continuousOn
    filter_upwards [ae_restrict_of_ae he, ae_restrict_mem measurableSet_Ioi] with x hx hxp
    simpa [signModulated, Real.sign_of_pos hxp] using hx
  have hn : EqOn h (fun x => -g x) (Iio 0) := by
    apply Measure.eqOn_open_of_ae_eq (μ := volume) _ isOpen_Iio hh.continuousOn hg.neg.continuousOn
    filter_upwards [ae_restrict_of_ae he, ae_restrict_mem measurableSet_Iio] with x hx hxn
    simpa [signModulated, Real.sign_of_neg hxn] using hx
  have hpos : h 0 = g 0 := hp.closure hh hg (by simp : (0 : ℝ) ∈ closure (Ioi 0))
  have hneg : h 0 = -g 0 := hn.closure hh hg.neg (by simp : (0 : ℝ) ∈ closure (Iio 0))
  have heq : (2 : ℂ) * g 0 = 0 := by linear_combination hneg - hpos
  exact h0 ((mul_eq_zero.mp heq).resolve_left (by norm_num))

/-- Negating the spectral orientation preserves the unavoidable jump. -/
theorem no_continuous_ae_neg_signModulated {g : ℝ → ℂ} (hg : Continuous g) (h0 : g 0 ≠ 0) :
    ¬ ∃ h : ℝ → ℂ, Continuous h ∧ h =ᵐ[volume] -signModulated g := by
  rintro ⟨h, hh, he⟩
  apply no_continuous_ae_signModulated hg h0
  refine ⟨-h, hh.neg, ?_⟩
  filter_upwards [he] with x hx
  simp only [Pi.neg_apply] at hx ⊢
  rw [hx, neg_neg]

/-- The literal compact source has a continuous standard Fourier transform. -/
def standardSourceTransform (A : ℝ) : ℝ → ℂ :=
  𝓕 (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ))

/-- The literal zero-frequency value is the already evaluated source integral. -/
theorem standardSourceTransform_zero (A : ℝ) (hA : 1 ≤ A) :
    standardSourceTransform A 0 =
      ((-(Real.sqrt A * (256 / 315 : ℝ)) /
        (4 * Real.sqrt (sourceNormalization A)) : ℝ) : ℂ) := by
  have hq : 𝓕 (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ)) 0 =
      (((∫ x : ℝ, normalizedTest explicitSecondDerivative A x) : ℝ) : ℂ) := by
    rw [Real.fourier_real_eq_integral_exp_smul]
    simpa using (integral_ofReal (𝕜 := ℂ) (μ := volume)
      (f := normalizedTest explicitSecondDerivative A))
  exact hq.trans (congrArg Complex.ofReal (normalizedTest_integral A hA))

/-- The source integral has not vanished: the sign multiplier creates a true jump. -/
theorem standardSourceTransform_zero_ne (A : ℝ) (hA : 1 ≤ A) :
    standardSourceTransform A 0 ≠ 0 := by
  rw [standardSourceTransform_zero A hA]
  norm_cast
  exact div_ne_zero (neg_ne_zero.mpr (mul_ne_zero
    (Real.sqrt_pos.mpr (by linarith : 0 < A)).ne' (by norm_num)))
    (mul_ne_zero (by norm_num) (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne')

/-- This is a property of the actual source transform, not a Schwartz substitute. -/
theorem standardSourceTransform_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (standardSourceTransform A) := by
  have hf : Integrable (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ)) :=
    Complex.ofRealCLM.integrable_comp (normalizedTest_integrable A (by linarith))
  unfold standardSourceTransform
  exact VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
    (innerSL ℝ (E := ℝ)).continuous₂ hf

/-- The actual source sign-modulated spectrum has no continuous a.e. representative. -/
theorem actual_source_spectral_jump (A : ℝ) (hA : 1 ≤ A) :
    ¬ ∃ h : ℝ → ℂ, Continuous h ∧ h =ᵐ[volume] signModulated (standardSourceTransform A) :=
  no_continuous_ae_signModulated (standardSourceTransform_continuous A hA)
    (standardSourceTransform_zero_ne A hA)

/-- The angular-positive symbol has opposite standard-frequency orientation,
with the same source-specific jump obstruction. -/
theorem actual_source_negative_spectral_jump (A : ℝ) (hA : 1 ≤ A) :
    ¬ ∃ h : ℝ → ℂ, Continuous h ∧ h =ᵐ[volume] -signModulated (standardSourceTransform A) :=
  no_continuous_ae_neg_signModulated (standardSourceTransform_continuous A hA)
    (standardSourceTransform_zero_ne A hA)

/-- No integrable physical function has the proposed sign spectrum as its actual
Bochner Fourier transform. This statement does not assert L¹/L² compatibility. -/
theorem no_integrable_fourier_sign_source (A : ℝ) (hA : 1 ≤ A) :
    ¬ ∃ f : ℝ → ℂ, Integrable f ∧
      𝓕 f =ᵐ[volume] signModulated (standardSourceTransform A) := by
  rintro ⟨f, hf, he⟩
  exact actual_source_spectral_jump A hA ⟨𝓕 f,
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ (E := ℝ)).continuous₂ hf, he⟩

/-- A compact continuous representative cannot have this actual Fourier
spectrum. The missing L¹/L² bridge is explicit in this hostile fixture. -/
theorem no_continuous_compact_fourier_sign_source (A : ℝ) (hA : 1 ≤ A) :
    ¬ ∃ f : ℝ → ℂ, Continuous f ∧ HasCompactSupport f ∧
      𝓕 f =ᵐ[volume] signModulated (standardSourceTransform A) := by
  rintro ⟨f, hf, hc, he⟩
  exact no_integrable_fourier_sign_source A hA
    ⟨f, hf.integrable_of_hasCompactSupport hc, he⟩

end
end FormalResearch.RiemannHypothesis.SourceDualFourierJump
```
