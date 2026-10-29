-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Len.Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Len.Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/RulePatternUniverseBug.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Son Ho, Jannis Limperg
-/

-- A regression test for an issue where universe mvars were not correctly
-- assigned during rule pattern matching. Thanks to Son Ho for reporting this
-- issue.

import Aesop.Frontend.Attribute
import Aesop.Frontend.Saturate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Len.Variant06747ee7fb7e5b15de02455de09bee27d4caa26808c4e5938d2cb230ea2b3d02

set_option aesop.check.all true

namespace List

@[simp]
def len (ls : List α) : Int :=
  match ls with
  | [] => 0
  | _ :: tl => 1 + len tl

@[aesop safe forward (pattern := len ls)]
theorem len_pos : 0 ≤ len (ls : List α) := by
  induction ls <;> simp [*]
  omega

def indexOpt (ls : List α) (i : Int) : Option α :=
  match ls with
  | [] => none
  | hd :: tl => if i = 0 then some hd else indexOpt tl (i - 1)

theorem indexOpt_bounds (ls : List α) (i : Int) :
    ls.indexOpt i = none ↔ i < 0 ∨ ls.len ≤ i := by
  match ls with
  | [] => simp [indexOpt]; omega
  | _ :: tl =>
    have := indexOpt_bounds tl (i - 1)
    if h : i = 0 then
      simp [indexOpt, *]
      saturate
      omega
    else
      simp [indexOpt, len, *]
      constructor <;> intro a <;> cases a
      . left
        saturate
        omega
      . right; omega
      . left; omega
      . right; omega
