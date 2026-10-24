# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Small.Variant661f80b214f81a03649c427f594eb1860e5f84b268bc98cf56758e4d5cc5dcbc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca6a4c721f4075354ea548861235524df5eb552f` · SHA-256 `661f80b214f81a03649c427f594eb1860e5f84b268bc98cf56758e4d5cc5dcbc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.Condensed.Light.Module

/-!

# Equivalence of light condensed objects with sheaves on a small site
-/

@[expose] public section

universe u v w

open CategoryTheory Sheaf Functor

namespace LightCondensed

variable {C : Type w} [Category.{v} C]

variable (C) in
/--
The equivalence of categories from light condensed objects to sheaves on a small site
equivalent to light profinite sets.
-/
noncomputable abbrev equivSmall :
    LightCondensed.{u} C ≌
      Sheaf ((equivSmallModel.{u} LightProfinite.{u}).inverse.inducedTopology
        (coherentTopology LightProfinite.{u})) C :=
  (equivSmallModel LightProfinite).sheafCongr _ _ _

instance (X Y : LightCondensed.{u} C) : Small.{max u v} (X ⟶ Y) where
  equiv_small :=
    ⟨(equivSmall C).functor.obj X ⟶ (equivSmall C).functor.obj Y,
      ⟨(equivSmall C).fullyFaithfulFunctor.homEquiv⟩⟩

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/--
Sheafifying is preserved under conjugating with the equivalence between light condensed objects
and sheaves on a small site.
-/
noncomputable def equivSmallSheafificationIso
    [HasWeakSheafify (coherentTopology LightProfinite.{u}) C]
    [HasWeakSheafify ((equivSmallModel.{u} LightProfinite.{u}).inverse.inducedTopology
      (coherentTopology LightProfinite.{u})) C] :
    (equivSmallModel LightProfinite.{u}).op.congrLeft.inverse ⋙ presheafToSheaf _ _ ⋙
      (equivSmall C).functor ≅
    presheafToSheaf _ _ :=
  (conjugateIsoEquiv (sheafificationAdjunction _ _)
    (((equivSmallModel LightProfinite.{u}).op.congrLeft.symm.toAdjunction.comp
    (sheafificationAdjunction _ _)).comp (equivSmall C).toAdjunction)).symm <|
  NatIso.ofComponents (fun X ↦ ((equivSmallModel LightProfinite).op.invFunIdAssoc _).symm)

variable (R : Type u) [CommRing R]

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] LightCondensed.forget in
set_option backward.isDefEq.respectTransparency false in
/--
Taking the free condensed module is preserved under conjugating with the equivalence between
light condensed objects and sheaves on a small site.
-/
noncomputable def equivSmallFreeIso :
    (equivSmall (Type u)).inverse ⋙ free R ⋙ (equivSmall (ModuleCat R)).functor ≅
    Sheaf.composeAndSheafify _ (ModuleCat.free R) :=
  conjugateIsoEquiv (Sheaf.adjunction _ (ModuleCat.adj R))
    (((equivSmall _).symm.toAdjunction.comp
      (freeForgetAdjunction R)).comp (equivSmall _).toAdjunction) |>.symm <| by
  refine NatIso.ofComponents
    (fun X ↦ (fullyFaithfulSheafToPresheaf _ _).preimageIso
      (isoWhiskerRight ((equivSmallModel LightProfinite).op.invFunIdAssoc _).symm _ ≪≫
        (Functor.associator _ _ _)))

end LightCondensed
```
