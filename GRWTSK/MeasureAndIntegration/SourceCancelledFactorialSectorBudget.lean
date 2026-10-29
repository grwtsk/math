import SourceFactorialAbsoluteLogMoments
import SourceLeadingFullKappaReduction

/-!
Quantitative decay of the actually cancelled factorial tail sector. Genuine
signed-F absolute logarithmic moments are scaled and summed with the actual
Moebius coefficients. Original outside, Psi and continuous sectors remain.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceCancelledFactorialSectorBudget
open MeasureTheory Set
open scoped BigOperators
open SourceFactorialAbsoluteLogMoments SourceFactorialMellinCancellation
open SourceActualFactorialTailDecomposition SourceActualFactorialMellinTransport
open SourceActualFactorialJointCancellation SourceLeadingFullKappaReduction
open SourceSignedSamplingExplicitBudget SourceStrictComplementaryLocalization SourcePairing
open SourcePositiveSampling
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMobiusSplit EstimateMertensAbel
noncomputable section

/-- The nonnegative actual scaled factorial quadratic log majorant. -/
def factorialCancellationRowMajorant (d x : ℝ) : ℝ :=
  |factorialLogDefect (x / d) * x ^ (-(3 : ℝ) / 2)| *
    (5 * (Real.log x) ^ 2 + 20 * |Real.log x|)

private def translatedFactorialMajorant (d x : ℝ) : ℝ :=
  d ^ (-(3 : ℝ) / 2) *
    ((5 * Real.log d ^ 2 + 20 * Real.log d) * factorialAbsLogWeight 0 (x * d⁻¹) +
      (10 * Real.log d + 20) * factorialAbsLogWeight 1 (x * d⁻¹) +
        5 * factorialAbsLogWeight 2 (x * d⁻¹))

private theorem scaled_abs_factorial_density {d x : ℝ} (hd : 0 < d) (hx : 0 < x) :
    |factorialLogDefect (x / d) * x ^ (-(3 : ℝ) / 2)| =
      d ^ (-(3 : ℝ) / 2) * |factorialMellinWeight (x * d⁻¹)| := by
  have hxdiv := div_pos hx hd
  have hxde : x = d * (x / d) := by field_simp
  have hp : x ^ (-(3 : ℝ) / 2) =
      d ^ (-(3 : ℝ) / 2) * (x / d) ^ (-(3 : ℝ) / 2) := by
    conv_lhs => rw [hxde]
    exact Real.mul_rpow hd.le hxdiv.le
  unfold factorialMellinWeight
  rw [hp, ← div_eq_mul_inv]
  simp_rw [abs_mul]
  rw [abs_of_nonneg (Real.rpow_nonneg hd.le _)]
  ring

private theorem translatedFactorialMajorant_le {d x : ℝ} (hd : 1 ≤ d) (hx : 0 < x) :
    factorialCancellationRowMajorant d x ≤ translatedFactorialMajorant d x := by
  have hdpos : 0 < d := by linarith
  let a := Real.log d
  let b := Real.log (x / d)
  have ha : 0 ≤ a := Real.log_nonneg hd
  have hlog : Real.log x = a + b := by
    dsimp [a, b]
    rw [Real.log_div hx.ne' hdpos.ne']
    ring
  have hb0 := abs_nonneg b
  have hb1 := le_abs_self b
  have habs : |Real.log x| ≤ a + |b| := by
    rw [hlog]
    simpa only [abs_of_nonneg ha] using abs_add_le a b
  have hs : (Real.log x) ^ 2 ≤ a ^ 2 + 2 * a * |b| + |b| ^ 2 := by
    rw [hlog]
    nlinarith [sq_abs b, mul_nonneg ha (sub_nonneg.mpr hb1)]
  have hpoly : 5 * (Real.log x) ^ 2 + 20 * |Real.log x| ≤
      (5 * a ^ 2 + 20 * a) + (10 * a + 20) * |b| + 5 * |b| ^ 2 := by
    nlinarith
  unfold factorialCancellationRowMajorant translatedFactorialMajorant
  rw [scaled_abs_factorial_density hdpos hx]
  calc
    _ ≤ (d ^ (-(3 : ℝ) / 2) * |factorialMellinWeight (x * d⁻¹)|) *
        ((5 * a ^ 2 + 20 * a) + (10 * a + 20) * |b| + 5 * |b| ^ 2) :=
      mul_le_mul_of_nonneg_left hpoly (by positivity)
    _ = _ := by
      unfold factorialAbsLogWeight a b
      simp only [pow_zero, pow_one, ← div_eq_mul_inv]
      ring

