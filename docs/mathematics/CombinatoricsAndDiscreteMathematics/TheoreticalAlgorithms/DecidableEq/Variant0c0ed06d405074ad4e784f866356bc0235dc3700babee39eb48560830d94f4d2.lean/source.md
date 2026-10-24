# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecidableEq.Variant0c0ed06d405074ad4e784f866356bc0235dc3700babee39eb48560830d94f4d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6412fdde9fc703fef0db8a8799579aaa205e88e` · SHA-256 `1615944c71ca1c8c857b104f1441ef11183c6b252343c1622dea5a02f91e4b3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RelOfIsEqvAux.Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RelOfIsEqvAux.Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac","mathematical_subject":"Computation.DataStructures","original_sha256":"b1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Array/DecidableEq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
import all Init.Data.Array.Basic
public import Init.Data.Array.Basic
public import Init.Data.Nat.Lemmas
import Init.ByCases
import Init.Classical
import Init.Data.BEq
import Init.Data.Bool
import Init.Data.List.Nat.BEq
import Init.RCases


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RelOfIsEqvAux.Variantb1682d00c2b7ac63511ed58d421e191c6286cd342baf8be8cc6dd37cf9642fac

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Array

private theorem rel_of_isEqvAux
    {r : α → α → Bool} {xs ys : Array α} (hsz : xs.size = ys.size) {i : Nat} (hi : i ≤ xs.size)
    (heqv : Array.isEqvAux xs ys hsz r i hi)
    {j : Nat} (hj : j < i) : r (xs[j]'(Nat.lt_of_lt_of_le hj hi)) (ys[j]'(Nat.lt_of_lt_of_le hj (hsz ▸ hi))) := by
  induction i with
  | zero => contradiction
  | succ i ih =>
    simp only [Array.isEqvAux, Bool.and_eq_true] at heqv
    by_cases hj' : j < i
    next =>
      exact ih _ heqv.right hj'
    next =>
      replace hj' : j = i := Nat.eq_of_le_of_lt_succ (Nat.not_lt.mp hj') hj
      subst hj'
      exact heqv.left

private theorem isEqvAux_of_rel {r : α → α → Bool} {xs ys : Array α} (hsz : xs.size = ys.size) {i : Nat} (hi : i ≤ xs.size)
    (w : ∀ j, (hj : j < i) → r (xs[j]'(Nat.lt_of_lt_of_le hj hi)) (ys[j]'(Nat.lt_of_lt_of_le hj (hsz ▸ hi)))) : Array.isEqvAux xs ys hsz r i hi := by
  induction i with
  | zero => simp [Array.isEqvAux]
  | succ i ih =>
    simp only [isEqvAux, Bool.and_eq_true]
    exact ⟨w i (Nat.lt_add_one i), ih _ fun j hj => w j (Nat.lt_add_right 1 hj)⟩

