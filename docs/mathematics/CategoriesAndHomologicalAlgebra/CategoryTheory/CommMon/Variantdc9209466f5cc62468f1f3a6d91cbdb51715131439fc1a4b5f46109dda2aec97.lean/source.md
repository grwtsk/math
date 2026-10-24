# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommMon.Variantdc9209466f5cc62468f1f3a6d91cbdb51715131439fc1a4b5f46109dda2aec97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29b7a298540d9bedeb89e704db609fdca3232870` · SHA-256 `dc9209466f5cc62468f1f3a6d91cbdb51715131439fc1a4b5f46109dda2aec97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.CategoryTheory.Monoidal.Cartesian.Mon_

/-!
# Yoneda embedding of `CommMon_ C`
-/

open CategoryTheory MonoidalCategory Limits Opposite CartesianMonoidalCategory Mon_Class

universe w v u
variable {C : Type u} [Category.{v} C] [CartesianMonoidalCategory C] [BraidedCategory C] {X : C}

variable (X) in
/-- If `X` represents a presheaf of commutative monoids, then `X` is a commutative monoid object. -/
lemma IsCommMon.ofRepresentableBy (F : Cᵒᵖ ⥤ CommMonCat) (α : (F ⋙ forget _).RepresentableBy X) :
    letI : Mon_Class X := .ofRepresentableBy X (F ⋙ forget₂ CommMonCat MonCat) α
    IsCommMon X := by
  letI : Mon_Class X := .ofRepresentableBy X (F ⋙ forget₂ CommMonCat MonCat) α
  have : μ = α.homEquiv.symm (α.homEquiv (fst X X) * α.homEquiv (snd X X)) := rfl
  constructor
  simp_rw [this, ← α.homEquiv.apply_eq_iff_eq, α.homEquiv_comp, Functor.comp_map,
    ConcreteCategory.forget_map_eq_coe, Equiv.apply_symm_apply, map_mul,
    ← ConcreteCategory.forget_map_eq_coe, ← Functor.comp_map, ← α.homEquiv_comp, op_tensorObj,
    Functor.comp_obj, braiding_hom_fst, braiding_hom_snd, _root_.mul_comm]
```
