# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be0f842d918af092935cdf1bc65278c6a1737739` · SHA-256 `8bbec67df018a52c0b92f0405a0aeb257b17911a87249d51a52afef364e1efd9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Preadditive.Yoneda.Basic
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.CategoryTheory.Limits.Yoneda

/-!
# The Yoneda embedding for preadditive categories preserves limits

The Yoneda embedding for preadditive categories preserves limits.

## Implementation notes

This is in a separate file to avoid having to import the development of the abelian structure on
`ModuleCat` in the main file about the preadditive Yoneda embedding.

-/


universe v u

open CategoryTheory.Preadditive Opposite CategoryTheory.Limits

noncomputable section

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] [Preadditive C]

instance preservesLimits_preadditiveYonedaObj (X : C) : PreservesLimits (preadditiveYonedaObj X) :=
  have : PreservesLimits (preadditiveYonedaObj X ⋙ forget _) :=
    (inferInstance : PreservesLimits (yoneda.obj X))
  preservesLimits_of_reflects_of_preserves _ (forget _)

instance preservesLimits_preadditiveCoyonedaObj (X : C) :
    PreservesLimits (preadditiveCoyonedaObj X) :=
  have : PreservesLimits (preadditiveCoyonedaObj X ⋙ forget _) :=
    (inferInstance : PreservesLimits (coyoneda.obj (op X)))
  preservesLimits_of_reflects_of_preserves _ (forget _)

instance preservesLimits_preadditiveYoneda_obj (X : C) :
    PreservesLimits (preadditiveYoneda.obj X) :=
  show PreservesLimits (preadditiveYonedaObj X ⋙ forget₂ _ _) from inferInstance

instance preservesLimits_preadditiveCoyoneda_obj (X : Cᵒᵖ) :
    PreservesLimits (preadditiveCoyoneda.obj X) :=
  show PreservesLimits (preadditiveCoyonedaObj (unop X) ⋙ forget₂ _ _) from inferInstance

end CategoryTheory
```
