# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Cofinal.Variant4f70dc7dc7b3b258d0e587e87caa5d6746064f9073e35cd3166e9d6b028f0c7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46475ea2fbbebd51bfd9cd173f3e99087435c8b6` · SHA-256 `1fb8ad76d6c439ae41a3c8fd1c252162783cc01fd1a2adc5050565b72670fb0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsCofinalOfIsEmpty.Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.IsCofinalOfIsEmpty.Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0","mathematical_subject":"Algebra.OrderTheory","original_sha256":"d8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Cofinal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
module

public import Mathlib.Order.Bounds.Defs
public import Mathlib.Order.GaloisConnection.Defs
public import Mathlib.Order.Hom.Basic
public import Mathlib.Order.Interval.Set.Defs
public import Mathlib.Order.SetNotation
public import Mathlib.Tactic.ToAdditive

import Mathlib.Data.Set.Lattice.Indexed

/-!
# Cofinal sets

A set `s` in an ordered type `α` is cofinal when for every `a : α` there exists an element of `s`
greater or equal to it. This file provides a basic API for the `IsCofinal` predicate.

For the cofinality of a set as a cardinal, see `Mathlib/SetTheory/Cardinal/Cofinality/Basic.lean`.

## TODO

- Deprecate `Order.Cofinal` in favor of this predicate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsCofinalOfIsEmpty.Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0

public section

open Set

variable {α β : Type*}

section LE
variable [LE α]

theorem IsCofinal.of_isEmpty [IsEmpty α] {s : Set α} : IsCofinal s :=
  fun a ↦ isEmptyElim a

theorem isCofinal_empty_iff : IsCofinal (∅ : Set α) ↔ IsEmpty α := by
  refine ⟨fun h ↦ ⟨fun a ↦ ?_⟩, fun h ↦ .of_isEmpty⟩
  simpa using h a

theorem IsCofinal.nonempty [Nonempty α] {s : Set α} (hs : IsCofinal s) : s.Nonempty := by
  inhabit α
  exact (hs default).imp fun _ ↦ And.left

@[simp]
theorem isCofinal_singleton_iff {x : α} : IsCofinal {x} ↔ IsTop x := by
  simp [IsCofinal, IsTop]

theorem IsCofinal.singleton_top [OrderTop α] : IsCofinal {(⊤ : α)} := by
  simp

theorem IsCofinal.mono {s t : Set α} (h : s ⊆ t) (hs : IsCofinal s) : IsCofinal t := by
  intro a
  obtain ⟨b, hb, hb'⟩ := hs a
  exact ⟨b, h hb, hb'⟩

end LE

section Preorder
variable [Preorder α] [Preorder β]

@[simp]
theorem IsCofinal.univ : IsCofinal (@univ α) :=
  fun a ↦ ⟨a, ⟨⟩, le_rfl⟩

