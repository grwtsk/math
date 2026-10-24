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
      simp [mutationMatrix, cartanMatrix, hzero, single_mul_eq_updateRow_zero]
    · simp [mutationMatrix, cartanMatrix, hk, single_mul_eq_updateRow_zero,
        Matrix.one_apply, Ne.symm hk]
  · simp [mutationMatrix, cartanMatrix, hj, single_mul_eq_updateRow_zero,
      Matrix.updateRow_apply]

end FormalResearch.MutationGame
