# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Comparable.Variant97f25bf93698a5a40257afe64ad1663605b17a8bb60579f4c93cbd4b86f93540

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d01424f1f20fc26b73add4bcb1abaaa82a1e28a` · SHA-256 `cb753366f6ff4e0dfd4a77a46c2663760e7e02fd1d990e6c63226d14e1460069`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RelationLinearOrderOfSymmGen.Variantd99648a2649a92bc6a3908a9e4242998676964962012203f69ce48db109a5bb1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d99648a2649a92bc6a3908a9e4242998676964962012203f69ce48db109a5bb1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.RelationLinearOrderOfSymmGen.Variantd99648a2649a92bc6a3908a9e4242998676964962012203f69ce48db109a5bb1","mathematical_subject":"Algebra.OrderTheory","original_sha256":"d99648a2649a92bc6a3908a9e4242998676964962012203f69ce48db109a5bb1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Comparable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
module

public import Mathlib.Order.Antisymmetrization

/-!
# Comparability and incomparability relations

Two values in a preorder are said to be comparable (`SymmRel`) whenever `a ≤ b` or `b ≤ a`. We
define both the comparability and incomparability relations.

In a linear order, `SymmGen (· ≤ ·) a b` is always true, and `IncompRel (· ≤ ·) a b` is always
false.

## Implementation notes

Although comparability and incomparability are negations of each other, both relations are
convenient in different contexts, and as such, it's useful to keep them distinct. To move from one
to the other, use `not_symmGen_iff` and `not_incompRel_iff_symmGen`.

## Main declarations

* `CompRel`: The comparability relation. `CompRel r a b` means that `a` and `b` is related in
  either direction by `r`. This is deprecated in favor of `Relation.SymmGen`, with naming chosen for
  consistency with `Relation.TransGen` in core and other definitions in `Mathlib.Logic.Relation`.
* `IncompRel`: The incomparability relation. `IncompRel r a b` means that `a` and `b` are related in
  neither direction by `r`.

## Todo

These definitions should be linked to `IsChain` and `IsAntichain`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RelationLinearOrderOfSymmGen.Variantd99648a2649a92bc6a3908a9e4242998676964962012203f69ce48db109a5bb1

@[expose] public section

open Function Relation

variable {α : Type*} {a b c d : α}

/-! ### Comparability -/

/-- A partial order where any two elements are comparable is a linear order. -/
@[instance_reducible]
def Relation.linearOrderOfSymmGen [PartialOrder α]
    [decLE : DecidableLE α] [decLT : DecidableLT α] [decEq : DecidableEq α]
    (h : ∀ a b : α, Relation.SymmGen (· ≤ ·) a b) : LinearOrder α where
  le_total := h
  toDecidableLE := decLE
  toDecidableEq := decEq
  toDecidableLT := decLT

/-! ### Incomparability relation -/

section Relation

variable (r : α → α → Prop)

/-- The incomparability relation `IncompRel r a b` means `¬ r a b` and `¬ r b a`. -/
def IncompRel (a b : α) : Prop :=
  ¬ r a b ∧ ¬ r b a

@[simp]
theorem antisymmRel_compl : AntisymmRel rᶜ = IncompRel r :=
  rfl

theorem antisymmRel_compl_apply : AntisymmRel rᶜ a b ↔ IncompRel r a b :=
  .rfl

@[simp]
theorem incompRel_compl : IncompRel rᶜ = AntisymmRel r := by
  simp [← antisymmRel_compl, compl]

@[simp]
theorem incompRel_compl_apply : IncompRel rᶜ a b ↔ AntisymmRel r a b := by
  simp

theorem incompRel_swap : IncompRel (swap r) = IncompRel r :=
  antisymmRel_swap rᶜ

theorem incompRel_swap_apply : IncompRel (swap r) a b ↔ IncompRel r a b :=
  antisymmRel_swap_apply rᶜ

@[simp, refl]
theorem IncompRel.refl [Std.Irrefl r] (a : α) : IncompRel r a a :=
  AntisymmRel.refl rᶜ a

variable {r}

theorem IncompRel.rfl [Std.Irrefl r] {a : α} : IncompRel r a a := .refl ..

instance [Std.Irrefl r] : Std.Refl (IncompRel r) where
  refl := .refl r

@[symm]
theorem IncompRel.symm : IncompRel r a b → IncompRel r b a :=
  And.symm

instance : Std.Symm (IncompRel r) where
  symm _ _ := IncompRel.symm

theorem incompRel_comm {a b : α} : IncompRel r a b ↔ IncompRel r b a :=
  comm

instance IncompRel.decidableRel [DecidableRel r] : DecidableRel (IncompRel r) :=
  fun _ _ ↦ inferInstanceAs (Decidable (¬ _ ∧ ¬ _))

theorem IncompRel.not_antisymmRel (h : IncompRel r a b) : ¬ AntisymmRel r a b :=
  fun h' ↦ h.1 h'.1

theorem AntisymmRel.not_incompRel (h : AntisymmRel r a b) : ¬ IncompRel r a b :=
  fun h' ↦ h'.1 h.1

theorem not_symmGen_iff : ¬ Relation.SymmGen r a b ↔ IncompRel r a b := by
  simp [Relation.SymmGen, IncompRel]

theorem not_incompRel_iff_symmGen : ¬ IncompRel r a b ↔ Relation.SymmGen r a b := by
  rw [← not_symmGen_iff, not_not]

@[simp]
theorem not_incompRel_of_total [Std.Total r] (a b : α) : ¬ IncompRel r a b := by
  rw [not_incompRel_iff_symmGen]
  exact symmGen_of_total a b

theorem IncompRel.ne [Std.Refl r] {a b : α} (h : IncompRel r a b) : a ≠ b := by
  rintro rfl
  exact h.1 <| refl_of r a

end Relation

section LE

variable [LE α]

theorem IncompRel.not_le (h : IncompRel (· ≤ ·) a b) : ¬ a ≤ b := h.1
theorem IncompRel.not_ge (h : IncompRel (· ≤ ·) a b) : ¬ b ≤ a := h.2
theorem LE.le.not_incompRel (h : a ≤ b) : ¬ IncompRel (· ≤ ·) a b := fun h' ↦ h'.not_le h

end LE

section Preorder

variable [Preorder α]

theorem IncompRel.not_lt (h : IncompRel (· ≤ ·) a b) : ¬ a < b := mt le_of_lt h.not_le
theorem IncompRel.not_gt (h : IncompRel (· ≤ ·) a b) : ¬ b < a := mt le_of_lt h.not_ge
theorem LT.lt.not_incompRel (h : a < b) : ¬ IncompRel (· ≤ ·) a b := fun h' ↦ h'.not_lt h

theorem not_le_iff_lt_or_incompRel : ¬ b ≤ a ↔ a < b ∨ IncompRel (· ≤ ·) a b := by
  rw [lt_iff_le_not_ge, IncompRel]
  tauto

/-- Exactly one of the following is true. -/
theorem lt_or_antisymmRel_or_gt_or_incompRel (a b : α) :
    a < b ∨ AntisymmRel (· ≤ ·) a b ∨ b < a ∨ IncompRel (· ≤ ·) a b := by
  simp_rw [lt_iff_le_not_ge]
  tauto

@[trans]
theorem incompRel_of_incompRel_of_antisymmRel
    (h₁ : IncompRel (· ≤ ·) a b) (h₂ : AntisymmRel (· ≤ ·) b c) : IncompRel (· ≤ ·) a c :=
  ⟨fun h ↦ h₁.not_le (h.trans h₂.ge), fun h ↦ h₁.not_ge (h₂.le.trans h)⟩

alias IncompRel.trans_antisymmRel := incompRel_of_incompRel_of_antisymmRel

instance : @Trans α α α (IncompRel (· ≤ ·)) (AntisymmRel (· ≤ ·)) (IncompRel (· ≤ ·)) where
  trans := incompRel_of_incompRel_of_antisymmRel

@[trans]
theorem incompRel_of_antisymmRel_of_incompRel
    (h₁ : AntisymmRel (· ≤ ·) a b) (h₂ : IncompRel (· ≤ ·) b c) : IncompRel (· ≤ ·) a c :=
  (h₂.symm.trans_antisymmRel h₁.symm).symm

alias AntisymmRel.trans_incompRel := incompRel_of_antisymmRel_of_incompRel

instance : @Trans α α α (AntisymmRel (· ≤ ·)) (IncompRel (· ≤ ·)) (IncompRel (· ≤ ·)) where
  trans := incompRel_of_antisymmRel_of_incompRel

theorem AntisymmRel.incompRel_congr (h₁ : AntisymmRel (· ≤ ·) a b) (h₂ : AntisymmRel (· ≤ ·) c d) :
    IncompRel (· ≤ ·) a c ↔ IncompRel (· ≤ ·) b d where
  mp h := (h₁.symm.trans_incompRel h).trans_antisymmRel h₂
  mpr h := (h₁.trans_incompRel h).trans_antisymmRel h₂.symm

theorem AntisymmRel.incompRel_congr_left (h : AntisymmRel (· ≤ ·) a b) :
    IncompRel (· ≤ ·) a c ↔ IncompRel (· ≤ ·) b c :=
  h.incompRel_congr AntisymmRel.rfl

theorem AntisymmRel.incompRel_congr_right (h : AntisymmRel (· ≤ ·) b c) :
    IncompRel (· ≤ ·) a b ↔ IncompRel (· ≤ ·) a c :=
  AntisymmRel.rfl.incompRel_congr h

end Preorder

/-- Exactly one of the following is true. -/
theorem lt_or_eq_or_gt_or_incompRel [PartialOrder α] (a b : α) :
    a < b ∨ a = b ∨ b < a ∨ IncompRel (· ≤ ·) a b := by
  simpa using lt_or_antisymmRel_or_gt_or_incompRel a b
```
