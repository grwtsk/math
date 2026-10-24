# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant508f75ccd33a72ae6fbbe4710d92dd3582103dd5ad46a737ba83b59d4658e74e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7f13098ad2aad82504fe4896060bfa3093fc9b8` · SHA-256 `508f75ccd33a72ae6fbbe4710d92dd3582103dd5ad46a737ba83b59d4658e74e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/

/-! # Additional definitions on `ForInStep` -/

/--
This is similar to a monadic `bind` operator, except that the two type parameters have to be
the same, which prevents putting a monad instance on `ForInStepT m α := m (ForInStep α)`.
-/
@[inline] protected def ForInStep.bind [Monad m]
    (a : ForInStep α) (f : α → m (ForInStep α)) : m (ForInStep α) :=
  match a with
  | .done a => return .done a
  | .yield a => f a

@[inherit_doc ForInStep.bind] protected abbrev ForInStep.bindM [Monad m]
    (a : m (ForInStep α)) (f : α → m (ForInStep α)) : m (ForInStep α) := a >>= (·.bind f)

/--
Get the value out of a `ForInStep`.
This is usually done at the end of a `forIn` loop to scope the early exit to the loop body.
-/
@[inline] def ForInStep.run : ForInStep α → α
  | .done a
  | .yield a => a

/-- Applies function `f` to each element of a list to accumulate a `ForInStep` value. -/
def ForInStep.bindList [Monad m]
      (f : α → β → m (ForInStep β)) : List α → ForInStep β → m (ForInStep β)
  | [], s => pure s
  | a::l, s => s.bind fun b => f a b >>= (·.bindList f l)
```
