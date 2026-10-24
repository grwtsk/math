# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Boundary.Varianta76b5789cf6f8b7706ba28bc4814333f246ef4d1ce79054e7a3b68138426e68e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb20144e461015edc5134ae22ac7ca865ea945d4` · SHA-256 `638b18e1be3031f6d9339203bd0afff24decfaced12f92c0df6f3431e027b663`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Boundary.Variantf04e924af2b51a7e4d79c7816b238ef16b27d6a4e8b94612bb0c177854d763d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f04e924af2b51a7e4d79c7816b238ef16b27d6a4e8b94612bb0c177854d763d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Boundary.Variantf04e924af2b51a7e4d79c7816b238ef16b27d6a4e8b94612bb0c177854d763d9","mathematical_subject":"Algebra.OrderTheory","original_sha256":"f04e924af2b51a7e4d79c7816b238ef16b27d6a4e8b94612bb0c177854d763d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Heyting/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.BooleanAlgebra


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Boundary.Variantf04e924af2b51a7e4d79c7816b238ef16b27d6a4e8b94612bb0c177854d763d9

#align_import order.heyting.boundary from "leanprover-community/mathlib"@"70d50ecfd4900dd6d328da39ab7ebd516abe4025"

/-!
# Co-Heyting boundary

The boundary of an element of a co-Heyting algebra is the intersection of its Heyting negation with
itself. The boundary in the co-Heyting algebra of closed sets coincides with the topological
boundary.

## Main declarations

* `Coheyting.boundary`: Co-Heyting boundary. `Coheyting.boundary a = a ⊓ ￢a`

## Notation

`∂ a` is notation for `Coheyting.boundary a` in locale `Heyting`.
-/


variable {α : Type*}

namespace Coheyting

variable [CoheytingAlgebra α] {a b : α}

/-- The boundary of an element of a co-Heyting algebra is the intersection of its Heyting negation
with itself. Note that this is always `⊥` for a boolean algebra. -/
def boundary (a : α) : α :=
  a ⊓ ￢a
#align coheyting.boundary Coheyting.boundary

/-- The boundary of an element of a co-Heyting algebra. -/
scoped[Heyting] prefix:120 "∂ " => Coheyting.boundary
-- Porting note: Should the notation be automatically included in the current scope?
open Heyting

-- Porting note: Should hnot be named hNot?
theorem inf_hnot_self (a : α) : a ⊓ ￢a = ∂ a :=
  rfl
#align coheyting.inf_hnot_self Coheyting.inf_hnot_self

theorem boundary_le : ∂ a ≤ a :=
  inf_le_left
#align coheyting.boundary_le Coheyting.boundary_le

theorem boundary_le_hnot : ∂ a ≤ ￢a :=
  inf_le_right
#align coheyting.boundary_le_hnot Coheyting.boundary_le_hnot

@[simp]
theorem boundary_bot : ∂ (⊥ : α) = ⊥ :=
  bot_inf_eq
#align coheyting.boundary_bot Coheyting.boundary_bot

@[simp]
theorem boundary_top : ∂ (⊤ : α) = ⊥ := by rw [boundary, hnot_top, inf_bot_eq]
#align coheyting.boundary_top Coheyting.boundary_top

theorem boundary_hnot_le (a : α) : ∂ (￢a) ≤ ∂ a :=
  inf_comm.trans_le <| inf_le_inf_right _ hnot_hnot_le
#align coheyting.boundary_hnot_le Coheyting.boundary_hnot_le

@[simp]
theorem boundary_hnot_hnot (a : α) : ∂ (￢￢a) = ∂ (￢a) := by
  simp_rw [boundary, hnot_hnot_hnot, inf_comm]
#align coheyting.boundary_hnot_hnot Coheyting.boundary_hnot_hnot

@[simp]
theorem hnot_boundary (a : α) : ￢∂ a = ⊤ := by rw [boundary, hnot_inf_distrib, sup_hnot_self]
#align coheyting.hnot_boundary Coheyting.hnot_boundary

/-- **Leibniz rule** for the co-Heyting boundary. -/
theorem boundary_inf (a b : α) : ∂ (a ⊓ b) = ∂ a ⊓ b ⊔ a ⊓ ∂ b := by
  unfold boundary
  rw [hnot_inf_distrib, inf_sup_left, inf_right_comm, ← inf_assoc]
#align coheyting.boundary_inf Coheyting.boundary_inf

theorem boundary_inf_le : ∂ (a ⊓ b) ≤ ∂ a ⊔ ∂ b :=
  (boundary_inf _ _).trans_le <| sup_le_sup inf_le_left inf_le_right
#align coheyting.boundary_inf_le Coheyting.boundary_inf_le

