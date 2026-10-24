# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceReflectionConjugation.Variantc15121b90ab10e0ccbfb32472fdec0cab94b39c06d754a282e5aff15df6334ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5a3688f827c5f13c01cbb8d21a0c8de87183246` · SHA-256 `fd5da19bbd14b5cd6c340c0f1c26442f65244166e281fd3098b52781a5ed87f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Conjugation.Variantc4a3e3f3c520d51b14999b4e12a1a9122b7f299126e5ce4190abc28c56620038","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4a3e3f3c520d51b14999b4e12a1a9122b7f299126e5ce4190abc28c56620038","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.Conjugation.Variantc4a3e3f3c520d51b14999b4e12a1a9122b7f299126e5ce4190abc28c56620038","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"c4a3e3f3c520d51b14999b4e12a1a9122b7f299126e5ce4190abc28c56620038","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-reflection-duality/operator/conjugation/SourceReflectionConjugation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceReflectionDuality

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Conjugation.Variantc4a3e3f3c520d51b14999b4e12a1a9122b7f299126e5ce4190abc28c56620038

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceReflectionConjugation
open MeasureTheory FourierTransform
open scoped FourierTransform InnerProductSpace ComplexConjugate
open SourceReflectionDuality

/-- Actual pointwise complex conjugation, viewed as a real-linear L² operator. -/
def conjugation : ComplexL2 →L[ℝ] ComplexL2 :=
  (Complex.conjCLE : ℂ →L[ℝ] ℂ).compLpL 2 volume

theorem conjugation_coe_ae (f : ComplexL2) :
    conjugation f =ᵐ[volume] fun x => conj (f x) :=
  (Complex.conjCLE : ℂ →L[ℝ] ℂ).coeFn_compLpL f

theorem conjugation_toLp (f : SchwartzMap ℝ ℂ) :
    conjugation (f.toLp 2) = (f.postcompCLM (Complex.conjCLE : ℂ →L[ℝ] ℂ)).toLp 2 := by
  apply Lp.ext
  filter_upwards [conjugation_coe_ae (f.toLp 2),
    SchwartzMap.coeFn_toLp f 2 (volume : Measure ℝ),
    SchwartzMap.coeFn_toLp (f.postcompCLM (Complex.conjCLE : ℂ →L[ℝ] ℂ)) 2] with x h1 h2 h3
  rw [h1,h2,h3]
  rfl

private theorem fourier_conjugation_function (f : ℝ → ℂ) (ξ : ℝ) :
    𝓕 (fun x => conj (f x)) ξ = conj (𝓕 f (-ξ)) := by
  rw [Real.fourier_eq',Real.fourier_eq',← integral_conj]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun x => by
    simp only [smul_eq_mul,map_mul,← Complex.exp_conj,map_mul,Complex.conj_ofReal,
      Complex.conj_I,Real.inner_apply]
    congr 1
    apply congrArg Complex.exp
    push_cast
    ring)

theorem fourier_conjugation (f : ComplexL2) :
    𝓕 (conjugation f) = reflection (conjugation (𝓕 f)) := by
  let P := fun f : ComplexL2 =>
    𝓕 (conjugation f) = reflection (conjugation (𝓕 f))
  apply DenseRange.induction_on (p:=P)
    (SchwartzMap.denseRange_toLpCLM (E:=ℝ) (F:=ℂ) (p:=2)
      (μ:=volume) ENNReal.ofNat_ne_top) f
  · exact isClosed_eq
      ((Lp.fourierTransformₗᵢ ℝ ℂ).continuous.comp conjugation.continuous)
      (reflection.continuous.comp (conjugation.continuous.comp
        (Lp.fourierTransformₗᵢ ℝ ℂ).continuous))
  intro φ
  change 𝓕 (conjugation (φ.toLp 2)) = reflection (conjugation (𝓕 (φ.toLp 2)))
  rw [conjugation_toLp,SchwartzMap.toLp_fourier_eq,SchwartzMap.toLp_fourier_eq]
  apply Lp.ext
  filter_upwards [SchwartzMap.coeFn_toLp
      (𝓕 (φ.postcompCLM (Complex.conjCLE : ℂ →L[ℝ] ℂ))) 2,
    reflection_coe_ae (conjugation ((𝓕 φ).toLp 2)),
    (LinearIsometryEquiv.neg ℝ (E:=ℝ)).measurePreserving.quasiMeasurePreserving.ae
      (conjugation_coe_ae ((𝓕 φ).toLp 2)),
    (LinearIsometryEquiv.neg ℝ (E:=ℝ)).measurePreserving.quasiMeasurePreserving.ae
      (SchwartzMap.coeFn_toLp (𝓕 φ) 2 (volume : Measure ℝ))] with ξ h1 h2 h3 h4
  change conjugation ((𝓕 φ).toLp 2) (-ξ) = conj (((𝓕 φ).toLp 2) (-ξ)) at h3
  change ((𝓕 φ).toLp 2) (-ξ) = (𝓕 φ) (-ξ) at h4
  rw [h1,h2,h3,h4]
  exact fourier_conjugation_function φ ξ


