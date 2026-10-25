# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestEdgeDecideFast.Variant67ae4e53e8215b614eea91a68bb0935ae92c3037dec07cbbb711b308f864d687

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `562ed52ba74c073de81845c5dde60347a47febb0` · SHA-256 `db573b7295cd9d48e8280382c201ed1c50e442feacd6478ad019b0c52f8085b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EdgeDecideExp.Variant1675160eaf2126e21eee4a8d1a45c06df2fef31fa2e32ef068d881db4034b6cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1675160eaf2126e21eee4a8d1a45c06df2fef31fa2e32ef068d881db4034b6cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EdgeDecideExp.Variant1675160eaf2126e21eee4a8d1a45c06df2fef31fa2e32ef068d881db4034b6cb","mathematical_subject":"Foundations.Unclassified","original_sha256":"1675160eaf2126e21eee4a8d1a45c06df2fef31fa2e32ef068d881db4034b6cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_edge_decide_fast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.IntervalAuto
import LeanCert.Tactic.DyadicAuto


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EdgeDecideExp.Variant1675160eaf2126e21eee4a8d1a45c06df2fef31fa2e32ef068d881db4034b6cb

theorem edge_decide_exp : Real.exp (1:ℝ) ≤ (3 : ℚ) := by
  interval_decide 15

theorem edge_decide_sqrt : Real.sqrt (2:ℝ) ≤ (2 : ℚ) := by
  interval_decide

theorem edge_decide_pi : Real.pi < (4 : ℚ) := by
  interval_decide

theorem edge_decide_sin : Real.sin (1:ℝ) < (1 : ℚ) := by
  interval_decide

theorem edge_fast_bound : ∀ x ∈ Set.Icc (0:ℝ) 1, x * x ≤ (1 : ℚ) := by
  fast_bound

theorem edge_fast_bound_precise : ∀ x ∈ Set.Icc (0:ℝ) 1, Real.sin x ≤ (1 : ℚ) := by
  fast_bound_precise

theorem edge_fast_bound_quick : ∀ x ∈ Set.Icc (0:ℝ) 1, Real.exp x ≤ (3 : ℚ) := by
  fast_bound_quick
```