theorem boundary_sup_le : ∂ (a ⊔ b) ≤ ∂ a ⊔ ∂ b := by
  rw [boundary, inf_sup_right]
  exact
    sup_le_sup (inf_le_inf_left _ <| hnot_anti le_sup_left)
      (inf_le_inf_left _ <| hnot_anti le_sup_right)
#align coheyting.boundary_sup_le Coheyting.boundary_sup_le

/- The intuitionistic version of `Coheyting.boundary_le_boundary_sup_sup_boundary_inf_left`. Either
proof can be obtained from the other using the equivalence of Heyting algebras and intuitionistic
logic and duality between Heyting and co-Heyting algebras. It is crucial that the following proof be
intuitionistic. -/
example (a b : Prop) : (a ∧ b ∨ ¬(a ∧ b)) ∧ ((a ∨ b) ∨ ¬(a ∨ b)) → a ∨ ¬a := by
  rintro ⟨⟨ha, _⟩ | hnab, (ha | hb) | hnab⟩ <;> try exact Or.inl ha
  · exact Or.inr fun ha => hnab ⟨ha, hb⟩
  · exact Or.inr fun ha => hnab <| Or.inl ha

theorem boundary_le_boundary_sup_sup_boundary_inf_left : ∂ a ≤ ∂ (a ⊔ b) ⊔ ∂ (a ⊓ b) := by
  -- Porting note: the following simp generates the same term as mathlib3 if you remove
  -- sup_inf_right from both. With sup_inf_right included, mathlib4 and mathlib3 generate
  -- different terms
  simp only [boundary, sup_inf_left, sup_inf_right, sup_right_idem, le_inf_iff, sup_assoc,
    @sup_comm _ _ _ a]
  refine ⟨⟨⟨?_, ?_⟩, ⟨?_, ?_⟩⟩, ?_, ?_⟩ <;> try { exact le_sup_of_le_left inf_le_left } <;>
    refine inf_le_of_right_le ?_
  · rw [hnot_le_iff_codisjoint_right, codisjoint_left_comm]
    exact codisjoint_hnot_left
  · refine le_sup_of_le_right ?_
    rw [hnot_le_iff_codisjoint_right]
    exact codisjoint_hnot_right.mono_right (hnot_anti inf_le_left)
#align coheyting.boundary_le_boundary_sup_sup_boundary_inf_left Coheyting.boundary_le_boundary_sup_sup_boundary_inf_left

theorem boundary_le_boundary_sup_sup_boundary_inf_right : ∂ b ≤ ∂ (a ⊔ b) ⊔ ∂ (a ⊓ b) := by
  rw [@sup_comm _ _ a, inf_comm]
  exact boundary_le_boundary_sup_sup_boundary_inf_left
#align coheyting.boundary_le_boundary_sup_sup_boundary_inf_right Coheyting.boundary_le_boundary_sup_sup_boundary_inf_right

theorem boundary_sup_sup_boundary_inf (a b : α) : ∂ (a ⊔ b) ⊔ ∂ (a ⊓ b) = ∂ a ⊔ ∂ b :=
  le_antisymm (sup_le boundary_sup_le boundary_inf_le) <|
    sup_le boundary_le_boundary_sup_sup_boundary_inf_left
      boundary_le_boundary_sup_sup_boundary_inf_right
#align coheyting.boundary_sup_sup_boundary_inf Coheyting.boundary_sup_sup_boundary_inf

@[simp]
theorem boundary_idem (a : α) : ∂ ∂ a = ∂ a := by rw [boundary, hnot_boundary, inf_top_eq]
#align coheyting.boundary_idem Coheyting.boundary_idem

theorem hnot_hnot_sup_boundary (a : α) : ￢￢a ⊔ ∂ a = a := by
  rw [boundary, sup_inf_left, hnot_sup_self, inf_top_eq, sup_eq_right]
  exact hnot_hnot_le
#align coheyting.hnot_hnot_sup_boundary Coheyting.hnot_hnot_sup_boundary

theorem hnot_eq_top_iff_exists_boundary : ￢a = ⊤ ↔ ∃ b, ∂ b = a :=
  ⟨fun h => ⟨a, by rw [boundary, h, inf_top_eq]⟩, by
    rintro ⟨b, rfl⟩
    exact hnot_boundary _⟩
#align coheyting.hnot_eq_top_iff_exists_boundary Coheyting.hnot_eq_top_iff_exists_boundary

end Coheyting

open Heyting

section BooleanAlgebra

variable [BooleanAlgebra α]

@[simp]
theorem Coheyting.boundary_eq_bot (a : α) : ∂ a = ⊥ :=
  inf_compl_eq_bot
#align coheyting.boundary_eq_bot Coheyting.boundary_eq_bot

end BooleanAlgebra
```
