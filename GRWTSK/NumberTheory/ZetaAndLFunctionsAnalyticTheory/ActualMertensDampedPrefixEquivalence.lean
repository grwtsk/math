/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.SignedPrefixDyadicCorrelation

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact strength of the one-sided signed-prefix supplier at fixed damping.
The diagonal is paid unconditionally; the signed upper bound itself is
not supplied. No RH or analytic zero identification is inferred.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensDampedPrefixEquivalence
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

theorem damped_unweighted_diagonal_le_budget {ε : ℝ} (hε : 0 < ε) (N : ℕ) :
    sampleUnweightedDiagonal N * sampleSignedWeight ε N ≤ sampleDiagonalBudget ε := by
  have hl : sampleUnweightedDiagonal N * sampleSignedWeight ε N ≤
      sampleWeightedDiagonal ε N := by
    unfold sampleUnweightedDiagonal sampleWeightedDiagonal
    rw [Finset.sum_mul]
    apply Finset.sum_le_sum
    intro k hk
    have hi : k+1 ≤ N := Nat.succ_le_of_lt (Finset.mem_range.mp hk)
    have hw := sampleSignedWeight_antitone hε.le hi
    simpa only [sampleSignedWeight, Nat.add_assoc] using
      mul_le_mul_of_nonneg_left hw
        (sq_nonneg (sampleResidue (k+2)-sampleResidue (k+1)))
  exact hl.trans (sampleWeightedDiagonal_le_budget hε N)

theorem damped_sample_square_bounds (ε : ℝ) (N : ℕ) (hε : 0 < ε) :
    sampleSignedMixedPrefix N * sampleSignedWeight ε N ≤
      sampleResidue (N+1)^2 * sampleSignedWeight ε N ∧
    sampleResidue (N+1)^2 * sampleSignedWeight ε N ≤
      sampleSignedMixedPrefix N * sampleSignedWeight ε N + sampleDiagonalBudget ε := by
  have he := sampleResidue_square_eq_signedPrefix_add_diagonal N
  have hd := damped_unweighted_diagonal_le_budget hε N
  have hn := mul_nonneg (sampleUnweightedDiagonal_nonneg N)
    (sampleSignedWeight_pos ε N).le
  rw [he, add_mul]
  constructor <;> linarith

theorem uniform_damped_prefix_iff_sample_square (ε : ℝ) (hε : 0 < ε) :
    (∃ K : ℝ, ∀ N, sampleSignedMixedPrefix N * sampleSignedWeight ε N ≤ K) ↔
    (∃ C : ℝ, ∀ N, sampleResidue (N+1)^2 * sampleSignedWeight ε N ≤ C) := by
  constructor
  · rintro ⟨K, hK⟩
    refine ⟨K + sampleDiagonalBudget ε, fun N => ?_⟩
    exact (damped_sample_square_bounds ε N hε).2.trans (add_le_add_right (hK N) _)
  · rintro ⟨C, hC⟩
    exact ⟨C, fun N => (damped_sample_square_bounds ε N hε).1.trans (hC N)⟩

end GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensDampedPrefixEquivalence
