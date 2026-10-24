# Complete source: GRWTSK.Algebra.LinearAlgebra.Star.Variant57dab96b4adbf883a00422e3711c4876462517f72e865a5407d4fe0d821712f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5714575d468fd7bb50cb565c88b1c1f7a8780a2` · SHA-256 `57dab96b4adbf883a00422e3711c4876462517f72e865a5407d4fe0d821712f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
module

public import Mathlib.Basic.NNReal.Defs
public import Mathlib.Basic.Real.Star

/-!
# The non-negative real numbers are a \*-ring, with the trivial \*-structure
-/

public section

assert_not_exists Finset

open scoped NNReal

instance : StarRing ℝ≥0 := starRingOfComm

instance : TrivialStar ℝ≥0 where
  star_trivial _ := rfl

instance : StarModule ℝ≥0 ℝ where
  star_smul := by simp only [star_trivial, forall_const]

instance {E : Type*} [AddCommMonoid E] [Star E] [Module ℝ E] [StarModule ℝ E] :
    StarModule ℝ≥0 E where
  star_smul _ := star_smul (_ : ℝ)
```
