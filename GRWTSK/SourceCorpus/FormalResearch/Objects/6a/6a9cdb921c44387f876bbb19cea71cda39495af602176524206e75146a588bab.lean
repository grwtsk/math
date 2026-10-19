/-! Genuine L2 admission of the exact quadratic divisor-prefix remainder before source filtering. -/
set_option autoImplicit false
namespace DampedDivisorRemainderNormScratch
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open DampedDivisorCoefficient DampedDivisorTaylor SourceWeightedMultiplier HalfLineExtension
noncomputable section

/-- The original finite divisor-prefix Taylor remainder, cut in logarithmic time before filtering. -/
def divisorRemainderCore (ε Y u : ℝ) : ℂ :=
  (Icc (0 : ℝ) (Real.log Y)).indicator
    (fun u : ℝ => (Real.exp (-u / 2) : ℂ) *
      (((∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)) u

private theorem divisorRemainderCore_measurable (ε Y : ℝ) :
    Measurable (divisorRemainderCore ε Y) := by
  have hm : Measurable (fun u : ℝ =>
      (∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, ArithmeticFunction.vonMangoldt n) :=
    (measurable_from_nat (f := fun N : ℕ =>
      (∑ n ∈ Finset.Icc 1 N, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Finset.Icc 1 N, ArithmeticFunction.vonMangoldt n)).comp
      (Nat.measurable_floor.comp Real.measurable_exp)
  exact ((Complex.measurable_ofReal.comp (by fun_prop)).mul
    (Complex.measurable_ofReal.comp hm)).indicator measurableSet_Icc

private theorem divisorRemainderCore_sq_le (ε : ℝ) (hε : 0 ≤ ε)
    (Y : ℝ) (_hY : 1 ≤ Y) (u : ℝ) :
    ‖divisorRemainderCore ε Y u‖ ^ 2 ≤
      (Icc (0 : ℝ) (Real.log Y)).indicator
        (fun u : ℝ => ε ^ 4 * Real.exp u * (Real.log Y) ^ 4) u := by
  by_cases hu : u ∈ Icc (0 : ℝ) (Real.log Y)
  · rw [divisorRemainderCore, indicator_of_mem hu, indicator_of_mem hu,
      norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _),
      Complex.norm_real, Real.norm_eq_abs]
    have he := dampedDivisorCoefficient_real_prefix_first_order ε hε (Real.exp u)
      (Real.one_le_exp_iff.mpr hu.1)
    rw [Real.log_exp] at he
    have hsq := pow_le_pow_left₀ (abs_nonneg _) he 2
    have hexp : Real.exp (-u / 2) ^ 2 * Real.exp u ^ 2 = Real.exp u := by
      rw [← mul_pow, ← Real.exp_add, pow_two, ← Real.exp_add]
      congr 1
      ring
    have hlog : u ^ 4 ≤ Real.log Y ^ 4 := pow_le_pow_left₀ hu.1 hu.2 4
    calc
      _ ≤ Real.exp (-u / 2) ^ 2 * (ε ^ 2 * Real.exp u * u ^ 2) ^ 2 := by
        rw [mul_pow]
        exact mul_le_mul_of_nonneg_left hsq (sq_nonneg _)
      _ = ε ^ 4 * Real.exp u * u ^ 4 := by
        calc
          _ = ε ^ 4 * (Real.exp (-u / 2) ^ 2 * Real.exp u ^ 2) * u ^ 4 := by ring
          _ = _ := by rw [hexp]
      _ ≤ _ := mul_le_mul_of_nonneg_left hlog (by positivity)
  · simp [divisorRemainderCore, hu]

private theorem remainderMajorant_integrable (ε Y : ℝ) :
    Integrable ((Icc (0 : ℝ) (Real.log Y)).indicator
      (fun u : ℝ => ε ^ 4 * Real.exp u * Real.log Y ^ 4)) :=
  ((show Continuous (fun u : ℝ => ε ^ 4 * Real.exp u * Real.log Y ^ 4) by
    fun_prop).continuousOn.integrableOn_compact isCompact_Icc).integrable_indicator measurableSet_Icc

/-- The exact finite-time quadratic remainder is genuinely admitted in full-line L2. -/
theorem divisorRemainderCore_memLp (ε : ℝ) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    MemLp (divisorRemainderCore ε Y) 2 volume := by
  apply (memLp_two_iff_integrable_sq_norm
    (divisorRemainderCore_measurable ε Y).aestronglyMeasurable).mpr
  apply (remainderMajorant_integrable ε Y).mono'
    ((divisorRemainderCore_measurable ε Y).norm.pow_const 2).aestronglyMeasurable
  filter_upwards [] with u
  rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
  exact divisorRemainderCore_sq_le ε hε Y hY u

/-- The genuine full-line L2 vector represented by the original cut divisor-prefix remainder. -/
def divisorRemainderVector (ε : ℝ) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) : FullH :=
  (divisorRemainderCore_memLp ε hε Y hY).toLp (divisorRemainderCore ε Y)

/-- Integrating the exact exponential majorant gives the square-root cutoff budget. -/
theorem divisorRemainderVector_norm_le (ε : ℝ) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    ‖divisorRemainderVector ε hε Y hY‖ ≤ ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2 := by
  have hm := divisorRemainderCore_memLp ε hε Y hY
  have hi := (memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).mp hm
  have hb : (∫ u : ℝ, ‖divisorRemainderCore ε Y u‖ ^ 2) ≤
      ε ^ 4 * (Y - 1) * Real.log Y ^ 4 := by
    calc
      _ ≤ ∫ u : ℝ, (Icc (0 : ℝ) (Real.log Y)).indicator
          (fun u : ℝ => ε ^ 4 * Real.exp u * Real.log Y ^ 4) u :=
        integral_mono_ae hi (remainderMajorant_integrable ε Y)
          (Filter.Eventually.of_forall (divisorRemainderCore_sq_le ε hε Y hY))
      _ = _ := by
        rw [integral_indicator measurableSet_Icc, integral_mul_const, integral_const_mul,
          integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le (Real.log_nonneg hY),
          integral_exp, Real.exp_log (by linarith : 0 < Y), Real.exp_zero]
  apply (sq_le_sq₀ (norm_nonneg _) (by positivity)).mp
  change ‖hm.toLp (divisorRemainderCore ε Y)‖ ^ 2 ≤ _
  rw [FullLinePlancherel.norm_sq_toLp]
  calc
    _ ≤ ε ^ 4 * (Y - 1) * Real.log Y ^ 4 := hb
    _ = _ := by rw [mul_pow, mul_pow, Real.sq_sqrt (by linarith : 0 ≤ Y - 1)]; ring

/-- The actual source multiplier preserves the admitted remainder's uniform quadratic budget. -/
theorem sourceMultiplier_divisorRemainder_norm_le (ε h : ℝ) (hε : 0 < ε)
    (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) (Y : ℝ) (hY : 1 ≤ Y) :
    ‖sourceMultiplier ε h hε hsmall hh (divisorRemainderVector ε hε.le Y hY)‖ ≤
      ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2) :=
  (sourceMultiplier_norm_le ε h hε hsmall hh _).trans
    (mul_le_mul_of_nonneg_left (divisorRemainderVector_norm_le ε hε.le Y hY) (by positivity))

end
end DampedDivisorRemainderNormScratch
