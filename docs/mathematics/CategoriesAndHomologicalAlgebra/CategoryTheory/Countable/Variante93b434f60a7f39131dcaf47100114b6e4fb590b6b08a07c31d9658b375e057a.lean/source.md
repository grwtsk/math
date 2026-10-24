# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Countable.Variante93b434f60a7f39131dcaf47100114b6e4fb590b6b08a07c31d9658b375e057a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c374350070b3f0c1b26f0a375140ba4374eac4e0` · SHA-256 `e93b434f60a7f39131dcaf47100114b6e4fb590b6b08a07c31d9658b375e057a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.Countable

open CategoryTheory

variable {C : Type*} [Category* C]

namespace CategoryTheory.Limits

namespace IsCofiltered

@[stacks 0032]
proof_wanted preorder_of_cofiltered (J : Type*) [Category* J] [IsCofiltered J] :
    ∃ (I : Type*) (_ : Preorder I) (_ : IsCofiltered I) (F : I ⥤ J), F.Initial

/--
The proof of `preorder_of_cofiltered` should give a countable `I` in the case that `J` is a
countable category.
-/
proof_wanted preorder_of_cofiltered_countable
    (J : Type*) [SmallCategory J] [IsCofiltered J] [CountableCategory J] :
    ∃ (I : Type) (_ : Preorder I) (_ : Countable I) (_ : IsCofiltered I) (F : I ⥤ J), F.Initial

/--
Put together `sequentialFunctor_initial` and `preorder_of_cofiltered_countable`.
-/
proof_wanted hasCofilteredCountableLimits_of_hasSequentialLimits [HasLimitsOfShape ℕᵒᵖ C] :
    ∀ (J : Type) [SmallCategory J] [IsCofiltered J] [CountableCategory J], HasLimitsOfShape J C

/--
This is the countable version of `CategoryTheory.Limits.has_limits_of_finite_and_cofiltered`, given
all of the above.
-/
proof_wanted hasCountableLimits_of_hasFiniteLimits_and_hasSequentialLimits [HasFiniteLimits C]
  [HasLimitsOfShape ℕᵒᵖ C] : HasCountableLimits C

/--
For this we need to dualize `sequentialFunctor_initial` (in
`Mathlib/CategoryTheory/Limits/Shapes/Countable.lean`) and the `proof_wanted` statements above.
-/
proof_wanted hasCountableColimits_of_hasFiniteColimits_and_hasSequentialColimits
  [HasFiniteColimits C] [HasLimitsOfShape ℕ C] : HasCountableColimits C

end IsCofiltered

end CategoryTheory.Limits
```