private theorem scaled_abslog_integrable (j : ℕ) {d : ℝ} (hd : 0 < d) :
    IntegrableOn (fun x => factorialAbsLogWeight j (x * d⁻¹)) (Ioi (0 : ℝ)) := by
  apply (integrableOn_Ioi_comp_mul_right_iff (factorialAbsLogWeight j) 0
    (inv_pos.mpr hd)).mpr
  simpa using factorialAbsLogWeight_integrable j

private theorem translatedFactorialMajorant_integrable {d : ℝ} (hd : 0 < d) :
    IntegrableOn (translatedFactorialMajorant d) (Ioi (0 : ℝ)) := by
  exact (((scaled_abslog_integrable 0 hd).const_mul _).add
    ((scaled_abslog_integrable 1 hd).const_mul _) |>.add
      ((scaled_abslog_integrable 2 hd).const_mul _)).const_mul _

theorem factorialCancellationRowMajorant_integrable {d : ℝ} (hd : 1 ≤ d) :
    IntegrableOn (factorialCancellationRowMajorant d) (Ioi (0 : ℝ)) := by
  have hm := (scaledFactorialMellin_integrable (by linarith : 0 < d)).aestronglyMeasurable.norm
  have hp : Measurable (fun x : ℝ => 5 * Real.log x ^ 2 + 20 * |Real.log x|) := by fun_prop
  have hmeas : AEStronglyMeasurable (factorialCancellationRowMajorant d)
      (volume.restrict (Ioi (0 : ℝ))) := by
    apply (hm.mul hp.aestronglyMeasurable.restrict).congr
    filter_upwards with x
    simp only [Pi.mul_apply, Real.norm_eq_abs, factorialCancellationRowMajorant]
  apply (translatedFactorialMajorant_integrable (by linarith : 0 < d)).mono' hmeas
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
  have hn : 0 ≤ factorialCancellationRowMajorant d x := by
    unfold factorialCancellationRowMajorant
    positivity
  simpa only [Real.norm_eq_abs, abs_of_nonneg hn] using translatedFactorialMajorant_le hd hx

private theorem scaled_abslog_integral (j : ℕ) {d : ℝ} (hd : 0 < d) :
    (∫ x in Ioi (0 : ℝ), factorialAbsLogWeight j (x * d⁻¹)) =
      d * factorialAbsLogMoment j := by
  rw [integral_comp_mul_right_Ioi (factorialAbsLogWeight j) 0 (inv_pos.mpr hd)]
  simp only [zero_mul, inv_inv, smul_eq_mul, factorialAbsLogMoment]

theorem factorialCancellationRowMajorant_integral_le {d : ℝ} (hd : 1 ≤ d) :
    (∫ x in Ioi (0 : ℝ), factorialCancellationRowMajorant d x) ≤
      (60 * Real.log d ^ 2 + 640 * Real.log d + 1920) / Real.sqrt d := by
  have hdpos : 0 < d := by linarith
  have ha := Real.log_nonneg hd
  have hu := integral_mono_ae (factorialCancellationRowMajorant_integrable hd)
    (translatedFactorialMajorant_integrable hdpos) (by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
      exact translatedFactorialMajorant_le hd hx)
  unfold translatedFactorialMajorant at hu
  rw [integral_const_mul,
    integral_add (f := fun x =>
      (5 * Real.log d ^ 2 + 20 * Real.log d) * factorialAbsLogWeight 0 (x * d⁻¹) +
        (10 * Real.log d + 20) * factorialAbsLogWeight 1 (x * d⁻¹))
      (((scaled_abslog_integrable 0 hdpos).const_mul _).add
      ((scaled_abslog_integrable 1 hdpos).const_mul _))
        ((scaled_abslog_integrable 2 hdpos).const_mul _),
    integral_add (f := fun x =>
      (5 * Real.log d ^ 2 + 20 * Real.log d) * factorialAbsLogWeight 0 (x * d⁻¹))
      ((scaled_abslog_integrable 0 hdpos).const_mul _)
      ((scaled_abslog_integrable 1 hdpos).const_mul _)] at hu
  simp_rw [integral_const_mul, scaled_abslog_integral _ hdpos] at hu
  have hp : d ^ (-(3 : ℝ) / 2) * d = (Real.sqrt d)⁻¹ := by
    rw [Real.sqrt_eq_rpow, ← Real.rpow_neg hdpos.le]
    calc
      d ^ (-(3 : ℝ) / 2) * d = d ^ (-(3 : ℝ) / 2) * d ^ (1 : ℝ) := by
        rw [Real.rpow_one]
      _ = d ^ (-(3 : ℝ) / 2 + 1) := (Real.rpow_add hdpos _ _).symm
      _ = _ := by norm_num
  have h0 := factorialAbsLogMoment_first_three.1
  have h1 := factorialAbsLogMoment_first_three.2.1
  have h2 := factorialAbsLogMoment_first_three.2.2
  calc
    _ ≤ d ^ (-(3 : ℝ) / 2) *
        ((5 * Real.log d ^ 2 + 20 * Real.log d) * (d * factorialAbsLogMoment 0) +
          (10 * Real.log d + 20) * (d * factorialAbsLogMoment 1) +
            5 * (d * factorialAbsLogMoment 2)) := hu
    _ ≤ d ^ (-(3 : ℝ) / 2) *
        ((5 * Real.log d ^ 2 + 20 * Real.log d) * (d * 12) +
          (10 * Real.log d + 20) * (d * 40) + 5 * (d * 224)) := by gcongr
    _ = _ := by
      calc
        _ = (d ^ (-(3 : ℝ) / 2) * d) *
            (60 * Real.log d ^ 2 + 640 * Real.log d + 1920) := by ring
        _ = _ := by rw [hp]; ring


