# Complete source: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant9881c38a33247a37ddae3e8f2faeea64e07d28edb78ef9fa63a260efe18a0c3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `926a3dfa663596faa91d40c8c6f15083f270ab5f` · SHA-256 `9881c38a33247a37ddae3e8f2faeea64e07d28edb78ef9fa63a260efe18a0c3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston, Andrew Yang
-/
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Bialgebra.TensorProduct

/-!
# Tensor products of Hopf algebras

We define the Hopf algebra instance on the tensor product of two Hopf algebras.

-/

open Coalgebra TensorProduct HopfAlgebra

namespace TensorProduct

variable {R A B : Type*} [CommSemiring R] [Semiring A] [Semiring B] [HopfAlgebra R A]
    [HopfAlgebra R B]

noncomputable
instance : HopfAlgebra R (B ⊗[R] A) where
  antipode := AlgebraTensorModule.map HopfAlgebra.antipode HopfAlgebra.antipode
  mul_antipode_rTensor_comul := by
    ext x y
    convert congr($(mul_antipode_rTensor_comul_apply (R := R) x) ⊗ₜ[R]
      $(mul_antipode_rTensor_comul_apply (R := R) y)) using 1
    · dsimp
      hopf_tensor_induction comul (R := R) x with x₁ x₂
      hopf_tensor_induction comul (R := R) y with y₁ y₂
      simp
    · dsimp [Algebra.TensorProduct.one_def]
      simp [Algebra.algebraMap_eq_smul_one, smul_tmul', mul_smul]
  mul_antipode_lTensor_comul := by
    ext x y
    convert congr($(mul_antipode_lTensor_comul_apply (R := R) x) ⊗ₜ[R]
      $(mul_antipode_lTensor_comul_apply (R := R) y)) using 1
    · dsimp [Algebra.TensorProduct.one_def]
      hopf_tensor_induction comul (R := R) x with x₁ x₂
      hopf_tensor_induction comul (R := R) y with y₁ y₂
      simp
    · dsimp [Algebra.TensorProduct.one_def]
      simp [Algebra.algebraMap_eq_smul_one, smul_tmul', mul_smul]

@[simp]
theorem antipode_def :
    antipode (R := R) (A := B ⊗[R] A) = AlgebraTensorModule.map antipode antipode := rfl

end TensorProduct
```
