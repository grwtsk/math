# Complete source: GRWTSK.Algebra.UniversalAlgebra.Faithful.Variante9c059d2ddee9c9b411e4448af789dca11e68d89b346695b453823ac4a762538

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbb73d2353ea506b35cdeda71bbfe2f8fb6d301b` · SHA-256 `e9c059d2ddee9c9b411e4448af789dca11e68d89b346695b453823ac4a762538`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Yury Kudryashov
-/
import Mathlib.Algebra.Group.Action.Faithful
import Mathlib.Algebra.GroupWithZero.NeZero

/-!
# Faithful actions involving groups with zero
-/

assert_not_exists Equiv.Perm.equivUnitsEnd Prod.fst_mul Ring

open Function

variable {α : Type*}

/-- `Monoid.toMulAction` is faithful on nontrivial cancellative monoids with zero. -/
instance CancelMonoidWithZero.faithfulSMul [CancelMonoidWithZero α] [Nontrivial α] :
    FaithfulSMul α α where eq_of_smul_eq_smul  h := mul_left_injective₀ one_ne_zero (h 1)
```
