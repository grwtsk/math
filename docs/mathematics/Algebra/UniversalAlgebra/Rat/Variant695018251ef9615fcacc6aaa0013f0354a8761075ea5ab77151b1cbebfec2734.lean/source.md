# Complete source: GRWTSK.Algebra.UniversalAlgebra.Rat.Variant695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dba9e780f510175aafc7580c9dfa9e736d5b2b17` · SHA-256 `695018251ef9615fcacc6aaa0013f0354a8761075ea5ab77151b1cbebfec2734`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Module.Defs
import Mathlib.Data.NNRat.Lemmas
import Mathlib.Data.Rat.Cast.Order

/-!
# Monotonicity of the action by rational numbers
-/

variable {α : Type*}

instance PosSMulMono.nnrat_of_rat [Preorder α] [MulAction ℚ α] [PosSMulMono ℚ α] :
    PosSMulMono ℚ≥0 α where elim _q hq _a₁ _a₂ ha := smul_le_smul_of_nonneg_left (α := ℚ) ha hq

instance PosSMulStrictMono.nnrat_of_rat [Preorder α] [MulAction ℚ α] [PosSMulStrictMono ℚ α] :
    PosSMulStrictMono ℚ≥0 α where elim _q hq _a₁ _a₂ ha := smul_lt_smul_of_pos_left (α := ℚ) ha hq

section LinearOrderedAddCommGroup
variable [AddCommGroup α] [LinearOrder α] [IsOrderedAddMonoid α]

@[simp] lemma abs_nnqsmul [DistribMulAction ℚ≥0 α] [PosSMulMono ℚ≥0 α] (q : ℚ≥0) (a : α) :
    |q • a| = q • |a| := by
  obtain ha | ha := le_total a 0 <;>
    simp [*, abs_of_nonneg, abs_of_nonpos, smul_nonneg, smul_nonpos_of_nonneg_of_nonpos]

@[simp] lemma abs_qsmul [Module ℚ α] [PosSMulMono ℚ α] (q : ℚ) (a : α) :
    |q • a| = |q| • |a| := by
  obtain ha | ha := le_total a 0 <;> obtain hq | hq := le_total q 0 <;>
    simp [*, abs_of_nonneg, abs_of_nonpos, smul_nonneg, smul_nonpos_of_nonneg_of_nonpos,
      smul_nonpos_of_nonpos_of_nonneg, smul_nonneg_of_nonpos_of_nonpos]

end LinearOrderedAddCommGroup

section LinearOrderedSemifield
variable [Semifield α] [LinearOrder α] [IsStrictOrderedRing α]

instance LinearOrderedSemifield.toPosSMulStrictMono_rat : PosSMulStrictMono ℚ≥0 α where
  elim q hq a b hab := by
    rw [NNRat.smul_def, NNRat.smul_def]; exact mul_lt_mul_of_pos_left hab <| NNRat.cast_pos.2 hq

end LinearOrderedSemifield

section LinearOrderedField
variable [Field α] [LinearOrder α] [IsStrictOrderedRing α]

instance LinearOrderedField.toPosSMulStrictMono_rat : PosSMulStrictMono ℚ α where
  elim q hq a b hab := by
    rw [Rat.smul_def, Rat.smul_def]; exact mul_lt_mul_of_pos_left hab <| Rat.cast_pos.2 hq

end LinearOrderedField
```
