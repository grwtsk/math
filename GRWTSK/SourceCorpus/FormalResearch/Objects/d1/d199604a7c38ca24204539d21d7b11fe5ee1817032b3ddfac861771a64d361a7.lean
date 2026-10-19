import CriticalRelativePairing
import ActualSignedStieltjes
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy

/-!
Exact actual Chebyshev compensation for the critical-relative pairing.
Every closed prime-power atom and touching upper endpoint is retained. No
uniform arithmetic bound is supplied. All future pairing budgets remain
explicit premises in the original residual/estimate consumers.
Direction: grwtsk contributors. Formal construction: OpenAI Codex issue ingestion.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation
open MeasureTheory Set
open scoped Interval
open SourcePairing SourcePositiveSampling SourceSamplingCoefficients SourceFirstPrimeAbel
open SourceContinuousHalfEnergy
open OmegaResearch.CriticalRelativePairing
open ContinuousResearch.ActualSignedStieltjes ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateMertensResidual

/-- Actual closed Chebyshev coefficients, with zero and unit atoms vanishing. -/
theorem actualPsi_sum_eq_residual {A : ℝ} (hA : 1 ≤ A) :
    (∑ n ∈ Finset.Icc 0 ⌊Real.exp (2 * A)⌋₊,
      plainProfile A 1 n * ArithmeticFunction.vonMangoldt n) = mertensResidual A := by
  rw [← integer_cutoff_eq, Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons]
  have hz : ArithmeticFunction.vonMangoldt 0 = (0 : ℝ) := by simp
  rw [hz, mul_zero, zero_add, ← Finset.Icc_add_one_left_eq_Ioc]
  rw [mangoldt_integer_inventory hA]
  apply Finset.sum_congr rfl
  intro n _
  ring

theorem actualPsi_finite_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => Chebyshev.psi x * deriv (plainProfile A 1) x)
      (Ioc (1 : ℝ) (Real.exp (2 * A))) := by
  have hi := integrableOn_mul_sum_Icc ArithmeticFunction.vonMangoldt
    (m := 0) (by norm_num : (0 : ℝ) ≤ 1) (actual_derivative_integrable_Icc hA)
  have hh : IntegrableOn (fun x => Chebyshev.psi x * deriv (plainProfile A 1) x)
      (Icc (1 : ℝ) (Real.exp (2 * A))) := by
    apply hi.congr_fun
    · intro x _
      dsimp only
      rw [← Chebyshev.psi_eq_sum_Icc]
      ring
    · exact measurableSet_Icc
  exact hh.mono_set Ioc_subset_Icc_self

/-- Genuine Abel summation of actual Lambda, with closed upper atoms. -/
theorem actualPsi_finite_stieltjes {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = -(∫ x in Ioc (1 : ℝ) (Real.exp (2 * A)),
      Chebyshev.psi x * deriv (plainProfile A 1) x) := by
  have hf := (plainProfile_contDiff (by linarith : 0 < A) 1).differentiable (by norm_num)
  have ha := sum_mul_eq_sub_integral_mul₀ ArithmeticFunction.vonMangoldt (by simp)
    (Real.exp (2 * A)) (fun x _ => hf.differentiableAt)
    (actual_derivative_integrable_Icc hA)
  rw [actualPsi_sum_eq_residual hA, touching_source_zero (by linarith : 0 < A),
    zero_mul, zero_sub] at ha
  rw [ha]
  congr 1
  apply integral_congr_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
  rw [← Chebyshev.psi_eq_sum_Icc]
  ring

theorem actualPsi_full_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => Chebyshev.psi x * deriv (plainProfile A 1) x) (Ioi (1 : ℝ)) := by
  have ht : IntegrableOn (fun x => Chebyshev.psi x * deriv (plainProfile A 1) x)
      (Ioi (Real.exp (2 * A))) := by
    apply (show IntegrableOn (fun _ : ℝ => (0 : ℝ)) (Ioi (Real.exp (2 * A)))
      from (integrableOn_zero (μ := volume))).congr_fun
    · intro x hx
      change (0 : ℝ) = Chebyshev.psi x * deriv (plainProfile A 1) x
      rw [actual_derivative_zero_above hA hx, mul_zero]
    · exact measurableSet_Ioi
  have hX : (1 : ℝ) ≤ Real.exp (2 * A) := Real.one_le_exp (by linarith)
  simpa only [Ioc_union_Ioi_eq_Ioi hX] using (actualPsi_finite_integrable hA).union ht

