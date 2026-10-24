# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variantcec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0a0419df792334399119f6189da8cac7623a083` · SHA-256 `cec1a54f2b9779655400cdbc689f5ae23c04636754a6dd1d2052752dd1c821c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Braided.Basic
import Mathlib.CategoryTheory.Monoidal.Opposite

/-!
# If `C` is braided, so is `Cᵒᵖ`.

Todo: we should also do `Cᵐᵒᵖ`.
-/

open CategoryTheory MonoidalCategory BraidedCategory Opposite

variable {C : Type*} [Category C] [MonoidalCategory C] [BraidedCategory C]

instance : BraidedCategory Cᵒᵖ where
  braiding X Y := (β_ (unop Y) (unop X)).op

namespace CategoryTheory.BraidedCategory

@[simp] lemma unop_tensorμ {C : Type*} [Category C] [MonoidalCategory C]
    [BraidedCategory C] (X Y W Z : Cᵒᵖ) :
    (tensorμ X W Y Z).unop = tensorμ X.unop Y.unop W.unop Z.unop := by
  simp only [unop_tensorObj, tensorμ, unop_comp, unop_inv_associator, unop_whiskerLeft,
    unop_hom_associator, unop_whiskerRight, unop_hom_braiding, Category.assoc]

@[simp] lemma op_tensorμ {C : Type*} [Category C] [MonoidalCategory C]
    [BraidedCategory C] (X Y W Z : C) :
    (tensorμ X W Y Z).op = tensorμ (op X) (op Y) (op W) (op Z) := by
  simp only [op_tensorObj, tensorμ, op_comp, op_inv_associator, op_whiskerLeft, op_hom_associator,
    op_whiskerRight, op_hom_braiding, Category.assoc]

end CategoryTheory.BraidedCategory
```
