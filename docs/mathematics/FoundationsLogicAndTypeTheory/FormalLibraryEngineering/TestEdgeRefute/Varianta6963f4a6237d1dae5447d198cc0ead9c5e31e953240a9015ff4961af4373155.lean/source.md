# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestEdgeRefute.Varianta6963f4a6237d1dae5447d198cc0ead9c5e31e953240a9015ff4961af4373155

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b13c75a3959d3710836bfb60453728870f69548` · SHA-256 `9aa73795b09e816739b8856e921becef5ad7ba19afcba789b45c2a8bac307bfd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I01.Varianta4a3713411464d1add2332807d3689224951f10cc9a92b5d85f274ad2ca5118a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4a3713411464d1add2332807d3689224951f10cc9a92b5d85f274ad2ca5118a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.I01.Varianta4a3713411464d1add2332807d3689224951f10cc9a92b5d85f274ad2ca5118a","mathematical_subject":"Foundations.Unclassified","original_sha256":"a4a3713411464d1add2332807d3689224951f10cc9a92b5d85f274ad2ca5118a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_edge_refute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.Refute
import LeanCert.Tactic.IntervalAuto


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I01.Varianta4a3713411464d1add2332807d3689224951f10cc9a92b5d85f274ad2ca5118a

open LeanCert.Core

/-- IntervalRat domain to exercise interval_refute on non-Set.Icc intervals. -/
def I01 : IntervalRat := ⟨0, 1, by norm_num⟩

theorem edge_refute_intervalrat : ∀ x ∈ I01, x * x ≤ (1 : ℚ) := by
  interval_refute
  interval_bound

theorem edge_refute_strict_intervalrat : ∀ x ∈ I01, x * x < (2 : ℚ) := by
  interval_refute
  interval_bound
```
