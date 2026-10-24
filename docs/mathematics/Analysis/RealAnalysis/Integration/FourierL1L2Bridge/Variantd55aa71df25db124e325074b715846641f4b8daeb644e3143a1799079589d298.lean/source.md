# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FourierL1L2Bridge.Variantd55aa71df25db124e325074b715846641f4b8daeb644e3143a1799079589d298

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e335ad5ab5fad4028cdfc9e96a06f05f00df8d9a` · SHA-256 `4e28161b74b229dc4de3a48ed81bcf4039c2c09c02f886c5b3e5ae5a6645c9b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegralFourierInvMulEq.Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegralFourierInvMulEq.Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650","mathematical_subject":"Analysis.Integration","original_sha256":"b1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-controller-admission/FourierL1L2Bridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Fourier.LpSpace

/-! Genuine agreement of inverse Fourier integrals and the complex full-line L2 quotient. -/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegralFourierInvMulEq.Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650

set_option autoImplicit false
namespace FourierL1L2BridgeScratch
open MeasureTheory FourierTransform SchwartzMap
open scoped Real Topology ContDiff
noncomputable section

/-- The inverse Fourier pairing uses genuine product integrability for both inputs. -/
theorem integral_fourierInv_mul_eq (f g : ℝ → ℂ)
    (hf : Integrable f) (hg : Integrable g) :
    (∫ x : ℝ, (𝓕⁻ f) x * g x) = ∫ x : ℝ, f x * (𝓕⁻ g) x := by
  have hflip : (-(innerₗ ℝ)).flip = -(innerₗ ℝ) := by
    ext
    simp
  have he := VectorFourier.integral_bilin_fourierIntegral_eq_flip
    (ContinuousLinearMap.mul ℂ ℂ) (L := -(innerₗ ℝ))
    Real.continuous_fourierChar continuous_inner.neg hf hg
  simp only [hflip, ContinuousLinearMap.mul_apply', VectorFourier.fourierIntegral,
    LinearMap.neg_apply, neg_neg] at he
  simpa only [Real.fourierInv_eq, innerₗ_apply_apply] using he

/-- An integrable input has a continuous genuine inverse Fourier integral. -/
theorem continuous_fourierInv (f : ℝ → ℂ) (hf : Integrable f) :
    Continuous (𝓕⁻ f) := by
  exact VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
    continuous_inner.neg hf

/-- For an L1 and L2 input, the L2 inverse transform is its actual inverse integral
almost everywhere. -/
theorem fourierInv_toLp_ae (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ((𝓕⁻ (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) : ℝ → ℂ) =ᵐ[volume] 𝓕⁻ f := by
  apply ae_eq_of_integral_contDiff_smul_eq
    ((Lp.memLp _).locallyIntegrable (by norm_num))
    (continuous_fourierInv f hf).locallyIntegrable
  intro g hg hgc
  have hgc' : HasCompactSupport (Complex.ofRealCLM ∘ g) := hgc.comp_left rfl
  have hg' : ContDiff ℝ ∞ (Complex.ofRealCLM ∘ g) := by fun_prop
  let s : SchwartzMap ℝ ℂ := hgc'.toSchwartzMap hg'
  have he := congrArg (fun d : TemperedDistribution ℝ ℂ => d s)
    (Lp.fourierInv_toTemperedDistribution_eq (hf2.toLp f))
  simp only [TemperedDistribution.fourierInv_apply, Lp.toTemperedDistribution_apply,
    smul_eq_mul] at he
  have he' : (∫ x : ℝ, s x * (𝓕⁻ (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) x) =
      ∫ x : ℝ, (𝓕⁻ s) x * f x := by
    rw [← he]
    apply integral_congr_ae
    filter_upwards [hf2.coeFn_toLp] with x hx
    simp only [hx]
  calc
    (∫ x : ℝ, g x • (𝓕⁻ (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) x) =
        ∫ x : ℝ, s x * (𝓕⁻ (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) x := by
      congr 1
    _ = ∫ x : ℝ, (𝓕⁻ s) x * f x := he'
    _ = ∫ x : ℝ, s x * (𝓕⁻ f) x := by
      simpa only [SchwartzMap.fourierInv_coe] using
        integral_fourierInv_mul_eq s f s.integrable hf
    _ = ∫ x : ℝ, g x • (𝓕⁻ f) x := by congr 1
  rfl

/-- The genuine inverse integral of an L1 and L2 function itself belongs to L2. -/
theorem fourierInv_memLp (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    MemLp (𝓕⁻ f) 2 :=
  MemLp.ae_eq (fourierInv_toLp_ae f hf hf2) (Lp.memLp _)

/-- Admission of the inverse integral gives exactly the inverse Fourier quotient vector. -/
theorem fourierInv_toLp_eq (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    (fourierInv_memLp f hf hf2).toLp (𝓕⁻ f) = 𝓕⁻ (hf2.toLp f) := by
  apply Lp.ext
  exact (fourierInv_memLp f hf hf2).coeFn_toLp.trans (fourierInv_toLp_ae f hf hf2).symm

/-- The admitted genuine inverse integral preserves the complete full-line L2 norm. -/
theorem norm_fourierInv_toLp (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ‖(fourierInv_memLp f hf hf2).toLp (𝓕⁻ f)‖ = ‖hf2.toLp f‖ := by
  rw [fourierInv_toLp_eq f hf hf2]
  exact (Lp.fourierTransformₗᵢ ℝ ℂ).symm.norm_map (hf2.toLp f)

end
end FourierL1L2BridgeScratch
```
