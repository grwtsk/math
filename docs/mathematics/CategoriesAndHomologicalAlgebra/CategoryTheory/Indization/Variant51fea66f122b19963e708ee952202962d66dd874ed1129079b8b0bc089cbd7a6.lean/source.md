# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Indization.Variant51fea66f122b19963e708ee952202962d66dd874ed1129079b8b0bc089cbd7a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b9ce592d9cd13d0c733a80b6f38bed7d42b9795` · SHA-256 `51fea66f122b19963e708ee952202962d66dd874ed1129079b8b0bc089cbd7a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.FunctorCategory
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Types
import Mathlib.CategoryTheory.Abelian.Indization
import Mathlib.CategoryTheory.Limits.Indization.Category
import Mathlib.CategoryTheory.Generator.Indization
import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic

/-!
# AB axioms in the category of ind-objects

We show that `Ind C` satisfies Grothendieck's axiom AB5 if `C` has finite limits and deduce that
`Ind C` is Grothendieck abelian if `C` is small and abelian.
-/

universe v u

namespace CategoryTheory.Limits

section

variable {C : Type u} [Category.{v} C]

instance {J : Type v} [SmallCategory J] [IsFiltered J] [HasFiniteLimits C] :
    HasExactColimitsOfShape J (Ind C) :=
  HasExactColimitsOfShape.domain_of_functor J (Ind.inclusion C)

instance [HasFiniteLimits C] : AB5 (Ind C) where
  ofShape _ _ _ := inferInstance

end

section

variable {C : Type u} [SmallCategory C] [Abelian C]

instance isGrothendieckAbelian_ind : IsGrothendieckAbelian.{u} (Ind C) where
  hasSeparator := ⟨⟨_, Ind.isSeparator_range_yoneda⟩⟩

end

end CategoryTheory.Limits
```
