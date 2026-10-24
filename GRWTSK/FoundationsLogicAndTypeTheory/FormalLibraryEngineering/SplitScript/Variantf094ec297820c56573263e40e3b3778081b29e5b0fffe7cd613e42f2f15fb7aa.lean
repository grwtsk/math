-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyFalse.Variantdabaff08e0a1ce269d78461739da2ac0dac059180c72213d347ce270ea5e6263","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dabaff08e0a1ce269d78461739da2ac0dac059180c72213d347ce270ea5e6263","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MyFalse.Variantdabaff08e0a1ce269d78461739da2ac0dac059180c72213d347ce270ea5e6263","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dabaff08e0a1ce269d78461739da2ac0dac059180c72213d347ce270ea5e6263","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/SplitScript.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyFalse.Variantdabaff08e0a1ce269d78461739da2ac0dac059180c72213d347ce270ea5e6263

set_option aesop.check.all true

open Classical

inductive MyFalse : Prop

/--
info: Try this:

  [apply]     split
    next h => sorry
    next h => sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example {A B : Prop} : if P then A else B := by
  aesop? (config := { warnOnNonterminal := false })
  all_goals sorry

/--
info: Try this:

  [apply]     split at h
    next h_1 => simp_all only [true_or]
    next h_1 => simp_all only [or_true]
-/
#guard_msgs in
example (h : if P then A else B) : A ∨ B := by
  aesop?

/--
info: Try this:

  [apply]     split at h
    next n => simp_all only [true_or]
    next n => simp_all only [true_or, or_true]
    next n_1 x x_1 => simp_all only [imp_false, or_true]
-/
#guard_msgs in
theorem foo (n : Nat) (h : match n with | 0 => A | 1 => B | _ => C) :
    A ∨ B ∨ C := by
  set_option aesop.check.rules false in -- TODO simp introduces mvar
  set_option aesop.check.tree false in
  aesop?
