# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Monotone.Variantcf8cfdaf19409e9eb996fa659c2d8fe76749b8e8e118a6e044ea006914a28300

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0dec461c06ef12508966ffe0a67f13aae0ee5e85` · SHA-256 `8607e47dd6850c51c01c9f0a37481cb590b966f5e946dde654fc3c38339a7c82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06","mathematical_subject":"Algebra.OrderTheory","original_sha256":"b9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Set/Monotone.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Andrew Zipperer, Haitao Zhang, Minchao Wu, Yury Kudryashov
-/
module

public import Mathlib.Data.Set.Function

/-!
# Monotone functions over sets
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06

public section

variable {α β : Type*}

open Equiv Equiv.Perm Function

namespace Set


/-! ### Congruence lemmas for monotonicity and antitonicity -/
section Order

variable {s : Set α} {f₁ f₂ : α → β} [Preorder α] [Preorder β]

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.MonotoneOn.congr (h₁ : MonotoneOn f₁ s) (h : s.EqOn f₁ f₂) : MonotoneOn f₂ s := by
  intro a ha b hb hab
  rw [← h ha, ← h hb]
  exact h₁ ha hb hab

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.AntitoneOn.congr (h₁ : AntitoneOn f₁ s) (h : s.EqOn f₁ f₂) : AntitoneOn f₂ s :=
  h₁.dual_right.congr h

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.StrictMonoOn.congr (h₁ : StrictMonoOn f₁ s) (h : s.EqOn f₁ f₂) :
    StrictMonoOn f₂ s := by
  intro a ha b hb hab
  rw [← h ha, ← h hb]
  exact h₁ ha hb hab

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.StrictAntiOn.congr (h₁ : StrictAntiOn f₁ s) (h : s.EqOn f₁ f₂) : StrictAntiOn f₂ s :=
  h₁.dual_right.congr h

theorem EqOn.congr_monotoneOn (h : s.EqOn f₁ f₂) : MonotoneOn f₁ s ↔ MonotoneOn f₂ s :=
  ⟨fun h₁ => h₁.congr h, fun h₂ => h₂.congr h.symm⟩

theorem EqOn.congr_antitoneOn (h : s.EqOn f₁ f₂) : AntitoneOn f₁ s ↔ AntitoneOn f₂ s :=
  ⟨fun h₁ => h₁.congr h, fun h₂ => h₂.congr h.symm⟩

theorem EqOn.congr_strictMonoOn (h : s.EqOn f₁ f₂) : StrictMonoOn f₁ s ↔ StrictMonoOn f₂ s :=
  ⟨fun h₁ => h₁.congr h, fun h₂ => h₂.congr h.symm⟩

theorem EqOn.congr_strictAntiOn (h : s.EqOn f₁ f₂) : StrictAntiOn f₁ s ↔ StrictAntiOn f₂ s :=
  ⟨fun h₁ => h₁.congr h, fun h₂ => h₂.congr h.symm⟩

end Order

/-! ### Monotonicity lemmas -/
section Mono

