-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variantd2a05726f2000c18af18065210b624bf543453b65f18daf651135167861b122b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2a05726f2000c18af18065210b624bf543453b65f18daf651135167861b122b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TestSorry.Variantd2a05726f2000c18af18065210b624bf543453b65f18daf651135167861b122b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d2a05726f2000c18af18065210b624bf543453b65f18daf651135167861b122b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/ImplicitUniverses.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.SuccessIfFailWithMsg


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variantd2a05726f2000c18af18065210b624bf543453b65f18daf651135167861b122b

private axiom test_sorry : ∀ {α}, α
noncomputable example (_x _y : Type*) : test_sorry := by
  success_if_fail_with_msg
"type mismatch
  _y
has type
  Type u_2 : Type (u_2 + 1)
but is expected to have type
  Type u_1 : Type (u_1 + 1)" (exact _x = _y)
  exact test_sorry

noncomputable example (_x : Sort*) : test_sorry := by
  success_if_fail_with_msg
"type mismatch
  Prop
has type
  Type : Type 1
but is expected to have type
  Sort u_1 : Type u_1" (exact _x = Prop)
  exact test_sorry

noncomputable example : test_sorry := by
  success_if_fail_with_msg
"type mismatch
  y
has type
  Type u_2 : Type (u_2 + 1)
but is expected to have type
  Type u_1 : Type (u_1 + 1)" (exact ∀ x y : Type*, x = y)
  exact test_sorry

noncomputable example : test_sorry := by
  success_if_fail_with_msg
"type mismatch
  Prop
has type
  Type : Type 1
but is expected to have type
  Sort u_1 : Type u_1" (exact ∀ x : Sort*, x = Prop)
  exact test_sorry
