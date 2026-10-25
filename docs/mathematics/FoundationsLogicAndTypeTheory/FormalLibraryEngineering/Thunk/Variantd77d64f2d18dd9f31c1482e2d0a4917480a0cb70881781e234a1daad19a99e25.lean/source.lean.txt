-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prod.Variantc554ae763c6063f4e1e2c15d7246d8168b65f7595370633ae4c4b7fc4f9a3256","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c554ae763c6063f4e1e2c15d7246d8168b65f7595370633ae4c4b7fc4f9a3256","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Prod.Variantc554ae763c6063f4e1e2c15d7246d8168b65f7595370633ae4c4b7fc4f9a3256","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c554ae763c6063f4e1e2c15d7246d8168b65f7595370633ae4c4b7fc4f9a3256","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/Thunk.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Init

/-!
# Basic facts about `Thunk`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prod.Variantc554ae763c6063f4e1e2c15d7246d8168b65f7595370633ae4c4b7fc4f9a3256

namespace Thunk

@[simp] theorem get_pure {α} (x : α) : (Thunk.pure x).get = x := rfl
@[simp] theorem get_mk {α} (f : Unit → α) : (Thunk.mk f).get = f () := rfl

universe u v
variable {α : Type u} {β : Type v}

instance [DecidableEq α] : DecidableEq (Thunk α) := by
  intro a b
  have : a = b ↔ a.get = b.get := ⟨by intro x; rw [x], by intro; ext; assumption⟩
  rw [this]
  infer_instance

/-- The cartesian product of two thunks. -/
def prod (a : Thunk α) (b : Thunk β) : Thunk (α × β) := Thunk.mk fun _ => (a.get, b.get)

@[simp] theorem prod_get_fst {a : Thunk α} {b : Thunk β} : (prod a b).get.1 = a.get := rfl
@[simp] theorem prod_get_snd {a : Thunk α} {b : Thunk β} : (prod a b).get.2 = b.get := rfl

/-- The sum of two thunks. -/
def add [Add α] (a b : Thunk α) : Thunk α := Thunk.mk fun _ => a.get + b.get

instance [Add α] : Add (Thunk α) := ⟨add⟩

@[simp] theorem add_get [Add α] {a b : Thunk α} : (a + b).get = a.get + b.get := rfl

end Thunk