theorem actualPsi_full_stieltjes {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = -(∫ x in Ioi (1 : ℝ),
      Chebyshev.psi x * deriv (plainProfile A 1) x) := by
  rw [actualPsi_finite_stieltjes hA]
  congr 1
  symm
  have hX : (1 : ℝ) ≤ Real.exp (2 * A) := Real.one_le_exp (by linarith)
  rw [← Ioc_union_Ioi_eq_Ioi hX]
  apply integral_union_eq_left_of_forall measurableSet_Ioi
  intro x hx
  rw [actual_derivative_zero_above hA hx, mul_zero]

def psiLogKernel (A t : ℝ) : ℝ :=
  Chebyshev.psi (Real.exp t) * Real.exp (-t / 2) * criticalWeight A t

def baselineLogKernel (A t : ℝ) : ℝ := Real.exp (t / 2) * criticalWeight A t

theorem actualPsi_log_kernel_eq {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Real.exp t • (Chebyshev.psi (Real.exp t) * deriv (plainProfile A 1) (Real.exp t)) =
      -psiLogKernel A t := by
  rw [(plainProfile_hasDerivAt (by linarith : 0 < A) 1 (Real.exp_pos t)).deriv]
  simp only [Real.log_one, zero_add, Real.log_exp, smul_eq_mul, psiLogKernel, criticalWeight]
  field_simp <;> ring

theorem actualPsi_log_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (psiLogKernel A) (Ioi (0 : ℝ)) := by
  have hi := (integrableOn_comp_exp_Ioi
    (fun x => Chebyshev.psi x * deriv (plainProfile A 1) x) 0).mpr
    (by simpa only [Real.exp_zero] using actualPsi_full_integrable hA)
  apply hi.neg.congr_fun
  · intro t _
    change -(Real.exp t • (Chebyshev.psi (Real.exp t) *
      deriv (plainProfile A 1) (Real.exp t))) = psiLogKernel A t
    rw [actualPsi_log_kernel_eq hA t]
    ring
  · exact measurableSet_Ioi

theorem actualPsi_log_stieltjes {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = ∫ t in Ioi (0 : ℝ), psiLogKernel A t := by
  rw [actualPsi_full_stieltjes hA]
  have he := integral_comp_exp_Ioi
    (fun x => Chebyshev.psi x * deriv (plainProfile A 1) x) 0
  simp only [Real.exp_zero] at he
  rw [← he, ← integral_neg]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro t _
  change -(Real.exp t • (Chebyshev.psi (Real.exp t) *
    deriv (plainProfile A 1) (Real.exp t))) = psiLogKernel A t
  rw [actualPsi_log_kernel_eq hA t]
  ring

/-- The actual relative error retains its full independently specified source baseline. -/
theorem actualPsi_kernel_decomposition (A t : ℝ) :
    psiLogKernel A t = criticalKernel A t + baselineLogKernel A t := by
  have he : Real.exp (t / 2) * Real.exp (-t) = Real.exp (-t / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold psiLogKernel criticalKernel relativePsiError baselineLogKernel
  rw [mul_sub, ← mul_assoc, he]
  ring

theorem baselineLogKernel_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (baselineLogKernel A) (Ioi (0 : ℝ)) := by
  apply ((actualPsi_log_integrable hA).sub (criticalKernel_integrable hA)).congr_fun
  · intro t _
    rw [actualPsi_kernel_decomposition]
    ring
  · exact measurableSet_Ioi

theorem criticalWeight_zero_above {A t : ℝ} (hA : 1 ≤ A) (ht : 2 * A < t) :
    criticalWeight A t = 0 := by
  have hp : 0 < A := by linarith
  have hz : sourceCorrelation explicitSecondDerivative A t = 0 :=
    sourceCorrelation_eq_zero_of_two_mul_le_abs A t hp (by linarith [le_abs_self t])
  have he : EqOn (sourceCorrelation explicitSecondDerivative A) (fun _ => (0 : ℝ))
      (Ioi (2 * A)) := by
    intro u hu
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A u hp ((mem_Ioi.mp hu).le.trans (le_abs_self u))
  have hd : deriv (sourceCorrelation explicitSecondDerivative A) t = 0 := by
    simpa using he.deriv isOpen_Ioi ht
  simp [criticalWeight, hz, hd]

/-- Exact source boundary contribution; the unit baseline is retained. -/
theorem baselineLogKernel_integral {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in Ioi (0 : ℝ), baselineLogKernel A t) = 1 + criticalContinuousMoment A := by
  have hp : 0 < A := by linarith
  have hi : (∫ t in Ioi (0 : ℝ), baselineLogKernel A t) =
      ∫ t in 0..2 * A, baselineLogKernel A t := by
    rw [intervalIntegral.integral_of_le (by linarith : (0 : ℝ) ≤ 2 * A),
      ← Ioc_union_Ioi_eq_Ioi (by linarith : (0 : ℝ) ≤ 2 * A)]
    apply integral_union_eq_left_of_forall measurableSet_Ioi
    intro t ht
    simp [baselineLogKernel, criticalWeight_zero_above hA ht]
  have hf := criticalPrimeTest_contDiff A hp
  have hd : (∫ t in 0..2 * A, deriv (criticalPrimeTest A) t) = -1 := by
    rw [intervalIntegral.integral_deriv_eq_sub]
    · rw [criticalPrimeTest_at_upper A hp, criticalPrimeTest_at_zero A hA]
      norm_num
    · intro t _
      exact hf.differentiable (by norm_num) t
    · exact hf.continuous_deriv_one.intervalIntegrable _ _
  have he : baselineLogKernel A = fun t =>
      criticalPrimeTest A t - deriv (criticalPrimeTest A) t := by
    funext t
    rw [criticalPrimeTest_deriv A t hp]
    unfold baselineLogKernel criticalPrimeTest criticalWeight
    ring
  rw [hi, he, intervalIntegral.integral_sub
    (hf.continuous.intervalIntegrable _ _) (hf.continuous_deriv_one.intervalIntegrable _ _),
    hd, criticalContinuousMoment]
  ring

/-- Exact unchanged residual, actual Chebyshev pairing and source half compensation. -/
theorem mertensResidual_eq_criticalRelative_add_baseline {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = criticalRelativePairing A + 1 + criticalContinuousMoment A := by
  rw [actualPsi_log_stieltjes hA]
  have he : psiLogKernel A = fun t => criticalKernel A t + baselineLogKernel A t :=
    funext (actualPsi_kernel_decomposition A)
  rw [he, integral_add (criticalKernel_integrable hA) (baselineLogKernel_integrable hA),
    baselineLogKernel_integral hA]
  change criticalRelativePairing A + (1 + criticalContinuousMoment A) = _
  ring

/-- The genuine source compensation is bounded; no lattice/calibration loss is needed. -/
theorem residual_sub_criticalRelative_abs_lt_one {A : ℝ} (hA : 1 ≤ A) :
    |mertensResidual A - criticalRelativePairing A| < 1 := by
  rw [mertensResidual_eq_criticalRelative_add_baseline hA]
  have hh := criticalContinuousMoment_strict_bounds hA
  apply abs_lt.mpr
  constructor <;> linarith

/-- At actual real scales at least six the complete continuous correction is negative. -/
theorem mertensResidual_lt_criticalRelative_of_six_le {A : ℝ} (hA : 6 ≤ A) :
    mertensResidual A < criticalRelativePairing A := by
  have hA1 : 1 ≤ A := by linarith
  have h4 : (6 : ℝ) ^ 4 ≤ A ^ 4 := by gcongr
  have hd : 0 < 7 * A ^ 4 + 272 * A ^ 2 + 7344 := by positivity
  have hr : 1 < (14 * A ^ 4 + 272 * A ^ 2) / (7 * A ^ 4 + 272 * A ^ 2 + 7344) := by
    apply (lt_div_iff₀ hd).mpr
    nlinarith [h4]
  rw [mertensResidual_eq_criticalRelative_add_baseline hA1,
    criticalContinuousMoment_eq_rational hA1, neg_div]
  linarith

/-- Original estimate consumer at the same supplied radius, with zero additive loss. -/
theorem estimate_of_criticalRelative_tail_radius_ge_six {K R : ℝ} (hR : 6 ≤ R)
    (hcritical : ∀ A : ℝ, R ≤ A → criticalRelativePairing A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_mertens_residual_tail
  refine ⟨max 0 K, le_max_left _ _, R, (by linarith), ?_⟩
  intro A hRA
  exact (mertensResidual_lt_criticalRelative_of_six_le (hR.trans hRA)).le.trans
    ((hcritical A hRA).trans (le_max_right _ _))

end FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation
