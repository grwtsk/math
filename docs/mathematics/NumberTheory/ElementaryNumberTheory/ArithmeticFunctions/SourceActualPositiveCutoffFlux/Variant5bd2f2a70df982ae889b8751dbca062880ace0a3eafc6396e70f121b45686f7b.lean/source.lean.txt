import SourceCutoffFlux

/-!
# An actual positive fixed-source cutoff flux

Prepared with OpenAI Codex. This source is UNCOMPILED at preparation time.
The original source kernel, both long axes, centered diagonal and independent
main term belong to SourceCutoffFlux. No new residual or counterterm is defined.
A comparison at fixed A is not a one-sided limit or derivative in A.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualPositiveCutoffFlux

open ArithmeticFunction SourceCutoffFlux
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity

noncomputable section

/-- At the first strict-long index, the literal raw beta is the new Möbius atom. -/
theorem beta_at_adjacent_eq_moebius (U : ℕ) :
    beta U (U + 1) = (moebius (U + 1) : ℝ) := by
  have h := beta_succ U (U + 1) (Nat.zero_lt_succ U)
  rw [beta_zero_of_le (U + 1) (U + 1) le_rfl, if_pos (dvd_refl (U + 1))] at h
  linarith

private theorem raw_boundary_zero_of_adjacent_coefficients_zero
    (A : ℝ) (U N : ℕ) (hμ : (moebius (U + 1) : ℝ) = 0)
    (hΛ : vonMangoldt (U + 1) = 0) :
    boundaryAt A U N (beta U) = 0 := by
  have hb : beta U (U + 1) = 0 := by
    rw [beta_at_adjacent_eq_moebius, hμ]
  simp [boundaryAt, rowBoundary, columnBoundary, sourceKernel, hΛ, hb]

/-- Both signed boundary sectors and both short additions vanish by actual coefficients. -/
theorem jointFlux_eq_log_of_adjacent_coefficients_zero
    (A : ℝ) (U N : ℕ) (hμ : (moebius (U + 1) : ℝ) = 0)
    (hΛ : vonMangoldt (U + 1) = 0) :
    jointFlux A U N = Real.log (U + 1 : ℕ) - Real.log (U : ℝ) := by
  have hb := raw_boundary_zero_of_adjacent_coefficients_zero A U N hμ hΛ
  simp [jointFlux, shortPlainIncrement, hμ, hΛ, hb]

/-- The existing complete joint update transports the coefficient calculation unchanged. -/
theorem jointAt_succ_eq_log_of_adjacent_coefficients_zero
    (A : ℝ) (U N : ℕ) (hUN : U < N) (hμ : (moebius (U + 1) : ℝ) = 0)
    (hΛ : vonMangoldt (U + 1) = 0) :
    jointAt A (U + 1) N - jointAt A U N =
      Real.log (U + 1 : ℕ) - Real.log (U : ℝ) := by
  rw [jointAt_succ A U N hUN,
    jointFlux_eq_log_of_adjacent_coefficients_zero A U N hμ hΛ]

private theorem real_moebius_twelve_eq_zero : (moebius 12 : ℝ) = 0 := by
  have h : moebius 12 = 0 :=
    moebius_eq_zero_of_not_squarefree (by decide : ¬ Squarefree (12 : ℕ))
  rw [h]
  norm_num

private theorem vonMangoldt_twelve_eq_zero : vonMangoldt 12 = 0 :=
  vonMangoldt_eq_zero_iff.mpr (by decide : ¬ IsPrimePow (12 : ℕ))

/-- The first nonsquarefree non-prime-power test leaves the prescribed log increment. -/
theorem jointFlux_twelve_eq_log (A : ℝ) (N : ℕ) :
    jointFlux A 11 N = Real.log 12 - Real.log 11 := by
  simpa using jointFlux_eq_log_of_adjacent_coefficients_zero A 11 N
    real_moebius_twelve_eq_zero vonMangoldt_twelve_eq_zero

/-- The actual arithmetic coefficients give a strict positive flux, without rescaling rows. -/
theorem jointFlux_twelve_pos (A : ℝ) (N : ℕ) : 0 < jointFlux A 11 N := by
  rw [jointFlux_twelve_eq_log]
  exact sub_pos.mpr (Real.log_lt_log (by norm_num) (by norm_num))

/-- This strict increase is a fixed-source cutoff comparison using the full independent main. -/
theorem jointAt_twelve_increases (A : ℝ) (N : ℕ) (hN : 11 < N) :
    jointAt A 11 N < jointAt A 12 N := by
  have h := jointAt_succ A 11 N hN
  have hp := jointFlux_twelve_pos A N
  norm_num only at h
  linarith

end

end FormalResearch.RiemannHypothesis.SourceActualPositiveCutoffFlux
