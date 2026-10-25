# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Pigeonhole.Variant963fef664f75e45c19ff4be98c4b3eb1c90df5d9a0e43ceaf0f7fffbdb0275e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceae946e9ffaea17884f4379cbfad6a3f028a091` · SHA-256 `75674bde48b7d782240460bc32c2f1e36a042a2f47d77b89048b9ed19d176c04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.InfinitePigeonhole.Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.InfinitePigeonhole.Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4","mathematical_subject":"Logic.SetTheory","original_sha256":"cb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/SetTheory/Cardinal/Pigeonhole.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Floris van Doorn
-/
import Mathlib.Data.Set.Finite.Lattice
import Mathlib.SetTheory.Cardinal.Regular

/-!
# Infinite pigeonhole principle

This file proves variants of the infinite pigeonhole principle.

## TODO

Generalize universes of results.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.InfinitePigeonhole.Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4

open Order Ordinal Set

universe u

namespace Cardinal

/-- The infinite pigeonhole principle -/
theorem infinite_pigeonhole {β α : Type u} (f : β → α) (h₁ : ℵ₀ ≤ #β) (h₂ : #α < (#β).ord.cof) :
    ∃ a : α, #(f ⁻¹' {a}) = #β := by
  have : ∃ a, #β ≤ #(f ⁻¹' {a}) := by
    by_contra! h
    apply mk_univ.not_lt
    rw [← preimage_univ, ← iUnion_of_singleton, preimage_iUnion]
    exact
      mk_iUnion_le_sum_mk.trans_lt
        ((sum_le_iSup _).trans_lt <| mul_lt_of_lt h₁ (h₂.trans_le <| cof_ord_le _) (iSup_lt h₂ h))
  obtain ⟨x, h⟩ := this
  refine ⟨x, h.antisymm' ?_⟩
  rw [le_mk_iff_exists_set]
  exact ⟨_, rfl⟩

/-- Pigeonhole principle for a cardinality below the cardinality of the domain -/
theorem infinite_pigeonhole_card {β α : Type u} (f : β → α) (θ : Cardinal) (hθ : θ ≤ #β)
    (h₁ : ℵ₀ ≤ θ) (h₂ : #α < θ.ord.cof) : ∃ a : α, θ ≤ #(f ⁻¹' {a}) := by
  rcases le_mk_iff_exists_set.1 hθ with ⟨s, rfl⟩
  obtain ⟨a, ha⟩ := infinite_pigeonhole (f ∘ Subtype.val : s → α) h₁ h₂
  use a; rw [← ha, @preimage_comp _ _ _ Subtype.val f]
  exact mk_preimage_of_injective _ _ Subtype.val_injective

theorem infinite_pigeonhole_set {β α : Type u} {s : Set β} (f : s → α) (θ : Cardinal)
    (hθ : θ ≤ #s) (h₁ : ℵ₀ ≤ θ) (h₂ : #α < θ.ord.cof) :
    ∃ (a : α) (t : Set β) (h : t ⊆ s), θ ≤ #t ∧ ∀ ⦃x⦄ (hx : x ∈ t), f ⟨x, h hx⟩ = a := by
  obtain ⟨a, ha⟩ := infinite_pigeonhole_card f θ hθ h₁ h₂
  refine ⟨a, { x | ∃ h, f ⟨x, h⟩ = a }, ?_, ?_, ?_⟩
  · rintro x ⟨hx, _⟩
    exact hx
  · refine
      ha.trans
        (ge_of_eq <|
          Quotient.sound ⟨Equiv.trans ?_ (Equiv.subtypeSubtypeEquivSubtypeExists _ _).symm⟩)
    simp only [coe_eq_subtype, mem_singleton_iff, mem_preimage, mem_setOf_eq]
    rfl
  rintro x ⟨_, hx'⟩; exact hx'

/-- A function whose codomain's cardinality is infinite but strictly smaller than its domain's
has a fiber with cardinality strictly great than the codomain. -/
theorem infinite_pigeonhole_card_lt {β α : Type u} (f : β → α) (w : #α < #β) (w' : ℵ₀ ≤ #α) :
    ∃ a : α, #α < #(f ⁻¹' {a}) := by
  simp_rw [← succ_le_iff]
  exact infinite_pigeonhole_card f (succ #α) (succ_le_of_lt w) (w'.trans (lt_succ _).le)
    ((lt_succ _).trans_le (isRegular_succ w').2.ge)

/-- A function whose codomain's cardinality is infinite but strictly smaller than its domain's
has an infinite fiber. -/
theorem exists_infinite_fiber {β α : Type u} (f : β → α) (w : #α < #β) (w' : Infinite α) :
    ∃ a : α, Infinite (f ⁻¹' {a}) := by
  simp_rw [Cardinal.infinite_iff] at w' ⊢
  obtain ⟨a, ha⟩ := infinite_pigeonhole_card_lt f w w'
  exact ⟨a, w'.trans ha.le⟩

/-- If an infinite type `β` can be expressed as a union of finite sets,
then the cardinality of the collection of those finite sets
must be at least the cardinality of `β`. -/
-- TODO: write `Set.univ` instead of `⊤` and rename the theorem accordingly.
theorem le_range_of_union_finset_eq_top {α β : Type*} [Infinite β] (f : α → Finset β)
    (w : ⋃ a, (f a : Set β) = ⊤) : #β ≤ #(range f) := by
  have k : _root_.Infinite (range f) := by
    rw [infinite_coe_iff]
    apply mt (union_finset_finite_of_range_finite f)
    rw [w]
    exact infinite_univ
  by_contra h
  simp only [not_le] at h
  let u : ∀ b, ∃ a, b ∈ f a := fun b => by simpa using (w.ge :) (Set.mem_univ b)
  let u' : β → range f := fun b => ⟨f (u b).choose, by simp⟩
  have v' : ∀ a, u' ⁻¹' {⟨f a, by simp⟩} ≤ f a := by
    rintro a p m
    simp? [u']  at m says simp only [mem_preimage, mem_singleton_iff, Subtype.mk.injEq, u'] at m
    rw [← m]
    apply fun b => (u b).choose_spec
  obtain ⟨⟨-, ⟨a, rfl⟩⟩, p⟩ := exists_infinite_fiber u' h k
  exact (@Infinite.of_injective _ _ p (inclusion (v' a)) (inclusion_injective _)).false

end Cardinal
```