instance : Inhabited {s : Set α // IsCofinal s} :=
  ⟨_, .univ⟩

theorem IsCofinal.image {f : α → β} {s : Set α} (hs : IsCofinal s)
    (hf : Monotone f) (hf' : IsCofinal (.range f)) : IsCofinal (f '' s) := by
  intro a
  obtain ⟨_, ⟨b, rfl⟩, hb⟩ := hf' a
  obtain ⟨c, hc, hc'⟩ := hs b
  exact ⟨_, mem_image_of_mem f hc, hb.trans (hf hc')⟩

/-- A cofinal subset of a cofinal subset is cofinal. -/
theorem IsCofinal.trans {s : Set α} {t : Set s} (hs : IsCofinal s) (ht : IsCofinal t) :
    IsCofinal (Subtype.val '' t) :=
  ht.image (Subtype.mono_coe _) (by simpa)

theorem GaloisConnection.isCofinal_range {f : β → α} {g : α → β} (h : GaloisConnection f g) :
    IsCofinal (range g) :=
  fun a ↦ ⟨_, mem_range_self _, le_u_l h a⟩

theorem GaloisConnection.map_isCofinal {f : β → α} {g : α → β}
    (h : GaloisConnection f g) {s : Set α} (hs : IsCofinal s) : IsCofinal (g '' s) :=
  hs.image h.monotone_u h.isCofinal_range

@[deprecated (since := "2026-03-15")]
alias GaloisConnection.map_cofinal := GaloisConnection.map_isCofinal

theorem OrderIso.map_isCofinal (e : α ≃o β) {s : Set α} (hs : IsCofinal s) : IsCofinal (e '' s) :=
  e.symm.to_galoisConnection.map_isCofinal hs

@[simp]
theorem OrderIso.map_isCofinal_iff (e : α ≃o β) {s : Set α} : IsCofinal (e '' s) ↔ IsCofinal s :=
  ⟨fun hs ↦ by simpa using e.symm.map_isCofinal hs, e.map_isCofinal⟩

@[deprecated (since := "2026-03-15")]
alias OrderIso.map_cofinal := OrderIso.map_isCofinal

theorem isCofinal_iff_iUnion_Iic_eq_univ {s : Set α} :
    IsCofinal s ↔ ⋃ i ∈ s, Iic i = univ := by
  simp [IsCofinal, eq_univ_iff_forall]

theorem isCofinal_iff_iUnion_Iio_eq_univ [NoMaxOrder α] {s : Set α} :
    IsCofinal s ↔ ⋃ i ∈ s, Iio i = univ where
  mpr hs := by
    rw [isCofinal_iff_iUnion_Iic_eq_univ, ← univ_subset_iff, ← hs]
    gcongr
    exact Iio_subset_Iic_self
  mp hs := by
    simp_rw [eq_univ_iff_forall, mem_iUnion, exists_prop]
    intro x
    obtain ⟨y, hy⟩ := exists_gt x
    obtain ⟨z, hz, hz'⟩ := hs y
    exact ⟨z, hz, hy.trans_le hz'⟩

end Preorder

section PartialOrder
variable [PartialOrder α]

theorem IsCofinal.mem_of_isMax {s : Set α} {a : α} (ha : IsMax a) (hs : IsCofinal s) : a ∈ s := by
  obtain ⟨b, hb, hb'⟩ := hs a
  rwa [ha.eq_of_ge hb'] at hb

theorem IsCofinal.top_mem [OrderTop α] {s : Set α} (hs : IsCofinal s) : ⊤ ∈ s :=
  hs.mem_of_isMax isMax_top

@[simp]
theorem isCofinal_iff_top_mem [OrderTop α] {s : Set α} : IsCofinal s ↔ ⊤ ∈ s :=
  ⟨IsCofinal.top_mem, fun hs _ ↦ ⟨⊤, hs, le_top⟩⟩

end PartialOrder

section LinearOrder
variable [LinearOrder α]

theorem not_isCofinal_iff {s : Set α} : ¬ IsCofinal s ↔ ∃ x, ∀ y ∈ s, y < x := by
  simp [IsCofinal]

theorem BddAbove.of_not_isCofinal {s : Set α} (h : ¬ IsCofinal s) : BddAbove s := by
  rw [not_isCofinal_iff] at h
  obtain ⟨x, h⟩ := h
  exact ⟨x, fun y hy ↦ (h y hy).le⟩

theorem IsCofinal.of_not_bddAbove {s : Set α} (h : ¬ BddAbove s) : IsCofinal s := by
  contrapose h
  exact .of_not_isCofinal h

/-- In a linear order with no maximum, cofinal sets are the same as unbounded sets. -/
theorem not_isCofinal_iff_bddAbove [NoMaxOrder α] {s : Set α} : ¬ IsCofinal s ↔ BddAbove s := by
  use .of_not_isCofinal
  rw [not_isCofinal_iff]
  rintro ⟨x, h⟩
  obtain ⟨z, hz⟩ := exists_gt x
  exact ⟨z, fun y hy ↦ (h hy).trans_lt hz⟩

/-- In a linear order with no maximum, cofinal sets are the same as unbounded sets. -/
theorem not_bddAbove_iff_isCofinal [NoMaxOrder α] {s : Set α} : ¬ BddAbove s ↔ IsCofinal s :=
  not_iff_comm.1 not_isCofinal_iff_bddAbove

/-- The set of "records" (the smallest inputs yielding the highest values) with respect to a
well-ordering of `α` is a cofinal set. -/
theorem isCofinal_setOfPred_imp_lt (r : α → α → Prop) [h : WellFounded r] :
    IsCofinal { a | ∀ b, r b a → b < a } := by
  intro a
  obtain ⟨b, hb, hb'⟩ := h.has_min (Set.Ici a) Set.nonempty_Ici
  refine ⟨b, fun c hc ↦ ?_, hb⟩
  by_contra! hc'
  exact hb' c (hb.trans hc') hc

@[deprecated (since := "2026-07-09")] alias isCofinal_setOf_imp_lt := isCofinal_setOfPred_imp_lt

theorem isCofinal_range_of_strictMono [WellFoundedLT α] {f : α → α} (hf : StrictMono f) :
    IsCofinal (range f) :=
  fun x ↦ ⟨_, ⟨x, rfl⟩, hf.le_apply⟩

end LinearOrder
```
