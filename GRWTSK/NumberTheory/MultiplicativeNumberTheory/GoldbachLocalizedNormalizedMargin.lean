/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachTargetNormalizedMargin

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Cover-local normalized error consumers with complete boundary accounting.
Every window's error bound is a premise. No actual-prime supplier or
finite-to-universal promotion is present. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachLocalizedNormalizedMargin
open GoldbachWeighted GoldbachTargetNormalizedMargin

theorem prime_pairs_of_window_cover {ι : Type*}
    (T : Finset ℕ) (W : ι → Finset ℕ) (M : ι → ℕ → ℝ)
    (hcover : ∀ N ∈ T, ∃ i, N ∈ W i)
    (hM : ∀ i, ∀ N ∈ W i, 0 < M i N)
    (herror : ∀ i, (∑ N ∈ W i, (goldbachLogMass N / M i N - 1) ^ 2) < 1) :
    ∀ N ∈ T, ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p + q = N := by
  intro N hN
  obtain ⟨i, hi⟩ := hcover N hN
  exact prime_pairs_of_normalized_error (W i) (M i) (hM i) (herror i) N hi

/-- Both error components use the same complete baseline denominator. -/
theorem complete_normalized_split (C D MC MD : ℝ) (hM : MC + MD ≠ 0) :
    (C + D) / (MC + MD) - 1 =
      (C - MC) / (MC + MD) + (D - MD) / (MC + MD) := by
  field_simp [hM]
  <;> ring

/-- The cross term remains in the squared normalized error. -/
theorem localized_error_square {ι : Type*} (W : Finset ι) (eC eD : ι → ℝ) :
    (∑ i ∈ W, (eC i + eD i) ^ 2) =
      (∑ i ∈ W, eC i ^ 2) + 2 * (∑ i ∈ W, eC i * eD i) +
        (∑ i ∈ W, eD i ^ 2) := by
  rw [Finset.mul_sum, ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  ring

end GRWTSK.NumberTheory.Primes.GoldbachLocalizedNormalizedMargin
