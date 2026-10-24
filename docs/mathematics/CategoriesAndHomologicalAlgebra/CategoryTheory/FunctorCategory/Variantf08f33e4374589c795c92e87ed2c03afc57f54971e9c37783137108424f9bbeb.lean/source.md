# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantf08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2796d5a4a8b9bc04df86343da722fd9393079939` · SHA-256 `f08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Preadditive.FunctorCategory
import Mathlib.CategoryTheory.Linear.Basic

/-!
# Linear structure on functor categories

If `C` and `D` are categories and `D` is `R`-linear,
then `C ⥤ D` is also `R`-linear.

-/

namespace CategoryTheory

open CategoryTheory.Limits Linear

variable {R : Type*} [Semiring R]
variable {C D : Type*} [Category C] [Category D] [Preadditive D] [Linear R D]

instance functorCategoryLinear : Linear R (C ⥤ D) where
  homModule F G :=
    { smul := fun r α =>
        { app := fun X => r • α.app X
          naturality := by
            intros
            rw [comp_smul, smul_comp, α.naturality] }
      one_smul := by
        intros
        ext
        apply one_smul
      zero_smul := by
        intros
        ext
        apply zero_smul
      smul_zero := by
        intros
        ext
        apply smul_zero
      add_smul := by
        intros
        ext
        apply add_smul
      smul_add := by
        intros
        ext
        apply smul_add
      mul_smul := by
        intros
        ext
        apply mul_smul }
  smul_comp := by
    intros
    ext
    apply smul_comp
  comp_smul := by
    intros
    ext
    apply comp_smul

namespace NatTrans

variable {F G : C ⥤ D}

/-- Application of a natural transformation at a fixed object,
as group homomorphism -/
@[simps]
def appLinearMap (X : C) : (F ⟶ G) →ₗ[R] F.obj X ⟶ G.obj X where
  toFun α := α.app X
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

@[simp]
theorem app_smul (X : C) (r : R) (α : F ⟶ G) : (r • α).app X = r • α.app X :=
  rfl

end NatTrans

end CategoryTheory
```
