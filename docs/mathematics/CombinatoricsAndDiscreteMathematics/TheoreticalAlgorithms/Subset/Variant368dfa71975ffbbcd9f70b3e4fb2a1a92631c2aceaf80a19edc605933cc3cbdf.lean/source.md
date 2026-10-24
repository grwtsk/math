# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subset.Variant368dfa71975ffbbcd9f70b3e4fb2a1a92631c2aceaf80a19edc605933cc3cbdf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe11076bb5c4070ff1c5c2487666a2cf67b7d159` · SHA-256 `865d9c23427af0e95aaf4f83c52eed02de30c0eea00858acdd7e711babe722aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PreimageValEqUnivOfSubset.Variant3cc043fd6a66f002b15e8274bb281b1cee4764d8c0094fb18be9580562d0331f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3cc043fd6a66f002b15e8274bb281b1cee4764d8c0094fb18be9580562d0331f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PreimageValEqUnivOfSubset.Variant3cc043fd6a66f002b15e8274bb281b1cee4764d8c0094fb18be9580562d0331f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3cc043fd6a66f002b15e8274bb281b1cee4764d8c0094fb18be9580562d0331f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/Subset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Miguel Marco. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miguel Marco
-/
import Mathlib.Data.Set.Function
import Mathlib.Data.Set.Functor

/-!
# Sets in subtypes

This file is about sets in `Set A` when `A` is a set.

It defines notation `↓∩` for sets in a type pulled down to sets in a subtype, as an inverse
operation to the coercion that lifts sets in a subtype up to sets in the ambient type.

This module also provides lemmas for `↓∩` and this coercion.

## Notation

Let `α` be a `Type`, `A B : Set α` two sets in `α`, and `C : Set A` a set in the subtype `↑A`.

- `A ↓∩ B` denotes `(Subtype.val ⁻¹' B : Set A)` (that is, `{x : ↑A | ↑x ∈ B}`).
- `↑C` denotes `Subtype.val '' C` (that is, `{x : α | ∃ y ∈ C, ↑y = x}`).

This notation, (together with the `↑` notation for `Set.CoeHead`)
is defined in `Mathlib/Data/Set/Notation.lean` and is scoped to the `Set.Notation` namespace.
To enable it, use `open Set.Notation`.


## Naming conventions

Theorem names refer to `↓∩` as `preimage_val`.

## Tags

subsets
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PreimageValEqUnivOfSubset.Variant3cc043fd6a66f002b15e8274bb281b1cee4764d8c0094fb18be9580562d0331f

open Set

variable {ι : Sort*} {α : Type*} {A B C : Set α} {D E : Set A}
variable {S : Set (Set α)} {T : Set (Set A)} {s : ι → Set α} {t : ι → Set A}

namespace Set

open Notation

lemma preimage_val_eq_univ_of_subset (h : A ⊆ B) : A ↓∩ B = univ := by
  rw [eq_univ_iff_forall, Subtype.forall]
  exact h

lemma preimage_val_sUnion : A ↓∩ (⋃₀ S) = ⋃₀ { (A ↓∩ B) | B ∈ S } := by
  rw [← Set.image, sUnion_image]
  simp_rw [sUnion_eq_biUnion, preimage_iUnion]

@[simp]
lemma preimage_val_iInter : A ↓∩ (⋂ i, s i) = ⋂ i, A ↓∩ s i := preimage_iInter

lemma preimage_val_sInter : A ↓∩ (⋂₀ S) = ⋂₀ { (A ↓∩ B) | B ∈ S } := by
  rw [← Set.image, sInter_image]
  simp_rw [sInter_eq_biInter, preimage_iInter]

lemma preimage_val_sInter_eq_sInter : A ↓∩ (⋂₀ S) = ⋂₀ ((A ↓∩ ·) '' S) := by
  simp only [preimage_sInter, sInter_image]

lemma eq_of_preimage_val_eq_of_subset (hB : B ⊆ A) (hC : C ⊆ A) (h : A ↓∩ B = A ↓∩ C) : B = C := by
  simp only [← inter_eq_right] at hB hC
  simp only [Subtype.preimage_val_eq_preimage_val_iff, hB, hC] at h
  exact h

/-!
The following simp lemmas try to transform operations in the subtype into operations in the ambient
type, if possible.
-/

@[simp]
lemma image_val_union : (↑(D ∪ E) : Set α) = ↑D ∪ ↑E := image_union _ _ _

@[simp]
lemma image_val_inter : (↑(D ∩ E) : Set α) = ↑D ∩ ↑E := image_inter Subtype.val_injective

@[simp]
lemma image_val_diff : (↑(D \ E) : Set α) = ↑D \ ↑E := image_diff Subtype.val_injective _ _

@[simp]
lemma image_val_compl : ↑(Dᶜ) = A \ ↑D := by
  rw [compl_eq_univ_diff, image_val_diff, image_univ, Subtype.range_coe_subtype, setOf_mem_eq]

@[simp]
lemma image_val_sUnion : ↑(⋃₀ T) = ⋃₀ { (B : Set α) | B ∈ T} := by
  rw [image_sUnion, image]

@[simp]
lemma image_val_iUnion : ↑(⋃ i, t i) = ⋃ i, (t i : Set α) := image_iUnion

@[simp]
lemma image_val_sInter (hT : T.Nonempty) : (↑(⋂₀ T) : Set α) = ⋂₀ { (↑B : Set α) | B ∈ T } := by
  rw [← Set.image, sInter_image, sInter_eq_biInter, Subtype.val_injective.injOn.image_biInter_eq hT]

@[simp]
lemma image_val_iInter [Nonempty ι] : (↑(⋂ i, t i) : Set α) = ⋂ i, (↑(t i) : Set α) :=
  Subtype.val_injective.injOn.image_iInter_eq

@[simp]
lemma image_val_union_self_right_eq : A ∪ ↑D = A :=
  union_eq_left.2 image_val_subset

@[simp]
lemma image_val_union_self_left_eq : ↑D ∪ A = A :=
  union_eq_right.2 image_val_subset

@[simp]
lemma image_val_inter_self_right_eq_coe : A ∩ ↑D = ↑D :=
  inter_eq_right.2 image_val_subset
@[deprecated (since := "2024-10-25")]
alias cou_inter_self_right_eq_coe := image_val_inter_self_right_eq_coe

@[simp]
lemma image_val_inter_self_left_eq_coe : ↑D ∩ A = ↑D :=
  inter_eq_left.2 image_val_subset

lemma subset_preimage_val_image_val_iff : D ⊆ A ↓∩ ↑E ↔ D ⊆ E := by
  rw [preimage_image_eq _ Subtype.val_injective]

@[simp]
lemma image_val_inj : (D : Set α) = ↑E ↔ D = E := Subtype.val_injective.image_injective.eq_iff

lemma image_val_injective : Function.Injective ((↑) : Set A → Set α) :=
  Subtype.val_injective.image_injective

lemma subset_of_image_val_subset_image_val (h : (↑D : Set α) ⊆ ↑E) : D ⊆ E :=
  (image_subset_image_iff Subtype.val_injective).1 h

@[mono]
lemma image_val_mono (h : D ⊆ E) : (↑D : Set α) ⊆ ↑E :=
  (image_subset_image_iff Subtype.val_injective).2 h

/-!
Relations between restriction and coercion.
-/

lemma image_val_preimage_val_subset_self : ↑(A ↓∩ B) ⊆ B :=
  image_preimage_subset _ _

lemma preimage_val_image_val_eq_self : A ↓∩ ↑D = D :=
  Function.Injective.preimage_image Subtype.val_injective _

end Set
```
