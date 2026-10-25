# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestStressSubdiv.Variant99c8fe24950f3001f8200d27ae60ebadcb929f1a95cdf0b489f531684e0c672f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d42ba9d694d3206c18d392fd85833cff316a83f7` · SHA-256 `11b114195d19236a9253a9f9ba11d013203c9bf2d4503c58ee09dc727a3fc1b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalAuto.Variant29ae8bc76bac13c71c7c429e28c6bee7016bcd57cdc8a07b5cbb9fee69771fc9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29ae8bc76bac13c71c7c429e28c6bee7016bcd57cdc8a07b5cbb9fee69771fc9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IntervalAuto.Variant29ae8bc76bac13c71c7c429e28c6bee7016bcd57cdc8a07b5cbb9fee69771fc9","mathematical_subject":"Foundations.Unclassified","original_sha256":"29ae8bc76bac13c71c7c429e28c6bee7016bcd57cdc8a07b5cbb9fee69771fc9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_stress_subdiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.IntervalAuto


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalAuto.Variant29ae8bc76bac13c71c7c429e28c6bee7016bcd57cdc8a07b5cbb9fee69771fc9

open Set

-- Subdivision-heavy stress tests.
example : ∀ x ∈ Icc (0 : ℝ) 1, Real.sin x ≤ 1 := by
  interval_bound_subdiv 20 4

example : ∀ x ∈ Icc (0 : ℝ) 1, Real.exp x ≤ 3 := by
  interval_bound_subdiv 20 4

example : ∀ x ∈ Icc (-1 : ℝ) 1, (-1 : ℝ) ≤ Real.cos x := by
  interval_bound_subdiv 20 4

example : ∀ x ∈ Icc (0 : ℝ) 1, Real.exp (x - x ^ 2) ≤ 3 := by
  interval_bound_subdiv 20 4
```
