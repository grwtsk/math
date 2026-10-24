# Complete source: GRWTSK.Algebra.GroupTheory.NoncommCoprod.Variantb4d457c45517ae757881ea71328368cb69f16f31340fa566e5f269831b94939f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4460c499fe63b6a6f246331941e021955fca6ec7` · SHA-256 `3525fc840fbc7ca8150503c6e788d991f4444f1c22bf15f5c38103ff0706d0e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.NoncommCoprod.Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.NoncommCoprod.Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef","mathematical_subject":"Algebra.Groups","original_sha256":"fb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/NoncommCoprod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Antoine Chambert-Loir. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir
-/
import Mathlib.Algebra.Group.Commute.Hom
import Mathlib.Algebra.Group.Prod
import Mathlib.Algebra.Group.Subgroup.Ker
import Mathlib.Algebra.Group.Subgroup.Lattice
import Mathlib.Order.Disjoint

/-!
# Canonical homomorphism from a pair of monoids

This file defines the construction of the canonical homomorphism from a pair of monoids.

Given two morphisms of monoids `f : M →* P` and `g : N →* P` where elements in the images
of the two morphisms commute, we obtain a canonical morphism
`MonoidHom.noncommCoprod : M × N →* P` whose composition with `inl M N` coincides with `f`
and whose composition with `inr M N` coincides with `g`.

There is an analogue `MulHom.noncommCoprod` when `f` and `g` are only `MulHom`s.

## Main theorems:

* `noncommCoprod_comp_inr` and `noncommCoprod_comp_inl` prove that the compositions
  of `MonoidHom.noncommCoprod f g _` with `inl M N` and `inr M N` coincide with `f` and `g`.
* `comp_noncommCoprod` proves that the composition of a morphism of monoids `h`
  with `noncommCoprod f g _` coincides with `noncommCoprod (h.comp f) (h.comp g)`.

For a product of a family of morphisms of monoids, see `MonoidHom.noncommPiCoprod`.
-/


namespace GRWTSK.Algebra.GroupTheory.NoncommCoprod.Variantfb68d663abb867de1701fdcc1e26d29e848e57ba224734718de639dbb9a40cef

assert_not_exists MonoidWithZero

namespace MulHom

variable {M N P : Type*} [Mul M] [Mul N] [Semigroup P]
  (f : M →ₙ* P) (g : N →ₙ* P)

/-- Coproduct of two `MulHom`s with the same codomain with `Commute` assumption:
  `f.noncommCoprod g _ (p : M × N) = f p.1 * g p.2`.
  (For the commutative case, use `MulHom.coprod`) -/
