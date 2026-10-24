# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Nerve.Variant6af52fc1deebaee469e6fe987b212d1a41681d58931cd9c6ae150f7c9e5ab3c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b8e8e517bd479a577b2da60c187109562292241` · SHA-256 `6af52fc1deebaee469e6fe987b212d1a41681d58931cd9c6ae150f7c9e5ab3c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Nick Ward. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Emily Riehl, Nick Ward
-/
import Mathlib.AlgebraicTopology.Quasicategory.StrictSegal

/-!
# The nerve of a category is a quasicategory

In `AlgebraicTopology.Quasicategory.StrictSegal`, we show that any
strict Segal simplicial set is a quasicategory.
In `AlgebraicTopology.SimplicialSet.StrictSegal`, we show that the nerve of a
category satisfies the strict Segal condition.

In this file, we prove as a direct consequence that the nerve of a category is
a quasicategory.
-/

universe v u

open SSet

namespace CategoryTheory.Nerve

/-- By virtue of satisfying the `StrictSegal` condition, the nerve of a
category is a `Quasicategory`. -/
instance quasicategory {C : Type u} [Category.{v} C] :
  Quasicategory (nerve C) := inferInstance

end CategoryTheory.Nerve
```
