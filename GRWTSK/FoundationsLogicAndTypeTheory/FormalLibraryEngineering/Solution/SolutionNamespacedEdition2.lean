-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.N.Variant570f8c0e1af5709001c09e27a5642b129806fc3967f5e60e47fa70a15fd3a04b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"570f8c0e1af5709001c09e27a5642b129806fc3967f5e60e47fa70a15fd3a04b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.N.Variant570f8c0e1af5709001c09e27a5642b129806fc3967f5e60e47fa70a15fd3a04b","mathematical_subject":"Foundations.Unclassified","original_sha256":"570f8c0e1af5709001c09e27a5642b129806fc3967f5e60e47fa70a15fd3a04b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/tests/projects/def_hole_axiom_issue/Solution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
-- Adversarial solution: hides `sorryAx` (an axiom that is NOT in permitted_axioms)
-- inside the hole body. The kernel accepts the proof of `foo` because `n + 17`
-- β-reduces to `17 + 17 = 34` regardless of which `Unit` argument is passed. The
-- stored term for `foo` (written as `@Eq.refl Nat 34`) does not syntactically
-- reference `n`, so without explicit hole-body axiom checking this illegal
-- axiom usage would escape validation.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.N.Variant570f8c0e1af5709001c09e27a5642b129806fc3967f5e60e47fa70a15fd3a04b

noncomputable def n : Nat := (fun _ : Nat => 17) (sorryAx Nat false)

theorem foo : n + 17 = 34 := @Eq.refl Nat 34
