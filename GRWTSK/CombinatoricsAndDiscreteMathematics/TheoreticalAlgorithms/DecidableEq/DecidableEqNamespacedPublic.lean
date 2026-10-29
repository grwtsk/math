-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsEqvIffRel.Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IsEqvIffRel.Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5","mathematical_subject":"Computation.DataStructures","original_sha256":"ca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Vector/DecidableEq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Data.Vector.Basic
import Init.Data.Vector.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsEqvIffRel.Variantca59a59371ad955f44d45055cba0eadb51e5799cca02e482ee366b03b23348a5

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Vector

theorem isEqv_iff_rel {xs ys : Vector α n} {r} :
    Vector.isEqv xs ys r ↔ ∀ (i : Nat) (h' : i < n), r xs[i] ys[i] := by
  rcases xs with ⟨xs, rfl⟩
  rcases ys with ⟨ys, h⟩
  simp [Array.isEqv_iff_rel, h]

theorem isEqv_eq_decide (xs ys : Vector α n) (r) :
    Vector.isEqv xs ys r = decide (∀ (i : Nat) (h' : i < n), r xs[i] ys[i]) := by
  rcases xs with ⟨xs, rfl⟩
  rcases ys with ⟨ys, h⟩
  simp -implicitDefEqProofs [Array.isEqv_eq_decide, h]

@[simp] theorem isEqv_toArray [BEq α] (xs ys : Vector α n) : (xs.toArray.isEqv ys.toArray r) = (xs.isEqv ys r) := by
  simp [isEqv_eq_decide, Array.isEqv_eq_decide]

theorem eq_of_isEqv [DecidableEq α] (xs ys : Vector α n) (h : Vector.isEqv xs ys (fun x y => x = y)) : xs = ys := by
  rcases xs with ⟨xs, rfl⟩
  rcases ys with ⟨ys, h⟩
  rw [← Vector.toArray_inj]
  apply Array.eq_of_isEqv
  simp_all

theorem isEqv_self_beq [BEq α] [ReflBEq α] (xs : Vector α n) : Vector.isEqv xs xs (· == ·) = true := by
  rcases xs with ⟨xs, rfl⟩
  simp [Array.isEqv_self_beq]

theorem isEqv_self [DecidableEq α] (xs : Vector α n) : Vector.isEqv xs xs (· = ·) = true := by
  rcases xs with ⟨xs, rfl⟩
  simp [Array.isEqv_self]

theorem beq_eq_decide [BEq α] (xs ys : Vector α n) :
    (xs == ys) = decide (∀ (i : Nat) (h' : i < n), xs[i] == ys[i]) := by
  simp [BEq.beq, isEqv_eq_decide]

instance [BEq α] [ReflBEq α] : ReflBEq (Vector α n) where
  rfl := by simp [BEq.beq, isEqv_self_beq]

instance [BEq α] [LawfulBEq α] : LawfulBEq (Vector α n) where
  eq_of_beq := by
    rintro ⟨xs, rfl⟩ ⟨ys, h⟩ h'
    simpa using h'

end Vector
