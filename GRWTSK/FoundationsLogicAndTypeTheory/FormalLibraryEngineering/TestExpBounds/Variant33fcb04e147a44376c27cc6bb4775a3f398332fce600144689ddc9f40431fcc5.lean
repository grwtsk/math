-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanCert.Variant4f7ed227818d4c25e15ddf263dced4654555c4aa26daa11e7f8aae1208eb39b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f7ed227818d4c25e15ddf263dced4654555c4aa26daa11e7f8aae1208eb39b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LeanCert.Variant4f7ed227818d4c25e15ddf263dced4654555c4aa26daa11e7f8aae1208eb39b3","mathematical_subject":"Foundations.Unclassified","original_sha256":"4f7ed227818d4c25e15ddf263dced4654555c4aa26daa11e7f8aae1208eb39b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_exp_bounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert

-- e ≈ 2.718281828...

-- This should work (from earlier)

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanCert.Variant4f7ed227818d4c25e15ddf263dced4654555c4aa26daa11e7f8aae1208eb39b3

example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.718282 := by
  interval_bound

-- Tighter bound
example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.7182819 := by
  interval_bound

-- Even tighter
example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.71828183 := by
  interval_bound

-- Very tight (e ≈ 2.718281828...)
example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.718281829 := by
  interval_bound
