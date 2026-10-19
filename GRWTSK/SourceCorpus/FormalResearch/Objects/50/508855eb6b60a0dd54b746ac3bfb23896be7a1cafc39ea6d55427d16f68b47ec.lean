import SourceCutoffOneLedger

/-!
# Hostile contracts for the cutoff-one preparation

UNCOMPILED fixtures. Zero centering on the long inventory is not zero centering
at one. A bounded ledger error does not bound its independent baseline. The
complete signed cumulative event total is not an absolute event budget.

AI attribution: developed with OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCutoffOneLedgerFixtures

open ArithmeticFunction SourceCutoffOneLedger SourceCutoffFlux SourceSamplingLedger
open SourceDiagonalPrimeAbel SourceDiagonalMainTerm SourceSamplingPointwise
open WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateBetaCentering EstimateVaughanSource
open EstimateSourceMobiusKernel EstimatePlainKernel EstimateMertensAbel
open scoped BigOperators

noncomputable section

/-- The centered coefficient vanishes on the strict long cutoff-one inventory. -/
theorem centered_long_one_zero (n : ℕ) (hn : 1 < n) : centeredBeta 1 n = 0 :=
  centeredBeta_one_of_one_lt n hn

/-- The omitted index one is not part of that zero centered row. -/
theorem centered_at_one_nonzero : centeredBeta 1 1 = 1 := by
  rw [centeredBeta, beta_one 1 (by norm_num)]
  norm_num [alpha]

/-- The original raw long row is still minus one; centering is not silent row deletion. -/
theorem raw_long_one_negative (n : ℕ) (hn : 1 < n) : beta 1 n = -1 :=
  beta_one_of_one_lt n hn

/-- The exact beta endpoint at one is zero rather than minus one. -/
theorem raw_at_one_zero : beta 1 1 = 0 := beta_one 1 (by norm_num)

/-- The endpoint one cannot enter the prime sector. -/
theorem one_not_in_prime_inventory (N : ℕ) :
    1 ∉ (Finset.Ioc 1 N).filter Nat.Prime := by simp

/-- The window convention subtracts the lower prefix; a zero-length window is zero. -/
theorem prime_window_zero_length (F : ℝ → ℝ) : primeLogWindow 0 0 F = 0 := by
  simp [WeightedPrimeAbel.primeLogWindow]

/-- The square-product diagonal reaches zero at its support edge while zero displacement is one. -/
theorem diagonal_is_not_norm_at_edge (A : ℝ) (hA : 1 ≤ A) :
    diagonalCorrelation A A = 0 ∧ diagonalCorrelation A 0 = 1 := by
  exact ⟨diagonalCorrelation_at_upper A (by linarith), diagonalCorrelation_at_zero A hA⟩

/-- The extra integer above literal N_A has zero source weight, not an omitted approximation. -/
theorem extra_sample_above_N_zero (A : ℝ) (hA : 1 ≤ A) :
    sourcePlainWeight A ((sourceKernelCutoff A + 1 : ℕ) : ℝ) = 0 :=
  sourcePlainWeight_zero_of_cutoff_lt A hA _ (by omega)

/-- Independent counterterms survive the exact specialization at one. -/
theorem original_independent_one_main (A : ℝ) (N : ℕ) :
    mainTermAt A 1 N = plainOffAt A 1 N + diagonalMainCoefficient A * A -
      sourceLogSamplingMainTerm A 1 := mainTermAt_one_formula A N

/-- At the actual scale one the adjacent-event inventory is genuinely empty. -/
theorem actual_scale_one_empty_flux :
    (∑ j ∈ Finset.Ico 1 (vaughanCutoff 1), jointFlux 1 j (sourceKernelCutoff 1)) = 0 := by
  norm_num [vaughanCutoff]

/-- Two opposite signed event values cancel while their absolute costs grow. -/
theorem signed_total_does_not_equal_absolute_budget (n : ℕ) :
    |(n : ℝ) + -(n : ℝ)| = 0 ∧ |(n : ℝ)| + |-(n : ℝ)| = 2 * (n : ℝ) := by
  constructor
  · simp
  · rw [abs_neg, abs_of_nonneg (Nat.cast_nonneg n)]
    ring

/-- Even a zero ledger error gives no upper bound on an arbitrary growing baseline. -/
theorem bounded_error_does_not_bound_baseline :
    (∀ _ : ℝ, |(0 : ℝ)| ≤ 0) ∧
      ¬(∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
        ∀ A : ℝ, R ≤ A → A + 0 ≤ D) := by
  refine ⟨by simp, ?_⟩
  rintro ⟨D, _, R, _, h⟩
  have hh := h (max R (D + 1)) (le_max_left _ _)
  have hm := le_max_right R (D + 1)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceCutoffOneLedgerFixtures
