# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.GaussianMoments.Variant6ee2baf3a1f42baae71828cc21c222588f28b1c1d937dcfd400eb8e552b34e3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28d132dbb8f8368d2ef9382d5c89e407e72a016b` · SHA-256 `d330d3a4f23876debc2eafd8241184603316851072452ea30187b0aec1272087`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegrableId.Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegrableId.Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76","mathematical_subject":"Analysis.Integration","original_sha256":"686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/GaussianMoments.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Probability.Distributions.Gaussian.Real
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegrableId.Variant686d6ad677ac76945936a45409187e51a298dd7320cfff0c58887307f5f8bc76

open MeasureTheory ProbabilityTheory
open scoped ENNReal NNReal

namespace GaussianCenteredMoments

theorem integrable_id (v : ℝ≥0) :
    Integrable (fun x : ℝ => x) (gaussianReal 0 v) := by
  exact ((memLp_id_gaussianReal' (μ := 0) (v := v) 1 (by norm_num)).integrable
    (by norm_num)).congr (ae_of_all _ (fun x => id_eq x))

theorem integrable_square (v : ℝ≥0) :
    Integrable (fun x : ℝ => x ^ 2) (gaussianReal 0 v) := by
  simpa only [id] using (memLp_id_gaussianReal (μ := 0) (v := v) 2).integrable_sq

theorem integral_id_zero (v : ℝ≥0) :
    (∫ x : ℝ, x ∂gaussianReal 0 v) = 0 := by
  exact integral_id_gaussianReal

theorem integral_square (v : ℝ≥0) :
    (∫ x : ℝ, x ^ 2 ∂gaussianReal 0 v) = (v : ℝ) := by
  have h := variance_fun_id_gaussianReal (μ := 0) (v := v)
  rw [variance_eq_integral measurable_id'.aemeasurable] at h
  simpa using h

theorem integrable_abs (v : ℝ≥0) :
    Integrable (fun x : ℝ => |x|) (gaussianReal 0 v) := by
  exact (integrable_id v).abs

theorem integral_abs_le_sqrt (v : ℝ≥0) :
    (∫ x : ℝ, |x| ∂gaussianReal 0 v) ≤ Real.sqrt (v : ℝ) := by
  have habs : MemLp (fun x : ℝ => |x|) 2 (gaussianReal 0 v) := by
    exact (memLp_id_gaussianReal' (μ := 0) (v := v) 2 (by norm_num)).abs.ae_eq
      (ae_of_all _ (fun x => by simp only [Pi.abs_apply, id_eq]))
  have hnonneg := variance_nonneg (fun x : ℝ => |x|) (gaussianReal 0 v)
  rw [variance_eq_sub habs] at hnonneg
  simp only [Pi.pow_apply, sq_abs] at hnonneg
  rw [integral_square v] at hnonneg
  exact Real.le_sqrt_of_sq_le (by linarith)


end GaussianCenteredMoments
```
