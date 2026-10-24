-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestDSumLe.Variantcbc555d41148bbaec6ccd421cda35c993c9269bd7cae4a2dc9d51eb8fa29a990","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cbc555d41148bbaec6ccd421cda35c993c9269bd7cae4a2dc9d51eb8fa29a990","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TestDSumLe.Variantcbc555d41148bbaec6ccd421cda35c993c9269bd7cae4a2dc9d51eb8fa29a990","mathematical_subject":"Foundations.Unclassified","original_sha256":"cbc555d41148bbaec6ccd421cda35c993c9269bd7cae4a2dc9d51eb8fa29a990","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_multivar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.IntervalAuto

-- Test: x + y ≤ 2 on [0,1] × [0,1]

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestDSumLe.Variantcbc555d41148bbaec6ccd421cda35c993c9269bd7cae4a2dc9d51eb8fa29a990

theorem test_2d_sum_le : ∀ x ∈ Set.Icc (0:ℝ) 1, ∀ y ∈ Set.Icc (0:ℝ) 1, x + y ≤ (2 : ℚ) := by
  multivariate_bound
