-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EdgeMinimizeAnd.Variant2814da0ad6b3bffb7123ebfd7f968a4f924dd66e90bd8c3f8c8209c71a0bd715","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2814da0ad6b3bffb7123ebfd7f968a4f924dd66e90bd8c3f8c8209c71a0bd715","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EdgeMinimizeAnd.Variant2814da0ad6b3bffb7123ebfd7f968a4f924dd66e90bd8c3f8c8209c71a0bd715","mathematical_subject":"Foundations.Unclassified","original_sha256":"2814da0ad6b3bffb7123ebfd7f968a4f924dd66e90bd8c3f8c8209c71a0bd715","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_edge_discovery_forms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.Discovery


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EdgeMinimizeAnd.Variant2814da0ad6b3bffb7123ebfd7f968a4f924dd66e90bd8c3f8c8209c71a0bd715

theorem edge_minimize_and : ∃ m : ℚ, ∀ x : ℝ, (0:ℝ) ≤ x ∧ x ≤ 1 → x * x ≥ m := by
  interval_minimize

theorem edge_maximize_and : ∃ M : ℚ, ∀ x : ℝ, (0:ℝ) ≤ x ∧ x ≤ 1 → x * x ≤ M := by
  interval_maximize

theorem edge_minimize_arrow : ∃ m : ℚ, ∀ x : ℝ, (0:ℝ) ≤ x → x ≤ 1 → x * x ≥ m := by
  interval_minimize

theorem edge_root_add_neg : ∃ x ∈ Set.Icc (0:ℝ) 2, x * x + -2 = 0 := by
  interval_roots

theorem edge_argmax_identity : ∃ x ∈ Set.Icc (0:ℝ) 1, ∀ y ∈ Set.Icc (0:ℝ) 1, y ≤ x := by
  interval_argmax