-- This is private as the forward direction of `isEqv_iff_rel` may be used.
private theorem rel_of_isEqv {r : α → α → Bool} {xs ys : Array α} :
    Array.isEqv xs ys r → ∃ h : xs.size = ys.size, ∀ (i : Nat) (h' : i < xs.size), r (xs[i]) (ys[i]'(h ▸ h')) := by
  simp only [isEqv]
  split <;> rename_i h
  · exact fun h' => ⟨h, fun i => rel_of_isEqvAux h (Nat.le_refl ..) h'⟩
  · intro; contradiction

theorem isEqv_iff_rel {xs ys : Array α} {r} :
    Array.isEqv xs ys r ↔ ∃ h : xs.size = ys.size, ∀ (i : Nat) (h' : i < xs.size), r (xs[i]) (ys[i]'(h ▸ h')) :=
  ⟨rel_of_isEqv, fun ⟨h, w⟩ => by
    simp only [isEqv, ← h, ↓reduceDIte]
    exact isEqvAux_of_rel h (by simp [h]) w⟩

theorem isEqv_eq_decide (xs ys : Array α) (r) :
    Array.isEqv xs ys r =
      if h : xs.size = ys.size then decide (∀ (i : Nat) (h' : i < xs.size), r (xs[i]) (ys[i]'(h ▸ h'))) else false := by
  by_cases h : Array.isEqv xs ys r
  · simp only [h, Bool.true_eq]
    simp only [isEqv_iff_rel] at h
    obtain ⟨h, w⟩ := h
    simp [h, w]
  · let h' := h
    simp only [Bool.not_eq_true] at h
    simp only [h, Bool.false_eq, dite_eq_right_iff, decide_eq_false_iff_not, Classical.not_forall,
      Bool.not_eq_true]
    simpa [isEqv_iff_rel] using h'

@[simp, grind =] theorem isEqv_toList [BEq α] (xs ys : Array α) : (xs.toList.isEqv ys.toList r) = (xs.isEqv ys r) := by
  simp [isEqv_eq_decide, List.isEqv_eq_decide, Array.size]

theorem eq_of_isEqv [DecidableEq α] (xs ys : Array α) (h : Array.isEqv xs ys (fun x y => x = y)) : xs = ys := by
  have ⟨h, h'⟩ := rel_of_isEqv h
  exact ext h (fun i lt _ => by simpa using h' i lt)

private theorem isEqvAux_self (r : α → α → Bool) (hr : ∀ a, r a a) (xs : Array α) (i : Nat) (h : i ≤ xs.size) :
    Array.isEqvAux xs xs rfl r i h = true := by
  induction i with
  | zero => simp [Array.isEqvAux]
  | succ i ih =>
    set_option backward.isDefEq.respectTransparency false in
    simp_all only [isEqvAux, Bool.and_self]

theorem isEqv_self_beq [BEq α] [ReflBEq α] (xs : Array α) : Array.isEqv xs xs (· == ·) = true := by
  simp [isEqv, isEqvAux_self]

theorem isEqv_self [DecidableEq α] (xs : Array α) : Array.isEqv xs xs (· = ·) = true := by
  simp [isEqv, isEqvAux_self]

def instDecidableEqImpl [DecidableEq α] : DecidableEq (Array α) := fun xs ys =>
  match h:isEqv xs ys (fun a b => a = b) with
  | true  => isTrue (eq_of_isEqv xs ys h)
  | false => isFalse (by subst ·; rw [isEqv_self] at h; contradiction)

instance instDecidableEq [DecidableEq α] : DecidableEq (Array α) := fun xs ys =>
  match xs with
  | ⟨[]⟩ =>
    match ys with
    | ⟨[]⟩ => isTrue rfl
    | ⟨_ :: _⟩ => isFalse (fun h => Array.noConfusion rfl (heq_of_eq h) (fun h => List.noConfusion rfl h))
  | ⟨a :: as⟩ =>
    match ys with
    | ⟨[]⟩ => isFalse (fun h => Array.noConfusion rfl (heq_of_eq h) (fun h => List.noConfusion rfl h))
    | ⟨b :: bs⟩ => instDecidableEqImpl ⟨a :: as⟩ ⟨b :: bs⟩

@[csimp]
theorem instDecidableEq_csimp : @instDecidableEq = @instDecidableEqImpl :=
  Subsingleton.allEq _ _

/--
Equality with `#[]` is decidable even if the underlying type does not have decidable equality.
-/
instance instDecidableEqEmp (xs : Array α) : Decidable (xs = #[]) :=
  match xs with
  | ⟨[]⟩ => isTrue rfl
  | ⟨_ :: _⟩ => isFalse (fun h => Array.noConfusion rfl (heq_of_eq h) (fun h => List.noConfusion rfl h))

/--
Equality with `#[]` is decidable even if the underlying type does not have decidable equality.
-/
instance instDecidableEmpEq (ys : Array α) : Decidable (#[] = ys) :=
  match ys with
  | ⟨[]⟩ => isTrue rfl
  | ⟨_ :: _⟩ => isFalse (fun h => Array.noConfusion rfl (heq_of_eq h) (fun h => List.noConfusion rfl h))

@[inline]
def instDecidableEqEmpImpl (xs : Array α) : Decidable (xs = #[]) :=
  decidable_of_iff xs.isEmpty <| by rcases xs with ⟨⟨⟩⟩ <;> simp [Array.isEmpty]

@[inline]
def instDecidableEmpEqImpl (xs : Array α) : Decidable (#[] = xs) :=
  decidable_of_iff xs.isEmpty <| by rcases xs with ⟨⟨⟩⟩ <;> simp [Array.isEmpty]

@[csimp]
theorem instDecidableEqEmp_csimp : @instDecidableEqEmp = @instDecidableEqEmpImpl :=
  Subsingleton.allEq _ _

@[csimp]
theorem instDecidableEmpEq_csimp : @instDecidableEmpEq = @instDecidableEmpEqImpl :=
  Subsingleton.allEq _ _

theorem beq_eq_decide [BEq α] (xs ys : Array α) :
    (xs == ys) = if h : xs.size = ys.size then
      decide (∀ (i : Nat) (h' : i < xs.size), xs[i] == ys[i]'(h ▸ h')) else false := by
  simp [BEq.beq, isEqv_eq_decide]

@[simp, grind =] theorem beq_toList [BEq α] (xs ys : Array α) : (xs.toList == ys.toList) = (xs == ys) := by
  simp [beq_eq_decide, List.beq_eq_decide, Array.size]

end Array

namespace List

@[simp, grind =] theorem isEqv_toArray [BEq α] (as bs : List α) : (as.toArray.isEqv bs.toArray r) = (as.isEqv bs r) := by
  simp [isEqv_eq_decide, Array.isEqv_eq_decide]

@[simp, grind =] theorem beq_toArray [BEq α] (as bs : List α) : (as.toArray == bs.toArray) = (as == bs) := by
  simp [beq_eq_decide, Array.beq_eq_decide]

end List

namespace Array

instance [BEq α] [ReflBEq α] : ReflBEq (Array α) where
  rfl := by simp [BEq.beq, isEqv_self_beq]

instance [BEq α] [LawfulBEq α] : LawfulBEq (Array α) where
  eq_of_beq := by
    rintro ⟨_⟩ ⟨_⟩ h
    simpa using h

end Array
```
