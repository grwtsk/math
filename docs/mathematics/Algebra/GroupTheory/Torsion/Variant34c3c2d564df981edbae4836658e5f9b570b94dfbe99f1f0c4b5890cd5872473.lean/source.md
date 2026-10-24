# Complete source: GRWTSK.Algebra.GroupTheory.Torsion.Variant34c3c2d564df981edbae4836658e5f9b570b94dfbe99f1f0c4b5890cd5872473

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06bd01c0d75803d951975539fc2961ee98b4fcdb` · SHA-256 `34c3c2d564df981edbae4836658e5f9b570b94dfbe99f1f0c4b5890cd5872473`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Group.Pi.Basic
public import Mathlib.Algebra.Group.Torsion

/-!
# Torsion of products

This file proves that products of torsion-free monoids are torsion-free.
-/

public section

assert_not_exists AddMonoidWithOne MonoidWithZero

variable {ι : Type*} {M : ι → Type*}

namespace Pi

@[to_additive]
instance instIsMulTorsionFree [∀ i, Monoid (M i)] [∀ i, IsMulTorsionFree (M i)] :
    IsMulTorsionFree (∀ i, M i) where
  pow_left_injective n hn a b hab := by ext i; exact pow_left_injective hn <| congr_fun hab i

end Pi
```
