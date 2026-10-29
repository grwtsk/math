-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variant895182bc1863cbcb5abd0a5a9ccc64b971d9170f3dec7ff5aa38157f7eccdd76","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"895182bc1863cbcb5abd0a5a9ccc64b971d9170f3dec7ff5aa38157f7eccdd76","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.T.Variant895182bc1863cbcb5abd0a5a9ccc64b971d9170f3dec7ff5aa38157f7eccdd76","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"895182bc1863cbcb5abd0a5a9ccc64b971d9170f3dec7ff5aa38157f7eccdd76","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/ApplyTransparency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variant895182bc1863cbcb5abd0a5a9ccc64b971d9170f3dec7ff5aa38157f7eccdd76

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def T := True

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : T := by
  aesop (add safe apply True.intro) (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : T := by
  aesop (add safe apply (transparency := default) True.intro)
    (config := { terminal := true })

example : T := by
  aesop (add safe apply (transparency! := default) True.intro)

@[irreducible] def U := T

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : U := by
  aesop (add safe apply True.intro) (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : U := by
  aesop (add safe apply (transparency := default) True.intro)
    (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : U := by
  aesop (add safe apply (transparency! := default) True.intro)
    (config := { terminal := true })

example : U := by
  aesop (add safe apply (transparency! := all) True.intro)
