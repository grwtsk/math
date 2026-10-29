-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.KtWeighted.Variant202682ca2dc726eb0f8c6bb92fb14fe9daaf54066294bd914f0f4866495bb062","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"202682ca2dc726eb0f8c6bb92fb14fe9daaf54066294bd914f0f4866495bb062","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.KtWeighted.Variant202682ca2dc726eb0f8c6bb92fb14fe9daaf54066294bd914f0f4866495bb062","mathematical_subject":"Analysis.Integration","original_sha256":"202682ca2dc726eb0f8c6bb92fb14fe9daaf54066294bd914f0f4866495bb062","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/SpectralProof/Core/Integrability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Function.L2Space
import SpectralProof.Core.Weight
import SpectralProof.Core.FourierDecay
import Mathlib.Analysis.SpecialFunctions.ExpLog
import Mathlib.MeasureTheory.Integral.Bochner


namespace GRWTSK.Analysis.RealAnalysis.Integration.KtWeighted.Variant202682ca2dc726eb0f8c6bb92fb14fe9daaf54066294bd914f0f4866495bb062

noncomputable section

open Real MeasureTheory ENNReal Complex

namespace SpectralProof.Core

variable {ϕ : ℝ → ℝ} (Φ : ℝ → ℂ) (t : ℝ)

/--
Weighted kernel:
\[
K_t^\varphi(x,y) := k_t(x - y) · e^{ϕ(x)/2} · e^{ϕ(y)/2}
\]
-/
def KtWeighted (kt : ℝ → ℂ) : ℝ × ℝ → ℂ :=
  fun ⟨x, y⟩ ↦ kt (x - y) * Real.exp (ϕ x / 2) * Real.exp (ϕ y / 2)

/--
If Φ has exponential type ≤ π, and ϕ(x) ≥ α|x| with α > π,
then Kₜ^ϕ is integrable on ℝ² under Lebesgue measure.
-/
lemma integrable_KtWeighted
    (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|)
    (hdecay : ∃ C b > 0, ∀ z, ‖fourierInv (φt Φ t) z‖ ≤ C * Real.exp (-b * |z|)) :
    Integrable (KtWeighted ϕ (kt Φ t)) volume := by
  obtain ⟨α, hα, hϕ_lb⟩ := hϕ
  obtain ⟨C, b, hb, hkt⟩ := hdecay

  let K := KtWeighted ϕ (kt Φ t)

  -- Define a majorizing function g(x,y) ∈ L¹(ℝ²)
  let g : ℝ × ℝ → ℝ := fun ⟨x, y⟩ ↦
    C * Real.exp (-b * |x - y|) * Real.exp (ϕ x / 2) * Real.exp (ϕ y / 2)

  have : ∀ x y, ‖K (x, y)‖ ≤ g (x, y) := by
    intro x y
    dsimp [K, KtWeighted]
    apply mul_le_mul
    · exact hkt (x - y)
    · exact le_refl _
    · positivity
    · positivity

  -- g(x, y) is integrable over ℝ² under Lebesgue measure
  have int_g : Integrable g volume := by
    -- Use that ϕ(x) ≥ α|x| ⇒ decay stronger than π
    let δ := (α - π) / 2
    have δ_pos : δ > 0 := by linarith
    let h : ℝ × ℝ → ℝ := fun ⟨x, y⟩ ↦
      Real.exp (-b * |x - y| - δ * |x| - δ * |y|)
    have : Integrable h volume := by
      -- factor: x ↦ e^{-δ|x|}, y ↦ e^{-δ|y|}, x-y ↦ e^{-b|x−y|}
      exact Integrable.mul
        (Integrable.comp measurable_fst (integrable_exp_neg.mul_const δ_pos))
        (Integrable.mul
          (Integrable.comp measurable_snd (integrable_exp_neg.mul_const δ_pos))
          (integrable_exp_neg.mul_const hb))
    apply this.mono
    intro ⟨x, y⟩
    dsimp only [g]
    apply mul_le_mul_of_nonneg_right _ (by positivity)
    apply mul_le_mul_of_nonneg_right _ (by positivity)
    apply le_trans _ (le_refl _)
    gcongr
    all_goals
      specialize hϕ_lb x <;> specialize hϕ_lb y
      linarith

  exact Integrable.mono' int_g (measurable_of_le measurable_const) this

end SpectralProof.Core
