# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CauchyIntegral.Variant0ab3baa08545b26a3660a0c4eeef4f42081c3cf34dba695569442337585a7d18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07d665f20a15490fd0d8bc19d8f593c077cd4a27` · SHA-256 `11b0ccc160fce2eb13a71656bb37867c3401cc4eb3cd29246f61c7ed95dd960b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootDifferentiableAnalyticOnNhd.Variant7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.RootDifferentiableAnalyticOnNhd.Variant7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111","mathematical_subject":"Analysis.Calculus","original_sha256":"7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/Analysis/Complex/CauchyIntegral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Mathlib.Analysis.Complex.CauchyIntegral

/-!
# Entire functions from global differentiability

This file records a small bridge from complex differentiability on the plane to
`AnalyticOnNhd` on `Set.univ`.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootDifferentiableAnalyticOnNhd.Variant7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111

@[expose] public section

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]

/-- A complex differentiable function is analytic on the entire plane. -/
protected theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootDifferentiableAnalyticOnNhd.Variant7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111.Differentiable.analyticOnNhd {f : ℂ → E} (hf : Differentiable ℂ f) :
    AnalyticOnNhd ℂ f Set.univ :=
  fun _ _ => hf.analyticAt _
```
