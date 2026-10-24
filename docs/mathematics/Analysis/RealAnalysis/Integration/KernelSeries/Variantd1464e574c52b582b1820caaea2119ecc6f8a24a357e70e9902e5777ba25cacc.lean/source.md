# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.KernelSeries.Variantd1464e574c52b582b1820caaea2119ecc6f8a24a357e70e9902e5777ba25cacc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa3e26b22372c5ed7e6cc48a639caddb7d397a26` · SHA-256 `3c5669a10b67ff6939cf77ff5738cedda8beb07b15510e33270dc61ae37c11f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.NonnegativeKernelSeriesIntegrable.Variant485e8f645453f0a6787242de678b38bcf4fcaa40987ceb499321487dc43f6f12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"485e8f645453f0a6787242de678b38bcf4fcaa40987ceb499321487dc43f6f12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.NonnegativeKernelSeriesIntegrable.Variant485e8f645453f0a6787242de678b38bcf4fcaa40987ceb499321487dc43f6f12","mathematical_subject":"Analysis.Integration","original_sha256":"485e8f645453f0a6787242de678b38bcf4fcaa40987ceb499321487dc43f6f12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/kernel-independent-review/overlay/scratch/common_mean_stieltjes_20261004/KernelSeries.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Constructions.Polish.Basic

/-!
Nonnegative count-kernel series: finite integral sums imply genuine Bochner
integrability and permit integral exchange. Pointwise summability is explicit
here and will be discharged by the actual finite occurrence windows.
Originating direction: grwtsk contributors. Lean assistance: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.NonnegativeKernelSeriesIntegrable.Variant485e8f645453f0a6787242de678b38bcf4fcaa40987ceb499321487dc43f6f12

set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open MeasureTheory

theorem nonnegative_kernel_series_integrable {ι : Type*} [Countable ι]
    {F : ι → ℝ → ℝ} {μ : Measure ℝ}
    (hF : ∀ i, Integrable (F i) μ)
    (hn : ∀ i x, 0 ≤ F i x)
    (hs : ∀ x, Summable (fun i => F i x))
    (hi : Summable (fun i => ∫ x, F i x ∂μ)) :
    Integrable (fun x => ∑' i, F i x) μ := by
  refine ⟨?_, ?_⟩
  · exact (AEMeasurable.tsum (fun i => (hF i).aemeasurable)).aestronglyMeasurable
  · rw [hasFiniteIntegral_iff_ofReal
      (Filter.Eventually.of_forall (fun x => tsum_nonneg (fun i => hn i x)))]
    have he : (fun x => ENNReal.ofReal (∑' i, F i x)) =
        (fun x => ∑' i, ENNReal.ofReal (F i x)) := by
      funext x
      exact ENNReal.ofReal_tsum_of_nonneg (fun i => hn i x) (hs x)
    rw [he, lintegral_tsum (fun i => (hF i).aemeasurable.ennreal_ofReal)]
    have hi' : (fun i => ∫⁻ x, ENNReal.ofReal (F i x) ∂μ) =
        (fun i => ENNReal.ofReal (∫ x, F i x ∂μ)) := by
      funext i
      exact (ofReal_integral_eq_lintegral_ofReal (hF i)
        (Filter.Eventually.of_forall (hn i))).symm
    rw [hi']
    exact hi.tsum_ofReal_lt_top

theorem nonnegative_kernel_series_integral {ι : Type*} [Countable ι]
    {F : ι → ℝ → ℝ} {μ : Measure ℝ}
    (hF : ∀ i, Integrable (F i) μ)
    (hn : ∀ i x, 0 ≤ F i x)
    (hi : Summable (fun i => ∫ x, F i x ∂μ)) :
    (∫ x, ∑' i, F i x ∂μ) = ∑' i, ∫ x, F i x ∂μ := by
  apply (integral_tsum_of_summable_integral_norm hF ?_).symm
  have he : (fun i => ∫ x, ‖F i x‖ ∂μ) = (fun i => ∫ x, F i x ∂μ) := by
    funext i
    apply integral_congr_ae
    exact Filter.Eventually.of_forall (fun x => Real.norm_of_nonneg (hn i x))
  rw [he]
  exact hi

end CommonMeanStieltjes
```
