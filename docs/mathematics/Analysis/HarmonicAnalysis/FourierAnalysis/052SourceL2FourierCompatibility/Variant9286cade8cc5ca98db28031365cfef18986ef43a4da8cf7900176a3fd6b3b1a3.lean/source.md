# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.052SourceL2FourierCompatibility.Variant9286cade8cc5ca98db28031365cfef18986ef43a4da8cf7900176a3fd6b3b1a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b89ee31774a9ec757d0b04a97c8b535c56b57d95` · SHA-256 `05ff81c80f45f6ad34757e7d0850d99e228ac7fea4957541bacd8b300663f05c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierCoeAe.Variant6a745b01c538a96afa13ab23b36671a45a2737f39c9ec377b86243cb8cc14aab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a745b01c538a96afa13ab23b36671a45a2737f39c9ec377b86243cb8cc14aab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.FourierCoeAe.Variant6a745b01c538a96afa13ab23b36671a45a2737f39c9ec377b86243cb8cc14aab","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"6a745b01c538a96afa13ab23b36671a45a2737f39c9ec377b86243cb8cc14aab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/latest-private-higher-power-readback/source-copies/052-SourceL2FourierCompatibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Fourier.LpSpace
import Mathlib.Analysis.Distribution.AEEqOfIntegralContDiff
import Mathlib.Tactic

/-!
# Agreement of the concrete L² and integrable Fourier transforms

The actual Mathlib L² Fourier equivalence agrees almost everywhere with the
Bochner Fourier transform of an integrable representative. Compact smooth
testing, the tempered-distribution intertwining theorem and Fubini establish
the agreement without a realization premise.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierCoeAe.Variant6a745b01c538a96afa13ab23b36671a45a2737f39c9ec377b86243cb8cc14aab

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility
open MeasureTheory FourierTransform
open scoped FourierTransform ContDiff ENNReal

/-- The concrete L² Fourier transform agrees with the Bochner transform whenever
its actual representative is integrable. -/
theorem fourier_coe_ae (f : Lp ℂ 2 (volume : Measure ℝ))
    (hf : Integrable (f : ℝ → ℂ)) :
    ((𝓕 f : Lp ℂ 2 (volume : Measure ℝ)) : ℝ → ℂ) =ᵐ[volume]
      𝓕 (f : ℝ → ℂ) := by
  have hc : Continuous (𝓕 (f : ℝ → ℂ)) :=
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ (E := ℝ)).continuous₂ hf
  apply ae_eq_of_integral_contDiff_smul_eq
    ((Lp.memLp (𝓕 f)).locallyIntegrable (by norm_num : (1 : ℝ≥0∞) ≤ 2))
    hc.locallyIntegrable
  intro g hg hs
  have hsC : HasCompactSupport (Complex.ofRealCLM ∘ g) := hs.comp_left rfl
  have hgC : ContDiff ℝ ∞ (Complex.ofRealCLM ∘ g) := by fun_prop
  let ψ : SchwartzMap ℝ ℂ := hsC.toSchwartzMap hgC
  have hdist := congrArg (fun d : TemperedDistribution ℝ ℂ => d ψ)
    (Lp.fourier_toTemperedDistribution_eq f)
  have hswap : (∫ x : ℝ, 𝓕 (f : ℝ → ℂ) x * ψ x) =
      ∫ x : ℝ, f x * 𝓕 (ψ : ℝ → ℂ) x := by
    simpa using! VectorFourier.integral_bilin_fourierIntegral_eq_flip
      (ContinuousLinearMap.mul ℂ ℂ) (L := innerₗ ℝ)
      Real.continuous_fourierChar continuous_inner hf ψ.integrable
  simp only [TemperedDistribution.fourier_apply, Lp.toTemperedDistribution_apply,
    SchwartzMap.fourier_coe, smul_eq_mul] at hdist
  calc
    (∫ x : ℝ, g x • (𝓕 f : Lp ℂ 2 (volume : Measure ℝ)) x) =
        ∫ x : ℝ, ψ x * (𝓕 f : Lp ℂ 2 (volume : Measure ℝ)) x := by
      congr 1
    _ = ∫ x : ℝ, 𝓕 (ψ : ℝ → ℂ) x * f x := hdist.symm
    _ = ∫ x : ℝ, 𝓕 (f : ℝ → ℂ) x * ψ x := by
      simpa only [mul_comm] using hswap.symm
    _ = ∫ x : ℝ, g x • 𝓕 (f : ℝ → ℂ) x := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun x => by simp [ψ, Complex.real_smul, mul_comm])
end FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility
```
