# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteMultiequalizer.Variant9dd9da1fbefb52c701f6202f11cb453b227d98970a81841efeec9ef19c35ed28

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fada5a85aeab13f2b5ff68323fed5858d470092` · SHA-256 `9dd9da1fbefb52c701f6202f11cb453b227d98970a81841efeec9ef19c35ed28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.FinCategory.Basic
import Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer
import Mathlib.Tactic.DeriveFintype

/-!
# Finiteness instances on multi-spans
-/

namespace CategoryTheory.Limits

namespace WalkingMulticospan

variable {J : MulticospanShape} [Fintype J.L] [Fintype J.R]

instance : Fintype (WalkingMulticospan J) := .ofEquiv _ (proxy_equiv% (WalkingMulticospan J))

instance [DecidableEq J.L] [DecidableEq J.R] : FinCategory (WalkingMulticospan J) where
  fintypeHom
    | .left a, .left b => ⟨if e : a = b then {eqToHom (e ▸ rfl)} else ∅, by rintro ⟨⟩; simp⟩
    | .left a, .right b => ⟨⟨(if e : J.fst b = a then {eqToHom (e ▸ rfl) ≫ Hom.fst b} else 0) +
        (if e : J.snd b = a then {eqToHom (e ▸ rfl) ≫ Hom.snd b} else 0), by
        split_ifs with h₁ h₂
        · simp only [Multiset.singleton_add, Multiset.nodup_cons, Multiset.mem_singleton,
            Multiset.nodup_singleton, and_true]
          let f : ((left a : WalkingMulticospan J) ⟶ right b) → Prop
            | .fst a => True
            | .snd a => False
          apply ne_of_apply_ne f
          conv_lhs => tactic => subst h₁; simp only [eqToHom_refl, Category.id_comp, f]
          conv_rhs => tactic => subst h₂; simp only [eqToHom_refl, Category.id_comp, f]
          simp
        all_goals simp⟩, by rintro ⟨⟩ <;> simp⟩
    | .right a, .left b => ⟨∅, by rintro ⟨⟩⟩
    | .right a, .right b => ⟨if e : a = b then {eqToHom (e ▸ rfl)} else ∅, by rintro ⟨⟩; simp⟩

end WalkingMulticospan

namespace WalkingMultispan

variable {J : MultispanShape} [Fintype J.L] [Fintype J.R]

instance : Fintype (WalkingMultispan J) := .ofEquiv _ (proxy_equiv% (WalkingMultispan J))

instance [DecidableEq J.L] [DecidableEq J.R] : FinCategory (WalkingMultispan J) where
  fintypeHom
    | .left a, .left b => ⟨if e : a = b then {eqToHom (e ▸ rfl)} else ∅, by rintro ⟨⟩; simp⟩
    | .left a, .right b => ⟨⟨(if e : J.fst a = b then {Hom.fst a ≫ eqToHom (e ▸ rfl)} else 0) +
        (if e : J.snd a = b then {Hom.snd a ≫ eqToHom (e ▸ rfl)} else 0), by
        split_ifs with h₁ h₂
        · simp only [Multiset.singleton_add, Multiset.nodup_cons, Multiset.mem_singleton,
            Multiset.nodup_singleton, and_true]
          let f : ((left a : WalkingMultispan J) ⟶ right b) → Prop
            | .fst a => True
            | .snd a => False
          apply ne_of_apply_ne f
          conv_lhs => tactic => subst h₁; simp only [eqToHom_refl, Category.id_comp, f]
          conv_rhs => tactic => subst h₂; simp only [eqToHom_refl, Category.id_comp, f]
          simp
        all_goals simp⟩, by rintro ⟨⟩ <;> simp⟩
    | .right a, .left b => ⟨∅, by rintro ⟨⟩⟩
    | .right a, .right b => ⟨if e : a = b then {eqToHom (e ▸ rfl)} else ∅, by rintro ⟨⟩; simp⟩

end WalkingMultispan

end CategoryTheory.Limits
```