/-- Full actual absolute Moebius cutoff majorant, used only for the cancelled F sector. -/
def factorialCancellationSumMajorant (A x : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| *
    factorialCancellationRowMajorant (d : ℝ) x

theorem factorialCancellationSumMajorant_integrable (A : ℝ) :
    IntegrableOn (factorialCancellationSumMajorant A) (Ioi (0 : ℝ)) := by
  unfold factorialCancellationSumMajorant
  apply integrable_finsetSum
  intro d hd
  have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
  exact (factorialCancellationRowMajorant_integrable hd1).const_mul _

private theorem factorialCancellationSumMajorant_nonneg (A x : ℝ) :
    0 ≤ factorialCancellationSumMajorant A x := by
  unfold factorialCancellationSumMajorant factorialCancellationRowMajorant
  exact Finset.sum_nonneg (fun _ _ => by positivity)

theorem factorialCancellationSumMajorant_integral_le (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in Ioi (0 : ℝ), factorialCancellationSumMajorant A x) ≤
      2 * A * (60 * Real.log (vaughanCutoff A : ℝ) ^ 2 +
        640 * Real.log (vaughanCutoff A : ℝ) + 1920) := by
  let T := Real.log (vaughanCutoff A : ℝ)
  let P := 60 * T ^ 2 + 640 * T + 1920
  have hU : (1 : ℝ) ≤ vaughanCutoff A := by exact_mod_cast vaughanCutoff_pos A hA
  have hT : 0 ≤ T := Real.log_nonneg hU
  have hP : 0 ≤ P := by unfold P; positivity
  unfold factorialCancellationSumMajorant
  rw [integral_finsetSum]
  · simp_rw [integral_const_mul]
    calc
      _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| /
          Real.sqrt (d : ℝ) * P := by
        apply Finset.sum_le_sum
        intro d hd
        have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
        have hdU : (d : ℝ) ≤ vaughanCutoff A := by exact_mod_cast (Finset.mem_Icc.mp hd).2
        have hdT : Real.log (d : ℝ) ≤ T := Real.log_le_log (by linarith) hdU
        have hdlog := Real.log_nonneg hd1
        have hpoly : 60 * Real.log (d : ℝ) ^ 2 + 640 * Real.log (d : ℝ) + 1920 ≤ P := by
          unfold P
          gcongr
        calc
          _ ≤ |realMoebius d| *
              ((60 * Real.log (d : ℝ) ^ 2 + 640 * Real.log (d : ℝ) + 1920) /
                Real.sqrt (d : ℝ)) :=
            mul_le_mul_of_nonneg_left (factorialCancellationRowMajorant_integral_le hd1)
              (abs_nonneg _)
          _ ≤ |realMoebius d| * (P / Real.sqrt (d : ℝ)) := by gcongr
          _ = _ := by ring
      _ = (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| /
          Real.sqrt (d : ℝ)) * P := (Finset.sum_mul _ _ _).symm
      _ ≤ 2 * A * P := mul_le_mul_of_nonneg_right (actualMoebiusSqrtMass_le A hA) hP
      _ = _ := rfl
  · intro d hd
    have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
    exact (factorialCancellationRowMajorant_integrable hd1).const_mul _

private theorem actualFactorial_sum_poly_le (A x : ℝ) :
    |shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)| *
      (5 * Real.log x ^ 2 + 20 * |Real.log x|) ≤ factorialCancellationSumMajorant A x := by
  unfold shortFactorialDefect
  rw [Finset.sum_mul]
  have h := Finset.abs_sum_le_sum_abs
    (fun d => realMoebius d * factorialLogDefect (x / (d : ℝ)) * x ^ (-(3 : ℝ) / 2))
    (Finset.Icc 1 (vaughanCutoff A))
  calc
    _ ≤ (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d * factorialLogDefect (x / (d : ℝ)) * x ^ (-(3 : ℝ) / 2)|) *
          (5 * Real.log x ^ 2 + 20 * |Real.log x|) :=
      mul_le_mul_of_nonneg_right h (by positivity)
    _ = _ := by
      rw [Finset.sum_mul]
      unfold factorialCancellationSumMajorant factorialCancellationRowMajorant
      apply Finset.sum_congr rfl
      intro d _
      simp_rw [abs_mul]
      ring

