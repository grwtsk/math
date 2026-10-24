module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.BilinearPairing
import Mathlib.Tactic

/-!
# Product-prefix cutoff matrices

This module isolates the exact finite filtration behind a Type II hyperbola
cutoff.  The increment at arithmetic moment `n` is the product fiber
`leftIndex * rightIndex = n`; the cutoff at `x` is the finite sum of all
fibers with entry time at most `x`.

No packet geometry, residual choice, operator estimate, or arithmetic
cancellation appears here.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- The literal product-prefix matrix `1_{leftIndex * rightIndex ≤ x}`. -/
@[expose]
def productCutoffMatrix {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) (x : ℕ) :
    Matrix Left Right ℂ :=
  fun left right ↦
    if leftIndex left * rightIndex right ≤ x then 1 else 0

/-- The exact matrix increment entering at product moment `n`. -/
@[expose]
def productFiberIncrementMatrix {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) (n : ℕ) :
    Matrix Left Right ℂ :=
  fun left right ↦
    if leftIndex left * rightIndex right = n then 1 else 0

/-- At time zero the cutoff is the zero matrix whenever both index families
are strictly positive, as they are for Vaughan Type II factors. -/
@[surface_novel, surface_published]
theorem productCutoffMatrix_zero_of_positive
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (left_pos : ∀ left, 0 < leftIndex left)
    (right_pos : ∀ right, 0 < rightIndex right) :
    productCutoffMatrix leftIndex rightIndex 0 = 0 := by
  ext left right
  have hproduct : 0 < leftIndex left * rightIndex right :=
    Nat.mul_pos (left_pos left) (right_pos right)
  have hnot : ¬ leftIndex left * rightIndex right ≤ 0 := by omega
  simp [productCutoffMatrix, hnot]

/-- Successive cutoffs differ by exactly one product fiber. -/
@[surface_novel, surface_published]
theorem productCutoffMatrix_succ {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) (x : ℕ) :
    productCutoffMatrix leftIndex rightIndex (x + 1) =
      productCutoffMatrix leftIndex rightIndex x +
        productFiberIncrementMatrix leftIndex rightIndex (x + 1) := by
  ext left right
  by_cases hle : leftIndex left * rightIndex right ≤ x
  · have hsucc : leftIndex left * rightIndex right ≤ x + 1 := by omega
    have hne : leftIndex left * rightIndex right ≠ x + 1 := by omega
    simp [productCutoffMatrix, productFiberIncrementMatrix, hle, hsucc,
      hne]
  · by_cases heq : leftIndex left * rightIndex right = x + 1
    · simp [productCutoffMatrix, productFiberIncrementMatrix, heq]
    · have hnot : ¬ leftIndex left * rightIndex right ≤ x + 1 := by
        omega
      simp [productCutoffMatrix, productFiberIncrementMatrix, hle, heq,
        hnot]

/-- The cutoff is the finite sum of all product-fiber increments through
time `x`, including the possible zero fiber. -/
@[surface_novel, surface_published]
theorem productCutoffMatrix_eq_sum_productFiberIncrements
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) (x : ℕ) :
    productCutoffMatrix leftIndex rightIndex x =
      ∑ n ∈ Finset.range (x + 1),
        productFiberIncrementMatrix leftIndex rightIndex n := by
  induction x with
  | zero =>
      ext left right
      simp [productCutoffMatrix, productFiberIncrementMatrix]
  | succ x ih =>
      rw [productCutoffMatrix_succ, ih]
      rw [show x + 1 + 1 = Nat.succ (x + 1) by omega]
      simp only [Finset.sum_range_succ]

/-- The arithmetic bilinear cutoff pairing inherits the same exact prefix
decomposition. -/
@[surface_novel, surface_published]
theorem bilinearMatrixPairing_productCutoff_eq_sum_increments
    {Left Right : Type*} [Fintype Left] [Fintype Right]
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (left : Left → ℂ) (right : Right → ℂ) (x : ℕ) :
    bilinearMatrixPairing left
        (productCutoffMatrix leftIndex rightIndex x) right =
      ∑ n ∈ Finset.range (x + 1),
        bilinearMatrixPairing left
          (productFiberIncrementMatrix leftIndex rightIndex n) right := by
  rw [productCutoffMatrix_eq_sum_productFiberIncrements]
  exact bilinearMatrixPairing_finset_sum left
    (Finset.range (x + 1))
    (productFiberIncrementMatrix leftIndex rightIndex) right

end

end Surface.Core.TypeII

end
