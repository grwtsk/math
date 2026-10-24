# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ControlImpl.Variant0b95647576ba8573a622dda9291e7f03924402cd34e5731227637172961d46b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f479d165661548f96b466e7021349b9b3e2163a7` · SHA-256 `0b95647576ba8573a622dda9291e7f03924402cd34e5731227637172961d46b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Markus Himmel
-/
module

prelude
public import Init.Data.List.Control
public import Init.Data.List.Impl

public section

namespace List

/--
Applies a monadic function that returns a list to each element of a list, from left to right, and
concatenates the resulting lists.
-/
@[inline, expose]
def flatMapMTR {m : Type u → Type v} [Monad m] {α : Type w} {β : Type u} (f : α → m (List β)) (as : List α) : m (List β) :=
  let rec @[specialize] loop
    | [],     bs => pure bs.reverse.flatten
    | a :: as, bs => do
      let bs' ← f a
      loop as (bs' :: bs)
  loop as []

@[csimp] theorem flatMapM_eq_flatMapMTR : @flatMapM = @flatMapMTR := by
  funext m _ α β f l
  simp only [flatMapM, flatMapMTR]
  generalize [] = m
  fun_induction flatMapM.loop <;> simp_all [flatMapMTR.loop]

end List
```
