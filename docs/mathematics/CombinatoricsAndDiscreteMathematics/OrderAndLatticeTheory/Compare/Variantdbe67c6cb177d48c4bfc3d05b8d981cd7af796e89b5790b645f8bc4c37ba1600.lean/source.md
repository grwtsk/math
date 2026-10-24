# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Compare.Variantdbe67c6cb177d48c4bfc3d05b8d981cd7af796e89b5790b645f8bc4c37ba1600

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a722b3b49802cdb31ca235b931b09f4abac92be` · SHA-256 `187e92a9abe5cff93d947e351a28d64d7962626b339e93766d06ff3f77aad2ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CmpLE.Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.CmpLE.Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099","mathematical_subject":"Algebra.OrderTheory","original_sha256":"5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Compare.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Ordering.Basic
import Mathlib.Order.Synonym

/-!
# Comparison

This file provides basic results about orderings and comparison in linear orders.


## Definitions

* `CmpLE`: An `Ordering` from `≤`.
* `Ordering.Compares`: Turns an `Ordering` into `<` and `=` propositions.
* `linearOrderOfCompares`: Constructs a `LinearOrder` instance from the fact that any two
  elements that are not one strictly less than the other either way are equal.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CmpLE.Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099

variable {α β : Type*}

/-- Like `cmp`, but uses a `≤` on the type instead of `<`. Given two elements `x` and `y`, returns a
three-way comparison result `Ordering`. -/
def cmpLE {α} [LE α] [DecidableLE α] (x y : α) : Ordering :=
  if x ≤ y then if y ≤ x then Ordering.eq else Ordering.lt else Ordering.gt

theorem cmpLE_swap {α} [LE α] [IsTotal α (· ≤ ·)] [DecidableLE α] (x y : α) :
    (cmpLE x y).swap = cmpLE y x := by
  by_cases xy : x ≤ y <;> by_cases yx : y ≤ x <;> simp [cmpLE, *, Ordering.swap]
  cases not_or_intro xy yx (total_of _ _ _)

theorem cmpLE_eq_cmp {α} [Preorder α] [IsTotal α (· ≤ ·)] [DecidableLE α] [DecidableLT α]
    (x y : α) : cmpLE x y = cmp x y := by
  by_cases xy : x ≤ y <;> by_cases yx : y ≤ x <;> simp [cmpLE, lt_iff_le_not_le, *, cmp, cmpUsing]
  cases not_or_intro xy yx (total_of _ _ _)

namespace Ordering

theorem compares_swap [LT α] {a b : α} {o : Ordering} : o.swap.Compares a b ↔ o.Compares b a := by
  cases o
  · exact Iff.rfl
  · exact eq_comm
  · exact Iff.rfl

alias ⟨Compares.of_swap, Compares.swap⟩ := compares_swap

theorem swap_eq_iff_eq_swap {o o' : Ordering} : o.swap = o' ↔ o = o'.swap := by
  rw [← swap_inj, swap_swap]

theorem Compares.eq_lt [Preorder α] : ∀ {o} {a b : α}, Compares o a b → (o = lt ↔ a < b)
  | lt, _, _, h => ⟨fun _ => h, fun _ => rfl⟩
  | eq, a, b, h => ⟨fun h => by injection h, fun h' => (ne_of_lt h' h).elim⟩
  | gt, a, b, h => ⟨fun h => by injection h, fun h' => (lt_asymm h h').elim⟩

theorem Compares.ne_lt [Preorder α] : ∀ {o} {a b : α}, Compares o a b → (o ≠ lt ↔ b ≤ a)
  | lt, _, _, h => ⟨absurd rfl, fun h' => (not_le_of_lt h h').elim⟩
  | eq, _, _, h => ⟨fun _ => ge_of_eq h, fun _ h => by injection h⟩
  | gt, _, _, h => ⟨fun _ => le_of_lt h, fun _ h => by injection h⟩

