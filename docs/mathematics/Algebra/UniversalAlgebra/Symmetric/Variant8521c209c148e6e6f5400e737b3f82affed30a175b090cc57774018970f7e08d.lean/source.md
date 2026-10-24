# Complete source: GRWTSK.Algebra.UniversalAlgebra.Symmetric.Variant8521c209c148e6e6f5400e737b3f82affed30a175b090cc57774018970f7e08d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `169765c493e92b9e88290e81e7d222238de6e7a1` · SHA-256 `8521c209c148e6e6f5400e737b3f82affed30a175b090cc57774018970f7e08d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.LinearAlgebra.QuadraticForm.QuadraticModuleCat.Monoidal
import Mathlib.Algebra.Category.ModuleCat.Monoidal.Symmetric

/-!
# The monoidal structure on `QuadraticModuleCat` is symmetric.

In this file we show:

* `QuadraticModuleCat.instSymmetricCategory : SymmetricCategory (QuadraticModuleCat.{u} R)`

## Implementation notes

This file essentially mirrors `Mathlib/Algebra/Category/AlgCat/Symmetric.lean`.
-/

suppress_compilation

open CategoryTheory

universe v u

variable {R : Type u} [CommRing R] [Invertible (2 : R)]

namespace QuadraticModuleCat

open QuadraticForm

instance : BraidedCategory (QuadraticModuleCat.{u} R) :=
  braidedCategoryOfFaithful (forget₂ (QuadraticModuleCat R) (ModuleCat R))
    (fun X Y => ofIso <| tensorComm X.form Y.form)
    (by aesop_cat)

/-- `forget₂ (QuadraticModuleCat R) (ModuleCat R)` is a braided functor. -/
instance : (forget₂ (QuadraticModuleCat R) (ModuleCat R)).Braided where

instance instSymmetricCategory : SymmetricCategory (QuadraticModuleCat.{u} R) :=
  symmetricCategoryOfFaithful (forget₂ (QuadraticModuleCat R) (ModuleCat R))

end QuadraticModuleCat
```
