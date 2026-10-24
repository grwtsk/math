# Complete source: GRWTSK.Algebra.GroupTheory.Embedding.Variant4595b3fdbfca306e428c230d4b701bee13eba66a74be3bd061cd2e9a4ad9c260

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a12cbfcc49ff56f898b1f072f24563fc2d7892e` · SHA-256 `4595b3fdbfca306e428c230d4b701bee13eba66a74be3bd061cd2e9a4ad9c260`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
module

public import Mathlib.Logic.Embedding.Basic
public import Mathlib.Algebra.Group.Semigroup

/-!
# The embedding of a cancellative semigroup into itself by multiplication by a fixed element.
-/

@[expose] public section

assert_not_exists MonoidWithZero DenselyOrdered

variable {G : Type*}

section LeftOrRightCancelSemigroup

/-- If left-multiplication by any element is cancellative, left-multiplication by `g` is an
embedding. -/
@[to_additive (attr := simps (attr := grind =))
/-- If left-addition by any element is cancellative, left-addition by `g` is an embedding. -/]
def mulLeftEmbedding [Mul G] [IsLeftCancelMul G] (g : G) : G ↪ G where
  toFun h := g * h
  inj' := mul_right_injective g

/-- If right-multiplication by any element is cancellative, right-multiplication by `g` is an
embedding. -/
@[to_additive (attr := simps (attr := grind =))
/-- If right-addition by any element is cancellative, right-addition by `g` is an embedding. -/]
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
