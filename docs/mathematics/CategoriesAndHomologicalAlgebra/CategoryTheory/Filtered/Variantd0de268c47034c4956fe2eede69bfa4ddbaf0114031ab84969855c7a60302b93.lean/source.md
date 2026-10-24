# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variantd0de268c47034c4956fe2eede69bfa4ddbaf0114031ab84969855c7a60302b93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d86c3c9fd36f2a2ce8df6b97ea35417a0c9fd75b` · SHA-256 `d0de268c47034c4956fe2eede69bfa4ddbaf0114031ab84969855c7a60302b93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
import Mathlib.CategoryTheory.Limits.Filtered

/-!
# Functor categories have filtered colimits when the target category does

These declarations cannot be in `Mathlib/CategoryTheory/Limits/FunctorCategory.lean` because
that file shouldn't import `Mathlib/CategoryTheory/Limits/Filtered.lean`.
-/

universe w' w v₁ v₂ u₁ u₂

namespace CategoryTheory.Limits

variable {C : Type u₁} [Category.{v₁} C] {K : Type u₂} [Category.{v₂} K]

instance [HasFilteredColimitsOfSize.{w', w} C] : HasFilteredColimitsOfSize.{w', w} (K ⥤ C) :=
  ⟨fun _ => inferInstance⟩

instance [HasCofilteredLimitsOfSize.{w', w} C] : HasCofilteredLimitsOfSize.{w', w} (K ⥤ C) :=
  ⟨fun _ => inferInstance⟩

end CategoryTheory.Limits
```
