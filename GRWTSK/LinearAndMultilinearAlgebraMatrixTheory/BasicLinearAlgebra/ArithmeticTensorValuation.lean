import Mathlib.LinearAlgebra.TensorAlgebra.Basic
import Mathlib.LinearAlgebra.TensorAlgebra.Grading
import Mathlib.Algebra.BigOperators.Ring.Finset

/-!
# The positional valuation's tensor-algebra extension

Attribution: grwtsk contributors.
Formal status is recorded in the accompanying exact-source verification evidence.
Target: Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

This imports canonical Mathlib TensorAlgebra, whose `lift` already expresses
the universal property and whose `gradedAlgebra` supplies the grading.
The new consumer is the actual positional-weight linear map and its
multiplicative extension. This extension is generally noninjective.

Intended subject path:
GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ArithmeticTensorValuation.lean.
-/

open scoped BigOperators

namespace GRWTSK.LinearAndMultilinearAlgebra.ArithmeticTensorValuation

abbrev WordModule := Fin 128 → ℤ

/-- The linear extension of the physical word's positional valuation. -/
def positional : WordModule →ₗ[ℤ] ℤ where
  toFun x := ∑ i : Fin 128, x i * (2 : ℤ) ^ i.val
  map_add' x y := by
    simp only [Pi.add_apply, add_mul, Finset.sum_add_distrib]
  map_smul' c x := by
    simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    exact mul_assoc c (x i) ((2 : ℤ) ^ i.val)

/-- Universal extension; integer multiplication occurs after this semantic map. -/
def evaluate : TensorAlgebra ℤ WordModule →ₐ[ℤ] ℤ :=
  TensorAlgebra.lift ℤ positional

theorem evaluate_generator (x : WordModule) :
    evaluate (TensorAlgebra.ι ℤ x) = positional x :=
  TensorAlgebra.lift_ι_apply positional x

theorem evaluate_product (x y : TensorAlgebra ℤ WordModule) :
    evaluate (x * y) = evaluate x * evaluate y :=
  map_mul evaluate x y

theorem evaluate_addition (x y : TensorAlgebra ℤ WordModule) :
    evaluate (x + y) = evaluate x + evaluate y :=
  map_add evaluate x y

/-- Any algebra map agreeing on the original word module is exactly this semantic map. -/
theorem evaluate_unique (g : TensorAlgebra ℤ WordModule →ₐ[ℤ] ℤ)
    (hg : g.toLinearMap.comp (TensorAlgebra.ι ℤ) = positional) :
    g = evaluate :=
  (TensorAlgebra.lift_unique positional g).mp hg

/-- Reindexing preserves valuation only when the weights are transported too. -/
theorem reindex_weighted_sum {I J : Type*} [Fintype I] [Fintype J]
    (σ : I ≃ J) (x w : I → ℤ) :
    (∑ j : J, x (σ.symm j) * w (σ.symm j)) = ∑ i : I, x i * w i :=
  Equiv.sum_comp σ.symm (fun i => x i * w i)

end GRWTSK.LinearAndMultilinearAlgebra.ArithmeticTensorValuation
