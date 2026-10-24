# Complete source: GRWTSK.Algebra.UniversalAlgebra.Rat.Variantf6b58249cb71fedfae4447be1b32b09b5f95814b90c2ba0b1ca78e91dc3b6798

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `914d1473cacfaa96d0be162a3f1af9ad98a8a97e` · SHA-256 `f6b58249cb71fedfae4447be1b32b09b5f95814b90c2ba0b1ca78e91dc3b6798`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.GroupWithZero.Action.Defs

/-!
# Actions by nonnegative rational numbers
-/

assert_not_exists OrderedAddCommMonoid

variable {R : Type*}

/-! ### Scalar multiplication -/

namespace NNRat
variable [DivisionSemiring R]

instance (priority := 100) instDistribSMul : DistribSMul ℚ≥0 R where
  smul_zero a := by rw [smul_def, mul_zero]
  smul_add a x y := by rw [smul_def, smul_def, smul_def, mul_add]

instance instIsScalarTowerRight : IsScalarTower ℚ≥0 R R where
  smul_assoc a x y := by simp only [smul_def, smul_eq_mul, mul_assoc]

end NNRat

namespace Rat
variable [DivisionRing R]

instance (priority := 100) instDistribSMul : DistribSMul ℚ R where
  smul_zero a := by rw [smul_def, mul_zero]
  smul_add a x y := by rw [smul_def, smul_def, smul_def, mul_add]

instance instIsScalarTowerRight : IsScalarTower ℚ R R where
  smul_assoc a x y := by simp only [smul_def, smul_eq_mul, mul_assoc]

end Rat
```
