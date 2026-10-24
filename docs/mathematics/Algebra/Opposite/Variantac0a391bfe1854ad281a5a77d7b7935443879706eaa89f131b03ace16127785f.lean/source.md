# Complete source: GRWTSK.Algebra.Opposite.Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3a1ced355dc90c018a047412def773194e5c11b` · SHA-256 `ac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.RingTheory.TensorProduct.Basic
import Mathlib.Algebra.Algebra.Opposite

/-! # `MulOpposite` distributes over `⊗`

The main result in this file is:

* `Algebra.TensorProduct.opAlgEquiv R S A B : Aᵐᵒᵖ ⊗[R] Bᵐᵒᵖ ≃ₐ[S] (A ⊗[R] B)ᵐᵒᵖ`
-/

suppress_compilation

open scoped TensorProduct

variable (R S A B : Type*)
variable [CommSemiring R] [CommSemiring S] [Semiring A] [Semiring B]
variable [Algebra R S] [Algebra R A] [Algebra R B] [Algebra S A]
variable [IsScalarTower R S A]

namespace Algebra.TensorProduct

open MulOpposite

/-- `MulOpposite` distributes over `TensorProduct`. Note this is an `S`-algebra morphism, where
`A/S/R` is a tower of algebras. -/
def opAlgEquiv : Aᵐᵒᵖ ⊗[R] Bᵐᵒᵖ ≃ₐ[S] (A ⊗[R] B)ᵐᵒᵖ :=
  letI e₁ : Aᵐᵒᵖ ⊗[R] Bᵐᵒᵖ ≃ₗ[S] (A ⊗[R] B)ᵐᵒᵖ :=
    TensorProduct.AlgebraTensorModule.congr
      (opLinearEquiv S).symm (opLinearEquiv R).symm ≪≫ₗ opLinearEquiv S
  letI e₂ : A ⊗[R] B ≃ₗ[S] (Aᵐᵒᵖ ⊗[R] Bᵐᵒᵖ)ᵐᵒᵖ :=
    TensorProduct.AlgebraTensorModule.congr (opLinearEquiv S) (opLinearEquiv R) ≪≫ₗ opLinearEquiv S
  AlgEquiv.ofAlgHom
    (algHomOfLinearMapTensorProduct e₁.toLinearMap
      (fun a₁ a₂ b₁ b₂ => unop_injective (by with_unfolding_all rfl)) (unop_injective rfl))
    (AlgHom.opComm <| algHomOfLinearMapTensorProduct e₂.toLinearMap
      (fun a₁ a₂ b₁ b₂ => unop_injective (by with_unfolding_all rfl)) (unop_injective rfl))
    (AlgHom.op.symm.injective <| by ext <;> rfl) (by ext <;> rfl)

theorem opAlgEquiv_apply (x : Aᵐᵒᵖ ⊗[R] Bᵐᵒᵖ) :
    opAlgEquiv R S A B x =
      op (_root_.TensorProduct.map
        (opLinearEquiv R).symm.toLinearMap (opLinearEquiv R).symm.toLinearMap x) :=
  rfl

theorem opAlgEquiv_symm_apply (x : (A ⊗[R] B)ᵐᵒᵖ) :
    (opAlgEquiv R S A B).symm x =
      _root_.TensorProduct.map (opLinearEquiv R).toLinearMap (opLinearEquiv R).toLinearMap x.unop :=
  rfl

@[simp]
theorem opAlgEquiv_tmul (a : Aᵐᵒᵖ) (b : Bᵐᵒᵖ) :
    opAlgEquiv R S A B (a ⊗ₜ[R] b) = op (a.unop ⊗ₜ b.unop) :=
  rfl

@[simp]
theorem opAlgEquiv_symm_tmul (a : A) (b : B) :
    (opAlgEquiv R S A B).symm (op <| a ⊗ₜ[R] b) = op a ⊗ₜ op b :=
  rfl

end Algebra.TensorProduct
```
