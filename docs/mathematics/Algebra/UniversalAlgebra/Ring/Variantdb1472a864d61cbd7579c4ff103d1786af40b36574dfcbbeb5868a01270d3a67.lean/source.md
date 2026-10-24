# Complete source: GRWTSK.Algebra.UniversalAlgebra.Ring.Variantdb1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e129dfc0cc55f07e71df0c289dd057958e5afd6` · SHA-256 `db1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.Ring.Defs

/-!
# Commutativity and associativity of action of integers on rings

This file proves that `ℕ` and `ℤ` act commutatively and associatively on (semi)rings.

## TODO

Those instances are in their own file only because they require much less imports than any existing
file they could go to. This is unfortunate and should be fixed by reorganising files.
-/

open scoped Int

variable {R : Type*}

instance NonUnitalNonAssocSemiring.toDistribSMul [NonUnitalNonAssocSemiring R] :
    DistribSMul R R where smul_add := mul_add

/-- Note that `AddCommMonoid.nat_isScalarTower` requires stronger assumptions on `R`. -/
instance NonUnitalNonAssocSemiring.nat_isScalarTower [NonUnitalNonAssocSemiring R] :
    IsScalarTower ℕ R R where
  smul_assoc n x y := by
    induction n with
    | zero => simp [zero_nsmul]
    | succ n ih => simp_rw [succ_nsmul, ← ih, smul_eq_mul, add_mul]

/-- Note that `AddCommGroup.int_isScalarTower` requires stronger assumptions on `R`. -/
instance NonUnitalNonAssocRing.int_isScalarTower [NonUnitalNonAssocRing R] :
    IsScalarTower ℤ R R where
  smul_assoc n x y :=
    match n with
    | (n : ℕ) => by simp_rw [natCast_zsmul, smul_assoc]
    | -[n+1] => by simp_rw [negSucc_zsmul, smul_eq_mul, neg_mul, smul_mul_assoc]
```
