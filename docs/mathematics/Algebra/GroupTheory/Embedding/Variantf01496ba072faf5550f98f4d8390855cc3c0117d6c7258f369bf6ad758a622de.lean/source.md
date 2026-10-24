# Complete source: GRWTSK.Algebra.GroupTheory.Embedding.Variantf01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `899ccdd58e0bd217617853d3c53c7f3ffdc76eca` · SHA-256 `f01496ba072faf5550f98f4d8390855cc3c0117d6c7258f369bf6ad758a622de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Logic.Embedding.Basic
import Mathlib.Algebra.Group.Defs

/-!
# The embedding of a cancellative semigroup into itself by multiplication by a fixed element.
-/

assert_not_exists MonoidWithZero DenselyOrdered

variable {G : Type*}

section LeftOrRightCancelSemigroup

/-- If left-multiplication by any element is cancellative, left-multiplication by `g` is an
embedding. -/
@[to_additive (attr := simps)
      "If left-addition by any element is cancellative, left-addition by `g` is an
        embedding."]
def mulLeftEmbedding [Mul G] [IsLeftCancelMul G] (g : G) : G ↪ G where
  toFun h := g * h
  inj' := mul_right_injective g

/-- If right-multiplication by any element is cancellative, right-multiplication by `g` is an
embedding. -/
@[to_additive (attr := simps)
      "If right-addition by any element is cancellative, right-addition by `g` is an
        embedding."]
def mulRightEmbedding [Mul G] [IsRightCancelMul G] (g : G) : G ↪ G where
  toFun h := h * g
  inj' := mul_left_injective g

@[to_additive]
theorem mulLeftEmbedding_eq_mulRightEmbedding [CommMagma G] [IsCancelMul G] (g : G) :
    mulLeftEmbedding g = mulRightEmbedding g := by
  ext
  exact mul_comm _ _

end LeftOrRightCancelSemigroup
```
