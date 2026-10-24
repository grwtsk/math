# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantbba0c1f0abd7ec6cc4e9da3579f0d459f5ecf26dbb8f39b93b19c1bb3a82e4cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a36a12bd560aff7e7940f93f711176e6e8be808` · SHA-256 `bba0c1f0abd7ec6cc4e9da3579f0d459f5ecf26dbb8f39b93b19c1bb3a82e4cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Topology.Sheaves.Sheaf
import Mathlib.CategoryTheory.Sites.Limits
import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic

/-!
# Presheaves in `C` have limits and colimits when `C` does.
-/


noncomputable section

universe v u w t

open CategoryTheory

open CategoryTheory.Limits

variable {C : Type u} [Category.{v} C] {J : Type w} [Category J]

namespace TopCat

instance [HasLimitsOfShape J C] (X : TopCat.{t}) : HasLimitsOfShape J (Presheaf C X) :=
  functorCategoryHasLimitsOfShape

instance [HasLimits C] (X : TopCat.{v}) : HasLimits.{v} (Presheaf C X) where

instance [HasColimitsOfShape J C] (X : TopCat) : HasColimitsOfShape J (Presheaf C X) :=
  functorCategoryHasColimitsOfShape

instance [HasColimits.{v, u} C] (X : TopCat.{t}) : HasColimitsOfSize.{v, v} (Presheaf C X) where

instance [HasLimitsOfShape J C] (X : TopCat.{t}) : CreatesLimitsOfShape J (Sheaf.forget C X) :=
  Sheaf.createsLimitsOfShape

instance [HasLimitsOfShape J C] (X : TopCat.{t}) : HasLimitsOfShape J (Sheaf C X) :=
  hasLimitsOfShape_of_hasLimitsOfShape_createsLimitsOfShape (Sheaf.forget C X)

instance [HasLimits C] (X : TopCat) : CreatesLimits.{v, v} (Sheaf.forget C X) where

instance [HasLimits C] (X : TopCat.{v}) : HasLimitsOfSize.{v, v} (Sheaf.{v} C X) where

theorem isSheaf_of_isLimit [HasLimitsOfShape J C] {X : TopCat} (F : J ⥤ Presheaf.{v} C X)
    (H : ∀ j, (F.obj j).IsSheaf) {c : Cone F} (hc : IsLimit c) : c.pt.IsSheaf := by
  let F' : J ⥤ Sheaf C X :=
    { obj := fun j => ⟨F.obj j, H j⟩
      map := fun f => ⟨F.map f⟩ }
  let e : F' ⋙ Sheaf.forget C X ≅ F := NatIso.ofComponents fun _ => Iso.refl _
  exact Presheaf.isSheaf_of_iso
    ((isLimitOfPreserves (Sheaf.forget C X) (limit.isLimit F')).conePointsIsoOfNatIso hc e)
    (limit F').2

theorem limit_isSheaf [HasLimitsOfShape J C] {X : TopCat} (F : J ⥤ Presheaf.{v} C X)
    (H : ∀ j, (F.obj j).IsSheaf) : (limit F).IsSheaf :=
  isSheaf_of_isLimit F H (limit.isLimit F)

end TopCat
```
