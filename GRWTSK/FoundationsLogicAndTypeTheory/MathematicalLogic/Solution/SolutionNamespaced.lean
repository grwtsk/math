-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Hex.Variantd8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Hex.Variantd8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb","mathematical_subject":"Logic.Foundations","original_sha256":"d8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/tests/projects/theorem_hole_issue/Solution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Hex.Variantd8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb

theorem hex : ∃ x : Nat, x = 0 := ⟨0, rfl⟩

noncomputable def w : Nat := Classical.choose hex

theorem hw : w = 0 := Classical.choose_spec hex
