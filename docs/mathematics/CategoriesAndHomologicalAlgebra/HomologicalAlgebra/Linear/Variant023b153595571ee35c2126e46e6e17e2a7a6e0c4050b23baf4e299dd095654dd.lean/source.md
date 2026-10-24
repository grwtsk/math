# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Linear.Variant023b153595571ee35c2126e46e6e17e2a7a6e0c4050b23baf4e299dd095654dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26a58538231c23244183b62926cce9e40d3cda74` · SHA-256 `023b153595571ee35c2126e46e6e17e2a7a6e0c4050b23baf4e299dd095654dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.DerivedCategory.Basic
public import Mathlib.Algebra.Homology.Linear
public import Mathlib.CategoryTheory.Localization.Linear
public import Mathlib.CategoryTheory.Shift.Linear

/-!
# The derived category of a linear abelian category is linear

-/

public section

open CategoryTheory

universe t w v u

variable (R : Type t) [Ring R] (C : Type u) [Category.{v} C] [Abelian C] [Linear R C]
  [HasDerivedCategory.{w} C]

namespace DerivedCategory

noncomputable instance : Linear R (DerivedCategory C) :=
  Localization.linear R (DerivedCategory.Qh : _ ⥤ DerivedCategory C)
    (HomotopyCategory.quasiIso C _)

instance : Functor.Linear R (DerivedCategory.Qh : _ ⥤ DerivedCategory C) :=
  Localization.functor_linear _ _ _

instance : Functor.Linear R (DerivedCategory.Q : _ ⥤ DerivedCategory C) :=
  Functor.linear_of_iso _ (quotientCompQhIso C)

instance (n : ℤ) : (shiftFunctor (DerivedCategory C) n).Linear R :=
  Shift.linear_of_localization R Qh (HomotopyCategory.subcategoryAcyclic C).trW _

instance (n : ℤ) : Functor.Linear R (DerivedCategory.singleFunctor C n) :=
  Functor.linear_of_iso _ (singleFunctorIsoCompQh C n).symm

end DerivedCategory
```
