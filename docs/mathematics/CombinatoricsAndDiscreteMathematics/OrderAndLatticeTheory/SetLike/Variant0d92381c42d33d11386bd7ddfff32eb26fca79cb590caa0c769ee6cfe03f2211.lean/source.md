# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SetLike.Variant0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9daaede62a61697196840d30385a8155d8e59fb` · SHA-256 `0d92381c42d33d11386bd7ddfff32eb26fca79cb590caa0c769ee6cfe03f2211`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Sven Manthe. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sven Manthe
-/
import Mathlib.Order.CompleteSublattice

/-!
# `SetLike` instance for elements of `CompleteSublattice (Set X)`

This file provides lemmas for the `SetLike` instance for elements of `CompleteSublattice (Set X)`
-/

attribute [local instance] SetLike.instSubtypeSet

namespace Sublattice

variable {X : Type*} {L : Sublattice (Set X)}

variable {S T : L} {x : X}

@[ext] lemma ext_mem (h : ∀ x, x ∈ S ↔ x ∈ T) : S = T := SetLike.ext h

lemma mem_subtype : x ∈ L.subtype T ↔ x ∈ T := Iff.rfl

@[simp] lemma setLike_mem_inf : x ∈ S ⊓ T ↔ x ∈ S ∧ x ∈ T := by simp [← mem_subtype]
@[simp] lemma setLike_mem_sup : x ∈ S ⊔ T ↔ x ∈ S ∨ x ∈ T := by simp [← mem_subtype]

@[simp] lemma setLike_mem_coe : x ∈ T.val ↔ x ∈ T := Iff.rfl

@[deprecated SetLike.mem_mk_set (since := "2025-01-29")]
lemma setLike_mem_mk (U : Set X) (h : U ∈ L) : x ∈ (⟨U, h⟩ : L) ↔ x ∈ U := by simp

end Sublattice

namespace CompleteSublattice

variable {X : Type*} {L : CompleteSublattice (Set X)}

variable {S T : L} {𝒮 : Set L} {I : Sort*} {f : I → L} {x : X}

@[ext] lemma ext (h : ∀ x, x ∈ S ↔ x ∈ T) : S = T := SetLike.ext h

lemma mem_subtype : x ∈ L.subtype T ↔ x ∈ T := Iff.rfl

@[simp] lemma mem_inf : x ∈ S ⊓ T ↔ x ∈ S ∧ x ∈ T := by simp [← mem_subtype]
@[simp] lemma mem_sInf : x ∈ sInf 𝒮 ↔ ∀ T ∈ 𝒮, x ∈ T := by simp [← mem_subtype]
@[simp] lemma mem_iInf : x ∈ ⨅ i : I, f i ↔ ∀ i : I, x ∈ f i := by simp [← mem_subtype]
@[simp] lemma mem_top : x ∈ (⊤ : L) := by simp [← mem_subtype]

@[simp] lemma mem_sup : x ∈ S ⊔ T ↔ x ∈ S ∨ x ∈ T := by simp [← mem_subtype]
@[simp] lemma mem_sSup : x ∈ sSup 𝒮 ↔ ∃ T ∈ 𝒮, x ∈ T := by simp [← mem_subtype]
@[simp] lemma mem_iSup : x ∈ ⨆ i : I, f i ↔ ∃ i : I, x ∈ f i := by simp [← mem_subtype]
@[simp] lemma notMem_bot : x ∉ (⊥ : L) := by simp [← mem_subtype]

@[deprecated (since := "2025-05-23")] alias not_mem_bot := notMem_bot

@[deprecated SetLike.mem_mk_set (since := "2025-01-29")]
lemma mem_mk (U : Set X) (h : U ∈ L) : x ∈ (⟨U, h⟩ : L) ↔ x ∈ U := by simp

end CompleteSublattice
```
