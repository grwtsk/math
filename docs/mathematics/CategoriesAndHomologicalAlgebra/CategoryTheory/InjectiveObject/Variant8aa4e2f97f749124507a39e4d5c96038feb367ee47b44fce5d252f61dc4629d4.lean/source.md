# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InjectiveObject.Variant8aa4e2f97f749124507a39e4d5c96038feb367ee47b44fce5d252f61dc4629d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5b6d283bfccba4f3f6541da6358f1c2b88bb47b` · SHA-256 `8aa4e2f97f749124507a39e4d5c96038feb367ee47b44fce5d252f61dc4629d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.FullSubcategory
public import Mathlib.CategoryTheory.Preadditive.Biproducts
public import Mathlib.CategoryTheory.Preadditive.Injective.Basic

/-!
# The full subcategory of injective objects

-/

public section

universe v u

namespace CategoryTheory

open Limits ZeroObject

variable (C : Type u) [Category.{v} C]

/-- The full subcategory of injective objects in a category `C`. -/
abbrev InjectiveObject : Type u := ObjectProperty.FullSubcategory (isInjective C)

namespace InjectiveObject

instance (J : Type*) :
    ObjectProperty.IsClosedUnderLimitsOfShape (isInjective C) (Discrete J) where
  limitsOfShape_le := by
    rintro Y ⟨p⟩
    have (j : J) : Injective (p.diag.obj ⟨j⟩) := p.prop_diag_obj _
    exact ⟨fun q i _ ↦ ⟨p.isLimit.lift (Cone.mk _
      (Discrete.natTrans (fun ⟨j⟩ ↦ (Injective.factorThru (q ≫ p.π.app ⟨j⟩) i :)))),
        p.isLimit.hom_ext (fun ⟨j⟩ ↦ by simp [p.isLimit.fac])⟩⟩

instance [HasFiniteProducts C] : HasFiniteProducts (InjectiveObject C) where
  out _ := inferInstance

instance [Preadditive C] [HasFiniteProducts C] : HasFiniteBiproducts (InjectiveObject C) :=
  HasFiniteBiproducts.of_hasFiniteProducts

instance [Preadditive C] [HasBinaryBiproducts C] : HasBinaryBiproducts (InjectiveObject C) :=
  HasBinaryBiproducts.of_hasBinaryProducts

instance [HasZeroMorphisms C] [HasZeroObject C] : (isInjective C).ContainsZero where
  exists_zero := ⟨0, by simp [IsZero.iff_id_eq_zero], Injective.zero_injective⟩

/-- The inclusion `InjectiveObject C ⥤ C` of the full subcategory of
injective objects in `C`. -/
abbrev ι : InjectiveObject C ⥤ C := ObjectProperty.ι _

instance (X : InjectiveObject C) : Injective ((ι C).obj X) := X.2

instance (X : InjectiveObject C) : Injective X.obj := X.2

end InjectiveObject

end CategoryTheory
```
