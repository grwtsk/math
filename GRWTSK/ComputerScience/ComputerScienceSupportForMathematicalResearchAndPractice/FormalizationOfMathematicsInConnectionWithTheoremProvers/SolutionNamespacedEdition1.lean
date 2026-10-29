-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.N.Variantbff56308e449aed84cd0b8e19c6df1e6b2f1af82fb44d0579cb168d1097659b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bff56308e449aed84cd0b8e19c6df1e6b2f1af82fb44d0579cb168d1097659b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.N.Variantbff56308e449aed84cd0b8e19c6df1e6b2f1af82fb44d0579cb168d1097659b7","mathematical_subject":"Foundations.Unclassified","original_sha256":"bff56308e449aed84cd0b8e19c6df1e6b2f1af82fb44d0579cb168d1097659b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/tests/projects/def_hole_kind_mismatch/Solution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
-- Solution tries to satisfy the hole with an axiom rather than a def.
-- Should be rejected because the kind does not match.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.N.Variantbff56308e449aed84cd0b8e19c6df1e6b2f1af82fb44d0579cb168d1097659b7

axiom n : Nat

theorem foo : n + 17 = 34 := sorry
