# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Epi.Variant667b46130ef49e881c06fa2773fb9a4ec379e173e896178f487e954e5fa05755

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5320bbb96ab3be62e2bb3e6836138dd886ce3e1` · SHA-256 `667b46130ef49e881c06fa2773fb9a4ec379e173e896178f487e954e5fa05755`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Sites.Coherent.LocallySurjective
public import Mathlib.CategoryTheory.Sites.EpiMono
public import Mathlib.Condensed.Equivalence
public import Mathlib.Condensed.Module
/-!

# Epimorphisms of condensed objects

This file characterises epimorphisms of condensed sets and condensed `R`-modules for any ring `R`,
as those morphisms which are objectwise surjective on `Stonean` (see
`CondensedSet.epi_iff_surjective_on_stonean` and `CondensedMod.epi_iff_surjective_on_stonean`).
-/

public section

universe v u w u' v'

open CategoryTheory Sheaf Opposite Limits Condensed ConcreteCategory

namespace Condensed

variable (A : Type u') [Category.{v'} A] {FA : A → A → Type*} {CA : A → Type v'}
variable [∀ X Y, FunLike (FA X Y) (CA X) (CA Y)] [ConcreteCategory.{v'} A FA]
  [HasFunctorialSurjectiveInjectiveFactorization A]

variable {X Y : Condensed.{u} A} (f : X ⟶ Y)

set_option Elab.async false in  -- TODO: universe levels from type are unified in proof
variable
  [(coherentTopology CompHaus).WEqualsLocallyBijective A]
  [HasSheafify (coherentTopology CompHaus) A]
  [(coherentTopology CompHaus.{u}).HasSheafCompose (CategoryTheory.forget A)]
  [Balanced (Sheaf (coherentTopology CompHaus) A)]
  [PreservesFiniteProducts (CategoryTheory.forget A)] in
lemma epi_iff_locallySurjective_on_compHaus : Epi f ↔
    ∀ (S : CompHaus) (y : ToType (Y.obj.obj ⟨S⟩)),
      (∃ (S' : CompHaus) (φ : S' ⟶ S) (_ : Function.Surjective φ) (x : ToType (X.obj.obj ⟨S'⟩)),
        f.hom.app ⟨S'⟩ x = Y.obj.map ⟨φ⟩ y) := by
  rw [← isLocallySurjective_iff_epi', coherentTopology.isLocallySurjective_iff,
    regularTopology.isLocallySurjective_iff]
  simp_rw [((CompHaus.effectiveEpi_tfae _).out 1 3 :)]

set_option Elab.async false in  -- TODO: universe levels from type are unified in proof
variable
  [PreservesFiniteProducts (CategoryTheory.forget A)]
  [∀ (X : CompHausᵒᵖ), HasLimitsOfShape (StructuredArrow X Stonean.toCompHaus.op) A]
  [(extensiveTopology Stonean).WEqualsLocallyBijective A]
  [HasSheafify (extensiveTopology Stonean) A]
  [(extensiveTopology Stonean.{u}).HasSheafCompose (CategoryTheory.forget A)]
  [Balanced (Sheaf (extensiveTopology Stonean) A)] in
lemma epi_iff_surjective_on_stonean : Epi f ↔
    ∀ (S : Stonean), Function.Surjective (f.hom.app (op S.compHaus)) := by
  rw [← (StoneanCompHaus.equivalence A).inverse.epi_map_iff_epi,
    ← Presheaf.coherentExtensiveEquivalence.functor.epi_map_iff_epi,
    ← isLocallySurjective_iff_epi']
  exact extensiveTopology.isLocallySurjective_iff (D := A) _

end Condensed

namespace CondensedSet

variable {X Y : CondensedSet.{u}} (f : X ⟶ Y)

lemma epi_iff_locallySurjective_on_compHaus : Epi f ↔
    ∀ (S : CompHaus) (y : Y.obj.obj ⟨S⟩),
      (∃ (S' : CompHaus) (φ : S' ⟶ S) (_ : Function.Surjective φ) (x : X.obj.obj ⟨S'⟩),
        f.hom.app ⟨S'⟩ x = Y.obj.map ⟨φ⟩ y) :=
  Condensed.epi_iff_locallySurjective_on_compHaus _ f

lemma epi_iff_surjective_on_stonean : Epi f ↔
    ∀ (S : Stonean), Function.Surjective (f.hom.app (op S.compHaus)) :=
  Condensed.epi_iff_surjective_on_stonean _ f

end CondensedSet

namespace CondensedMod

variable (R : Type (u + 1)) [Ring R] {X Y : CondensedMod.{u} R} (f : X ⟶ Y)

lemma epi_iff_locallySurjective_on_compHaus : Epi f ↔
    ∀ (S : CompHaus) (y : Y.obj.obj ⟨S⟩),
      (∃ (S' : CompHaus) (φ : S' ⟶ S) (_ : Function.Surjective φ) (x : X.obj.obj ⟨S'⟩),
        f.hom.app ⟨S'⟩ x = Y.obj.map ⟨φ⟩ y) :=
  Condensed.epi_iff_locallySurjective_on_compHaus _ f

lemma epi_iff_surjective_on_stonean : Epi f ↔
    ∀ (S : Stonean), Function.Surjective (f.hom.app (op S.compHaus)) :=
  have : HasLimitsOfSize.{u, u + 1} (ModuleCat R) :=
    hasLimitsOfSizeShrink.{u, u + 1, u + 1, u + 1} _
  Condensed.epi_iff_surjective_on_stonean _ f

end CondensedMod
```
