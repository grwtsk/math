# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceDualSupport.Variantd0c6e83c414b6234080baaa0767dff9f85877327efb4045b42c5d51fdf87df09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66e41008fc93180e77b7b4305179fde184cc4e9b` · SHA-256 `0e9a9fa20e98f367d7dc76c18df0b9244aa8517e2c8f06641c49a77bcda1c04b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.StandardDualNotIntegrable.Variant437990424d595efc3db9595d65e1f962815c1834ef3894a65d6f3e3f30ea1b2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"437990424d595efc3db9595d65e1f962815c1834ef3894a65d6f3e3f30ea1b2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.StandardDualNotIntegrable.Variant437990424d595efc3db9595d65e1f962815c1834ef3894a65d6f3e3f30ea1b2f","mathematical_subject":"Analysis.Integration","original_sha256":"437990424d595efc3db9595d65e1f962815c1834ef3894a65d6f3e3f30ea1b2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-reflection-duality/parent/SourceDualSupport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceReflectionDuality
import FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility
import FormalResearch.RiemannHypothesis.SourceDualFourierJump
/-!
# Noncompactness of the literal source sign dual

The compact source has nonzero zero-frequency Fourier value. The checked
L¹/L² compatibility adapter turns the sign jump into nonintegrability of its
actual dual L² class, in both standard and source-angular orientations. Any
compactly supported measurable representative would be integrable, so none
exists. No compact-source sampling or spatial localization theorem is reused.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.StandardDualNotIntegrable.Variant437990424d595efc3db9595d65e1f962815c1834ef3894a65d6f3e3f30ea1b2f

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceDualSupport
open MeasureTheory Filter Set
open scoped FourierTransform ENNReal
open SourcePairing SourceReflectionDuality SourceL2FourierCompatibility SourceDualFourierJump
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The actual source class has no integrable standard-sign dual representative. -/
theorem standard_dual_not_integrable (A : ℝ) (hA : 1 ≤ A) (f : ComplexL2)
    (hf : (f : ℝ → ℂ) =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) :
    ¬ Integrable (signFourierDuality f : ℝ → ℂ) := by
  intro hdual
  have hf1 : Integrable (f : ℝ → ℂ) :=
    (Complex.ofRealCLM.integrable_comp (normalizedTest_integrable A (by linarith))).congr hf.symm
  have hF : ((𝓕 f : ComplexL2) : ℝ → ℂ) =ᵐ[volume] standardSourceTransform A :=
    (fourier_coe_ae f hf1).trans (Eventually.of_forall (fun ξ => Real.fourier_congr_ae hf ξ))
  apply actual_source_spectral_jump A hA
  refine ⟨𝓕 (signFourierDuality f : ℝ → ℂ),
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ (E := ℝ)).continuous₂ hdual, ?_⟩
  have hn : ∀ᵐ ξ : ℝ ∂volume, ξ ≠ 0 := by rw [ae_iff]; simp
  filter_upwards [(fourier_coe_ae (signFourierDuality f) hdual).symm,
    duality_fourier_coe_ae f, hF, hn] with ξ h1 h2 h3 h0
  rw [h1, h2, h3]
  unfold signModulated signSymbol
  rcases lt_or_gt_of_ne h0 with hm | hp
  · simp [hm, Real.sign_of_neg hm]
  · simp [not_lt.mpr hp.le, Real.sign_of_pos hp]

/-- The source-angular orientation has the same physical nonintegrability guard. -/
theorem angular_dual_not_integrable (A : ℝ) (hA : 1 ≤ A) (f : ComplexL2)
    (hf : (f : ℝ → ℂ) =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) :
    ¬ Integrable (angularSignDuality f : ℝ → ℂ) := by
  intro hi
  apply standard_dual_not_integrable A hA f hf
  have he : (angularSignDuality f : ℝ → ℂ) =ᵐ[volume]
      fun x => -(signFourierDuality f : ℝ → ℂ) x := by
    change (-signFourierDuality f : ComplexL2) =ᵐ[volume] _
    exact Lp.coeFn_neg _
  have hn : Integrable (fun x => -(signFourierDuality f : ℝ → ℂ) x) := hi.congr he
  simpa using hn.neg

/-- L² and compact support suffice for L¹; continuity is unnecessary. -/
theorem integrable_of_memLp_two_compact {g : ℝ → ℂ} (hg : MemLp g 2 volume)
    (hc : HasCompactSupport g) : Integrable g :=
  (integrableOn_iff_integrable_of_support_subset (subset_tsupport g)).mp
    ((hg.locallyIntegrable (by norm_num)).integrableOn_isCompact hc)

/-- No compactly supported measurable representative of the actual dual class exists. -/
theorem angular_dual_no_compact_representative (A : ℝ) (hA : 1 ≤ A) (f : ComplexL2)
    (hf : (f : ℝ → ℂ) =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) :
    ¬ ∃ g : ℝ → ℂ, HasCompactSupport g ∧
      (angularSignDuality f : ℝ → ℂ) =ᵐ[volume] g := by
  rintro ⟨g, hg, he⟩
  apply angular_dual_not_integrable A hA f hf
  exact (integrable_of_memLp_two_compact ((memLp_congr_ae he).mp (Lp.memLp (angularSignDuality f))) hg).congr he.symm
end FormalResearch.RiemannHypothesis.SourceDualSupport
```
