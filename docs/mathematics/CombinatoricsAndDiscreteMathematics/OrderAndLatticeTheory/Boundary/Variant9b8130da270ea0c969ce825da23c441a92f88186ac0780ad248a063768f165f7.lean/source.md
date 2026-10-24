# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Boundary.Variant9b8130da270ea0c969ce825da23c441a92f88186ac0780ad248a063768f165f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17840006be3140b705726fbcb96e0d915fe761bf` · SHA-256 `1d3be8d13c242e0b36e7f7111895daefc1d0e50dfd22e6875c46e9c5ce90ee50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Boundary.Variant0d6c843c8a7f6432e556a9b102bacc102d001439a410fc97398aa6f8a45791ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d6c843c8a7f6432e556a9b102bacc102d001439a410fc97398aa6f8a45791ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Boundary.Variant0d6c843c8a7f6432e556a9b102bacc102d001439a410fc97398aa6f8a45791ea","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"0d6c843c8a7f6432e556a9b102bacc102d001439a410fc97398aa6f8a45791ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Heyting/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.BooleanAlgebra
import Mathlib.Tactic.Common

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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Boundary.Variant0d6c843c8a7f6432e556a9b102bacc102d001439a410fc97398aa6f8a45791ea

assert_not_exists RelIso

variable {α : Type*}

namespace Coheyting

variable [CoheytingAlgebra α] {a b : α}

/-- The boundary of an element of a co-Heyting algebra is the intersection of its Heyting negation
with itself. Note that this is always `⊥` for a boolean algebra. -/
def boundary (a : α) : α :=
  a ⊓ ￢a

/-- The boundary of an element of a co-Heyting algebra. -/
scoped[Heyting] prefix:120 "∂ " => Coheyting.boundary

open Heyting

-- TODO: Should hnot be named hNot?
theorem inf_hnot_self (a : α) : a ⊓ ￢a = ∂ a :=
  rfl

theorem boundary_le : ∂ a ≤ a :=
  inf_le_left

theorem boundary_le_hnot : ∂ a ≤ ￢a :=
  inf_le_right

@[simp]
theorem boundary_bot : ∂ (⊥ : α) = ⊥ := bot_inf_eq _

@[simp]
theorem boundary_top : ∂ (⊤ : α) = ⊥ := by rw [boundary, hnot_top, inf_bot_eq]

theorem boundary_hnot_le (a : α) : ∂ (￢a) ≤ ∂ a :=
  (inf_comm _ _).trans_le <| inf_le_inf_right _ hnot_hnot_le

@[simp]
theorem boundary_hnot_hnot (a : α) : ∂ (￢￢a) = ∂ (￢a) := by
  simp_rw [boundary, hnot_hnot_hnot, inf_comm]

@[simp]
theorem hnot_boundary (a : α) : ￢∂ a = ⊤ := by rw [boundary, hnot_inf_distrib, sup_hnot_self]

/-- **Leibniz rule** for the co-Heyting boundary. -/
theorem boundary_inf (a b : α) : ∂ (a ⊓ b) = ∂ a ⊓ b ⊔ a ⊓ ∂ b := by
  unfold boundary
  rw [hnot_inf_distrib, inf_sup_left, inf_right_comm, ← inf_assoc]

theorem boundary_inf_le : ∂ (a ⊓ b) ≤ ∂ a ⊔ ∂ b :=
  (boundary_inf _ _).trans_le <| sup_le_sup inf_le_left inf_le_right

theorem boundary_sup_le : ∂ (a ⊔ b) ≤ ∂ a ⊔ ∂ b := by
  rw [boundary, inf_sup_right]
  exact
    sup_le_sup (inf_le_inf_left _ <| hnot_anti le_sup_left)
      (inf_le_inf_left _ <| hnot_anti le_sup_right)

/- The intuitionistic version of `Coheyting.boundary_le_boundary_sup_sup_boundary_inf_left`. Either
proof can be obtained from the other using the equivalence of Heyting algebras and intuitionistic
logic and duality between Heyting and co-Heyting algebras. It is crucial that the following proof be
intuitionistic. -/
example (a b : Prop) : (a ∧ b ∨ ¬(a ∧ b)) ∧ ((a ∨ b) ∨ ¬(a ∨ b)) → a ∨ ¬a := by
  rintro ⟨⟨ha, _⟩ | hnab, (ha | hb) | hnab⟩ <;> try exact Or.inl ha
  · exact Or.inr fun ha => hnab ⟨ha, hb⟩
  · exact Or.inr fun ha => hnab <| Or.inl ha

theorem boundary_le_boundary_sup_sup_boundary_inf_left : ∂ a ≤ ∂ (a ⊔ b) ⊔ ∂ (a ⊓ b) := by
  simp only [boundary, sup_inf_left, sup_inf_right, sup_right_idem, le_inf_iff, sup_assoc,
    sup_comm _ a]
  refine ⟨⟨⟨?_, ?_⟩, ⟨?_, ?_⟩⟩, ?_, ?_⟩ <;> try { exact le_sup_of_le_left inf_le_left } <;>
    refine inf_le_of_right_le ?_
  · rw [hnot_le_iff_codisjoint_right, codisjoint_left_comm]
    exact codisjoint_hnot_left
  · refine le_sup_of_le_right ?_
    rw [hnot_le_iff_codisjoint_right]
    exact codisjoint_hnot_right.mono_right (hnot_anti inf_le_left)

theorem boundary_le_boundary_sup_sup_boundary_inf_right : ∂ b ≤ ∂ (a ⊔ b) ⊔ ∂ (a ⊓ b) := by
  rw [sup_comm a, inf_comm]
  exact boundary_le_boundary_sup_sup_boundary_inf_left

theorem boundary_sup_sup_boundary_inf (a b : α) : ∂ (a ⊔ b) ⊔ ∂ (a ⊓ b) = ∂ a ⊔ ∂ b :=
  le_antisymm (sup_le boundary_sup_le boundary_inf_le) <|
    sup_le boundary_le_boundary_sup_sup_boundary_inf_left
      boundary_le_boundary_sup_sup_boundary_inf_right

@[simp]
theorem boundary_idem (a : α) : ∂ ∂ a = ∂ a := by rw [boundary, hnot_boundary, inf_top_eq]

theorem hnot_hnot_sup_boundary (a : α) : ￢￢a ⊔ ∂ a = a := by
  rw [boundary, sup_inf_left, hnot_sup_self, inf_top_eq, sup_eq_right]
  exact hnot_hnot_le

theorem hnot_eq_top_iff_exists_boundary : ￢a = ⊤ ↔ ∃ b, ∂ b = a :=
  ⟨fun h => ⟨a, by rw [boundary, h, inf_top_eq]⟩, by
    rintro ⟨b, rfl⟩
    exact hnot_boundary _⟩

end Coheyting

open Heyting

section BooleanAlgebra

variable [BooleanAlgebra α]

@[simp]
theorem Coheyting.boundary_eq_bot (a : α) : ∂ a = ⊥ :=
  inf_compl_eq_bot

end BooleanAlgebra
```
