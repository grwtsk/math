-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToArrayMap.Variant783ef4b746ea88ea32aaedef65a03ac0c2d2727a1643a6ce0c9aed5f48284c98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"783ef4b746ea88ea32aaedef65a03ac0c2d2727a1643a6ce0c9aed5f48284c98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ToArrayMap.Variant783ef4b746ea88ea32aaedef65a03ac0c2d2727a1643a6ce0c9aed5f48284c98","mathematical_subject":"Computation.DataStructures","original_sha256":"783ef4b746ea88ea32aaedef65a03ac0c2d2727a1643a6ce0c9aed5f48284c98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/List/ArrayMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
module


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToArrayMap.Variant783ef4b746ea88ea32aaedef65a03ac0c2d2727a1643a6ce0c9aed5f48284c98

@[expose] public section

universe u v w
variable {α : Type u} {β : Type v}

namespace List

/--
This function is provided as a more efficient runtime alternative to `(l.map f).toArray`.
(It avoids the intermediate memory allocation of creating an intermediate list first.)
For verification purposes, we immediately simplify it to that form.
-/
def toArrayMap (l : List α) (f : α → β) : Array β :=
  l.foldl (init := #[]) fun acc x => acc.push (f x)

-- Future: a toArrayMapM version could be useful (e.g. in mathlib's DeriveToExpr)
-- def toArrayMapM {m : Type v → Type w} [Monad m] (l : List α) (f : α → m β) : m (Array β) :=
--   l.foldlM (init := #[]) fun acc x => acc.push (f x)

theorem toArrayMap_toList (l : List α) (f : α → β ) : (l.toArrayMap f).toList = l.map f := by
  suffices ∀ arr : Array β, (l.foldl (init := arr) fun acc x => acc.push (f x)).toList
      = arr.toList ++ l.map f from
    this #[]
  induction l with
  | nil => simp
  | cons head tail tail_ih =>
    intro arr
    have : arr.toList ++ f head :: map f tail = (arr.push (f head)).toList ++ map f tail := by simp
    rw [List.foldl_cons, List.map_cons, this, ← tail_ih]


@[simp, grind =]
theorem toArrayMap_eq_toArray_map (l : List α) (f : α → β) : l.toArrayMap f = (l.map f).toArray :=
  Array.ext' (by simpa using toArrayMap_toList l f)

end List
