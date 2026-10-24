# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AB.Variantc866bed81daf4a811b702ce0fc5d4c3e2a6c4405349809f334cb50841d070760

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac0d8a91748516df9d6252a59b2f1ab047aa0192` · SHA-256 `c866bed81daf4a811b702ce0fc5d4c3e2a6c4405349809f334cb50841d070760`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Algebra.Category.Grp.AB
import Mathlib.Algebra.Category.ModuleCat.Colimits
import Mathlib.Algebra.Small.Module
import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic
/-!

# AB axioms in module categories

This file proves that the category of modules over a ring satisfies Grothendieck's axioms AB5, AB4,
and AB4*. Further, it proves that `R` is a separator in the category of modules over `R`, and
concludes that this category is Grothendieck abelian.
-/

universe u v

open CategoryTheory Limits

variable (R : Type u) [Ring R]

instance : AB5 (ModuleCat.{u} R) where
  ofShape J _ _ :=
    HasExactColimitsOfShape.domain_of_functor J (forget₂ (ModuleCat R) AddCommGrp)

attribute [local instance] Abelian.hasFiniteBiproducts

instance : AB4 (ModuleCat.{u} R) := AB4.of_AB5 _

instance : AB4Star (ModuleCat.{u} R) where
  ofShape J :=
    HasExactLimitsOfShape.domain_of_functor (Discrete J) (forget₂ (ModuleCat R) AddCommGrp.{u})

lemma ModuleCat.isSeparator [Small.{v} R] : IsSeparator (ModuleCat.of.{v} R (Shrink.{v} R)) :=
    fun X Y f g h ↦ by
  simp only [Set.mem_singleton_iff, forall_eq, ModuleCat.hom_ext_iff, LinearMap.ext_iff] at h
  ext x
  simpa [linearEquivShrink, Equiv.linearEquiv] using
    h (ModuleCat.ofHom ((LinearMap.toSpanSingleton R X x).comp
      ((linearEquivShrink R R).symm : Shrink R →ₗ[R] R))) 1

instance [Small.{v} R] : HasSeparator (ModuleCat.{v} R) where
  hasSeparator := ⟨ModuleCat.of R (Shrink.{v} R), ModuleCat.isSeparator R⟩

instance : IsGrothendieckAbelian.{u} (ModuleCat.{u} R) where
```
