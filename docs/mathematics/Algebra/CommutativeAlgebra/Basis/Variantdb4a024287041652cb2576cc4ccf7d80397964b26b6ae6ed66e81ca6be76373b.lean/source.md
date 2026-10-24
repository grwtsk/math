# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Basis.Variantdb4a024287041652cb2576cc4ccf7d80397964b26b6ae6ed66e81ca6be76373b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec2962085a92c39606f55b1e0326c8381e3b49b5` · SHA-256 `db4a024287041652cb2576cc4ccf7d80397964b26b6ae6ed66e81ca6be76373b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.LinearAlgebra.Basis.Defs

/-!

# Basis of a polynomial ring

-/

universe u

variable (R : Type u) [Semiring R]

namespace Polynomial

/-- The monomials form a basis on `R[X]`. To get the rank of a polynomial ring,
use this and `Basis.mk_eq_rank`. -/
def basisMonomials : Basis ℕ R R[X] :=
  Basis.ofRepr (toFinsuppIsoLinear R)

@[simp]
theorem coe_basisMonomials : (basisMonomials R : ℕ → R[X]) = fun s => monomial s 1 :=
  funext fun _ => ofFinsupp_single _ _

end Polynomial
```
