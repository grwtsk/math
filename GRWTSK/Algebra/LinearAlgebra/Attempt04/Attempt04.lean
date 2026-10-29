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
  simp [Matrix.mul_assoc, mul_assoc, Matrix.single_mul_eq_updateRow_zero, Matrix.mul_apply,
    Matrix.updateRow_apply]

/-- Detailed balance makes the weighted Cartan form symmetric. Positivity is separate. -/
theorem weightedCartan_symmetric {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (d : Fin n → ℤ) (hbalance : ∀ i j, d i * A i j = d j * A j i) :
    (diagonal d * cartanMatrix A)ᵀ = diagonal d * cartanMatrix A := by
  ext i j
  simp only [transpose_apply, diagonal_mul, cartanMatrix, Matrix.sub_apply,
    Matrix.smul_apply, Matrix.one_apply]
  by_cases hij : i = j
  · subst j
    rfl
  · simp only [if_neg hij, if_neg (Ne.symm hij), smul_zero, zero_sub, mul_neg]
    exact congrArg Neg.neg (hbalance i j).symm

/-- Integer detailed balance preserves the full form. This includes positive integer
diagonal symmetrizers, without assuming nondegeneracy or positive definiteness. -/
theorem mutationMatrix_weighted_metric {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (d : Fin n → ℤ)
    (hbalance : ∀ i j, d i * A i j = d j * A j i) (i : Fin n) :
    (mutationMatrix A i)ᵀ * (diagonal d * cartanMatrix A) * mutationMatrix A i =
      diagonal d * cartanMatrix A := by
  ext j k
  rw [mutation_form_entry A _ hzero i j k]
  have hcol : (diagonal d * cartanMatrix A) j i = d i * cartanMatrix A i j := by
    have hsym := congrArg (fun M => M i j) (weightedCartan_symmetric A d hbalance)
    simpa only [transpose_apply, diagonal_mul] using hsym
  rw [hcol]
  simp only [diagonal_mul]
  have hii : cartanMatrix A i i = 2 := by
    simp [cartanMatrix, hzero, Matrix.ofNat_apply]
  rw [hii]
  ring

/-- Symmetric loop-free integer adjacency preserves its Cartan form. -/
theorem mutationMatrix_symmetric_metric {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (hsymm : ∀ i j, A i j = A j i) (i : Fin n) :
    (mutationMatrix A i)ᵀ * cartanMatrix A * mutationMatrix A i = cartanMatrix A := by
  have hbalance : ∀ i j, (1 : ℤ) * A i j = 1 * A j i := by
    simpa only [one_mul] using hsymm
  simpa using mutationMatrix_weighted_metric A hzero (fun _ => 1) hbalance i

/-- Disconnected vertices commute; both incoming edge multiplicities must vanish. -/
theorem mutationMatrix_nonadjacent_commute {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (hzero : ∀ i, A i i = 0) (i j : Fin n) (hij : A i j = 0) (hji : A j i = 0) :
    mutationMatrix A i * mutationMatrix A j = mutationMatrix A j * mutationMatrix A i := by
  by_cases hne : i = j
  · subst j
    rfl
  have hcij : cartanMatrix A i j = 0 := by
    simp [cartanMatrix, Matrix.ofNat_apply, hne, hij]
  have hcji : cartanMatrix A j i = 0 := by
    simp [cartanMatrix, Matrix.ofNat_apply, Ne.symm hne, hji]
  have hcross : (single i i (1 : ℤ) * cartanMatrix A) *
      (single j j 1 * cartanMatrix A) = 0 := by
    rw [← Matrix.mul_assoc, single_mul_mul_single]
    simp [hcij]
  have hcross' : (single j j (1 : ℤ) * cartanMatrix A) *
      (single i i 1 * cartanMatrix A) = 0 := by
    rw [← Matrix.mul_assoc, single_mul_mul_single]
    simp [hcji]
  rw [mutationMatrix_cartan A hzero i, mutationMatrix_cartan A hzero j]
  simp only [sub_mul, mul_sub, one_mul, mul_one, hcross, hcross']
  abel

end FormalResearch.MutationGame
