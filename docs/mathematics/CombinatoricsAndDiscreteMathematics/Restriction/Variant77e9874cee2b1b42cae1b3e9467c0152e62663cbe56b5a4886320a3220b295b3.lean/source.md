# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Restriction.Variant77e9874cee2b1b42cae1b3e9467c0152e62663cbe56b5a4886320a3220b295b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d424ee7c8a126a9267b33aa894858c24548ad2d` · SHA-256 `d7392cd0c8662bd41401302a8c17aecc38d265bb980ae37cc8747ef6497d62ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RestrictLe.Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RestrictLe.Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Restriction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Etienne Marion. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Etienne Marion
-/
import Mathlib.Data.Finset.Update
import Mathlib.Order.Interval.Finset.Basic

/-!
# Restriction of a function indexed by a preorder

Given a preorder `α` and dependent function `f : (i : α) → π i` and `a : α`, one might want
to consider the restriction of `f` to elements `≤ a`.
This is defined in this file as `Preorder.restrictLe a f`.
Similarly, if we have `a b : α`, `hab : a ≤ b` and `f : (i : ↑(Set.Iic b)) → π ↑i`,
one might want to restrict it to elements `≤ a`.
This is defined in this file as `Preorder.restrictLe₂ hab f`.

We also provide versions where the intervals are seen as finite sets, see `Preorder.frestrictLe`
and `Preorder.frestrictLe₂`.

## Main definitions
* `Preorder.restrictLe a f`: Restricts the function `f` to the variables indexed by elements `≤ a`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RestrictLe.Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e

namespace Preorder

variable {α : Type*} [Preorder α] {π : α → Type*}

section Set

open Set

/-- Restrict domain of a function `f` indexed by `α` to elements `≤ a`. -/
def restrictLe (a : α) := (Iic a).restrict (π := π)

@[simp]
lemma restrictLe_apply (a : α) (f : (a : α) → π a) (i : Iic a) : restrictLe a f i = f i := rfl

/-- If a function `f` indexed by `α` is restricted to elements `≤ π`, and `a ≤ b`,
this is the restriction to elements `≤ a`. -/
def restrictLe₂ {a b : α} (hab : a ≤ b) := Set.restrict₂ (π := π) (Iic_subset_Iic.2 hab)

@[simp]
lemma restrictLe₂_apply {a b : α} (hab : a ≤ b) (f : (i : Iic b) → π i) (i : Iic a) :
    restrictLe₂ hab f i = f ⟨i.1, Iic_subset_Iic.2 hab i.2⟩ := rfl

theorem restrictLe₂_comp_restrictLe {a b : α} (hab : a ≤ b) :
    (restrictLe₂ (π := π) hab) ∘ (restrictLe b) = restrictLe a := rfl

theorem restrictLe₂_comp_restrictLe₂ {a b c : α} (hab : a ≤ b) (hbc : b ≤ c) :
    (restrictLe₂ (π := π) hab) ∘ (restrictLe₂ hbc) = restrictLe₂ (hab.trans hbc) := rfl

lemma dependsOn_restrictLe (a : α) : DependsOn (restrictLe (π := π) a) (Iic a) :=
  (Iic a).dependsOn_restrict

end Set

section Finset

variable [LocallyFiniteOrderBot α]

open Finset

/-- Restrict domain of a function `f` indexed by `α` to elements `≤ a`, seen as a finite set. -/
def frestrictLe (a : α) := (Iic a).restrict (π := π)

@[simp]
lemma frestrictLe_apply (a : α) (f : (a : α) → π a) (i : Iic a) : frestrictLe a f i = f i := rfl

/-- If a function `f` indexed by `α` is restricted to elements `≤ b`, and `a ≤ b`,
this is the restriction to elements `≤ b`. Intervals are seen as finite sets. -/
def frestrictLe₂ {a b : α} (hab : a ≤ b) := restrict₂ (π := π) (Iic_subset_Iic.2 hab)

@[simp]
lemma frestrictLe₂_apply {a b : α} (hab : a ≤ b) (f : (i : Iic b) → π i) (i : Iic a) :
    frestrictLe₂ hab f i = f ⟨i.1, Iic_subset_Iic.2 hab i.2⟩ := rfl

theorem frestrictLe₂_comp_frestrictLe {a b : α} (hab : a ≤ b) :
    (frestrictLe₂ (π := π) hab) ∘ (frestrictLe b) = frestrictLe a := rfl

theorem frestrictLe₂_comp_frestrictLe₂ {a b c : α} (hab : a ≤ b) (hbc : b ≤ c) :
    (frestrictLe₂ (π := π) hab) ∘ (frestrictLe₂ hbc) = frestrictLe₂ (hab.trans hbc) := rfl

theorem piCongrLeft_comp_restrictLe {a : α} :
    ((Equiv.IicFinsetSet a).symm.piCongrLeft (fun i : Iic a ↦ π i)) ∘ (restrictLe a) =
    frestrictLe a := rfl

theorem piCongrLeft_comp_frestrictLe {a : α} :
    ((Equiv.IicFinsetSet a).piCongrLeft (fun i : Set.Iic a ↦ π i)) ∘ (frestrictLe a) =
    restrictLe a := rfl

section updateFinset

open Function

variable [DecidableEq α]

lemma frestrictLe_updateFinset_of_le {a b : α} (hab : a ≤ b) (x : Π c, π c) (y : Π c : Iic b, π c) :
    frestrictLe a (updateFinset x _ y) = frestrictLe₂ hab y :=
  restrict_updateFinset_of_subset (Iic_subset_Iic.2 hab) ..

lemma frestrictLe_updateFinset {a : α} (x : Π a, π a) (y : Π b : Iic a, π b) :
    frestrictLe a (updateFinset x _ y) = y := restrict_updateFinset ..

@[simp]
lemma updateFinset_frestrictLe (a : α) (x : Π a, π a) : updateFinset x _ (frestrictLe a x) = x := by
  simp [frestrictLe]

end updateFinset

lemma dependsOn_frestrictLe (a : α) : DependsOn (frestrictLe (π := π) a) (Set.Iic a) :=
  coe_Iic a ▸ (Finset.Iic a).dependsOn_restrict

end Finset

end Preorder
```
