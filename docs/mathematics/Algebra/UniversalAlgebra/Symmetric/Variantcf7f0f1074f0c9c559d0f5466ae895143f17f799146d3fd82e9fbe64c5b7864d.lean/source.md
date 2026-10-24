# Complete source: GRWTSK.Algebra.UniversalAlgebra.Symmetric.Variantcf7f0f1074f0c9c559d0f5466ae895143f17f799146d3fd82e9fbe64c5b7864d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df4c5eb9ef893ce7a6c3a12cb1a07ea9f9ec4f2b` · SHA-256 `cf7f0f1074f0c9c559d0f5466ae895143f17f799146d3fd82e9fbe64c5b7864d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Category.AlgCat.Monoidal
import Mathlib.Algebra.Category.ModuleCat.Monoidal.Symmetric

/-!
# The monoidal structure on `AlgCat` is symmetric.

In this file we show:

* `AlgCat.instSymmetricCategory : SymmetricCategory (AlgCat.{u} R)`
-/
open CategoryTheory


noncomputable section

universe v u

variable {R : Type u} [CommRing R]

namespace AlgCat

instance : BraidedCategory (AlgCat.{u} R) :=
  braidedCategoryOfFaithful (forget₂ (AlgCat R) (ModuleCat R))
    (fun X Y => (Algebra.TensorProduct.comm R X Y).toAlgebraIso)
    (by aesop_cat)

instance : (forget₂ (AlgCat R) (ModuleCat R)).Braided where

instance instSymmetricCategory : SymmetricCategory (AlgCat.{u} R) :=
  symmetricCategoryOfFaithful (forget₂ (AlgCat R) (ModuleCat R))

end AlgCat
```
