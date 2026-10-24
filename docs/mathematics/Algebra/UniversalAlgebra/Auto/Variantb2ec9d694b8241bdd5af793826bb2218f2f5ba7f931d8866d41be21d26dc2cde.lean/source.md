# Complete source: GRWTSK.Algebra.UniversalAlgebra.Auto.Variantb2ec9d694b8241bdd5af793826bb2218f2f5ba7f931d8866d41be21d26dc2cde

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5c2e6228ed9168faa3af1d73a93146ca67550ad` · SHA-256 `b2ec9d694b8241bdd5af793826bb2218f2f5ba7f931d8866d41be21d26dc2cde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Expr
import Mathlib.Data.Matrix.Reflection

/-! # Automatically generated lemmas for working with concrete matrices

In Mathlib3, this file contained "magic" lemmas which autogenerate to the correct size of matrix.
For instance, `Matrix.of_mul_of_fin` could be used as:
```lean
example {α} [AddCommMonoid α] [Mul α] (a₁₁ a₁₂ a₂₁ a₂₂ b₁₁ b₁₂ b₂₁ b₂₂ : α) :
  !![a₁₁, a₁₂;
     a₂₁, a₂₂] * !![b₁₁, b₁₂;
                    b₂₁, b₂₂] = !![a₁₁ * b₁₁ + a₁₂ * b₂₁, a₁₁ * b₁₂ + a₁₂ * b₂₂;
                                   a₂₁ * b₁₁ + a₂₂ * b₂₁, a₂₁ * b₁₂ + a₂₂ * b₂₂] := by
  rw [of_mul_of_fin]
```

TODO: These magic lemmas have been skipped for now, though the plumbing lemmas in
`Mathlib/Data/Matrix/Reflection.lean` are still available.
They should probably be implemented as simprocs.
-/
````
