# Complete source: GRWTSK.Algebra.List.Variantfda8bf0a36c7a5cc028057c39d36b40e940dc0ce5ffc6cd72138cff7fb96a9e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ede3d5a3ae813d5f11380e8a60017ab3907b01cc` · SHA-256 `75cca1cbc2df9af6782c2a78078922677fbc6146752a3baa2435ccd38f34dbf5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ProdNonneg.Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ProdNonneg.Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/BigOperators/GroupWithZero/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Stuart Presnell. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stuart Presnell, Daniel Weber
-/
import Mathlib.Algebra.BigOperators.Group.List.Defs
import Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic

/-!
# Big operators on a list in ordered groups with zeros

This file contains the results concerning the interaction of list big operators with ordered
groups with zeros.
-/


namespace GRWTSK.Algebra.ProdNonneg.Variant6cb5536a3384b3e875d3dbba0d4ad7bd0f8e2fde8ba31fea58860ea4a58a9e40

namespace List
variable {R : Type*} [CommMonoidWithZero R] [PartialOrder R] [ZeroLEOneClass R] [PosMulMono R]

lemma prod_nonneg {s : List R} (h : ∀ a ∈ s, 0 ≤ a) : 0 ≤ s.prod := by
  induction s with
  | nil => simp
  | cons head tail hind =>
    simp only [prod_cons]
    simp only [mem_cons, forall_eq_or_imp] at h
    exact mul_nonneg h.1 (hind h.2)


lemma one_le_prod {s : List R} (h : ∀ a ∈ s, 1 ≤ a) : 1 ≤ s.prod := by
  induction s with
  | nil => simp
  | cons head tail hind =>
    simp only [prod_cons]
    simp only [mem_cons, forall_eq_or_imp] at h
    exact one_le_mul_of_one_le_of_one_le h.1 (hind h.2)

theorem prod_map_le_prod_map₀ {ι : Type*} {s : List ι} (f : ι → R) (g : ι → R)
    (h0 : ∀ i ∈ s, 0 ≤ f i) (h : ∀ i ∈ s, f i ≤ g i) :
    (map f s).prod ≤ (map g s).prod := by
  induction s with
  | nil => simp
  | cons a s hind =>
    simp only [map_cons, prod_cons]
    have := posMulMono_iff_mulPosMono.1 ‹PosMulMono R›
    apply mul_le_mul
    · apply h
      simp
    · apply hind
      · intro i hi
        apply h0
        simp [hi]
      · intro i hi
        apply h
        simp [hi]
    · apply prod_nonneg
      simp only [mem_map, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
      intro a ha
      apply h0
      simp [ha]
    · apply (h0 _ _).trans (h _ _) <;> simp

theorem prod_map_le_pow_length₀ {F L : Type*} [FunLike F L R] {f : F} {r : R} {t : List L}
    (hf0 : ∀ x ∈ t, 0 ≤ f x) (hf : ∀ x ∈ t, f x ≤ r) :
    (map f t).prod ≤ r ^ length t := by
  convert prod_map_le_prod_map₀ f (Function.const L r) hf0 hf
  simp [map_const, prod_replicate]

omit [PosMulMono R]
variable [PosMulStrictMono R] [NeZero (1 : R)]

lemma prod_pos {s : List R} (h : ∀ a ∈ s, 0 < a) : 0 < s.prod := by
  induction s with
  | nil => simp
  | cons a s hind =>
    simp only [prod_cons]
    simp only [mem_cons, forall_eq_or_imp] at h
    exact mul_pos h.1 (hind h.2)

theorem prod_map_lt_prod_map {ι : Type*} {s : List ι} (hs : s ≠ [])
    (f : ι → R) (g : ι → R) (h0 : ∀ i ∈ s, 0 < f i) (h : ∀ i ∈ s, f i < g i) :
    (map f s).prod < (map g s).prod := by
  match s with
  | [] => contradiction
  | a :: s =>
    simp only [map_cons, prod_cons]
    have := posMulStrictMono_iff_mulPosStrictMono.1 ‹PosMulStrictMono R›
    apply mul_lt_mul
    · apply h
      simp
    · apply prod_map_le_prod_map₀
      · intro i hi
        apply le_of_lt
        apply h0
        simp [hi]
      · intro i hi
        apply le_of_lt
        apply h
        simp [hi]
    · apply prod_pos
      simp only [mem_map, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
      intro a ha
      apply h0
      simp [ha]
    · apply le_of_lt ((h0 _ _).trans (h _ _)) <;> simp

end List
```
