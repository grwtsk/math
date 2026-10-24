-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeqFocus.Variant58eb83b1c7de93c1fdb786d506b01cf7a2b26e2df3d97ce0912e123803e2b153","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58eb83b1c7de93c1fdb786d506b01cf7a2b26e2df3d97ce0912e123803e2b153","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SeqFocus.Variant58eb83b1c7de93c1fdb786d506b01cf7a2b26e2df3d97ce0912e123803e2b153","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"58eb83b1c7de93c1fdb786d506b01cf7a2b26e2df3d97ce0912e123803e2b153","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/seq_focus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.SeqFocus


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeqFocus.Variant58eb83b1c7de93c1fdb786d506b01cf7a2b26e2df3d97ce0912e123803e2b153

example : (True ∧ (∃ x : Nat, x = x)) ∧ True := by
  constructor
  constructor
  -- error: too many tactics
  fail_if_success map_tacs [trivial; exact ⟨0, rfl⟩; trivial; trivial]
  -- error: not enough tactics
  fail_if_success map_tacs [trivial; exact ⟨0, rfl⟩]
  map_tacs [trivial; exact ⟨0, rfl⟩; trivial]

example : ((True ∧ True) ∧ (∃ x : Nat, x = x)) ∧ (True ∧ (∃ x : Nat, x = x)) := by
  constructor
  constructor
  map_tacs [(constructor; trivial); exact ⟨0, rfl⟩; constructor]
  trivial
  trivial
  exact ⟨0, rfl⟩

example : (True ∧ (∃ x : Nat, x = x)) ∧ True := by
  constructor
  -- error: not enough tactics
  fail_if_success constructor <;> [trivial]
  map_tacs [constructor <;> [trivial; exact ⟨0, rfl⟩]; constructor]
