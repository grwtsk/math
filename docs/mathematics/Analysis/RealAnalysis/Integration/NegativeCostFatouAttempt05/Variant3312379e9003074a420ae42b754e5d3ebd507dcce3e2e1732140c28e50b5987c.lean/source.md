# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.NegativeCostFatouAttempt05.Variant3312379e9003074a420ae42b754e5d3ebd507dcce3e2e1732140c28e50b5987c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78132621f12303453afeb1d2e87eb88a9840a750` · SHA-256 `e86863caed72b931bad3731f7227a76510ca10b25002d12a1e8c922ea9c3c7ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegrableLimitOfNonnegativeUniformIntegrals.Variantdbddaea1cfbace2646df976e9c25a7d3aa31d7487028ebf23b27a687a1d83000","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dbddaea1cfbace2646df976e9c25a7d3aa31d7487028ebf23b27a687a1d83000","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegrableLimitOfNonnegativeUniformIntegrals.Variantdbddaea1cfbace2646df976e9c25a7d3aa31d7487028ebf23b27a687a1d83000","mathematical_subject":"Analysis.Integration","original_sha256":"dbddaea1cfbace2646df976e9c25a7d3aa31d7487028ebf23b27a687a1d83000","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass23/negative_cost/NegativeCostFatou-attempt05.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.MeasureTheory.Function.L1Space.Integrable
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic

/-! Genuine nonnegative Fatou obstruction for a uniform integral budget.
No actual source limit, arithmetic L1, RH or signed estimate is assumed as an axiom.
Research direction grwtsk contributors; focused scratch construction OpenAI Codex. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegrableLimitOfNonnegativeUniformIntegrals.Variantdbddaea1cfbace2646df976e9c25a7d3aa31d7487028ebf23b27a687a1d83000

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

/-- A positive lower bound on an infinite positive-axis tail excludes genuine L1. -/
theorem not_integrableOn_of_positive_tail {f : ℝ → ℝ} {d R : ℝ}
    (hd : 0 < d) (hR : 0 ≤ R) (hb : ∀ x ∈ Set.Ioi R, d ≤ f x) :
    ¬ IntegrableOn f (Set.Ioi (0 : ℝ)) := by
  intro hi
  have htail := hi.mono_set (Set.Ioi_subset_Ioi hR)
  have hc : Integrable (fun _ : ℝ => d) (volume.restrict (Set.Ioi R)) := by
    apply htail.mono' aestronglyMeasurable_const
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    rw [Real.norm_of_nonneg hd.le]
    exact hb x hx
  have hfinite := (integrable_const_iff_isFiniteMeasure hd.ne').mp hc
  have hm := hfinite.measure_univ_lt_top
  simp [Measure.restrict_apply_univ, Real.volume_Ioi] at hm

end ContinuousResearch.NegativeCostFatou
#print ContinuousResearch.NegativeCostFatou.integrable_limit_of_nonnegative_uniform_integrals
#print axioms ContinuousResearch.NegativeCostFatou.integrable_limit_of_nonnegative_uniform_integrals
#print ContinuousResearch.NegativeCostFatou.no_uniform_nonnegative_integrals_of_nonintegrable_limit
#print axioms ContinuousResearch.NegativeCostFatou.no_uniform_nonnegative_integrals_of_nonintegrable_limit

#print ContinuousResearch.NegativeCostFatou.not_integrableOn_of_positive_tail
#print axioms ContinuousResearch.NegativeCostFatou.not_integrableOn_of_positive_tail
```
