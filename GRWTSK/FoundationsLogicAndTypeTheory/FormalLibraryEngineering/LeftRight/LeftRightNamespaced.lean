-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zero.Varianta8c8a1af204f48a27e4e1c457a6b7f9fb47d9cbbd78830b1a38856465173b9ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8c8a1af204f48a27e4e1c457a6b7f9fb47d9cbbd78830b1a38856465173b9ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Zero.Varianta8c8a1af204f48a27e4e1c457a6b7f9fb47d9cbbd78830b1a38856465173b9ff","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a8c8a1af204f48a27e4e1c457a6b7f9fb47d9cbbd78830b1a38856465173b9ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/left_right.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.LeftRight


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zero.Varianta8c8a1af204f48a27e4e1c457a6b7f9fb47d9cbbd78830b1a38856465173b9ff

def zero : Nat := by
  left

#eval zero -- 0

def two : Nat := by
  right
  exact 1

#eval two -- 2

example : Sum Nat (List Nat) := by
  left
  exact zero

example : Sum Nat (List Nat) := by
  right
  exact [0]

example : (1 = 1) ∨ (2 = 3) := by
  left
  rfl

example : (1 = 2) ∨ (3 = 3) := by
  right
  rfl
