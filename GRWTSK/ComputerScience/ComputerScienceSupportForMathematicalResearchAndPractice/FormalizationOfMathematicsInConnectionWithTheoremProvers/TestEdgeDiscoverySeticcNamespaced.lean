-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Icc01.Variant0b06e00d71a33abd936b70038e81730049114471a24545bf11ef0c7261e8ee09","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b06e00d71a33abd936b70038e81730049114471a24545bf11ef0c7261e8ee09","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Icc01.Variant0b06e00d71a33abd936b70038e81730049114471a24545bf11ef0c7261e8ee09","mathematical_subject":"Foundations.Unclassified","original_sha256":"0b06e00d71a33abd936b70038e81730049114471a24545bf11ef0c7261e8ee09","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_edge_discovery_seticc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.Discovery


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Icc01.Variant0b06e00d71a33abd936b70038e81730049114471a24545bf11ef0c7261e8ee09

def Icc01 : Set ℝ := Set.Icc (0:ℝ) 1

theorem edge_minimize_seticc : ∃ m : ℚ, ∀ x ∈ Icc01, x * x ≥ m := by
  interval_minimize

theorem edge_maximize_seticc : ∃ M : ℚ, ∀ x ∈ Icc01, x * x ≤ M := by
  interval_maximize

theorem edge_root_seticc : ∃ x ∈ Set.Icc (0:ℝ) 2, x * x - 2 = 0 := by
  interval_roots

theorem edge_unique_root_seticc : ∃! x, x ∈ Set.Icc (1:ℝ) 2 ∧ x * x - 2 = 0 := by
  interval_unique_root

theorem edge_argmax_seticc : ∃ x ∈ Icc01, ∀ y ∈ Icc01, (0:ℝ) ≤ (0:ℝ) := by
  interval_argmax
