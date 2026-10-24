# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingL2NormBridgeProbe.Variant93eef83a4574ad94a7502e8a48b15f896f838d3fdb0b1d44ece6b7f7b4d8eb3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `541550b6f5d24b142634b0e58f3951cbd61f23df` · SHA-256 `ba8ef5f392c39e428c14be0543e8dafdd1a3bedc8ce53e1a1b8a2cc3841013ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LpNormTwoEqSqrtIntegralSq.Variant920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LpNormTwoEqSqrtIntegralSq.Variant920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c","mathematical_subject":"Analysis.Integration","original_sha256":"920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/ZeroSmoothingL2NormBridgeProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Function.LpSeminorm.LpNorm
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic


namespace GRWTSK.Analysis.RealAnalysis.Integration.LpNormTwoEqSqrtIntegralSq.Variant920cc2dfcbfa6e62f9307d9b7ccfa805b56351329f1ee6a4541a89934f57cb5c

open MeasureTheory Filter
open scoped Topology

namespace ZeroSmoothingL2NormBridgeProbe

variable {α : Type*} [MeasurableSpace α] {μ : Measure α}

/-- Explicit membership makes this the genuine finite L² norm. -/
theorem lpNorm_two_eq_sqrt_integral_sq {f : α → ℝ} (hf : MemLp f 2 μ) :
    lpNorm f 2 μ = Real.sqrt (∫ x, f x ^ 2 ∂μ) := by
  rw [lpNorm_eq_integral_norm_rpow_toReal (by norm_num) (by simp)
    hf.aestronglyMeasurable]
  simp only [ENNReal.toReal_ofNat, Real.rpow_two, Real.norm_eq_abs, sq_abs,
    Real.sqrt_eq_rpow, one_div]

/-- Squared-error integrals are convergent before the limiting value is used. -/
theorem lpNorm_two_and_square_integrable {f : α → ℝ} (hf : MemLp f 2 μ) :
    Integrable (fun x ↦ f x ^ 2) μ ∧
      lpNorm f 2 μ = Real.sqrt (∫ x, f x ^ 2 ∂μ) :=
  ⟨hf.integrable_sq, lpNorm_two_eq_sqrt_integral_sq hf⟩

/-- A square-integral limit yields a genuine L² norm limit under actual membership. -/
theorem tendsto_lpNorm_two_of_tendsto_integral_sq {ι : Type*} {l : Filter ι}
    {f : ι → α → ℝ} (hf : ∀ i, MemLp (f i) 2 μ)
    (hlim : Tendsto (fun i ↦ ∫ x, f i x ^ 2 ∂μ) l (𝓝 0)) :
    Tendsto (fun i ↦ lpNorm (f i) 2 μ) l (𝓝 0) := by
  have hs := hlim.sqrt
  simpa only [← lpNorm_two_eq_sqrt_integral_sq (hf _), Real.sqrt_zero] using hs

#print axioms lpNorm_two_eq_sqrt_integral_sq
#print axioms lpNorm_two_and_square_integrable
#print axioms tendsto_lpNorm_two_of_tendsto_integral_sq

end ZeroSmoothingL2NormBridgeProbe
```