variable {s s₂ : Set α} {f : α → β} [Preorder α] [Preorder β]

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.MonotoneOn.mono (h : MonotoneOn f s) (h' : s₂ ⊆ s) : MonotoneOn f s₂ :=
  fun _ hx _ hy => h (h' hx) (h' hy)

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.AntitoneOn.mono (h : AntitoneOn f s) (h' : s₂ ⊆ s) : AntitoneOn f s₂ :=
  fun _ hx _ hy => h (h' hx) (h' hy)

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.StrictMonoOn.mono (h : StrictMonoOn f s) (h' : s₂ ⊆ s) : StrictMonoOn f s₂ :=
  fun _ hx _ hy => h (h' hx) (h' hy)

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.StrictAntiOn.mono (h : StrictAntiOn f s) (h' : s₂ ⊆ s) : StrictAntiOn f s₂ :=
  fun _ hx _ hy => h (h' hx) (h' hy)

protected theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.MonotoneOn.monotone (h : MonotoneOn f s) :
    Monotone (f ∘ Subtype.val : s → β) :=
  fun x y hle => h x.coe_prop y.coe_prop hle

protected theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.AntitoneOn.monotone (h : AntitoneOn f s) :
    Antitone (f ∘ Subtype.val : s → β) :=
  fun x y hle => h x.coe_prop y.coe_prop hle

protected theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.StrictMonoOn.strictMono (h : StrictMonoOn f s) :
    StrictMono (f ∘ Subtype.val : s → β) :=
  fun x y hlt => h x.coe_prop y.coe_prop hlt

protected theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb9634a375c050d2eb570ef572f3c37e71a484fb4fd17be86e967e1c067129a06.StrictAntiOn.strictAnti (h : StrictAntiOn f s) :
    StrictAnti (f ∘ Subtype.val : s → β) :=
  fun x y hlt => h x.coe_prop y.coe_prop hlt

lemma monotoneOn_insert_iff {a : α} :
    MonotoneOn f (insert a s) ↔
      (∀ b ∈ s, b ≤ a → f b ≤ f a) ∧ (∀ b ∈ s, a ≤ b → f a ≤ f b) ∧ MonotoneOn f s := by
  simp [MonotoneOn, forall_and]

lemma antitoneOn_insert_iff {a : α} :
    AntitoneOn f (insert a s) ↔
      (∀ b ∈ s, b ≤ a → f a ≤ f b) ∧ (∀ b ∈ s, a ≤ b → f b ≤ f a) ∧ AntitoneOn f s :=
  @monotoneOn_insert_iff α βᵒᵈ _ _ _ _ _

end Mono

end Set



open Function

/-! ### Monotone -/
namespace Monotone

variable [Preorder α] [Preorder β] {f : α → β}

protected theorem domRestrict (h : Monotone f) (s : Set α) : Monotone (s.domRestrict f) :=
  fun _ _ hxy => h hxy

@[deprecated (since := "2026-07-19")] alias restrict := Monotone.domRestrict

protected theorem codRestrict (h : Monotone f) {s : Set β} (hs : ∀ x, f x ∈ s) :
    Monotone (s.codRestrict f hs) :=
  h

protected theorem rangeFactorization (h : Monotone f) : Monotone (Set.rangeFactorization f) :=
  h

end Monotone

section strictMono

variable [Preorder α] [Preorder β] {f : α → β} {s : Set α}

@[simp]
theorem strictMono_domRestrict : StrictMono (s.domRestrict f) ↔ StrictMonoOn f s := by
  simp [Set.domRestrict, StrictMono, StrictMonoOn]

alias ⟨_root_.StrictMono.of_domRestrict, _root_.StrictMonoOn.domRestrict⟩ := strictMono_domRestrict

@[deprecated (since := "2026-07-19")] alias strictMono_restrict := strictMono_domRestrict
@[deprecated (since := "2026-07-19")]
alias _root_.StrictMono.of_restrict := _root_.StrictMono.of_domRestrict
@[deprecated (since := "2026-07-19")]
alias _root_.StrictMonoOn.restrict := _root_.StrictMonoOn.domRestrict

theorem StrictMono.codRestrict (hf : StrictMono f)
    {s : Set β} (hs : ∀ x, f x ∈ s) : StrictMono (Set.codRestrict f s hs) :=
  hf

lemma strictMonoOn_insert_iff {a : α} :
    StrictMonoOn f (insert a s) ↔
       (∀ b ∈ s, b < a → f b < f a) ∧ (∀ b ∈ s, a < b → f a < f b) ∧ StrictMonoOn f s := by
  simp [StrictMonoOn, forall_and]

lemma strictAntiOn_insert_iff {a : α} :
    StrictAntiOn f (insert a s) ↔
       (∀ b ∈ s, b < a → f a < f b) ∧ (∀ b ∈ s, a < b → f b < f a) ∧ StrictAntiOn f s :=
  @strictMonoOn_insert_iff α βᵒᵈ _ _ _ _ _

lemma strictMonoOn_insert_iff_of_forall_le {a : α} (ha : ∀ x ∈ s, x ≤ a) :
    StrictMonoOn f (insert a s) ↔ (∀ b ∈ s, b < a → f b < f a) ∧ StrictMonoOn f s := by
  rw [strictMonoOn_insert_iff]
  have : ∀ b ∈ s, a < b → f a < f b := by
    intro b hb hab
    cases (ha _ hb).not_gt hab
  tauto

lemma strictMonoOn_insert_iff_of_forall_ge {a : α} (ha : ∀ x ∈ s, a ≤ x) :
    StrictMonoOn f (insert a s) ↔ (∀ b ∈ s, a < b → f a < f b) ∧ StrictMonoOn f s := by
  rw [strictMonoOn_insert_iff]
  have : ∀ b ∈ s, b < a → f b < f a := by
    intro b hb hab
    cases (ha _ hb).not_gt hab
  tauto

lemma strictAntiOn_insert_iff_of_forall_le {a : α} (ha : ∀ x ∈ s, x ≤ a) :
    StrictAntiOn f (insert a s) ↔ (∀ b ∈ s, b < a → f a < f b) ∧ StrictAntiOn f s := by
  rw [strictAntiOn_insert_iff]
  have : ∀ b ∈ s, a < b → f b < f a := by
    intro b hb hab
    cases (ha _ hb).not_gt hab
  tauto

lemma strictAntiOn_insert_iff_of_forall_ge {a : α} (ha : ∀ x ∈ s, a ≤ x) :
    StrictAntiOn f (insert a s) ↔ (∀ b ∈ s, a < b → f b < f a) ∧ StrictAntiOn f s := by
  rw [strictAntiOn_insert_iff]
  have : ∀ b ∈ s, b < a → f a < f b := by
    intro b hb hab
    cases (ha _ hb).not_gt hab
  tauto

end strictMono

namespace Function

open Set

theorem monotoneOn_of_rightInvOn_of_mapsTo [PartialOrder α] [LinearOrder β]
    {φ : β → α} {ψ : α → β} {t : Set β} {s : Set α} (hφ : MonotoneOn φ t)
    (φψs : RightInvOn ψ φ s) (ψts : MapsTo ψ s t) : MonotoneOn ψ s := by
  rintro x xs y ys l
  rcases le_total (ψ x) (ψ y) with (ψxy | ψyx)
  · exact ψxy
  · have := hφ (ψts ys) (ψts xs) ψyx
    rw [φψs.eq ys, φψs.eq xs] at this
    induction le_antisymm l this
    exact le_refl _

theorem strictMonoOn_of_rightInvOn_of_mapsTo [Preorder α] [LinearOrder β]
    {φ : β → α} {ψ : α → β} {t : Set β} {s : Set α} (hφ : StrictMonoOn φ t)
    (φψs : RightInvOn ψ φ s) (ψts : MapsTo ψ s t) : StrictMonoOn ψ s := by
  intro x xs y ys l
  rwa [← hφ.lt_iff_lt (ψts xs) (ψts ys), φψs xs, φψs ys]

theorem antitoneOn_of_rightInvOn_of_mapsTo [PartialOrder α] [LinearOrder β]
    {φ : β → α} {ψ : α → β} {t : Set β} {s : Set α} (hφ : AntitoneOn φ t)
    (φψs : RightInvOn ψ φ s) (ψts : MapsTo ψ s t) : AntitoneOn ψ s :=
  (monotoneOn_of_rightInvOn_of_mapsTo hφ.dual_left φψs ψts).dual_right

theorem strictAntiOn_of_rightInvOn_of_mapsTo [Preorder α] [LinearOrder β]
    {φ : β → α} {ψ : α → β} {t : Set β} {s : Set α} (hφ : StrictAntiOn φ t)
    (φψs : RightInvOn ψ φ s) (ψts : MapsTo ψ s t) : StrictAntiOn ψ s :=
  (strictMonoOn_of_rightInvOn_of_mapsTo hφ.dual_left φψs ψts).dual_right

theorem monotone_of_rightInverse [PartialOrder α] [LinearOrder β]
    {φ : β → α} {ψ : α → β} (hφ : Monotone φ)
    (φψ : RightInverse ψ φ) : Monotone ψ :=
  monotoneOn_univ.mp <| monotoneOn_of_rightInvOn_of_mapsTo
    (hφ.monotoneOn _) (φψ.rightInvOn _) (mapsTo_univ ψ _)

theorem strictMono_of_rightInverse [Preorder α] [LinearOrder β]
    {φ : β → α} {ψ : α → β} (hφ : StrictMono φ)
    (φψ : RightInverse ψ φ) : StrictMono ψ :=
  strictMonoOn_univ.mp <| strictMonoOn_of_rightInvOn_of_mapsTo
    (hφ.strictMonoOn _) (φψ.rightInvOn _) (mapsTo_univ ψ _)

theorem antitone_of_rightInverse [PartialOrder α] [LinearOrder β]
    {φ : β → α} {ψ : α → β} (hφ : Antitone φ)
    (φψ : RightInverse ψ φ) : Antitone ψ :=
  (monotone_of_rightInverse hφ.dual_left φψ).dual_right

theorem strictAnti_of_rightInverse [Preorder α] [LinearOrder β]
    {φ : β → α} {ψ : α → β} (hφ : StrictAnti φ)
    (φψ : RightInverse ψ φ) : StrictAnti ψ :=
  (strictMono_of_rightInverse hφ.dual_left φψ).dual_right

end Function
```
