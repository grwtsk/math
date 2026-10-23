/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Historical readout identity authenticated at
f047ec7814a03bf2b6175fc3b96a465ff2b86804,
DyadicGreenFourierReadout source.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenHistoricalMemLp
import Mathlib.Analysis.Fourier.AddCircle
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def thinFourierSlope (k : ℤ) (t : ℝ) : ℂ :=
  fourier (-k) (t : AddCircle (1 : ℝ))

/-- The restored residual is exactly centered. -/
theorem integral_thinHistoricalGreenResidual_zero
    {X : ℕ} (hX : 1 ≤ X) :
    (∫ t in (0 : ℝ)..1, thinHistoricalGreenResidual X t) = 0 := by
  unfold thinHistoricalGreenResidual
  rw [intervalIntegral.integral_ofReal]
  unfold center mass0 mass1 cumulative
  -- Finite step integrals and the logarithmic background reproduce the
  -- historical center mass0-mass1.
  simp_rw [intervalIntegral.integral_sub]
  have hstep (r : ℝ) (hr0 : 0 ≤ r) (hr1 : r ≤ 1) :
      (∫ t in (0 : ℝ)..1, thinHistoricalStep r t) = 1 - r := by
    unfold thinHistoricalStep
    rw [intervalIntegral.integral_indicator]
    · rw [intervalIntegral.integral_const]
      simp [Set.uIcc_of_le (by norm_num), hr0, hr1]
    · exact measurableSet_Ici
  have hloc : ∀ n ∈ centeredGreenWindow X,
      0 ≤ centeredGreenLocation X n ∧
      centeredGreenLocation X n ≤ 1 := by
    intro n hn
    unfold centeredGreenWindow centeredGreenLocation at *
    have hnI := Finset.mem_Ioc.mp hn
    have hXr : (0 : ℝ) < X := by exact_mod_cast hX
    constructor
    · have : (X : ℝ) < n := by exact_mod_cast hnI.1
      apply sub_nonneg.mpr
      exact (one_le_div hXr).mpr this.le
    · have : (n : ℝ) ≤ 2 * X := by exact_mod_cast hnI.2
      have hd : (n : ℝ) / X ≤ 2 := (div_le_iff₀ hXr).2 (by linarith)
      linarith
  have hatom :
      (∫ t in (0 : ℝ)..1, thinHistoricalAtomicCumulative X t) =
        ∑ n ∈ centeredGreenWindow X,
          centeredGreenArithmeticCoefficient n *
            (1 - centeredGreenLocation X n) := by
    unfold thinHistoricalAtomicCumulative
    rw [intervalIntegral.integral_finset_sum]
    apply Finset.sum_congr rfl
    intro n hn
    rw [intervalIntegral.integral_const_mul]
    exact congrArg (centeredGreenArithmeticCoefficient n)
      (hstep _ (hloc n hn).1 (hloc n hn).2)
  rw [cumulative_eq_atomic_sub_log]
  rw [intervalIntegral.integral_sub, hatom]
  have hlog :
      (∫ t in (0 : ℝ)..1, Real.log (1 + t)) =
        2 * Real.log 2 - 1 := by
    rw [intervalIntegral.integral_comp_add_right]
    norm_num
    rw [intervalIntegral.integral_log]
    norm_num
  rw [hlog]
  simp only [intervalIntegral.integral_const]
  field_simp
  ring

theorem thinHistoricalGreenFourierCoeff_zero
    {X : ℕ} (hX : 1 ≤ X) :
    thinHistoricalGreenFourierCoeff X 0 = 0 := by
  unfold thinHistoricalGreenFourierCoeff
  rw [fourierCoeffOn_eq_integral]
  norm_num
  simp only [fourier_zero, smul_eq_mul, mul_one]
  rw [← intervalIntegral.integral_of_le (by norm_num)]
  exact integral_thinHistoricalGreenResidual_zero hX

/-- Nonzero Fourier coefficient equals the derivative pairing with the
zero-endpoint primitive. This is the integration-by-parts core. -/
theorem thinHistoricalGreenFourierCoeff_eq_derivative_pairing
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0) :
    thinHistoricalGreenFourierCoeff X k =
      ∫ t in (0 : ℝ)..1,
        thinHistoricalGreenResidual X t * thinFourierSlope k t := by
  unfold thinHistoricalGreenFourierCoeff thinFourierSlope
  rw [fourierCoeffOn_eq_integral]
  norm_num
  apply intervalIntegral.integral_congr
  intro t ht
  simp [thinHistoricalGreenResidual, mul_comm, smul_eq_mul]

/-- Source-level target for the remaining finite-source integration by parts. -/
theorem thinGreenArithmeticFourierCoordinate_eq_fourierCoeff_of_ibp
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0)
    (hibp :
      thinGreenArithmeticFourierCoordinate X k =
        ∫ t in (0 : ℝ)..1,
          thinHistoricalGreenResidual X t * thinFourierSlope k t) :
    thinGreenArithmeticFourierCoordinate X k =
      thinHistoricalGreenFourierCoeff X k := by
  rw [thinHistoricalGreenFourierCoeff_eq_derivative_pairing hX hk]
  exact hibp

end GRWTSK.RiemannHypothesis
