# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.MobiusPerronLiteralSnippet.Variantba896840b8c889b0b9e69116a7bc175f545d3a4b9afb3ce66fa6f2d0ca95f38a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9409bc45136a2abf436a2e92f8d49eeb59fdf909` · SHA-256 `5b3c59e820f09fa938860151ec805d234c5f95a814a9c0ac84c928ce0e567d66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceUnit.Variant5aa85175753bced710d98950a46be901336bdd94e28ed16050548b33f39c9d5f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5aa85175753bced710d98950a46be901336bdd94e28ed16050548b33f39c9d5f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceUnit.Variant5aa85175753bced710d98950a46be901336bdd94e28ed16050548b33f39c9d5f","mathematical_subject":"Analysis.Integration","original_sha256":"5aa85175753bced710d98950a46be901336bdd94e28ed16050548b33f39c9d5f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-mobius-normalization/mobius-perron-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceUnit.Variant5aa85175753bced710d98950a46be901336bdd94e28ed16050548b33f39c9d5f

namespace MobiusPerronLiteral
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open SmoothedPerronKernel MobiusPoleNumerator MobiusPerronScratch
noncomputable section
example (s : ℂ) (hs : 1 < s.re) :
    LSeries (fun n => (ArithmeticFunction.moebius n : ℂ)) s = 1 / riemannZeta s :=
  mobiusDirichlet_reciprocal s hs
example (c x : ℝ) (n : ℕ) (t : ℝ) :
    perronTerm c x n t = perronIntegrand c x t *
      LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ))
        (1 + (c : ℂ) + (t : ℂ) * Complex.I) n := rfl
example (c x : ℝ) (n : ℕ) (t : ℝ) :
    ‖perronTerm c x n t‖ =
      ‖LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ)) (1 + (c : ℂ)) n‖ *
        ‖perronIntegrand c x t‖ := perronTerm_norm c x n t
example (c x : ℝ) (hc : 0 < c) (hx : 0 < x) (n : ℕ) :
    Integrable (perronTerm c x n) := perronTerm_integrable c x hc hx n
example (c x : ℝ) (hc : 0 < c) :
    Summable (fun n : ℕ => ∫ t : ℝ, ‖perronTerm c x n t‖) :=
  perronTerm_norm_integrals_summable c x hc
example (c x : ℝ) (hc : 0 < c) (t : ℝ) :
    (∑' n : ℕ, perronTerm c x n t) =
      (x : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
        (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
          riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I)) := perronTerm_tsum c x hc t
example (c x : ℝ) (hx : 0 < x) (n : ℕ) (hn : 0 < n) (t : ℝ) :
    perronTerm c x n t = (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) *
      perronIntegrand c (x / (n : ℝ)) t := perronTerm_ratio c x hx n hn t
example (c x : ℝ) (hc : 0 < c) (hx : 0 < x) :
    Integrable (fun t : ℝ => (x : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
      (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
        riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I))) :=
  mobiusPerron_integrable c x hc hx
example (c x : ℝ) (hc : 0 < c) (hx : 0 < x) (n : ℕ) (hn : 0 < n) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronTerm c x n t) =
      if (n : ℝ) < x then
        ((ArithmeticFunction.moebius n : ℂ) / (n : ℂ)) * (Real.log (x / (n : ℝ)) : ℂ)
      else 0 := perronTerm_integral c x hc hx n hn
example (c : ℝ) (hc : 0 < c) (X : ℕ) (hX : 1 ≤ X) :
    (logNormalization X : ℂ) =
      (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ,
        (X : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
          (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 *
            riemannZeta (1 + (c : ℂ) + (t : ℂ) * Complex.I))) :=
  logNormalization_perron c hc X hX
end
end MobiusPerronLiteral
```
