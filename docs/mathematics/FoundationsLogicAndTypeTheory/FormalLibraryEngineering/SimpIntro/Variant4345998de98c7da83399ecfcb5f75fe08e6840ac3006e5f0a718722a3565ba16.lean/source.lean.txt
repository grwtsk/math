-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpIntro.Variant1df75561f82ffc5e3c727af9958cc8a543b8c1998f44e0c54ddca48fec26ac62","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1df75561f82ffc5e3c727af9958cc8a543b8c1998f44e0c54ddca48fec26ac62","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimpIntro.Variant1df75561f82ffc5e3c727af9958cc8a543b8c1998f44e0c54ddca48fec26ac62","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1df75561f82ffc5e3c727af9958cc8a543b8c1998f44e0c54ddca48fec26ac62","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/simp_intro.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.SimpIntro


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpIntro.Variant1df75561f82ffc5e3c727af9958cc8a543b8c1998f44e0c54ddca48fec26ac62

set_option autoImplicit true

example : x + 0 = y → x = y := by simp_intro h₁
example : x + 0 ≠ y → x ≠ y := by simp_intro h₁ h₂ -- h₂ is bound but not needed
example : x + 0 ≠ y → x ≠ y := by simp_intro h₁ h₂ h₃ -- h₃ is not bound

example (h : x = z) : x + 0 = y → x = z := by simp_intro [h]

example (h : y = z) : x + 0 = y → x = z := by
  simp_intro
  guard_target = x = y → x = z
  simp_intro .. [h]

example (h : y = z) : x + 0 = y → x = z := by simp_intro _; exact h
