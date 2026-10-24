# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lattice.Variant10d495b06ff1d3eb7fde51dce326508952b5138ee2ae3281c5754d91d94c8e7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f70a18d3939fe50efd29316b0f7eb292a50feb0` · SHA-256 `180846d561c2e38fc9c848d360e74529a11616395ee35c711299e023b774d859`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PermBagInterRight.Variant29beccecbaf141ac2fce03f5605df997d840d5d4c35e5b4314880b4693b2c2b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29beccecbaf141ac2fce03f5605df997d840d5d4c35e5b4314880b4693b2c2b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PermBagInterRight.Variant29beccecbaf141ac2fce03f5605df997d840d5d4c35e5b4314880b4693b2c2b3","mathematical_subject":"Computation.DataStructures","original_sha256":"29beccecbaf141ac2fce03f5605df997d840d5d4c35e5b4314880b4693b2c2b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/Perm/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Data.List.Forall2
import Mathlib.Data.List.TakeDrop
import Mathlib.Data.List.Lattice
import Mathlib.Data.List.Nodup

/-!
# List Permutations and list lattice operations.

This file develops theory about the `List.Perm` relation and the lattice structure on lists.
-/

-- Make sure we don't import algebra

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PermBagInterRight.Variant29beccecbaf141ac2fce03f5605df997d840d5d4c35e5b4314880b4693b2c2b3

assert_not_exists Monoid

open Nat

namespace List
variable {α : Type*}

open Perm (swap)

variable [DecidableEq α]

theorem Perm.bagInter_right {l₁ l₂ : List α} (t : List α) (h : l₁ ~ l₂) :
    l₁.bagInter t ~ l₂.bagInter t := by
  induction h generalizing t with
  | nil => simp
  | cons x => by_cases x ∈ t <;> simp [*, Perm.cons]
  | swap x y =>
    by_cases h : x = y
    · simp [h]
    by_cases xt : x ∈ t <;> by_cases yt : y ∈ t
    · simp [xt, yt, mem_erase_of_ne h, mem_erase_of_ne (Ne.symm h), erase_comm, swap]
    · simp [xt, yt, mt mem_of_mem_erase, Perm.cons]
    · simp [xt, yt, mt mem_of_mem_erase, Perm.cons]
    · simp [xt, yt]
  | trans _ _ ih_1 ih_2 => exact (ih_1 _).trans (ih_2 _)

theorem Perm.bagInter_left (l : List α) {t₁ t₂ : List α} (p : t₁ ~ t₂) :
    l.bagInter t₁ = l.bagInter t₂ := by
  induction l generalizing t₁ t₂ p with | nil => simp | cons a l IH => ?_
  by_cases h : a ∈ t₁
  · simp [h, p.subset h, IH (p.erase _)]
  · simp [h, mt p.mem_iff.2 h, IH p]

theorem Perm.bagInter {l₁ l₂ t₁ t₂ : List α} (hl : l₁ ~ l₂) (ht : t₁ ~ t₂) :
    l₁.bagInter t₁ ~ l₂.bagInter t₂ :=
  ht.bagInter_left l₂ ▸ hl.bagInter_right _

theorem Perm.inter_append {l t₁ t₂ : List α} (h : Disjoint t₁ t₂) :
    l ∩ (t₁ ++ t₂) ~ l ∩ t₁ ++ l ∩ t₂ := by
  induction l with
  | nil => simp
  | cons x xs l_ih =>
    by_cases h₁ : x ∈ t₁
    · have h₂ : x ∉ t₂ := h h₁
      simp [*]
    by_cases h₂ : x ∈ t₂
    · simp only [*, inter_cons_of_notMem, false_or, mem_append, inter_cons_of_mem,
        not_false_iff]
      refine Perm.trans (Perm.cons _ l_ih) ?_
      change [x] ++ xs ∩ t₁ ++ xs ∩ t₂ ~ xs ∩ t₁ ++ ([x] ++ xs ∩ t₂)
      rw [← List.append_assoc]
      solve_by_elim [Perm.append_right, perm_append_comm]
    · simp [*]

theorem Perm.take_inter {xs ys : List α} (n : ℕ) (h : xs ~ ys)
    (h' : ys.Nodup) : xs.take n ~ ys.inter (xs.take n) := by
  simp only [List.inter]
  exact Perm.trans (show xs.take n ~ xs.filter (xs.take n).elem by
      conv_lhs => rw [Nodup.take_eq_filter_mem ((Perm.nodup_iff h).2 h')])
    (Perm.filter _ h)

theorem Perm.drop_inter {xs ys : List α} (n : ℕ) (h : xs ~ ys) (h' : ys.Nodup) :
    xs.drop n ~ ys.inter (xs.drop n) := by
  by_cases h'' : n ≤ xs.length
  · let n' := xs.length - n
    have h₀ : n = xs.length - n' := by rwa [Nat.sub_sub_self]
    have h₁ : xs.drop n = (xs.reverse.take n').reverse := by
      rw [take_reverse, h₀, reverse_reverse]
    rw [h₁]
    apply (reverse_perm _).trans
    rw [inter_reverse]
    apply Perm.take_inter _ _ h'
    apply (reverse_perm _).trans; assumption
  · have : xs.drop n = [] := by
      apply eq_nil_of_length_eq_zero
      rw [length_drop, Nat.sub_eq_zero_iff_le]
      apply le_of_not_ge h''
    simp [this, List.inter]

theorem Perm.dropSlice_inter {xs ys : List α} (n m : ℕ) (h : xs ~ ys)
    (h' : ys.Nodup) : List.dropSlice n m xs ~ ys ∩ List.dropSlice n m xs := by
  simp only [dropSlice_eq]
  have : n ≤ n + m := Nat.le_add_right _ _
  have h₂ := h.nodup_iff.2 h'
  apply Perm.trans _ (Perm.inter_append _).symm
  · exact Perm.append (Perm.take_inter _ h h') (Perm.drop_inter _ h h')
  · exact disjoint_take_drop h₂ this

end List
```
