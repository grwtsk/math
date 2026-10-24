# Complete source: GRWTSK.Topology.GeneralTopology.Rat.Variantbb7b0996909efe69aa4398727f53d374c2b4c506575c182f447d8c112126cf06

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f34ec7d28e12d5bf1d83d43cde529486a3ca4a1b` · SHA-256 `bb7b0996909efe69aa4398727f53d374c2b4c506575c182f447d8c112126cf06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Algebra.Rat
import Mathlib.Topology.Algebra.ConstMulAction
import Mathlib.Topology.Algebra.Monoid.Defs

/-!
# Topological (sub)algebras over `Rat`

## Results

This is just a minimal stub for now!

-/

section DivisionRing

/-- The action induced by `DivisionRing.toRatAlgebra` is continuous. -/
instance DivisionRing.continuousConstSMul_rat {A} [DivisionRing A] [TopologicalSpace A]
    [ContinuousMul A] [CharZero A] : ContinuousConstSMul ℚ A :=
  ⟨fun r => by simpa only [Algebra.smul_def] using continuous_const.mul continuous_id⟩

end DivisionRing
```
