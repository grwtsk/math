/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadratureGlobal
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Exact quantitative per-mode comparison: Green coordinate plus centered
Möbius-log coordinate is exactly the deterministic centering residual. -/
theorem thinGreen_plus_centeredMobiusLog_eq_residual
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    thinGreenArithmeticFourierCoordinate X k +
        centeredMobiusLogFourierCoordinate X k =
      greenCenteringResidual X k := by
  rw [thinGreenArithmeticFourierCoordinate_eq_residual_sub_centered hX]
  ring

theorem norm_thinGreen_plus_centeredMobiusLog_le
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0) :
    ‖thinGreenArithmeticFourierCoordinate X k +
        centeredMobiusLogFourierCoordinate X k‖ ≤
      (1 + 1 / (Real.pi * |(k : ℝ)|)) / (X : ℝ) := by
  rw [thinGreen_plus_centeredMobiusLog_eq_residual hX]
  exact norm_greenCenteringResidual_le_explicit hX hk

/-- Symmetric finite nonzero frequency carrier. -/
def nonzeroFourierHead (K : ℕ) : Finset ℤ :=
  (Finset.Icc (-(K : ℤ)) (K : ℤ)).erase 0

/-- Squared comparison error on a finite Fourier head. -/
def centeredGreenComparisonHeadError
    (X K : ℕ) : ℝ :=
  ∑ k ∈ nonzeroFourierHead K,
    ‖thinGreenArithmeticFourierCoordinate X k +
      centeredMobiusLogFourierCoordinate X k‖ ^ 2

/-- Coarse finite-head estimate using |k|>=1. -/
theorem centeredGreenComparisonHeadError_le
    {X : ℕ} (hX : 1 ≤ X) (K : ℕ) :
    centeredGreenComparisonHeadError X K ≤
      (nonzeroFourierHead K).card *
        (((1 + 1 / Real.pi) / (X : ℝ)) ^ 2) := by
  unfold centeredGreenComparisonHeadError
  calc
    _ ≤ ∑ _k ∈ nonzeroFourierHead K,
        (((1 + 1 / Real.pi) / (X : ℝ)) ^ 2) := by
      apply Finset.sum_le_sum
      intro k hkhead
      have hk0 : k ≠ 0 := by
        exact Finset.ne_of_mem_erase hkhead
      have hmode := norm_thinGreen_plus_centeredMobiusLog_le hX hk0
      have hkone : (1 : ℝ) ≤ |(k : ℝ)| := by
        exact_mod_cast Int.one_le_abs hk0
      have hpi : 0 < Real.pi := Real.pi_pos
      have hfreq :
          1 + 1 / (Real.pi * |(k : ℝ)|) ≤
            1 + 1 / Real.pi := by
        gcongr
        exact one_div_le_one_div_of_le hpi (by nlinarith)
      have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
      have hnorm :
          ‖thinGreenArithmeticFourierCoordinate X k +
              centeredMobiusLogFourierCoordinate X k‖ ≤
            (1 + 1 / Real.pi) / (X : ℝ) :=
        hmode.trans (div_le_div_of_nonneg_right hfreq hXr.le)
      nlinarith [sq_nonneg
        ‖thinGreenArithmeticFourierCoordinate X k +
          centeredMobiusLogFourierCoordinate X k‖]
    _ = (nonzeroFourierHead K).card *
        (((1 + 1 / Real.pi) / (X : ℝ)) ^ 2) := by
      rw [Finset.sum_const_nat]

/-- Exact head cardinality: two nonzero modes per positive frequency. -/
theorem card_nonzeroFourierHead (K : ℕ) :
    (nonzeroFourierHead K).card = 2 * K := by
  unfold nonzeroFourierHead
  by_cases hK : K = 0
  · subst K
    simp
  · rw [Finset.card_erase_of_mem]
    · rw [Finset.card_Icc]
      simp
      omega
    · simp
      omega

theorem centeredGreenComparisonHeadError_le_explicit
    {X : ℕ} (hX : 1 ≤ X) (K : ℕ) :
    centeredGreenComparisonHeadError X K ≤
      (2 * K : ℕ) * (((1 + 1 / Real.pi) / (X : ℝ)) ^ 2) := by
  rw [← card_nonzeroFourierHead K]
  exact centeredGreenComparisonHeadError_le hX K

end GRWTSK.RiemannHypothesis
