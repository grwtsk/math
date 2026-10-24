# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abelian.Variantfb4e57482bfa71ce6bf504bea7b5331602586adb10fcf59ab5ebb0fd99b21c2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c89454d03a37bcd9c6970b8326eb1f8c83f22c0` · SHA-256 `fb4e57482bfa71ce6bf504bea7b5331602586adb10fcf59ab5ebb0fd99b21c2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz, Jujian Zhang
-/
import Mathlib.CategoryTheory.Abelian.FunctorCategory
import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor
import Mathlib.CategoryTheory.Abelian.Transfer
import Mathlib.CategoryTheory.Sites.Limits

/-!
# Category of sheaves is abelian
Let `C, D` be categories and `J` be a grothendieck topology on `C`, when `D` is abelian and
sheafification is possible in `C`, `Sheaf J D` is abelian as well (`sheafIsAbelian`).

Hence, `presheafToSheaf` is an additive functor (`presheafToSheaf_additive`).

-/


noncomputable section

namespace CategoryTheory

open CategoryTheory.Limits

section Abelian

universe w' w v u

variable {C : Type u} [Category.{v} C]
variable {D : Type w} [Category.{w'} D] [Abelian D]
variable {J : GrothendieckTopology C}
variable [HasSheafify J D]

instance sheafIsAbelian : Abelian (Sheaf J D) :=
  let adj := sheafificationAdjunction J D
  abelianOfAdjunction _ _ (asIso adj.counit) adj

attribute [local instance] preservesBinaryBiproducts_of_preservesBinaryProducts

instance presheafToSheaf_additive : (presheafToSheaf J D).Additive :=
  (presheafToSheaf J D).additive_of_preservesBinaryBiproducts

end Abelian

end CategoryTheory
```
