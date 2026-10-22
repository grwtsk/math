import GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle
import Mathlib.LinearAlgebra.TensorProduct.Basic

/-!
# Finite coefficient/vector assembly

This module isolates the algebra used by the finite-CM fourfold construction.
It has no geometric, Hodge, or CM-field imports. A finite CM field may be
substituted for E; the algebraic assembly does not depend on its CM structure.
-/

namespace GRWTSK.LinearAlgebra.TensorProduct.FiniteCMCanonicalAssembly

open _root_.TensorProduct
open GRWTSK.LinearAlgebra.TensorProduct.FourPairedShuffle

variable (E : Type*) [Field E] [Algebra ℚ E]

abbrev Paired := Four ℚ E
abbrev Coefficients := FourEntries ℚ E
abbrev Vectors := FourEntries ℚ E
abbrev Separated := Coefficients E ⊗[ℚ] Vectors E
abbrev Output := E ⊗[ℚ] Vectors E

/-- Multiplication descends to the rational tensor square. -/
def coefficientMul : E ⊗[ℚ] E →ₗ[ℚ] E :=
  _root_.TensorProduct.lift {
    toFun := fun a => {
      toFun := fun b => a * b
      map_add' := by intros; simp [mul_add]
      map_smul' := by
        intro q b
        simp [Algebra.smul_def, mul_assoc, mul_left_comm, mul_comm]
    }
    map_add' := by
      intro a b
      ext x
      exact add_mul a b x
    map_smul' := by
      intro q a
      ext x
      simp [Algebra.smul_def, mul_assoc, mul_left_comm, mul_comm]
  }

@[simp] theorem coefficientMul_tmul (a b : E) :
    coefficientMul E (a ⊗ₜ[ℚ] b) = a * b := rfl

/-- Iterated multiplication with the same left association as the shuffle. -/
def coefficientMulFour : Coefficients E →ₗ[ℚ] E :=
  coefficientMul E ∘ₗ
    ((coefficientMul E ∘ₗ
      (coefficientMul E).lTensor E).lTensor E)

@[simp] theorem coefficientMulFour_pure (a b c d : E) :
    coefficientMulFour E (((a ⊗ₜ[ℚ] b) ⊗ₜ[ℚ] c) ⊗ₜ[ℚ] d) =
      a * b * c * d := by
  simp [coefficientMulFour, coefficientMul_tmul, mul_assoc]

/-- The original separated coefficient multiplication. -/
def separatedAssembly : Separated E →ₗ[ℚ] Output E :=
  (coefficientMulFour E).rTensor (Vectors E)

/-- The actual finite paired assembly is the verified four-pair shuffle
followed by separated coefficient multiplication. -/
def pairedAssembly : Paired E →ₗ[ℚ] Output E :=
  separatedAssembly E ∘ₗ (shuffleFour ℚ E).toLinearMap

@[simp] theorem pairedAssembly_pure (a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E) :
    pairedAssembly E
        (pairedPure ℚ E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
      (a₁ * a₂ * a₃ * a₄) ⊗ₜ[ℚ]
        (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄) := by
  simp [pairedAssembly, separatedAssembly, separatedPure,
    coefficientMulFour_pure]

/-- Any rational-linear finite paired assembly satisfying the original
pure coefficient/vector multiplication formula equals the constructed one. -/
theorem pairedAssembly_unique
    (F : Paired E →ₗ[ℚ] Output E)
    (hF : ∀ a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄ : E,
      F (pairedPure ℚ E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄) =
        (a₁ * a₂ * a₃ * a₄) ⊗ₜ[ℚ]
          (((x₁ ⊗ₜ[ℚ] x₂) ⊗ₜ[ℚ] x₃) ⊗ₜ[ℚ] x₄)) :
    F = pairedAssembly E := by
  apply LinearMap.ext
  intro t
  induction t using _root_.TensorProduct.induction_on with
  | zero => simp
  | tmul t123 t4 =>
      induction t123 using _root_.TensorProduct.induction_on with
      | zero => simp
      | tmul t12 t3 =>
          induction t12 using _root_.TensorProduct.induction_on with
          | zero => simp
          | tmul t1 t2 =>
              induction t1 using _root_.TensorProduct.induction_on with
              | zero => simp
              | tmul a₁ x₁ =>
                  induction t2 using _root_.TensorProduct.induction_on with
                  | zero => simp
                  | tmul a₂ x₂ =>
                      induction t3 using _root_.TensorProduct.induction_on with
                      | zero => simp
                      | tmul a₃ x₃ =>
                          induction t4 using _root_.TensorProduct.induction_on with
                          | zero => simp
                          | tmul a₄ x₄ =>
                              exact (hF a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄).trans
                                (pairedAssembly_pure E a₁ x₁ a₂ x₂ a₃ x₃ a₄ x₄).symm
                          | add x y hx hy => simp [map_add, hx, hy]
                      | add x y hx hy => simp [map_add, hx, hy]
                  | add x y hx hy => simp [map_add, hx, hy]
              | add x y hx hy => simp [map_add, hx, hy]
          | add x y hx hy => simp [map_add, hx, hy]
      | add x y hx hy => simp [map_add, hx, hy]
  | add x y hx hy => simp [map_add, hx, hy]

end GRWTSK.LinearAlgebra.TensorProduct.FiniteCMCanonicalAssembly
