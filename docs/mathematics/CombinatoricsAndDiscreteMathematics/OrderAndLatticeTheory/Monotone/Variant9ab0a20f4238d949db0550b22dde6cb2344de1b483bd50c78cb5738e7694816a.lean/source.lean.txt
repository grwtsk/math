-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2","mathematical_subject":"Algebra.OrderTheory","original_sha256":"b3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/Monotone.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Andrew Zipperer, Haitao Zhang, Minchao Wu, Yury Kudryashov
-/
import Mathlib.Data.Set.Function

/-!
# Monotone functions over sets
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2

variable {α β γ : Type*}

open Equiv Equiv.Perm Function

namespace Set


/-! ### Congruence lemmas for monotonicity and antitonicity -/
section Order

variable {s : Set α} {f₁ f₂ : α → β} [Preorder α] [Preorder β]

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.MonotoneOn.congr (h₁ : MonotoneOn f₁ s) (h : s.EqOn f₁ f₂) : MonotoneOn f₂ s := by
  intro a ha b hb hab
  rw [← h ha, ← h hb]
  exact h₁ ha hb hab

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.AntitoneOn.congr (h₁ : AntitoneOn f₁ s) (h : s.EqOn f₁ f₂) : AntitoneOn f₂ s :=
  h₁.dual_right.congr h

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.StrictMonoOn.congr (h₁ : StrictMonoOn f₁ s) (h : s.EqOn f₁ f₂) :
    StrictMonoOn f₂ s := by
  intro a ha b hb hab
  rw [← h ha, ← h hb]
  exact h₁ ha hb hab

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.StrictAntiOn.congr (h₁ : StrictAntiOn f₁ s) (h : s.EqOn f₁ f₂) : StrictAntiOn f₂ s :=
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

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.MonotoneOn.mono (h : MonotoneOn f s) (h' : s₂ ⊆ s) : MonotoneOn f s₂ :=
  fun _ hx _ hy => h (h' hx) (h' hy)

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.AntitoneOn.mono (h : AntitoneOn f s) (h' : s₂ ⊆ s) : AntitoneOn f s₂ :=
  fun _ hx _ hy => h (h' hx) (h' hy)

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.StrictMonoOn.mono (h : StrictMonoOn f s) (h' : s₂ ⊆ s) : StrictMonoOn f s₂ :=
  fun _ hx _ hy => h (h' hx) (h' hy)

theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.StrictAntiOn.mono (h : StrictAntiOn f s) (h' : s₂ ⊆ s) : StrictAntiOn f s₂ :=
  fun _ hx _ hy => h (h' hx) (h' hy)

protected theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.MonotoneOn.monotone (h : MonotoneOn f s) :
    Monotone (f ∘ Subtype.val : s → β) :=
  fun x y hle => h x.coe_prop y.coe_prop hle

protected theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.AntitoneOn.monotone (h : AntitoneOn f s) :
    Antitone (f ∘ Subtype.val : s → β) :=
  fun x y hle => h x.coe_prop y.coe_prop hle

protected theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.StrictMonoOn.strictMono (h : StrictMonoOn f s) :
    StrictMono (f ∘ Subtype.val : s → β) :=
  fun x y hlt => h x.coe_prop y.coe_prop hlt

protected theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RootMonotoneOnCongr.Variantb3c5b89253ed7483221f8bfce86545808f50047ce437c26934271200ab2729a2.StrictAntiOn.strictAnti (h : StrictAntiOn f s) :
    StrictAnti (f ∘ Subtype.val : s → β) :=
  fun x y hlt => h x.coe_prop y.coe_prop hlt

lemma MonotoneOn_insert_iff {a : α} :
    MonotoneOn f (insert a s) ↔
      (∀ b ∈ s, b ≤ a → f b ≤ f a) ∧ (∀ b ∈ s, a ≤ b → f a ≤ f b) ∧ MonotoneOn f s := by
  simp [MonotoneOn, forall_and]

lemma AntitoneOn_insert_iff {a : α} :
    AntitoneOn f (insert a s) ↔
      (∀ b ∈ s, b ≤ a → f a ≤ f b) ∧ (∀ b ∈ s, a ≤ b → f b ≤ f a) ∧ AntitoneOn f s :=
  @MonotoneOn_insert_iff α βᵒᵈ _ _ _ _ _

end Mono

end Set



open Function

/-! ### Monotone -/
namespace Monotone

variable [Preorder α] [Preorder β] {f : α → β}

protected theorem restrict (h : Monotone f) (s : Set α) : Monotone (s.restrict f) := fun _ _ hxy =>
  h hxy

protected theorem codRestrict (h : Monotone f) {s : Set β} (hs : ∀ x, f x ∈ s) :
    Monotone (s.codRestrict f hs) :=
  h

protected theorem rangeFactorization (h : Monotone f) : Monotone (Set.rangeFactorization f) :=
  h

end Monotone

section strictMono

@[simp]
theorem strictMono_restrict [Preorder α] [Preorder β] {f : α → β} {s : Set α} :
    StrictMono (s.restrict f) ↔ StrictMonoOn f s := by simp [Set.restrict, StrictMono, StrictMonoOn]

alias ⟨_root_.StrictMono.of_restrict, _root_.StrictMonoOn.restrict⟩ := strictMono_restrict

theorem StrictMono.codRestrict [Preorder α] [Preorder β] {f : α → β} (hf : StrictMono f)
    {s : Set β} (hs : ∀ x, f x ∈ s) : StrictMono (Set.codRestrict f s hs) :=
  hf

lemma strictMonoOn_insert_iff [Preorder α] [Preorder β] {f : α → β} {s : Set α} {a : α} :
    StrictMonoOn f (insert a s) ↔
       (∀ b ∈ s, b < a → f b < f a) ∧ (∀ b ∈ s, a < b → f a < f b) ∧ StrictMonoOn f s := by
  simp [StrictMonoOn, forall_and]

lemma strictAntiOn_insert_iff [Preorder α] [Preorder β] {f : α → β} {s : Set α} {a : α} :
    StrictAntiOn f (insert a s) ↔
       (∀ b ∈ s, b < a → f a < f b) ∧ (∀ b ∈ s, a < b → f b < f a) ∧ StrictAntiOn f s :=
  @strictMonoOn_insert_iff α βᵒᵈ _ _ _ _ _

end strictMono

namespace Function

open Set

theorem monotoneOn_of_rightInvOn_of_mapsTo {α β : Type*} [PartialOrder α] [LinearOrder β]
    {φ : β → α} {ψ : α → β} {t : Set β} {s : Set α} (hφ : MonotoneOn φ t)
    (φψs : Set.RightInvOn ψ φ s) (ψts : Set.MapsTo ψ s t) : MonotoneOn ψ s := by
  rintro x xs y ys l
  rcases le_total (ψ x) (ψ y) with (ψxy|ψyx)
  · exact ψxy
  · have := hφ (ψts ys) (ψts xs) ψyx
    rw [φψs.eq ys, φψs.eq xs] at this
    induction le_antisymm l this
    exact le_refl _

theorem antitoneOn_of_rightInvOn_of_mapsTo [PartialOrder α] [LinearOrder β]
    {φ : β → α} {ψ : α → β} {t : Set β} {s : Set α} (hφ : AntitoneOn φ t)
    (φψs : Set.RightInvOn ψ φ s) (ψts : Set.MapsTo ψ s t) : AntitoneOn ψ s :=
  (monotoneOn_of_rightInvOn_of_mapsTo hφ.dual_left φψs ψts).dual_right

end Function