/-- The actual cancellation coefficient has a global quadratic logarithmic budget. -/
theorem actual_cancelled_factorial_coefficient_abs_le (A t : ℝ) (hA : 91 ≤ A) :
    |(1 - sourceCorrelation explicitSecondDerivative A t) / 2 +
        deriv (sourceCorrelation explicitSecondDerivative A) t| ≤
      (5 * t ^ 2 + 20 * |t|) / A ^ 2 := by
  have hc := actualCorrelation_sub_one_abs_le hA t
  have hd := actualCorrelation_first_abs_le hA t
  calc
    _ ≤ |(1 - sourceCorrelation explicitSecondDerivative A t) / 2| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| := abs_add_le _ _
    _ ≤ (10 / A ^ 2 * t ^ 2) / 2 + 20 / A ^ 2 * |t| := by
      rw [abs_div, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2), abs_sub_comm]
      gcongr
    _ = _ := by ring

private theorem actual_cancelled_factorial_density_abs_le (A x : ℝ)
    (hA : 91 ≤ A) (hx : 0 < x) :
    |shortFactorialDefect (vaughanCutoff A) x *
        ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)| ≤
      factorialCancellationSumMajorant A x / A ^ 2 := by
  rw [actual_factorial_cancelled_kernel A x (by linarith) hx, ← mul_assoc, abs_mul]
  calc
    _ ≤ |shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)| *
        ((5 * Real.log x ^ 2 + 20 * |Real.log x|) / A ^ 2) :=
      mul_le_mul_of_nonneg_left (actual_cancelled_factorial_coefficient_abs_le A _ hA)
        (abs_nonneg _)
    _ = (|shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)| *
        (5 * Real.log x ^ 2 + 20 * |Real.log x|)) / A ^ 2 := by ring
    _ ≤ _ := div_le_div_of_nonneg_right (actualFactorial_sum_poly_le A x) (by positivity)

/-- The actually cancelled F sector has genuine global L1 before restriction to its true tail. -/
theorem actual_cancelled_factorial_density_integrable (A : ℝ) (hA : 91 ≤ A) :
    IntegrableOn (fun x => shortFactorialDefect (vaughanCutoff A) x *
      ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x))
        (Ioi (0 : ℝ)) := by
  have hc := (SourceCorrelationCurvature.sourceCorrelation_contDiff_two
    (by linarith : 0 < A)).continuous.measurable
  have hd := (SourceCorrelationCurvature.sourceCorrelation_deriv_contDiff
    (by linarith : 0 < A)).continuous.measurable
  have hm : AEStronglyMeasurable (fun x =>
      (shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)) *
        ((1 - sourceCorrelation explicitSecondDerivative A (Real.log x)) / 2 +
          deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x)))
        (volume.restrict (Ioi (0 : ℝ))) := by
    apply ((shortFactorialMellin_integrable (vaughanCutoff A)).aestronglyMeasurable.mul
      (((((measurable_const (a := (1 : ℝ))).sub (hc.comp Real.measurable_log)).div_const 2).add
        (hd.comp Real.measurable_log)).aestronglyMeasurable.restrict)).congr
    filter_upwards with x
    simp only [Pi.mul_apply, Pi.add_apply, Pi.sub_apply, Function.comp_apply]
  have hmeas : AEStronglyMeasurable (fun x => shortFactorialDefect (vaughanCutoff A) x *
      ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x))
        (volume.restrict (Ioi (0 : ℝ))) := by
    apply hm.congr
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    rw [actual_factorial_cancelled_kernel A x (by linarith) hx]
    ring
  apply ((factorialCancellationSumMajorant_integrable A).div_const (A ^ 2)).mono' hmeas
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
  simpa only [Real.norm_eq_abs] using actual_cancelled_factorial_density_abs_le A x hA hx

