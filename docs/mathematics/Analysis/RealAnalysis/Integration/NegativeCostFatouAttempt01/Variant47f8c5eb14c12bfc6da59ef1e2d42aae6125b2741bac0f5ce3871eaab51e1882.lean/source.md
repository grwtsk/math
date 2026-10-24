# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.NegativeCostFatouAttempt01.Variant47f8c5eb14c12bfc6da59ef1e2d42aae6125b2741bac0f5ce3871eaab51e1882

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ef2566957f1abad6049406aeddec39b4619b6e1` · SHA-256 `2b3557019e26f873a91244fc0d4f6e8a30d33cdcb6e0baff5a879670bb488249`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegrableLimitOfNonnegativeUniformIntegrals.Variant1cdae9cc8bbac6b5bc59f7ddadc1d8508b2f07d86a29b506bd2a90a474d32bf8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cdae9cc8bbac6b5bc59f7ddadc1d8508b2f07d86a29b506bd2a90a474d32bf8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegrableLimitOfNonnegativeUniformIntegrals.Variant1cdae9cc8bbac6b5bc59f7ddadc1d8508b2f07d86a29b506bd2a90a474d32bf8","mathematical_subject":"Analysis.Integration","original_sha256":"1cdae9cc8bbac6b5bc59f7ddadc1d8508b2f07d86a29b506bd2a90a474d32bf8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass23/negative_cost/NegativeCostFatou-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Function.L1Space.Integrable

/-! Genuine nonnegative Fatou obstruction for a uniform integral budget.
No actual source limit, arithmetic L1, RH or signed estimate is assumed as an axiom.
Research direction grwtsk contributors; focused scratch construction OpenAI Codex. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegrableLimitOfNonnegativeUniformIntegrals.Variant1cdae9cc8bbac6b5bc59f7ddadc1d8508b2f07d86a29b506bd2a90a474d32bf8

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.NegativeCostFatou
open MeasureTheory Filter
open scoped Topology

/-- Uniform integrals of genuine nonnegative L1 functions force their pointwise
AE limit to be genuine L1. No domination or order-of-limit exchange is supplied. -/
theorem integrable_limit_of_nonnegative_uniform_integrals
    {G : ℕ → ℝ → ℝ} {f : ℝ → ℝ} {μ : Measure ℝ} {B : ℝ}
    (hi : ∀ n, Integrable (G n) μ)
    (hn : ∀ n, ∀ᵐ x ∂μ, 0 ≤ G n x)
    (hb : ∀ n, (∫ x, G n x ∂μ) ≤ B)
    (hl : ∀ᵐ x ∂μ, Tendsto (fun n => G n x) atTop (𝓝 (f x))) :
    Integrable f μ := by
  apply integrable_of_tendsto hl (fun n => (hi n).aestronglyMeasurable)
  have hnorm (n : ℕ) : (∫ x, ‖G n x‖ ∂μ) = ∫ x, G n x ∂μ := by
    apply integral_congr_ae
    filter_upwards [hn n] with x hx
    exact Real.norm_of_nonneg hx
  have hbound (n : ℕ) : (∫⁻ x, ‖G n x‖ₑ ∂μ) ≤ ENNReal.ofReal B := by
    rw [← ofReal_integral_norm_eq_lintegral_enorm (hi n), hnorm n]
    exact ENNReal.ofReal_le_ofReal (hb n)
  exact ne_of_lt ((liminf_le_of_frequently_le' (Filter.Frequently.of_forall hbound)).trans_lt
    ENNReal.ofReal_lt_top)

/-- A nonintegrable genuine pointwise limit rules out a uniform nonnegative budget. -/
theorem no_uniform_nonnegative_integrals_of_nonintegrable_limit
    {G : ℕ → ℝ → ℝ} {f : ℝ → ℝ} {μ : Measure ℝ}
    (hi : ∀ n, Integrable (G n) μ)
    (hn : ∀ n, ∀ᵐ x ∂μ, 0 ≤ G n x)
    (hl : ∀ᵐ x ∂μ, Tendsto (fun n => G n x) atTop (𝓝 (f x)))
    (hf : ¬ Integrable f μ) :
    ¬ ∃ B : ℝ, ∀ n, (∫ x, G n x ∂μ) ≤ B := by
  rintro ⟨B,hB⟩
  exact hf (integrable_limit_of_nonnegative_uniform_integrals hi hn hB hl)

end ContinuousResearch.NegativeCostFatou
#print ContinuousResearch.NegativeCostFatou.integrable_limit_of_nonnegative_uniform_integrals
#print axioms ContinuousResearch.NegativeCostFatou.integrable_limit_of_nonnegative_uniform_integrals
#print ContinuousResearch.NegativeCostFatou.no_uniform_nonnegative_integrals_of_nonintegrable_limit
#print axioms ContinuousResearch.NegativeCostFatou.no_uniform_nonnegative_integrals_of_nonintegrable_limit
```
