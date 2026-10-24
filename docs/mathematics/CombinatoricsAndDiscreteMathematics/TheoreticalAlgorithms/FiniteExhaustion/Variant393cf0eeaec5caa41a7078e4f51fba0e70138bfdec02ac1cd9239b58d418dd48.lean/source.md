# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteExhaustion.Variant393cf0eeaec5caa41a7078e4f51fba0e70138bfdec02ac1cd9239b58d418dd48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d49ea863f6a73348bdcf4655a6a7735f34c1f43d` · SHA-256 `393cf0eeaec5caa41a7078e4f51fba0e70138bfdec02ac1cd9239b58d418dd48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public import Mathlib.Basic.Finite.Prod
public import Mathlib.Data.Set.Countable
public import Mathlib.Data.Set.Lattice.Order

/-!
# Finite Exhaustions

This file defines a structure called `FiniteExhaustion` which represents an exhaustion of a
countable set by an increasing sequence of finite sets. Given a countable set `s`,
`FiniteExhaustion.choice s` is a choice of a finite exhaustion.
-/

@[expose] public section

open Set

/-- A `FiniteExhaustion` of a set `s` is a monotonically increasing sequence
of finite sets such that their union is `s`. -/
structure Set.FiniteExhaustion {α : Type*} (s : Set α) where
  /-- The underlying sequence of a `FiniteExhaustion`. -/
  toFun : ℕ → Set α
  /-- Every set in a `FiniteExhaustion` is finite. -/
  finite' : ∀ n, Finite (toFun n)
  /-- The sequence of sets in a `FiniteExhaustion` are monotonically increasing. -/
  subset_succ' : ∀ n, toFun n ⊆ toFun (n + 1)
  /-- The union of all sets in a `FiniteExhaustion` equals `s` -/
  iUnion_eq' : ⋃ n, toFun n = s

namespace Set.FiniteExhaustion

@[macro_inline]
instance {α : Type*} {s : Set α} : FunLike (FiniteExhaustion s) ℕ (Set α) where
  coe := toFun
  coe_injective | ⟨_, _, _, _⟩, ⟨_, _, _, _⟩, rfl => rfl

instance {α : Type*} {s : Set α} : OrderHomClass (FiniteExhaustion s) Nat (Set α) where
  map_rel K _ _ h := monotone_nat_of_le_succ (fun n ↦ K.subset_succ' n) h

instance {α : Type*} {s : Set α} {K : FiniteExhaustion s} {n : ℕ} : Finite (K n) :=
  K.finite' n

variable {α : Type*} {s : Set α} (K : FiniteExhaustion s)

@[simp]
theorem toFun_eq_coe : K.toFun = K := rfl

protected theorem finite (n : ℕ) : (K n).Finite := K.finite' n

theorem subset_succ (n : ℕ) : K n ⊆ K (n + 1) := K.subset_succ' n

@[gcongr]
protected theorem mono {m n : ℕ} (h : m ≤ n) : K m ⊆ K n :=
  OrderHomClass.mono K h

@[simp]
theorem iUnion_eq : ⋃ n, K n = s :=
  K.iUnion_eq'

/-- A choice of a `FiniteExhaustion` for a countable set `s`. -/
noncomputable def _root_.Set.Countable.finiteExhaustion {s : Set α} (hs : s.Countable) :
    FiniteExhaustion s := by
  apply Classical.choice
  by_cases h : Nonempty s
  · obtain ⟨f, hf⟩ := @exists_surjective_nat s h hs
    refine ⟨fun n ↦ (Subtype.val ∘ f) '' {i | i ≤ n}, ?_, ?_, ?_⟩
    · exact fun n ↦ Finite.image _ (finite_le_nat n)
    · grind
    · simp [← image_image, ← image_iUnion, iUnion_le_nat, range_eq_univ.mpr hf]
  · refine ⟨fun _ ↦ ∅, by simp [Finite.to_subtype], fun n ↦ by simp, ?_⟩
    simp [Set.not_nonempty_iff_eq_empty'.mp h]

lemma _root_.Set.nonempty_finiteExhaustion_iff {s : Set α} :
    Nonempty s.FiniteExhaustion ↔ s.Countable := by
  refine ⟨fun ⟨K⟩ ↦ ?_, fun h ↦ ⟨h.finiteExhaustion⟩⟩
  rw [← K.iUnion_eq]
  exact countable_iUnion <| fun i ↦ (K.finite i).countable

set_option linter.dupNamespace false in
@[deprecated (since := "2026-05-24")]
alias Set.nonempty_finiteExhaustion_iff := Set.nonempty_finiteExhaustion_iff

section prod

variable {β : Type*} {t : Set β} (K' : FiniteExhaustion t)

/-- Given `K : FiniteExhaustion s` and `K' : FiniteExhaustion t`, `FiniteExhaustion.prod K K'`
is the finite exhaustion on `s ×ˢ t` given by the pointwise set product of the exhaustions. -/
protected def prod :
    FiniteExhaustion (s ×ˢ t) :=
  { toFun n := K n ×ˢ K' n
    finite' n := (K.finite n).prod (K'.finite n)
    subset_succ' := fun n ↦ Set.prod_mono (K.subset_succ n) (K'.subset_succ n)
    iUnion_eq' := by
      rw [Set.iUnion_prod_of_monotone (OrderHomClass.mono K) (OrderHomClass.mono K'),
          K.iUnion_eq, K'.iUnion_eq] }

protected theorem prod_apply (n : ℕ) : (K.prod K') n = K n ×ˢ K' n := by rfl

end prod

end Set.FiniteExhaustion
```
