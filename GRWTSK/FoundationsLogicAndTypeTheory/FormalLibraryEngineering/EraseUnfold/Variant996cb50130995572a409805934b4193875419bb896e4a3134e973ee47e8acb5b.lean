-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantbf723cc1a794549542a19a57294b38232cf0b7321817e966d871812b68eba12d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf723cc1a794549542a19a57294b38232cf0b7321817e966d871812b68eba12d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variantbf723cc1a794549542a19a57294b38232cf0b7321817e966d871812b68eba12d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bf723cc1a794549542a19a57294b38232cf0b7321817e966d871812b68eba12d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/EraseUnfold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux, Jannis Limperg
-/

-- Thanks to Jireh Loreaux for reporting this MWE.

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantbf723cc1a794549542a19a57294b38232cf0b7321817e966d871812b68eba12d

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[irreducible]
def foo : Nat := 37

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : foo = 37 := by
  aesop (config := { terminal := true }) (erase Aesop.BuiltinRules.rfl)

example : foo = 37 := by
  unfold foo
  rfl

attribute [aesop norm unfold] foo

example : foo = 37 := by aesop (erase Aesop.BuiltinRules.rfl)

attribute [-aesop] foo

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : foo = 37 := by
  aesop (config := { terminal := true }) (erase Aesop.BuiltinRules.rfl)

example : foo = 37 := by
  unfold foo
  rfl
