# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Star.Variant7816b94084a02da2c814e75ef7b2bd50326095132e02cf848724e7631cb32886

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47c6a75c1784981cfcece7e08e8fae100d04f807` · SHA-256 `7816b94084a02da2c814e75ef7b2bd50326095132e02cf848724e7631cb32886`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Data.NNReal.Defs
import Mathlib.Data.Real.Star

/-!
# The non-negative real numbers are a `*`-ring, with the trivial `*`-structure
-/

assert_not_exists Finset

open scoped NNReal

instance : StarRing ℝ≥0 := starRingOfComm

instance : TrivialStar ℝ≥0 where
  star_trivial _ := rfl

instance : StarModule ℝ≥0 ℝ where
  star_smul := by simp only [star_trivial, eq_self_iff_true, forall_const]

instance {E : Type*} [AddCommMonoid E] [Star E] [Module ℝ E] [StarModule ℝ E] :
    StarModule ℝ≥0 E where
  star_smul _ := star_smul (_ : ℝ)
```
