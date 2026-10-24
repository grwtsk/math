# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHContactNative.Variant37482562ca3f8d2b309f33a8b995bc9670e28d3d722d5dd708df69c273459555

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `962c44d46f43545c0c180b5a3a83bcd63fdd7291` · SHA-256 `4d5d3492d40042f38df5b532ddbf11fec966c9853c92b6ec453bc0cb83319da1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeTranslationsCommute.Variant82a40e1f13634ce50964554d31f8f75c8b6504ee91ca43f38ef3d8332a20ae41","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82a40e1f13634ce50964554d31f8f75c8b6504ee91ca43f38ef3d8332a20ae41","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.NativeTranslationsCommute.Variant82a40e1f13634ce50964554d31f8f75c8b6504ee91ca43f38ef3d8332a20ae41","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"82a40e1f13634ce50964554d31f8f75c8b6504ee91ca43f38ef3d8332a20ae41","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/primary-delta-index-retrieved-b246bcb45ff5/primary-deltas/source/82/82a40e1f13634ce50964554d31f8f75c8b6504ee91ca43f38ef3d8332a20ae41/KQHContactNative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction

/-!
# Native translation comparison for the KQH model

The actual source translations are `f(x-s)` on Lebesgue L². Their central
commutator is the identity. The already constructed standard Fourier phase
multiplier gives a second conjugate action, with its exact `2π` convention.
This does not select such a modulation from the prime source Hamiltonian.

AI attribution: Codex formalization of grwtsk contributors's comparison task.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeTranslationsCommute.Variant82a40e1f13634ce50964554d31f8f75c8b6504ee91ca43f38ef3d8332a20ae41

set_option autoImplicit false
noncomputable section
namespace FormalResearch.PositiveAtlas.KQHContactNative

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceMangoldtInteraction

theorem native_translations_commute (s t : ℝ) (f : ComplexL2) :
    translation s (translation t f) = translation t (translation s f) := by
  rw [translation_add, translation_add, add_comm]

theorem native_translation_loop (s t : ℝ) (f : ComplexL2) :
    translation (-t) (translation (-s) (translation t (translation s f))) = f := by
  rw [translation_add, translation_add, translation_add]
  have hz : -t + (-s + (t+s)) = 0 := by ring
  rw [hz, translation_zero]

/-- An existing atlas chart conjugacy preserves the native commutator. -/
theorem native_chart_translations_commute (G : ComplexL2 ≃ₗᵢ[ℂ] ComplexL2)
    (s t : ℝ) (f : ComplexL2) :
    G (translation s (G.symm (G (translation t (G.symm f))))) =
      G (translation t (G.symm (G (translation s (G.symm f))))) := by
  simp only [LinearIsometryEquiv.symm_apply_apply]
  rw [native_translations_commute]

/-- A nonzero source vector cannot carry a nontrivial phase for two translations. -/
theorem native_weyl_phase_trivial (s t : ℝ) (χ : ℂ) (f : ComplexL2) (hf : f ≠ 0)
    (h : translation s (translation t f) = χ • translation t (translation s f)) :
    χ = 1 := by
  have hn : translation t (translation s f) ≠ 0 := by
    intro hz
    apply hf
    apply (translation s).injective
    apply (translation t).injective
    simpa using hz
  rw [native_translations_commute] at h
  exact (smul_left_injective ℂ hn) (by simpa using h.symm)

/-- Literal character comparison for the native right shift. -/
theorem native_modulation_phase (s v x : ℝ) :
    translationPhase v (x-s) =
      (Real.fourierChar (v*s) : ℂ) * translationPhase v x := by
  unfold translationPhase
  have he : -v*(x-s) = v*s + -v*x := by ring
  rw [he, map_add]
  simp

/-- The existing L² Fourier-phase multiplier supplies this exact Weyl pair. -/
theorem native_translation_modulation_weyl (s v : ℝ) (f : ComplexL2) :
    translation s (translationPhaseMultiplier v f) =
      (Real.fourierChar (v*s) : ℂ) • translationPhaseMultiplier v (translation s f) := by
  apply Lp.ext
  filter_upwards [translation_coe_ae s (translationPhaseMultiplier v f),
    (measurePreserving_sub_right volume s).quasiMeasurePreserving.ae
      (translationPhaseMultiplier_coe_ae v f),
    translationPhaseMultiplier_coe_ae v (translation s f), translation_coe_ae s f,
    Lp.coeFn_smul (Real.fourierChar (v*s) : ℂ)
      (translationPhaseMultiplier v (translation s f))] with x ht hm hmt htf hs
  change (translationPhaseMultiplier v f) (x-s) = translationPhase v (x-s)*f (x-s) at hm
  rw [ht, hm, hs, hmt, htf, native_modulation_phase]
  simp [smul_eq_mul, mul_assoc]

end FormalResearch.PositiveAtlas.KQHContactNative
```