theorem Compares.eq_eq [Preorder α] : ∀ {o} {a b : α}, Compares o a b → (o = eq ↔ a = b)
  | lt, a, b, h => ⟨fun h => by injection h, fun h' => (ne_of_lt h h').elim⟩
  | eq, _, _, h => ⟨fun _ => h, fun _ => rfl⟩
  | gt, a, b, h => ⟨fun h => by injection h, fun h' => (ne_of_gt h h').elim⟩

theorem Compares.eq_gt [Preorder α] {o} {a b : α} (h : Compares o a b) : o = gt ↔ b < a :=
  swap_eq_iff_eq_swap.symm.trans h.swap.eq_lt

theorem Compares.ne_gt [Preorder α] {o} {a b : α} (h : Compares o a b) : o ≠ gt ↔ a ≤ b :=
  (not_congr swap_eq_iff_eq_swap.symm).trans h.swap.ne_lt

theorem Compares.le_total [Preorder α] {a b : α} : ∀ {o}, Compares o a b → a ≤ b ∨ b ≤ a
  | lt, h => Or.inl (le_of_lt h)
  | eq, h => Or.inl (le_of_eq h)
  | gt, h => Or.inr (le_of_lt h)

theorem Compares.le_antisymm [Preorder α] {a b : α} : ∀ {o}, Compares o a b → a ≤ b → b ≤ a → a = b
  | lt, h, _, hba => (not_le_of_lt h hba).elim
  | eq, h, _, _ => h
  | gt, h, hab, _ => (not_le_of_lt h hab).elim

theorem Compares.inj [Preorder α] {o₁} :
    ∀ {o₂} {a b : α}, Compares o₁ a b → Compares o₂ a b → o₁ = o₂
  | lt, _, _, h₁, h₂ => h₁.eq_lt.2 h₂
  | eq, _, _, h₁, h₂ => h₁.eq_eq.2 h₂
  | gt, _, _, h₁, h₂ => h₁.eq_gt.2 h₂

theorem compares_iff_of_compares_impl [LinearOrder α] [Preorder β] {a b : α} {a' b' : β}
    (h : ∀ {o}, Compares o a b → Compares o a' b') (o) : Compares o a b ↔ Compares o a' b' := by
  refine ⟨h, fun ho => ?_⟩
  rcases lt_trichotomy a b with hab | hab | hab
  · have hab : Compares Ordering.lt a b := hab
    rwa [ho.inj (h hab)]
  · have hab : Compares Ordering.eq a b := hab
    rwa [ho.inj (h hab)]
  · have hab : Compares Ordering.gt a b := hab
    rwa [ho.inj (h hab)]

end Ordering

open Ordering OrderDual

@[simp]
theorem toDual_compares_toDual [LT α] {a b : α} {o : Ordering} :
    Compares o (toDual a) (toDual b) ↔ Compares o b a := by
  cases o
  exacts [Iff.rfl, eq_comm, Iff.rfl]

@[simp]
theorem ofDual_compares_ofDual [LT α] {a b : αᵒᵈ} {o : Ordering} :
    Compares o (ofDual a) (ofDual b) ↔ Compares o b a := by
  cases o
  exacts [Iff.rfl, eq_comm, Iff.rfl]

theorem cmp_compares [LinearOrder α] (a b : α) : (cmp a b).Compares a b := by
  obtain h | h | h := lt_trichotomy a b <;> simp [cmp, cmpUsing, h, h.not_lt]

theorem Ordering.Compares.cmp_eq [LinearOrder α] {a b : α} {o : Ordering} (h : o.Compares a b) :
    cmp a b = o :=
  (cmp_compares a b).inj h

@[simp]
theorem cmp_swap [Preorder α] [DecidableLT α] (a b : α) : (cmp a b).swap = cmp b a := by
  unfold cmp cmpUsing
  by_cases h : a < b <;> by_cases h₂ : b < a <;> simp [h, h₂, Ordering.swap]
  exact lt_asymm h h₂

@[simp]
theorem cmpLE_toDual [LE α] [DecidableLE α] (x y : α) : cmpLE (toDual x) (toDual y) = cmpLE y x :=
  rfl

