# Complete source: GRWTSK.Algebra.Fin.Varianta941364c703032a627f100dd92738eb072c472be58f217bfc01994e15526b5c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceb0eb9f933f0412bb88c83507aa6a34534c9ae8` · SHA-256 `a941364c703032a627f100dd92738eb072c472be58f217bfc01994e15526b5c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Data.Fin.Tuple.Basic

/-!
# Rings and `Fin`

This file collects some basic results involving rings and the `Fin` type

## Main results

* `RingEquiv.piFinTwo`: The product over `Fin 2` of some rings is the cartesian product

-/


/-- The product over `Fin 2` of some rings is just the cartesian product of these rings. -/
@[simps]
def RingEquiv.piFinTwo (R : Fin 2 → Type*) [∀ i, Semiring (R i)] :
    (∀ i : Fin 2, R i) ≃+* R 0 × R 1 :=
  { piFinTwoEquiv R with
    toFun := piFinTwoEquiv R
    map_add' := fun _ _ => rfl
    map_mul' := fun _ _ => rfl }
```
