import FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments
import Mathlib.NumberTheory.AbelSummation
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

set_option autoImplicit false

namespace PrimeHarmonicPrefixScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments
noncomputable section

/-- The closed-right prime harmonic prefix of the original Mangoldt weights. -/
def primeHarmonicPrefix (u : ℝ) : ℝ :=
  ∑ n ∈ (Finset.Icc 2 ⌊Real.exp u⌋₊).filter Nat.Prime,
    ArithmeticFunction.vonMangoldt n / (n : ℝ)

/-- The source weights are exactly logarithms at every retained prime. -/
theorem primeHarmonicPrefix_eq_log_sum (u : ℝ) :
    primeHarmonicPrefix u =
      ∑ n ∈ (Finset.Icc 2 ⌊Real.exp u⌋₊).filter Nat.Prime,
        Real.log (n : ℝ) / (n : ℝ) := by
  unfold primeHarmonicPrefix
  apply Finset.sum_congr rfl
  intro n hn
  rw [ArithmeticFunction.vonMangoldt_apply_prime (Finset.mem_filter.mp hn).2]

/-- The lower logarithmic endpoint contains no prime. -/
theorem primeHarmonicPrefix_zero : primeHarmonicPrefix 0 = 0 := by
  norm_num [primeHarmonicPrefix]

/-- The prime two term occurs at the closed-right endpoint without a half weight. -/
theorem primeHarmonicPrefix_log_two : primeHarmonicPrefix (Real.log 2) = Real.log 2 / 2 := by
  rw [primeHarmonicPrefix_eq_log_sum, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  norm_num [Finset.filter_singleton, Nat.prime_two]

/-- The centered theta error retains its nonzero lower endpoint. -/
theorem thetaLogError_zero : thetaLogError 0 = -1 := by
  norm_num [thetaLogError, sourcePrimePrefix]

private def primeWeight (n : ℕ) : ℝ := if n.Prime then Real.log (n : ℝ) else 0

private theorem primeWeight_prefix (x : ℝ) :
    (∑ n ∈ Finset.Icc 0 ⌊x⌋₊, primeWeight n) = Chebyshev.theta x := by
  rw [Chebyshev.theta_eq_sum_Icc, Finset.sum_filter]
  rfl

private theorem primeHarmonicPrefix_eq (u : ℝ) :
    primeHarmonicPrefix u =
      ∑ n ∈ Finset.Icc 0 ⌊Real.exp u⌋₊, (n : ℝ)⁻¹ * primeWeight n := by
  rw [primeHarmonicPrefix]
  calc
    _ = ∑ n ∈ (Finset.Icc 2 ⌊Real.exp u⌋₊).filter Nat.Prime,
        (n : ℝ)⁻¹ * Real.log (n : ℝ) := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [ArithmeticFunction.vonMangoldt_apply_prime (Finset.mem_filter.mp hn).2]
      ring
    _ = ∑ n ∈ (Finset.Icc 0 ⌊Real.exp u⌋₊).filter Nat.Prime,
        (n : ℝ)⁻¹ * Real.log (n : ℝ) := by
      apply Finset.sum_subset
      · intro n hn
        obtain ⟨hn, hp⟩ := Finset.mem_filter.mp hn
        exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
          ⟨Nat.zero_le n, (Finset.mem_Icc.mp hn).2⟩, hp⟩
      · intro n hn hn'
        obtain ⟨hn, hp⟩ := Finset.mem_filter.mp hn
        exact False.elim (hn' (Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
          ⟨hp.two_le, (Finset.mem_Icc.mp hn).2⟩, hp⟩))
    _ = _ := by
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro n _
      simp only [primeWeight]
      split_ifs <;> simp

/-- The reciprocal-square theta integral is genuinely integrable on each finite interval. -/
theorem theta_div_sq_integrableOn (x : ℝ) :
    IntegrableOn (fun t : ℝ => Chebyshev.theta t / t ^ 2) (Icc 1 x) := by
  have hc : ContinuousOn (fun t : ℝ => (t ^ 2)⁻¹) (Icc 1 x) := by
    intro t ht
    have ht0 : t ≠ 0 := by linarith [ht.1]
    exact ((continuousAt_id.pow 2).inv₀ (pow_ne_zero _ ht0)).continuousWithinAt
  have h := integrableOn_mul_sum_Icc primeWeight (m := 0) (by norm_num : (0 : ℝ) ≤ 1)
    hc.integrableOn_Icc
  apply h.congr_fun _ measurableSet_Icc
  intro t _
  dsimp only
  rw [primeWeight_prefix]
  ring

