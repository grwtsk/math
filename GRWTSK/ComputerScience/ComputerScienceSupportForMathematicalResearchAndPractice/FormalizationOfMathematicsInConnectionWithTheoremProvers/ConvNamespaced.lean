-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variantdcb9aa3ee17b1192a070c624162f05c6ce3acd520cf4f044a2448f5c685f8ecd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcb9aa3ee17b1192a070c624162f05c6ce3acd520cf4f044a2448f5c685f8ecd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Conv.Variantdcb9aa3ee17b1192a070c624162f05c6ce3acd520cf4f044a2448f5c685f8ecd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dcb9aa3ee17b1192a070c624162f05c6ce3acd520cf4f044a2448f5c685f8ecd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/conv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Conv


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variantdcb9aa3ee17b1192a070c624162f05c6ce3acd520cf4f044a2448f5c685f8ecd

/-- Testing nested `conv in ... => ...` -/
example (a b c : Nat) : a + b + c = c + a + b := by
  conv =>
    conv in a + b =>
      rw [Nat.add_comm]
    guard_target = b + a + c = c + a + b
    rw [Nat.add_comm, Nat.add_assoc]
    conv in (occs := 4) _ + _ =>
      guard_target = a + b
      rw [Nat.add_comm]

/-- Testing nested `conv in ... => ...` -/
example (a b : Nat) : (a + b) + (a + b) = (b + a) + (b + a) := by
  conv =>
    lhs
    conv in (occs := *) a + b =>
      rw [Nat.add_comm]
    guard_target = b + a + (b + a)