@[simp]
theorem cmpLE_ofDual [LE α] [DecidableLE α] (x y : αᵒᵈ) : cmpLE (ofDual x) (ofDual y) = cmpLE y x :=
  rfl

@[simp]
theorem cmp_toDual [LT α] [DecidableLT α] (x y : α) : cmp (toDual x) (toDual y) = cmp y x :=
  rfl

@[simp]
theorem cmp_ofDual [LT α] [DecidableLT α] (x y : αᵒᵈ) : cmp (ofDual x) (ofDual y) = cmp y x :=
  rfl

/-- Generate a linear order structure from a preorder and `cmp` function. -/
def linearOrderOfCompares [Preorder α] (cmp : α → α → Ordering)
    (h : ∀ a b, (cmp a b).Compares a b) : LinearOrder α :=
  let H : DecidableLE α := fun a b => decidable_of_iff _ (h a b).ne_gt
  { inferInstanceAs (Preorder α) with
    le_antisymm := fun a b => (h a b).le_antisymm,
    le_total := fun a b => (h a b).le_total,
    toMin := minOfLe,
    toMax := maxOfLe,
    toDecidableLE := H,
    toDecidableLT := fun a b => decidable_of_iff _ (h a b).eq_lt,
    toDecidableEq := fun a b => decidable_of_iff _ (h a b).eq_eq }

variable [LinearOrder α] (x y : α)

@[simp]
theorem cmp_eq_lt_iff : cmp x y = Ordering.lt ↔ x < y :=
  Ordering.Compares.eq_lt (cmp_compares x y)

@[simp]
theorem cmp_eq_eq_iff : cmp x y = Ordering.eq ↔ x = y :=
  Ordering.Compares.eq_eq (cmp_compares x y)

@[simp]
theorem cmp_eq_gt_iff : cmp x y = Ordering.gt ↔ y < x :=
  Ordering.Compares.eq_gt (cmp_compares x y)

@[simp]
theorem cmp_self_eq_eq : cmp x x = Ordering.eq := by rw [cmp_eq_eq_iff]

variable {x y} {β : Type*} [LinearOrder β] {x' y' : β}

theorem cmp_eq_cmp_symm : cmp x y = cmp x' y' ↔ cmp y x = cmp y' x' :=
  ⟨fun h => by rwa [← cmp_swap x', ← cmp_swap, swap_inj],
   fun h => by rwa [← cmp_swap y', ← cmp_swap, swap_inj]⟩

theorem lt_iff_lt_of_cmp_eq_cmp (h : cmp x y = cmp x' y') : x < y ↔ x' < y' := by
  rw [← cmp_eq_lt_iff, ← cmp_eq_lt_iff, h]

theorem le_iff_le_of_cmp_eq_cmp (h : cmp x y = cmp x' y') : x ≤ y ↔ x' ≤ y' := by
  rw [← not_lt, ← not_lt]
  apply not_congr
  apply lt_iff_lt_of_cmp_eq_cmp
  rwa [cmp_eq_cmp_symm]

theorem eq_iff_eq_of_cmp_eq_cmp (h : cmp x y = cmp x' y') : x = y ↔ x' = y' := by
  rw [le_antisymm_iff, le_antisymm_iff, le_iff_le_of_cmp_eq_cmp h,
      le_iff_le_of_cmp_eq_cmp (cmp_eq_cmp_symm.1 h)]

theorem LT.lt.cmp_eq_lt (h : x < y) : cmp x y = Ordering.lt :=
  (cmp_eq_lt_iff _ _).2 h

theorem LT.lt.cmp_eq_gt (h : x < y) : cmp y x = Ordering.gt :=
  (cmp_eq_gt_iff _ _).2 h

theorem Eq.cmp_eq_eq (h : x = y) : cmp x y = Ordering.eq :=
  (cmp_eq_eq_iff _ _).2 h

theorem Eq.cmp_eq_eq' (h : x = y) : cmp y x = Ordering.eq :=
  h.symm.cmp_eq_eq
```
