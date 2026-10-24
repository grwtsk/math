# Complete source: GRWTSK.Algebra.GroupTheory.Embedding.Variant6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `252fa733fc4adef5aebdf9ef1fd4de880712af6b` · SHA-256 `6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.Group.Defs
import Mathlib.Logic.Embedding.Basic

#align_import algebra.hom.embedding from "leanprover-community/mathlib"@"70d50ecfd4900dd6d328da39ab7ebd516abe4025"

/-!
# The embedding of a cancellative semigroup into itself by multiplication by a fixed element.
-/


variable {R : Type*}

section LeftOrRightCancelSemigroup

/-- The embedding of a left cancellative semigroup into itself
by left multiplication by a fixed element.
 -/
@[to_additive (attr := simps)
      "The embedding of a left cancellative additive semigroup into itself
         by left translation by a fixed element." ]
def mulLeftEmbedding {G : Type*} [LeftCancelSemigroup G] (g : G) : G ↪ G where
  toFun h := g * h
  inj' := mul_right_injective g
#align mul_left_embedding mulLeftEmbedding
#align add_left_embedding addLeftEmbedding
#align add_left_embedding_apply addLeftEmbedding_apply
#align mul_left_embedding_apply mulLeftEmbedding_apply

/-- The embedding of a right cancellative semigroup into itself
by right multiplication by a fixed element.
 -/
@[to_additive (attr := simps)
      "The embedding of a right cancellative additive semigroup into itself
         by right translation by a fixed element."]
def mulRightEmbedding {G : Type*} [RightCancelSemigroup G] (g : G) : G ↪ G where
  toFun h := h * g
  inj' := mul_left_injective g
#align mul_right_embedding mulRightEmbedding
#align add_right_embedding addRightEmbedding
#align mul_right_embedding_apply mulRightEmbedding_apply
#align add_right_embedding_apply addRightEmbedding_apply

@[to_additive]
theorem mul_left_embedding_eq_mul_right_embedding {G : Type*} [CancelCommMonoid G] (g : G) :
    mulLeftEmbedding g = mulRightEmbedding g := by
  ext
  exact mul_comm _ _
#align mul_left_embedding_eq_mul_right_embedding mul_left_embedding_eq_mul_right_embedding
#align add_left_embedding_eq_add_right_embedding add_left_embedding_eq_add_right_embedding

end LeftOrRightCancelSemigroup
```
