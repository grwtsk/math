# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant68afc5f46836cff6b1f752e74232c6a4258ec1724547ad6288c20559c8b240db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38ce82e5aefa39c6bfaf73664e9df6eb39493c8e` · SHA-256 `68afc5f46836cff6b1f752e74232c6a4258ec1724547ad6288c20559c8b240db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Basic
/-!

# AB axioms in functor categories

This file proves that, when the relevant limits and colimits exist, exactness of limits and
colimits carries over from `A` to the functor category `C ⥤ A`
-/

namespace CategoryTheory

open CategoryTheory Limits Opposite

variable {A C J : Type*} [Category A] [Category C] [Category J]

instance [HasColimitsOfShape J A] [HasExactColimitsOfShape J A] [HasFiniteLimits A] :
    HasExactColimitsOfShape J (C ⥤ A) where
  preservesFiniteLimits := { preservesFiniteLimits _ := inferInstance }

instance [HasLimitsOfShape J A] [HasExactLimitsOfShape J A] [HasFiniteColimits A] :
    HasExactLimitsOfShape J (C ⥤ A) where
  preservesFiniteColimits := { preservesFiniteColimits _ := inferInstance }

end CategoryTheory
```
