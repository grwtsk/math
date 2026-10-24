# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Indization.Variant9d86db6e3aae628bdd202312a6683c71caea3ebde5214ac5a4b4a63f0b041f49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `370e9ed144d9002da969294b8e3374dd1046853c` · SHA-256 `9d86db6e3aae628bdd202312a6683c71caea3ebde5214ac5a4b4a63f0b041f49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Generator.Basic
import Mathlib.CategoryTheory.Limits.Indization.Category
import Mathlib.CategoryTheory.Preadditive.Indization

/-!
# Separating set in the category of ind-objects

We construct a separating set in the category of ind-objects and conclude that if `C` is small
and additive, then `Ind C` has a separator.

-/

universe v u

namespace CategoryTheory

open Limits

section

variable {C : Type u} [Category.{v} C]

theorem Ind.isSeparating_range_yoneda : IsSeparating (Set.range (Ind.yoneda : C ⥤ _).obj) := by
  refine fun X Y f g h => (cancel_epi (Ind.colimitPresentationCompYoneda X).hom).1 ?_
  exact colimit.hom_ext (fun i => by simp [← Category.assoc, h])

end

section

variable {C : Type u} [SmallCategory C] [Preadditive C] [HasFiniteColimits C]

theorem Ind.isSeparator_range_yoneda : IsSeparator (∐ (Ind.yoneda : C ⥤ _).obj) :=
  Ind.isSeparating_range_yoneda.isSeparator_coproduct

end

end CategoryTheory
```
