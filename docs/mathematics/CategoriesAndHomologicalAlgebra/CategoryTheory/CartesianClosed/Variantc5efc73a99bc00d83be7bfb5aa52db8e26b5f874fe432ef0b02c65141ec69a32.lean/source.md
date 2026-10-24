# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianClosed.Variantc5efc73a99bc00d83be7bfb5aa52db8e26b5f874fe432ef0b02c65141ec69a32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e8df4e562a8503e5507e16d296b1e3357b78746` · SHA-256 `c5efc73a99bc00d83be7bfb5aa52db8e26b5f874fe432ef0b02c65141ec69a32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Closed.Ideal
import Mathlib.CategoryTheory.Monoidal.Cartesian.FunctorCategory
import Mathlib.CategoryTheory.Sites.CartesianMonoidal
import Mathlib.CategoryTheory.Sites.Sheafification
/-!

# Sheaf categories are cartesian closed

...if the underlying presheaf category is cartesian closed, the target category has
(chosen) finite products, and there exists a sheafification functor.
-/

noncomputable section

open CategoryTheory Limits

variable {C : Type*} [Category C] (J : GrothendieckTopology C) (A : Type*) [Category A]

instance [HasSheafify J A] [CartesianMonoidalCategory A] [CartesianClosed (Cᵒᵖ ⥤ A)] :
    CartesianClosed (Sheaf J A) :=
  cartesianClosedOfReflective (sheafToPresheaf _ _)
```
