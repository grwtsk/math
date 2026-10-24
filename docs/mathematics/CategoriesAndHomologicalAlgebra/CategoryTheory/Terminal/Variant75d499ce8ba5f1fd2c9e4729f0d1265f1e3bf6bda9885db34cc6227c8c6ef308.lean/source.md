# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Terminal.Variant75d499ce8ba5f1fd2c9e4729f0d1265f1e3bf6bda9885db34cc6227c8c6ef308

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebc2bf8f546fe1e6fe83591ca4375501e9b4da58` · SHA-256 `75d499ce8ba5f1fd2c9e4729f0d1265f1e3bf6bda9885db34cc6227c8c6ef308`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
public import Mathlib.CategoryTheory.Limits.Shapes.IsTerminal

/-!
# Initial and terminal objects in the category of functors

We show that if a functor `F : C ⥤ D` is such that `F.obj X`
is terminal for all `X`, then `F` is a terminal object.

-/

@[expose] public section

namespace CategoryTheory.Functor

open Limits

variable {C D : Type*} [Category* C] [Category* D]

/-- If `F : C ⥤ D` is such that `F.obj X` is terminal for any `X : C`,
then `F` is a terminal object. -/
def isTerminal {F : C ⥤ D} (hF : ∀ (X : C), IsTerminal (F.obj X)) :
    IsTerminal F := by
  refine evaluationJointlyReflectsLimits _
    fun X ↦ IsLimit.equivOfNatIsoOfIso (Functor.emptyExt _ _) _ _ ?_ (hF X)
  exact Cone.ext (Iso.refl _)

/-- If `F : C ⥤ D` is such that `F.obj X` is initial for any `X : C`,
then `F` is an initial object. -/
def isInitial {F : C ⥤ D} (hF : ∀ (X : C), IsInitial (F.obj X)) :
    IsInitial F := by
  refine evaluationJointlyReflectsColimits _
    fun X ↦ IsColimit.equivOfNatIsoOfIso (Functor.emptyExt _ _) _ _ ?_ (hF X)
  exact Cocone.ext (Iso.refl _)

end CategoryTheory.Functor
```
