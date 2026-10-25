-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Prestructure.Variant7cc0488b83a82f739920a7d53e0dbaf8a80ce82af96a3f887397ef3b73e0ea13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7cc0488b83a82f739920a7d53e0dbaf8a80ce82af96a3f887397ef3b73e0ea13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.Prestructure.Variant7cc0488b83a82f739920a7d53e0dbaf8a80ce82af96a3f887397ef3b73e0ea13","mathematical_subject":"Logic.ModelTheory","original_sha256":"7cc0488b83a82f739920a7d53e0dbaf8a80ce82af96a3f887397ef3b73e0ea13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/ModelTheory/Quotients.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.Data.Fintype.Quotient
import Mathlib.ModelTheory.Semantics

/-!
# Quotients of First-Order Structures

This file defines prestructures and quotients of first-order structures.

## Main Definitions

- If `s` is a setoid (equivalence relation) on `M`, a `FirstOrder.Language.Prestructure s` is the
  data for a first-order structure on `M` that will still be a structure when modded out by `s`.
- The structure `FirstOrder.Language.quotientStructure s` is the resulting structure on
  `Quotient s`.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Prestructure.Variant7cc0488b83a82f739920a7d53e0dbaf8a80ce82af96a3f887397ef3b73e0ea13

namespace FirstOrder

namespace Language

variable (L : Language) {M : Type*}

open FirstOrder

open Structure

/-- A prestructure is a first-order structure with a `Setoid` equivalence relation on it,
  such that quotienting by that equivalence relation is still a structure. -/
class Prestructure (s : Setoid M) where
  /-- The underlying first-order structure -/
  toStructure : L.Structure M
  fun_equiv : ∀ {n} {f : L.Functions n} (x y : Fin n → M), x ≈ y → funMap f x ≈ funMap f y
  rel_equiv : ∀ {n} {r : L.Relations n} (x y : Fin n → M) (_ : x ≈ y), RelMap r x = RelMap r y

variable {L} {s : Setoid M}
variable [ps : L.Prestructure s]

instance quotientStructure : L.Structure (Quotient s) where
  funMap {n} f x :=
    Quotient.map (@funMap L M ps.toStructure n f) Prestructure.fun_equiv (Quotient.finChoice x)
  RelMap {n} r x :=
    Quotient.lift (@RelMap L M ps.toStructure n r) Prestructure.rel_equiv (Quotient.finChoice x)

variable (s)

theorem funMap_quotient_mk' {n : ℕ} (f : L.Functions n) (x : Fin n → M) :
    (funMap f fun i => (⟦x i⟧ : Quotient s)) = ⟦@funMap _ _ ps.toStructure _ f x⟧ := by
  change
    Quotient.map (@funMap L M ps.toStructure n f) Prestructure.fun_equiv (Quotient.finChoice _) =
      _
  rw [Quotient.finChoice_eq, Quotient.map_mk]

theorem relMap_quotient_mk' {n : ℕ} (r : L.Relations n) (x : Fin n → M) :
    (RelMap r fun i => (⟦x i⟧ : Quotient s)) ↔ @RelMap _ _ ps.toStructure _ r x := by
  change
    Quotient.lift (@RelMap L M ps.toStructure n r) Prestructure.rel_equiv (Quotient.finChoice _) ↔
      _
  rw [Quotient.finChoice_eq, Quotient.lift_mk]

theorem Term.realize_quotient_mk' {β : Type*} (t : L.Term β) (x : β → M) :
    (t.realize fun i => (⟦x i⟧ : Quotient s)) = ⟦@Term.realize _ _ ps.toStructure _ x t⟧ := by
  induction t with
  | var => rfl
  | func _ _ ih => simp only [ih, funMap_quotient_mk', Term.realize]

end Language

end FirstOrder
