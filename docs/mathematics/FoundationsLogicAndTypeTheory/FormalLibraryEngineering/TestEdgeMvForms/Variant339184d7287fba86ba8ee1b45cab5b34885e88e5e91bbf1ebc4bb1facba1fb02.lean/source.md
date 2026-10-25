# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestEdgeMvForms.Variant339184d7287fba86ba8ee1b45cab5b34885e88e5e91bbf1ebc4bb1facba1fb02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7dd59412743a3c5aaa93833e5f974755be5f10ef` · SHA-256 `ebf22be0f3ea280dfc29abbd82737105914f3fb8a48bcf1269633c285f37222f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EdgeMinimizeMvAnd.Variant6635ce770dea74e65bd9d91f18ef5c8f7b7fa16eae379707a0a2772d31dac484","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6635ce770dea74e65bd9d91f18ef5c8f7b7fa16eae379707a0a2772d31dac484","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EdgeMinimizeMvAnd.Variant6635ce770dea74e65bd9d91f18ef5c8f7b7fa16eae379707a0a2772d31dac484","mathematical_subject":"Foundations.Unclassified","original_sha256":"6635ce770dea74e65bd9d91f18ef5c8f7b7fa16eae379707a0a2772d31dac484","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_edge_mv_forms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.Discovery


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EdgeMinimizeMvAnd.Variant6635ce770dea74e65bd9d91f18ef5c8f7b7fa16eae379707a0a2772d31dac484

theorem edge_minimize_mv_and :
    ∃ m : ℚ,
      ∀ x : ℝ, (0:ℝ) ≤ x ∧ x ≤ 1 →
      ∀ y : ℝ, (0:ℝ) ≤ y ∧ y ≤ 1 →
      x * x + y * y ≥ m := by
  interval_minimize_mv

theorem edge_minimize_mv_arrow :
    ∃ m : ℚ,
      ∀ x : ℝ, (0:ℝ) ≤ x → x ≤ 1 →
      ∀ y : ℝ, (0:ℝ) ≤ y → y ≤ 1 →
      x * x + y * y ≥ m := by
  interval_minimize_mv

theorem edge_maximize_mv_setof :
    ∃ M : ℚ,
      ∀ x ∈ {x : ℝ | (0:ℝ) ≤ x ∧ x ≤ 1},
      ∀ y ∈ {y : ℝ | (0:ℝ) ≤ y ∧ y ≤ 1},
      x + y ≤ M := by
  interval_maximize_mv
```
