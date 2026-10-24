# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant785096abe526a87c870401bff03b35135dd9eb7b9ba78fd06d479b0741a379a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03c8242578a85a18d481d5930124a7b3b9b1d5b2` · SHA-256 `785096abe526a87c870401bff03b35135dd9eb7b9ba78fd06d479b0741a379a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Fangming Li. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Fangming Li
-/
module

public import Mathlib.Algebra.MvPolynomial.Basic
public import Mathlib.RingTheory.KrullDimension.Basic

variable {R : Type*} [CommSemiring R]

proof_wanted MvPolynomial.fin_ringKrullDim_eq_add_of_isNoetherianRing
    [IsNoetherianRing R] (n : ℕ) :
    ringKrullDim (MvPolynomial (Fin n) R) = ringKrullDim R + n
```
