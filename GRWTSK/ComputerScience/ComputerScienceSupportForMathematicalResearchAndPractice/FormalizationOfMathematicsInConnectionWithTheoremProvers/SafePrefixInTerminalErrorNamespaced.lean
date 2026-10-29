-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant3f599a4d738e2ab2b1756048cef592a308f2b0f01ede07172969876ea88a3d90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f599a4d738e2ab2b1756048cef592a308f2b0f01ede07172969876ea88a3d90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variant3f599a4d738e2ab2b1756048cef592a308f2b0f01ede07172969876ea88a3d90","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3f599a4d738e2ab2b1756048cef592a308f2b0f01ede07172969876ea88a3d90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/SafePrefixInTerminalError.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variant3f599a4d738e2ab2b1756048cef592a308f2b0f01ede07172969876ea88a3d90

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
Initial goal:
  ⊢ ∀ (a b : Nat), a + b = b + 2 * a
Remaining goals after safe rules:
  a b : Nat
  ⊢ a + b = b + 2 * a
-/
#guard_msgs in
example : ∀ (a b : Nat), a + b = b + 2 * a := by
  aesop (config := { terminal := true })
