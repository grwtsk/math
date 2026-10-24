# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM.Variant911a59a0439e574dbdf4123470dd7e67c6a59c01d4958e6711135c2c8d66b488

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6707df3228626a17b3ce6ef0a9ea12ecbe96cb1c` · SHA-256 `76861220f391023c0fd622bbeeabe285c57f942e09bcb687ff24e5df06cbada1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProfilePoleFactor.Variante32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ProfilePoleFactor.Variante32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/e3/e32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2c--BoundaryLaplaceMoments.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.BoundaryRieszLaplace


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProfilePoleFactor.Variante32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2c

namespace FormalResearch.RiemannHypothesis.BoundaryRieszLaplace
open MeasureTheory Filter Set

noncomputable section

private def profilePoleFactor (s : ℂ) : ℂ :=
  3938220 * (s + 1 / 2) ^ 2 / s ^ 10

private theorem profile_laplace_eventually_factor :
    boundaryProfileLaplace =ᶠ[nhds (1 / 2 : ℂ)]
      (fun s ↦ (s - 1 / 2) ^ 2 * profilePoleFactor s) := by
  have he : ∀ᶠ s : ℂ in nhds (1 / 2), 0 < s.re :=
    Complex.continuous_re.continuousAt.tendsto.eventually
      (eventually_gt_nhds (by norm_num : (0 : ℝ) < (1 / 2 : ℂ).re))
  filter_upwards [he] with s hs
  rw [boundary_profile_laplace_closed_form s hs]
  unfold profilePoleFactor
  ring

theorem first_derivative_test : deriv boundaryProfileLaplace (1 / 2 : ℂ) = 0 := by
  have hf : ContDiffAt ℂ 1 (fun s : ℂ ↦ (s - 1 / 2) ^ 2) (1 / 2) := by fun_prop
  have hg : ContDiffAt ℂ 1 profilePoleFactor (1 / 2) := by
    unfold profilePoleFactor
    fun_prop (disch := norm_num)
  rw [← iteratedDeriv_one, profile_laplace_eventually_factor.iteratedDeriv_eq 1,
    iteratedDeriv_fun_mul hf hg]
  simp only [Finset.sum_range_succ]
  norm_num [iteratedDeriv_pow]

theorem second_derivative_test : iteratedDeriv 2 boundaryProfileLaplace (1 / 2 : ℂ) =
    8065474560 := by
  have hf : ContDiffAt ℂ 2 (fun s : ℂ ↦ (s - 1 / 2) ^ 2) (1 / 2) := by fun_prop
  have hg : ContDiffAt ℂ 2 profilePoleFactor (1 / 2) := by
    unfold profilePoleFactor
    fun_prop (disch := norm_num)
  have hshift : iteratedDeriv 2 (fun s : ℂ ↦ (s - 1 / 2) ^ 2) (1 / 2) = 2 := by
    have h := congrFun (iteratedDeriv_comp_sub_const
      (f := fun w : ℂ ↦ w ^ 2) (s := (1 / 2 : ℂ)) (n := 2)) (1 / 2)
    norm_num [iteratedDeriv_pow, Nat.descFactorial] at h
    exact h
  rw [profile_laplace_eventually_factor.iteratedDeriv_eq 2, iteratedDeriv_fun_mul hf hg]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero]
  norm_num [iteratedDeriv_pow, profilePoleFactor, iteratedDeriv_zero, hshift]

end
end FormalResearch.RiemannHypothesis.BoundaryRieszLaplace
```
