# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FloatArray.Variant9abf336ffcaf2b3b062086deec7f1a28497e87db4054d46e765b3aa51220a80d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `725d9f24f4ebd44be6db448f4250db88276d0948` · SHA-256 `9abf336ffcaf2b3b062086deec7f1a28497e87db4054d46e765b3aa51220a80d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2. license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

@[expose] public section

namespace FloatArray

attribute [ext] FloatArray

/--
Unsafe optimized implementation of `mapM`.

This function is unsafe because it relies on the implementation limit that the size of an array is
always less than `USize.size`.
-/
@[inline]
unsafe def mapMUnsafe [Monad m] (a : FloatArray) (f : Float → m Float) : m FloatArray :=
  loop a 0 a.usize
where
  /-- Inner loop for `mapMUnsafe`. -/
  @[specialize]
  loop (a : FloatArray) (k s : USize) := do
    if k < s then
      let x := a.uget k lcProof
      let y ← f x
      let a := a.uset k y lcProof
      loop a (k+1) s
    else pure a

/-- `mapM f a` applies the monadic function `f` to each element of the array. -/
@[implemented_by mapMUnsafe]
def mapM [Monad m] (a : FloatArray) (f : Float → m Float) : m FloatArray := do
  let mut r := a
  for i in [0:r.size] do
    r := r.set! i (← f r[i]!)
  return r

/-- `map f a` applies the function `f` to each element of the array. -/
@[inline]
def map (a : FloatArray) (f : Float → Float) : FloatArray :=
  mapM (m:=Id) a f
```
