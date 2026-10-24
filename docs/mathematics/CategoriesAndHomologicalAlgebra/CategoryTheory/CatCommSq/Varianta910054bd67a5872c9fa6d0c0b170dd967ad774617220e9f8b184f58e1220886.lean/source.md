# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CatCommSq.Varianta910054bd67a5872c9fa6d0c0b170dd967ad774617220e9f8b184f58e1220886

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbe234ac13dc9b2e14276bbae07bdbbe86f9e00a` · SHA-256 `a910054bd67a5872c9fa6d0c0b170dd967ad774617220e9f8b184f58e1220886`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.CatCommSq
public import Mathlib.CategoryTheory.Comma.Arrow

/-!
# 2-commutative squares of categories of arrows

-/

public section

namespace CategoryTheory.Arrow

@[simps]
instance catCommSq
    {C₁ C₂ D₁ D₂ : Type*} [Category C₁] [Category C₂] [Category D₁] [Category D₂]
    (T : C₁ ⥤ C₂) (L : C₁ ⥤ D₁) (R : C₂ ⥤ D₂) (B : D₁ ⥤ D₂) [CatCommSq T L R B] :
    CatCommSq T.mapArrow L.mapArrow R.mapArrow B.mapArrow where
  iso := (Functor.mapArrowFunctor _ _).mapIso (CatCommSq.iso T L R B)

end CategoryTheory.Arrow
```