/-- Only the cancelled actual factorial sector is estimated; every other signed sector remains. -/
theorem actual_cancelled_factorial_tail_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |∫ x in Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)),
      shortFactorialDefect (vaughanCutoff A) x *
        ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)| ≤
      (120 * Real.log (vaughanCutoff A : ℝ) ^ 2 +
        1280 * Real.log (vaughanCutoff A : ℝ) + 3840) / A := by
  have hA1 : 1 ≤ A := by linarith
  have hU := (actual_cutoff_order A hA1).1
  have hset : Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)) ⊆ Ioi (0 : ℝ) := by
    intro x hx
    exact lt_trans (by linarith : (0 : ℝ) < vaughanCutoff A) hx.1
  have hi := actual_cancelled_factorial_density_integrable A hA
  have hm : IntegrableOn (fun x => factorialCancellationSumMajorant A x / A ^ 2)
      (Ioi (0 : ℝ)) :=
    (factorialCancellationSumMajorant_integrable A).div_const (A ^ 2)
  have hmono := setIntegral_mono_on (hi.mono_set hset).abs (hm.mono_set hset)
    measurableSet_Ioc (fun x hx => actual_cancelled_factorial_density_abs_le A x hA
      (hset hx))
  have hext := setIntegral_mono_set hm (by
    filter_upwards with x
    exact div_nonneg (factorialCancellationSumMajorant_nonneg A x) (by positivity))
    (ae_of_all _ (fun x hx => hset hx))
  calc
    _ ≤ ∫ x in Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)),
        |shortFactorialDefect (vaughanCutoff A) x *
          ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ x in Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)),
        factorialCancellationSumMajorant A x / A ^ 2 := hmono
    _ ≤ ∫ x in Ioi (0 : ℝ), factorialCancellationSumMajorant A x / A ^ 2 := hext
    _ = (∫ x in Ioi (0 : ℝ), factorialCancellationSumMajorant A x) / A ^ 2 := by rw [integral_div]
    _ ≤ (2 * A * (60 * Real.log (vaughanCutoff A : ℝ) ^ 2 +
        640 * Real.log (vaughanCutoff A : ℝ) + 1920)) / A ^ 2 :=
      div_le_div_of_nonneg_right (factorialCancellationSumMajorant_integral_le A hA1)
        (by positivity)
    _ = _ := by field_simp; ring


/-- The same actual cancelled sector also has a full positive-axis absolute budget. -/
theorem actual_cancelled_factorial_full_abs_le (A : ℝ) (hA : 91 ≤ A) :
    |∫ x in Ioi (0 : ℝ), shortFactorialDefect (vaughanCutoff A) x *
        ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)| ≤
      (120 * Real.log (vaughanCutoff A : ℝ) ^ 2 +
        1280 * Real.log (vaughanCutoff A : ℝ) + 3840) / A := by
  have hi := actual_cancelled_factorial_density_integrable A hA
  have hm : IntegrableOn (fun x => factorialCancellationSumMajorant A x / A ^ 2)
      (Ioi (0 : ℝ)) :=
    (factorialCancellationSumMajorant_integrable A).div_const (A ^ 2)
  have hmono := setIntegral_mono_on hi.abs hm measurableSet_Ioi
    (fun x hx => actual_cancelled_factorial_density_abs_le A x hA hx)
  calc
    _ ≤ ∫ x in Ioi (0 : ℝ), |shortFactorialDefect (vaughanCutoff A) x *
        ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ x in Ioi (0 : ℝ), factorialCancellationSumMajorant A x / A ^ 2 := hmono
    _ = (∫ x in Ioi (0 : ℝ), factorialCancellationSumMajorant A x) / A ^ 2 := by
      rw [integral_div]
    _ ≤ (2 * A * (60 * Real.log (vaughanCutoff A : ℝ) ^ 2 +
        640 * Real.log (vaughanCutoff A : ℝ) + 1920)) / A ^ 2 :=
      div_le_div_of_nonneg_right
        (factorialCancellationSumMajorant_integral_le A (by linarith)) (by positivity)
    _ = _ := by field_simp; ring

end
end FormalResearch.RiemannHypothesis.SourceCancelledFactorialSectorBudget
