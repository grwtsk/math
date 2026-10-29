-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModifyLastGoConcat.Variant69d6f306054a414652962021e3963a1b7440aa741f3bf1713537ef38d04dc2d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69d6f306054a414652962021e3963a1b7440aa741f3bf1713537ef38d04dc2d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ModifyLastGoConcat.Variant69d6f306054a414652962021e3963a1b7440aa741f3bf1713537ef38d04dc2d1","mathematical_subject":"Computation.DataStructures","original_sha256":"69d6f306054a414652962021e3963a1b7440aa741f3bf1713537ef38d04dc2d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/ModifyLast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Parikshit Khanna. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Parikshit Khanna, Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Mario Carneiro
-/
module

public import Batteries.Data.List.Basic
public import Mathlib.Init

/-! # `List.modifyLast` -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModifyLastGoConcat.Variant69d6f306054a414652962021e3963a1b7440aa741f3bf1713537ef38d04dc2d1

public section

variable {α : Type*}

namespace List

private theorem modifyLast.go_concat (f : α → α) (a : α) (tl : List α) (r : Array α) :
    modifyLast.go f (tl ++ [a]) r = (r.toListAppend <| modifyLast.go f (tl ++ [a]) #[]) := by
  cases tl with
  | nil =>
    simp only [nil_append, modifyLast.go]; simp
  | cons hd tl =>
    simp only [cons_append]
    rw [modifyLast.go, modifyLast.go]
    case x_3 | x_3 => exact append_ne_nil_of_right_ne_nil tl (cons_ne_nil a [])
    rw [modifyLast.go_concat _ _ tl _, modifyLast.go_concat _ _ tl (Array.push #[] hd)]
    simp only [Array.toListAppend_eq, Array.toList_push, nil_append,
      append_assoc]

theorem modifyLast_concat (f : α → α) (a : α) (l : List α) :
    modifyLast f (l ++ [a]) = l ++ [f a] := by
  cases l with
  | nil =>
    simp only [nil_append, modifyLast, modifyLast.go, Array.toListAppend_eq]
  | cons _ tl =>
    simp only [cons_append, modifyLast]
    rw [modifyLast.go]
    case x_3 => exact append_ne_nil_of_right_ne_nil tl (cons_ne_nil a [])
    rw [modifyLast.go_concat, Array.toListAppend_eq, Array.toList_push, List.toList_toArray,
      nil_append, cons_append, nil_append, cons_inj_right]
    exact modifyLast_concat _ _ tl

theorem modifyLast_append_of_right_ne_nil (f : α → α) (l₁ l₂ : List α) (_ : l₂ ≠ []) :
    modifyLast f (l₁ ++ l₂) = l₁ ++ modifyLast f l₂ := by
  cases l₂ with
  | nil => contradiction
  | cons hd tl =>
    cases tl with
    | nil =>
      simp only [modifyLast, modifyLast.go, Array.toListAppend_eq, nil_append]
      exact modifyLast_concat _ hd _
    | cons hd' tl' =>
      rw [append_cons, ← nil_append (hd :: hd' :: tl'), append_cons [], nil_append,
        modifyLast_append_of_right_ne_nil _ (l₁ ++ [hd]) (hd' :: tl') _,
        modifyLast_append_of_right_ne_nil _ [hd] (hd' :: tl') _,
        append_assoc]
      all_goals { exact cons_ne_nil _ _ }

end List
