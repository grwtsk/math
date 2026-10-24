# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ControllerRhTransportLiteralSnippet.Variant0812273af3c8f0b61ca37b64153ab662462699cc7b150002d69dade3dbdee1e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d214263c347a641eb52a62dac7ca74bebde97bbb` · SHA-256 `475a01ddee59885ce4cfd1eac550903afce4081abcdf0522913f765dff8dff80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUnit.Variant6dbd5cfd02a92ae1851d641e6802884d239fdad8bddb7f22bb87543480769dd8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6dbd5cfd02a92ae1851d641e6802884d239fdad8bddb7f22bb87543480769dd8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceUnit.Variant6dbd5cfd02a92ae1851d641e6802884d239fdad8bddb7f22bb87543480769dd8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6dbd5cfd02a92ae1851d641e6802884d239fdad8bddb7f22bb87543480769dd8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/controller-rh-transport-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUnit.Variant6dbd5cfd02a92ae1851d641e6802884d239fdad8bddb7f22bb87543480769dd8

namespace ControllerRHTransportLiteral
open Filter
open FormalResearch.RiemannHypothesis
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator SourceResolventTruncation
open ControllerRHTransportScratch
noncomputable section
example (α : ℕ → ℝ) (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0))
    (ρ : ℂ) (hρ : NontrivialZetaZero ρ) : ρ.re ≤ 1 / 2 :=
  nontrivial_re_le_half_of_mass_subsequence α hα hmass ρ hρ
example (α : ℕ → ℝ) (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0))
    (ρ : ℂ) (hρ : NontrivialZetaZero ρ) : ρ.re = 1 / 2 :=
  nontrivial_re_eq_half_of_mass_subsequence α hα hmass ρ hρ
example (α : ℕ → ℝ) (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0)) :
    _root_.RiemannHypothesis := conditional_rh_of_mass_subsequence α hα hmass
example (q : ℕ → H)
    (hres : Tendsto (fun j => ‖referenceVector - sourceOperator (q j)‖) atTop (nhds 0)) :
    ∀ (s : ℂ), riemannZeta s = 0 →
      (¬ ∃ n : ℕ, s = -2 * (n + 1)) → s ≠ 1 → s.re = 1 / 2 :=
  conditional_rh_of_full_residual q hres
end
end ControllerRHTransportLiteral
```
