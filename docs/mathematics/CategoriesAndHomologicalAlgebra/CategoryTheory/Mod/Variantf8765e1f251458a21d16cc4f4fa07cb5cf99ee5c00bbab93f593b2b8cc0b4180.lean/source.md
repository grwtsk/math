# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mod.Variantf8765e1f251458a21d16cc4f4fa07cb5cf99ee5c00bbab93f593b2b8cc0b4180

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a794ede4054d0f06cae1500b08ae01b8d30c984` · SHA-256 `f8765e1f251458a21d16cc4f4fa07cb5cf99ee5c00bbab93f593b2b8cc0b4180`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Paul Lezeau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Lezeau
-/
import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic
import Mathlib.CategoryTheory.Monoidal.Mod_

/-!
# Additional results about module objects in cartesian monoidal categories
-/

open CategoryTheory MonoidalCategory CartesianMonoidalCategory

universe v u
variable {C : Type u} [Category.{v} C] [CartesianMonoidalCategory C]

attribute [local simp] leftUnitor_hom

/-- Every object is a module over a monoid object via the trivial action. -/
@[simps]
def Mod_.trivialAction (M : Mon_ C) (X : C) : Mod_ M where
  X := X
  smul := snd M.X X

/-- Every object is a module over a monoid object via the trivial action. -/
@[reducible] def Mod_Class.trivialAction (M : C) [Mon_Class M] (X : C) : Mod_Class M X where
  smul := snd M X
```