theorem conjugation_involutive (f : ComplexL2) : conjugation (conjugation f) = f := by
  apply Lp.ext
  filter_upwards [conjugation_coe_ae (conjugation f),conjugation_coe_ae f] with x h1 h2
  rw [h1,h2]
  simp

theorem conjugation_signMultiplier (f : ComplexL2) :
    conjugation (signMultiplier f) = signMultiplier (conjugation f) := by
  apply Lp.ext
  filter_upwards [conjugation_coe_ae (signMultiplier f),signMultiplier_coe_ae f,
    signMultiplier_coe_ae (conjugation f),conjugation_coe_ae f] with ξ h1 h2 h3 h4
  rw [h1,h2,h3,h4,map_mul]
  unfold signSymbol
  split_ifs <;> simp

/-- The actual standard sign duality reverses real conjugation. -/
theorem conjugation_duality_anticommute (f : ComplexL2) :
    conjugation (signFourierDuality f) = -signFourierDuality (conjugation f) := by
  apply (Lp.fourierTransformₗᵢ ℝ ℂ).injective
  change 𝓕 (conjugation (signFourierDuality f)) =
    𝓕 (-signFourierDuality (conjugation f))
  rw [fourier_conjugation,duality_fourier,conjugation_signMultiplier,
    reflection_signMultiplier,FourierTransform.fourier_neg,duality_fourier,
    fourier_conjugation]

/-- The source-angular orientation has the same real-conjugation reversal. -/
theorem angular_conjugation_duality_anticommute (f : ComplexL2) :
    conjugation (angularSignDuality f) = -angularSignDuality (conjugation f) := by
  change conjugation (-signFourierDuality f) = -(-signFourierDuality (conjugation f))
  rw [map_neg,conjugation_duality_anticommute,neg_neg]

theorem conjugation_eq_self_of_real_representative (f : ComplexL2) (g : ℝ → ℝ)
    (hf : f =ᵐ[volume] fun x => (g x : ℂ)) : conjugation f = f := by
  apply Lp.ext
  filter_upwards [conjugation_coe_ae f,hf] with x hc hr
  rw [hc,hr]
  simp

/-- Every actual real L² vector has an imaginary sign-dual image. -/
theorem angular_real_image_imaginary {f : ComplexL2} (hf : conjugation f = f) :
    conjugation (angularSignDuality f) = -angularSignDuality f := by
  rw [angular_conjugation_duality_anticommute,hf]

/-- Imaginarity is an almost-everywhere statement about the actual L² representative. -/
theorem angular_real_image_re_zero {f : ComplexL2} (hf : conjugation f = f) :
    ∀ᵐ x : ℝ ∂volume, (angularSignDuality f x).re = 0 := by
  have hclass := angular_real_image_imaginary hf
  filter_upwards [conjugation_coe_ae (angularSignDuality f),
    Lp.coeFn_neg (angularSignDuality f)] with x hc hn
  have hp := congrArg (fun g : ComplexL2 => g x) hclass
  change (-angularSignDuality f) x = -(angularSignDuality f x) at hn
  rw [hc,hn] at hp
  have hr := congrArg Complex.re hp
  simp only [Complex.conj_re,Complex.neg_re] at hr
  linarith

/-- Both real parity and geometric reflection parity are tracked for the same vector. -/
theorem angular_real_even_image {f : ComplexL2}
    (hr : conjugation f = f) (he : reflection f = f) :
    conjugation (angularSignDuality f) = -angularSignDuality f ∧
      reflection (angularSignDuality f) = -angularSignDuality f :=
  ⟨angular_real_image_imaginary hr,angular_even_to_odd he⟩


theorem conjugation_norm (f : ComplexL2) : ‖conjugation f‖ = ‖f‖ := by
  rw [Lp.norm_def,Lp.norm_def]
  congr 1
  apply eLpNorm_congr_norm_ae
  filter_upwards [conjugation_coe_ae f] with x hc
  rw [hc]
  exact Complex.norm_conj _

theorem reflection_conjugation_commute (f : ComplexL2) :
    reflection (conjugation f) = conjugation (reflection f) := by
  apply Lp.ext
  filter_upwards [reflection_coe_ae (conjugation f),
    (LinearIsometryEquiv.neg ℝ (E:=ℝ)).measurePreserving.quasiMeasurePreserving.ae
      (conjugation_coe_ae f),conjugation_coe_ae (reflection f),reflection_coe_ae f]
      with x h1 h2 h3 h4
  change conjugation f (-x) = conj (f (-x)) at h2
  rw [h1,h2,h3,h4]

theorem translation_conjugation_commute (u : ℝ) (f : ComplexL2) :
    translation u (conjugation f) = conjugation (translation u f) := by
  apply Lp.ext
  filter_upwards [translation_coe_ae u (conjugation f),
    (measurePreserving_sub_right volume u).quasiMeasurePreserving.ae
      (conjugation_coe_ae f),conjugation_coe_ae (translation u f),translation_coe_ae u f]
      with x h1 h2 h3 h4
  change conjugation f (x-u) = conj (f (x-u)) at h2
  rw [h1,h2,h3,h4]

end FormalResearch.RiemannHypothesis.SourceReflectionConjugation
```
