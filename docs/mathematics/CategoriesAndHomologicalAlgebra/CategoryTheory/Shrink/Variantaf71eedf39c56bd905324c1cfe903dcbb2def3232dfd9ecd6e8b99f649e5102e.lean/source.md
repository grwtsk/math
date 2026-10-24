# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Shrink.Variantaf71eedf39c56bd905324c1cfe903dcbb2def3232dfd9ecd6e8b99f649e5102e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51cc1b8b6a2d48e19b06b2968ce3b09a74e08e23` · SHA-256 `af71eedf39c56bd905324c1cfe903dcbb2def3232dfd9ecd6e8b99f649e5102e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta, Edward Ayers
-/
module

public import Mathlib.CategoryTheory.ShrinkYoneda
public import Mathlib.CategoryTheory.Sites.Sieves.Presheaf
public import Mathlib.CategoryTheory.Subfunctor.Basic

/-!
# Shrinking sieve functors

The presheaf associated to a sieve naturally takes values in the universe containing the hom-sets
of the ambient category. For a locally small category, the Yoneda shrinking construction allows
this presheaf to be represented in a chosen smaller universe.

This file defines `Sieve.shrinkFunctor`, the universe-shrunk presheaf associated to a sieve, and
constructs its comparison isomorphism with the lifted sieve presheaf. It also records the
compatibility of this isomorphism with the inclusion into the corresponding Yoneda presheaf.

## Tags

sieve, presheaf, universe
-/

@[expose] public section


universe w w' v₁ u₁

namespace CategoryTheory

open Category

variable {C : Type u₁} [Category.{v₁} C] {X : C}

namespace Sieve

variable {S : Sieve X}

/-- If `C` is `w`-locally small, any sieve induces a subfunctor of `shrinkYoneda.{w}.obj X`. -/
@[simps, pp_with_univ]
def shrinkFunctor [LocallySmall.{w} C] {X : C} (S : Sieve X) :
    Subfunctor (shrinkYoneda.{w}.obj X) where
  obj Y := { f | S (shrinkYonedaObjObjEquiv f) }
  map {Y Z} g f hf := by
    simpa [shrinkYonedaObjObjEquiv_obj_map] using S.downward_closed hf _

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
variable (S) in
/-- `Sieve.shrinkFunctor` is compatible with universe lifting. -/
noncomputable
def shrinkFunctorUliftFunctorIso [LocallySmall.{w} C] [LocallySmall.{max w' w} C] :
    (shrinkFunctor.{w} S).toFunctor ⋙ CategoryTheory.uliftFunctor.{w', w} ≅
      (shrinkFunctor.{max w' w} S).toFunctor :=
  NatIso.ofComponents
    (fun X ↦ Equiv.toIso
      (.trans Equiv.ulift
        (Equiv.subtypeEquiv (shrinkYonedaObjObjEquiv.trans shrinkYonedaObjObjEquiv.symm)
        fun a ↦ by simp)))
    fun {U V} f ↦ by
      dsimp
      ext
      dsimp [Equiv.subtypeEquiv_apply]
      rw [shrinkYonedaObjObjEquiv_obj_map, shrinkYonedaObjObjEquiv_symm_comp]
      simp

@[reassoc]
lemma shrinkFunctorUliftFunctorIso_inv_ι [LocallySmall.{w} C] [LocallySmall.{max w' w} C] :
    (shrinkFunctorUliftFunctorIso.{w, w'} S).inv ≫
      Functor.whiskerRight (shrinkFunctor.{w} _).ι CategoryTheory.uliftFunctor.{w', w} =
    (shrinkFunctor.{max w' w} S).ι ≫
      shrinkYonedaUliftFunctorIso.{w, w'}.inv.app X :=
  rfl

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
variable (S) in
/-- Shrinking does nothing for the same universe level. -/
@[simps! hom_app inv_app]
noncomputable def shrinkFunctorIsoFunctor : (shrinkFunctor.{v₁} S).toFunctor ≅ S.functor :=
  NatIso.ofComponents (fun Y ↦ Equiv.toIso <| Equiv.subtypeEquiv shrinkYonedaObjObjEquiv (by simp))
    fun {U V} f ↦ by
      dsimp [Equiv.subtypeEquiv_apply]
      ext
      simp [shrinkYonedaObjObjEquiv_obj_map]

end Sieve

end CategoryTheory
```
