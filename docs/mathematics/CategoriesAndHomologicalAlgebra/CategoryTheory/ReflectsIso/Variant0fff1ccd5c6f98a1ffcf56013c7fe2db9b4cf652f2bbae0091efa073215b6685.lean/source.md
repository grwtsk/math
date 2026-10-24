# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ReflectsIso.Variant0fff1ccd5c6f98a1ffcf56013c7fe2db9b4cf652f2bbae0091efa073215b6685

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbd6a8fab48bee5bf78663c82ea3e3e04e8ac540` · SHA-256 `0fff1ccd5c6f98a1ffcf56013c7fe2db9b4cf652f2bbae0091efa073215b6685`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.ConcreteCategory.Basic
import Mathlib.CategoryTheory.Functor.ReflectsIso.Basic

/-!
A `forget₂ C D` forgetful functor between concrete categories `C` and `D`
whose forgetful functors both reflect isomorphisms, itself reflects isomorphisms.
-/


universe u

namespace CategoryTheory

instance : (forget (Type u)).ReflectsIsomorphisms where reflects _ _ _ {i} := i

variable (C : Type (u + 1)) [Category C] [HasForget.{u} C]
variable (D : Type (u + 1)) [Category D] [HasForget.{u} D]

-- This should not be an instance, as it causes a typeclass loop
-- with `CategoryTheory.hasForgetToType`.
/-- A `forget₂ C D` forgetful functor between concrete categories `C` and `D`
where `forget C` reflects isomorphisms, itself reflects isomorphisms.
-/
theorem reflectsIsomorphisms_forget₂ [HasForget₂ C D] [(forget C).ReflectsIsomorphisms] :
    (forget₂ C D).ReflectsIsomorphisms :=
  { reflects := fun X Y f {i} => by
      haveI i' : IsIso ((forget D).map ((forget₂ C D).map f)) := Functor.map_isIso (forget D) _
      haveI : IsIso ((forget C).map f) := by
        have := @HasForget₂.forget_comp C D
        rwa [← this]
      apply isIso_of_reflects_iso f (forget C) }

end CategoryTheory
```