/-- Exact finite Abel summation includes the original closed-right endpoint. -/
theorem primeHarmonicPrefix_abel (u : ℝ) (hu : 0 ≤ u) :
    primeHarmonicPrefix u =
      Chebyshev.theta (Real.exp u) / Real.exp u +
        ∫ t in 1..Real.exp u, Chebyshev.theta t / t ^ 2 := by
  have he : 1 ≤ Real.exp u := Real.one_le_exp_iff.mpr hu
  have hf_diff : ∀ t ∈ Icc (1 : ℝ) (Real.exp u),
      DifferentiableAt ℝ (fun t : ℝ => t⁻¹) t := by
    intro t ht
    exact differentiableAt_id.inv (by linarith [ht.1])
  have hf_int : IntegrableOn (deriv (fun t : ℝ => t⁻¹)) (Icc 1 (Real.exp u)) := by
    rw [deriv_inv']
    apply ContinuousOn.integrableOn_Icc
    intro t ht
    have ht0 : t ≠ 0 := by linarith [ht.1]
    exact (((continuousAt_id.pow 2).inv₀ (pow_ne_zero _ ht0)).neg).continuousWithinAt
  have h := sum_mul_eq_sub_integral_mul₀ primeWeight (by simp [primeWeight])
    (Real.exp u) hf_diff hf_int
  rw [← primeHarmonicPrefix_eq, primeWeight_prefix] at h
  have hI : (∫ t in Ioc 1 (Real.exp u), deriv (fun t : ℝ => t⁻¹) t *
      ∑ n ∈ Finset.Icc 0 ⌊t⌋₊, primeWeight n) =
      -(∫ t in 1..Real.exp u, Chebyshev.theta t / t ^ 2) := by
    rw [intervalIntegral.integral_of_le he, ← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro t _
    dsimp only
    rw [deriv_inv, primeWeight_prefix]
    ring
  rw [h, hI]
  ring

/-- The centered logarithmic theta error is genuinely interval integrable. -/
theorem thetaLogError_intervalIntegrable (u : ℝ) :
    IntervalIntegrable thetaLogError volume 0 u := by
  have habs := thetaLogError_moment_prefix_integrable 0 (max u 0)
  simp only [pow_zero, one_mul] at habs
  have hpos : IntegrableOn thetaLogError (Ioc 0 (max u 0)) := (show Integrable (fun t => |thetaLogError t|) (volume.restrict (Ioc 0 (max u 0))) from habs).mono
    thetaLogError_measurable.aestronglyMeasurable
    (Filter.Eventually.of_forall fun t => by simp only [Real.norm_eq_abs, abs_abs]; exact le_rfl)
  by_cases hu : 0 ≤ u
  · rw [intervalIntegrable_iff_integrableOn_Ioc_of_le hu]
    exact hpos.mono_set (Ioc_subset_Ioc_right (le_max_left _ _))
  · have hneg : IntegrableOn thetaLogError (Ioc u 0) := by
      have hm : AEStronglyMeasurable thetaLogError (volume.restrict (Ioc u 0)) :=
        thetaLogError_measurable.aestronglyMeasurable
      have hc : IntegrableOn (fun _t : ℝ => Real.log 4 + 5) (Ioc u 0) :=
        integrableOn_const (by rw [Real.volume_Ioc]; exact ENNReal.ofReal_ne_top)
      exact hc.mono' hm (Filter.Eventually.of_forall fun t => by
        simpa only [Real.norm_eq_abs] using thetaLogError_abs_le_global t)
    exact (intervalIntegrable_iff_integrableOn_Ioc_of_le (le_of_not_ge hu)).mpr hneg |>.symm

/-- Exact exponential transport of the reciprocal-square theta integral. -/
theorem theta_div_sq_log_substitution (u : ℝ) :
    (∫ t in 1..Real.exp u, Chebyshev.theta t / t ^ 2) =
      ∫ v in 0..u, 1 + thetaLogError v := by
  have h := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (f := Real.exp) (f' := Real.exp) (g := fun t : ℝ => Chebyshev.theta t / t ^ 2)
    (a := (0 : ℝ)) (b := u) Real.continuous_exp.continuousOn
    (fun x _ => Real.hasDerivAt_exp x) (fun x _ => (Real.exp_pos x).le)
  rw [Real.exp_zero] at h
  rw [← h]
  apply intervalIntegral.integral_congr
  intro v _
  simp only [Function.comp_apply, thetaLogError_eq, Real.exp_neg]
  have hv : Real.exp v ≠ 0 := (Real.exp_pos v).ne'
  field_simp
  ring

/-- Closed-right prime harmonic summation, including the lower endpoint `u = 0`. -/
theorem primeHarmonicPrefix_formula (u : ℝ) (hu : 0 ≤ u) :
    primeHarmonicPrefix u = u + 1 + thetaLogError u + ∫ v in 0..u, thetaLogError v := by
  rw [primeHarmonicPrefix_abel u hu, theta_div_sq_log_substitution,
    intervalIntegral.integral_add (intervalIntegrable_const) (thetaLogError_intervalIntegrable u)]
  simp only [intervalIntegral.integral_const, sub_zero, smul_eq_mul, mul_one]
  have he : Chebyshev.theta (Real.exp u) / Real.exp u = 1 + thetaLogError u := by
    rw [thetaLogError_eq, Real.exp_neg]
    field_simp
    ring
  rw [he]
  ring

end
end PrimeHarmonicPrefixScratch
