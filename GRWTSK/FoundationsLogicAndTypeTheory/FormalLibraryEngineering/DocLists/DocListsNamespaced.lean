-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyList.Variant1e962a6c01b63a434f57d50852583158dcbe73e43826f38b80b32006ab3a28e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e962a6c01b63a434f57d50852583158dcbe73e43826f38b80b32006ab3a28e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MyList.Variant1e962a6c01b63a434f57d50852583158dcbe73e43826f38b80b32006ab3a28e7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1e962a6c01b63a434f57d50852583158dcbe73e43826f38b80b32006ab3a28e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/DocLists.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

-- NOTE: This file contains examples for, and therefore should be kept in sync
-- with, the README.

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyList.Variant1e962a6c01b63a434f57d50852583158dcbe73e43826f38b80b32006ab3a28e7

set_option aesop.check.all true

inductive MyList (α : Type _)
  | nil
  | cons (hd : α) (tl : MyList α)

namespace MyList

protected def append : (_ _ : MyList α) → MyList α
  | nil, ys => ys
  | cons x xs, ys => cons x (MyList.append xs ys)

instance : Append (MyList α) :=
  ⟨MyList.append⟩

@[simp]
theorem nil_append : nil ++ xs = xs := rfl

@[simp]
theorem cons_append : cons x xs ++ ys = cons x (xs ++ ys) := rfl

@[aesop safe [constructors, cases]]
inductive NonEmpty : MyList α → Prop
  | cons : NonEmpty (cons x xs)

@[aesop 50%]
theorem nonEmpty_append₁ {xs : MyList α} ys :
    NonEmpty xs → NonEmpty (xs ++ ys) := by
  aesop

/--
info: Try this:

  [apply]     intro a
    obtain @⟨x, xs_1⟩ := a
    simp_all only [cons_append]
    apply MyList.NonEmpty.cons
-/
#guard_msgs in
theorem nonEmpty_append₁' {xs : MyList α} ys :
    NonEmpty xs → NonEmpty (xs ++ ys) := by
  aesop?

example {α : Type _} {xs : MyList α} ys zs :
    NonEmpty xs → NonEmpty (xs ++ ys ++ zs) := by
  aesop

theorem nil_not_nonEmpty (xs : MyList α) : xs = nil → ¬ NonEmpty xs := by
  aesop (add unsafe 10% cases MyList)

@[simp]
theorem append_nil {xs : MyList α} :
    xs ++ nil = xs := by
  induction xs <;> aesop

theorem append_assoc {xs ys zs : MyList α} :
    (xs ++ ys) ++ zs = xs ++ (ys ++ zs) := by
  induction xs <;> aesop

end MyList