@[to_additive (attr := simps)
    "Coproduct of two `AddHom`s with the same codomain with `AddCommute` assumption:
    `f.noncommCoprod g _ (p : M × N) = f p.1 + g p.2`.
    (For the commutative case, use `AddHom.coprod`)"]
def noncommCoprod (comm : ∀ m n, Commute (f m) (g n)) : M × N →ₙ* P where
  toFun mn := f mn.fst * g mn.snd
  map_mul' mn mn' := by simpa using (comm _ _).mul_mul_mul_comm _ _

/-- Variant of `MulHom.noncommCoprod_apply` with the product written in the other direction` -/
@[to_additive
  "Variant of `AddHom.noncommCoprod_apply`, with the sum written in the other direction"]
theorem noncommCoprod_apply' (comm) (mn : M × N) :
    (f.noncommCoprod g comm) mn = g mn.2 * f mn.1 := by
  rw [← comm, noncommCoprod_apply]

@[to_additive]
theorem comp_noncommCoprod {Q : Type*} [Semigroup Q] (h : P →ₙ* Q)
    (comm : ∀ m n, Commute (f m) (g n)) :
    h.comp (f.noncommCoprod g comm) =
      (h.comp f).noncommCoprod (h.comp g) (fun m n ↦ (comm m n).map h) :=
  ext fun _ => map_mul h _ _

end MulHom

namespace MonoidHom

variable {M N P : Type*} [MulOneClass M] [MulOneClass N] [Monoid P]
  (f : M →* P) (g : N →* P) (comm : ∀ m n, Commute (f m) (g n))

/-- Coproduct of two `MonoidHom`s with the same codomain,
  with a commutation assumption:
  `f.noncommCoprod g _ (p : M × N) = f p.1 * g p.2`.
  (Noncommutative case; in the commutative case, use `MonoidHom.coprod`.) -/
@[to_additive (attr := simps)
    "Coproduct of two `AddMonoidHom`s with the same codomain,
    with a commutation assumption:
    `f.noncommCoprod g (p : M × N) = f p.1 + g p.2`.
    (Noncommutative case; in the commutative case, use `AddHom.coprod`.)"]
def noncommCoprod : M × N →* P where
  toFun := fun mn ↦ (f mn.fst) * (g mn.snd)
  map_one' := by simp only [Prod.fst_one, Prod.snd_one, map_one, mul_one]
  __ := f.toMulHom.noncommCoprod g.toMulHom comm

/-- Variant of `MonoidHom.noncomCoprod_apply` with the product written in the other direction` -/
@[to_additive
  "Variant of `AddMonoidHom.noncomCoprod_apply` with the sum written in the other direction"]
theorem noncommCoprod_apply' (comm) (mn : M × N) :
    (f.noncommCoprod g comm) mn = g mn.2 * f mn.1 := by
  rw [← comm, MonoidHom.noncommCoprod_apply]

@[to_additive (attr := simp)]
theorem noncommCoprod_comp_inl : (f.noncommCoprod g comm).comp (inl M N) = f :=
  ext fun x => by simp

@[to_additive (attr := simp)]
theorem noncommCoprod_comp_inr : (f.noncommCoprod g comm).comp (inr M N) = g :=
  ext fun x => by simp

@[to_additive (attr := simp)]
theorem noncommCoprod_unique (f : M × N →* P) :
    (f.comp (inl M N)).noncommCoprod (f.comp (inr M N)) (fun _ _ => (commute_inl_inr _ _).map f)
      = f :=
  ext fun x => by simp [coprod_apply, inl_apply, inr_apply, ← map_mul]

@[to_additive (attr := simp)]
theorem noncommCoprod_inl_inr {M N : Type*} [Monoid M] [Monoid N] :
    (inl M N).noncommCoprod (inr M N) commute_inl_inr = id (M × N) :=
  noncommCoprod_unique <| .id (M × N)

@[to_additive]
theorem comp_noncommCoprod {Q : Type*} [Monoid Q] (h : P →* Q) :
    h.comp (f.noncommCoprod g comm) =
      (h.comp f).noncommCoprod (h.comp g) (fun m n ↦ (comm m n).map h) :=
  ext fun x => by simp

section group

open Subgroup

lemma noncommCoprod_injective {M N P : Type*} [Group M] [Group N] [Group P]
    (f : M →* P) (g : N →* P) (comm : ∀ (m : M) (n : N), Commute (f m) (g n)) :
    Function.Injective (noncommCoprod f g comm) ↔
      (Function.Injective f ∧ Function.Injective g ∧ _root_.Disjoint f.range g.range) := by
  simp only [injective_iff_map_eq_one, disjoint_iff_inf_le,
    noncommCoprod_apply, Prod.forall, Prod.mk_eq_one]
  refine ⟨fun h ↦ ⟨fun x ↦ ?_, fun x ↦ ?_, ?_⟩, ?_⟩
  · simpa using h x 1
  · simpa using h 1 x
  · intro x ⟨⟨y, hy⟩, z, hz⟩
    rwa [(h y z⁻¹ (by rw [map_inv, hy, hz, mul_inv_cancel])).1, map_one, eq_comm] at hy
  · intro ⟨hf, hg, hp⟩ a b h
    have key := hp ⟨⟨a⁻¹, by rwa [map_inv, inv_eq_iff_mul_eq_one]⟩, b, rfl⟩
    exact ⟨hf a (by rwa [key, mul_one] at h), hg b key⟩

lemma noncommCoprod_range {M N P : Type*} [Group M] [Group N] [Group P]
    (f : M →* P) (g : N →* P) (comm : ∀ (m : M) (n : N), Commute (f m) (g n)) :
    (noncommCoprod f g comm).range = f.range ⊔ g.range := by
  apply le_antisymm
  · rintro - ⟨a, rfl⟩
    exact mul_mem (mem_sup_left ⟨a.1, rfl⟩) (mem_sup_right ⟨a.2, rfl⟩)
  · rw [sup_le_iff]
    constructor
    · rintro - ⟨a, rfl⟩
      exact ⟨(a, 1), by rw [noncommCoprod_apply, map_one, mul_one]⟩
    · rintro - ⟨a, rfl⟩
      exact ⟨(1, a), by rw [noncommCoprod_apply, map_one, one_mul]⟩

end group

end MonoidHom
```
