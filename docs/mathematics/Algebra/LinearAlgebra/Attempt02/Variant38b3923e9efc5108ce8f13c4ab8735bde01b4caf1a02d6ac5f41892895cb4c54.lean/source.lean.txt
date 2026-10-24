import MatrixCalculus

/-!
Generic metric laws for the existing integer mutation calculus.
Direction: grwtsk contributors. Proof construction: OpenAI Codex.
This additional scratch slice does not modify the frozen seven-module receipt.
-/

namespace FormalResearch.MutationGame
open scoped BigOperators
open Matrix

/-- The loop-free Cartan form, with incoming-row integer adjacency. -/
def cartanMatrix {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ) :
    Matrix (Fin n) (Fin n) ℤ := 2 • (1 : Matrix (Fin n) (Fin n) ℤ) - A

theorem mutationMatrix_cartan {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (i : Fin n) :
    mutationMatrix A i = 1 - single i i 1 * cartanMatrix A := by
  ext j k
  by_cases hj : j = i
  · subst j
    by_cases hk : k = i
    · subst k
      simp [mutationMatrix, cartanMatrix, hzero, single_mul_eq_updateRow_zero,
        Matrix.ofNat_apply]
    · simp [mutationMatrix, cartanMatrix, hk, single_mul_eq_updateRow_zero,
        Matrix.ofNat_apply, Ne.symm hk]
  · simp [mutationMatrix, cartanMatrix, hj, single_mul_eq_updateRow_zero,
      Matrix.updateRow_apply]

/-- The complete bilinear-form update, without symmetry or positivity assumptions. -/
theorem mutation_form_entry {n : ℕ} (A B : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (i j k : Fin n) :
    ((mutationMatrix A i)ᵀ * B * mutationMatrix A i) j k =
      B j k - cartanMatrix A i j * B i k - B j i * cartanMatrix A i k +
        cartanMatrix A i j * B i i * cartanMatrix A i k := by
  have heq : (mutationMatrix A i)ᵀ * B * mutationMatrix A i =
      B - (cartanMatrix A)ᵀ * single i i 1 * B - B * single i i 1 * cartanMatrix A +
        (cartanMatrix A)ᵀ * single i i 1 * B * single i i 1 * cartanMatrix A := by
    rw [mutationMatrix_cartan A hzero i]
    simp only [transpose_sub, transpose_one, transpose_mul, transpose_single]
    noncomm_ring
  rw [heq]
  simp [Matrix.mul_apply, Matrix.single]

end FormalResearch.MutationGame
