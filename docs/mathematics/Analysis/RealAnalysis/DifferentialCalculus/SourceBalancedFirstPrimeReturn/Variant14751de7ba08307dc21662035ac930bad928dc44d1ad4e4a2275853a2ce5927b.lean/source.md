# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBalancedFirstPrimeReturn.Variant14751de7ba08307dc21662035ac930bad928dc44d1ad4e4a2275853a2ce5927b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a4e77335db0d48c4d87088dd3673fb445dc6063` · SHA-256 `14751de7ba08307dc21662035ac930bad928dc44d1ad4e4a2275853a2ce5927b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceBalancedFirstPrimePrimitive

/-! Exact return of the actual balanced first-prime primitive to the original moment.
Direction and conceptual origin: grwtsk contributors.
Source reconstruction and native formalization: OpenAI Codex assistance.
Every first prime, the fixed diagonal main, zero and seven endpoints are retained. -/
set_option autoImplicit false
noncomputable section
namespace RH16BalancedFirstPrimeReturn
open MeasureTheory Set Filter
open RH16BalancedFirstPrimePrimitive RH16GrowingXiHead RH16ActualF7
open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationCurvature WeightedPrimeAbel
open SourceFirstPrimeAbel SourcePrimePowerPartition SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent EstimateMobiusSplit
open EstimateCorrelation SourceDiagonalPrimeAbel

/-- The original balanced source pairing, anchored at seven. -/
def balancedFirstPrimeFullWork (A : ℝ) : ℝ :=
  -(∫ t in Real.log 7..2 * A, balancedFirstPrimePrimitive t * actualXiCurvature A t)

/-- The original anchored primitive is retained after the moving time split. -/
def balancedFirstPrimeTailWork (A : ℝ) : ℝ :=
  -(∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..2 * A,
    balancedFirstPrimePrimitive t * actualXiCurvature A t)

/-- The complete zero-to-seven physical head keeps primes two, three, five and seven. -/
def firstPrimeZeroHead (A : ℝ) : ℝ :=
  ∫ t in 0..Real.log 7, balancedFirstPrimeDensity t * minusCorrelationWeight A t

private theorem theta_exp_eq_steps (b t : ℝ) (ht : t ≤ b) :
    Chebyshev.theta (Real.exp t) =
      ∑ p ∈ primeLogInventory b, if Real.log (p : ℝ) ≤ t then Real.log p else 0 := by
  change (∑ p ∈ primeLogInventory t, Real.log (p : ℝ)) = _
  rw [← primeLogInventory_filter_log b t ht, Finset.sum_filter]

private theorem theta_mul_deriv_integrable (a b : ℝ) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun t => Chebyshev.theta (Real.exp t) * deriv F t)
      volume a b := by
  have hi : IntervalIntegrable
      (∑ p ∈ primeLogInventory b, fun t : ℝ => Real.log (p : ℝ) *
        (if Real.log (p : ℝ) ≤ t then deriv F t else 0)) volume a b :=
    IntervalIntegrable.sum _ (fun p _ =>
      (intervalIntegrable_closed_step a b (Real.log (p : ℝ)) _
        (hF.continuous_deriv_one.intervalIntegrable a b)).const_mul (Real.log (p : ℝ)))
  apply hi.congr
  intro t ht
  simp only [Finset.sum_apply]
  rw [theta_exp_eq_steps b t ((uIoc_of_le hab ▸ ht).2), Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p _
  split_ifs <;> simp

/-- Finite theta Abel reconstruction uses the literal closed source weight. -/
theorem theta_closed_source_work (A : ℝ) (hA : 0 < A) :
    (∫ t in 0..2 * A, Chebyshev.theta (Real.exp t) *
      deriv (exponentialTest (sourceCorrelation explicitSecondDerivative A)) t) =
        -firstPrimeMoment A := by
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hF : ContDiff ℝ 1 F := exponentialTest_contDiff C (sourceCorrelation_contDiff A hA)
  have he := integral_finite_steps_deriv 0 (2 * A) (primeLogInventory (2 * A))
    (fun p => Real.log (p : ℝ)) (fun p => Real.log (p : ℝ))
    (fun p hp => primeLogInventory_log_bounds (2 * A) p hp) F hF
  have hsteps : (∫ t in 0..2 * A, Chebyshev.theta (Real.exp t) * deriv F t) =
      ∫ t in 0..2 * A, ∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
        (if Real.log (p : ℝ) ≤ t then deriv F t else 0) := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [theta_exp_eq_steps (2 * A) t
      ((uIcc_of_le (by linarith : 0 ≤ 2 * A) ▸ ht).2), Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro p _
    split_ifs <;> simp
  have hupper : F (2 * A) = 0 := by
    dsimp [F, C, exponentialTest]
    rw [sourceCorrelation_upper_endpoint A hA, mul_zero]
  rw [hsteps, he, hupper]
  unfold firstPrimeMoment
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  rw [ArithmeticFunction.vonMangoldt_apply_prime (Finset.mem_filter.mp hp).2]
  change Real.log (p : ℝ) * (0 - F (Real.log p)) =
    -(Real.log (p : ℝ) * F (Real.log p))
  ring

/-- The full critical exponential has its original unit value at zero. -/
theorem positive_exponential_weight_work (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, Real.exp (t / 2) * minusCorrelationWeight A t) =
      -1 - criticalContinuousMoment A := by
  have hp : 0 < A := by linarith
  have hd := (criticalPrimeTest_contDiff A hp).continuous_deriv_one.intervalIntegrable
    (μ := volume) 0 (2 * A)
  have hi := (criticalPrimeTest_contDiff A hp).continuous.intervalIntegrable
    (μ := volume) 0 (2 * A)
  have he : (∫ t in 0..2 * A, Real.exp (t / 2) * minusCorrelationWeight A t) =
      ∫ t in 0..2 * A, deriv (criticalPrimeTest A) t - criticalPrimeTest A t := by
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    rw [criticalPrimeTest_deriv A t hp]
    unfold minusCorrelationWeight criticalPrimeTest
    ring
  rw [he, intervalIntegral.integral_sub hd hi,
    intervalIntegral.integral_deriv_eq_sub
      (fun t _ => (criticalPrimeTest_contDiff A hp).differentiable (by norm_num) t) hd,
    criticalPrimeTest_at_upper A hp, criticalPrimeTest_at_zero A hA]
  change 0 - 1 - criticalContinuousMoment A = -1 - criticalContinuousMoment A
  ring

/-- The independent original diagonal main is recovered from the entire positive half. -/
theorem minusCorrelationWeight_full_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, minusCorrelationWeight A t) =
      -1 - diagonalMainCoefficient A * A := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  have hd := (sourceCorrelation_contDiff A hp).continuous_deriv_one.intervalIntegrable
    (μ := volume) 0 (2 * A)
  have hi := (sourceCorrelation_contDiff A hp).continuous.intervalIntegrable
    (μ := volume) 0 (2 * A)
  have hm : (∫ t in 0..2 * A, C t) / 2 = diagonalMainCoefficient A * A := by
    have he := diagonalCorrelation_integral A hA
    unfold diagonalCorrelation at he
    rw [intervalIntegral.integral_comp_mul_left C (by norm_num : (2 : ℝ) ≠ 0)] at he
    simp only [mul_zero, smul_eq_mul] at he
    change (2 : ℝ)⁻¹ * (∫ t in 0..2 * A, C t) = _ at he
    simpa only [div_eq_mul_inv, mul_comm] using he
  unfold minusCorrelationWeight
  rw [intervalIntegral.integral_sub hd (hi.div_const 2), intervalIntegral.integral_div,
    intervalIntegral.integral_deriv_eq_sub
      (fun t _ => (sourceCorrelation_contDiff A hp).differentiable (by norm_num) t) hd,
    sourceCorrelation_upper_endpoint A hp, actual_correlation_at_zero A hA]
  change 0 - 1 - (∫ t in 0..2 * A, C t) / 2 = _
  rw [hm]
  ring

/-- Both unit endpoint contributions cancel; no main term or atom is replaced. -/
theorem balanced_density_full_source_work (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, balancedFirstPrimeDensity t * minusCorrelationWeight A t) =
      criticalContinuousMoment A - firstPrimeMoment A - diagonalMainCoefficient A * A := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hF := exponentialTest_contDiff C (sourceCorrelation_contDiff A hp)
  have htheta := theta_mul_deriv_integrable 0 (2 * A) (by linarith) F hF
  have he := ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul
    (minusCorrelationWeight_contDiff A hp).continuous).intervalIntegrable
      (μ := volume) 0 (2 * A)
  have hw := (minusCorrelationWeight_contDiff A hp).continuous.intervalIntegrable
    (μ := volume) 0 (2 * A)
  have hid : (∫ t in 0..2 * A, balancedFirstPrimeDensity t * minusCorrelationWeight A t) =
      (∫ t in 0..2 * A, Chebyshev.theta (Real.exp t) * deriv F t) -
        (∫ t in 0..2 * A, Real.exp (t / 2) * minusCorrelationWeight A t) +
          ∫ t in 0..2 * A, minusCorrelationWeight A t := by
    have hsub := intervalIntegral.integral_sub htheta he
    have hadd := intervalIntegral.integral_add (htheta.sub he) hw
    simp only [Pi.mul_apply] at hsub hadd
    rw [← hsub, ← hadd]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    rw [balancedFirstPrimeDensity_eq]
    dsimp [F, C]
    rw [exponentialTest_deriv _ (sourceCorrelation_contDiff A hp) t]
    unfold minusCorrelationWeight
    ring
  rw [hid, theta_closed_source_work A hp, positive_exponential_weight_work A hA,
    minusCorrelationWeight_full_integral A hA]
  ring


/-- Absolute continuity is established on each actual finite seven-anchored interval. -/
theorem balancedFirstPrimePrimitive_absolutelyContinuous (T : ℝ) :
    AbsolutelyContinuousOnInterval balancedFirstPrimePrimitive (Real.log 7) T := by
  have hi := balancedFirstPrimeDensity_intervalIntegrable (Real.log 7) T
  exact hi.absolutelyContinuousOnInterval_intervalIntegral (by simp)

/-- Ordinary derivative recovery is almost everywhere, preserving all prime jumps. -/
theorem balancedFirstPrimePrimitive_ae_hasDerivAt (T : ℝ) :
    ∀ᵐ t ∂volume, t ∈ uIcc (Real.log 7) T →
      HasDerivAt balancedFirstPrimePrimitive (balancedFirstPrimeDensity t) t := by
  have hi := balancedFirstPrimeDensity_intervalIntegrable (Real.log 7) T
  filter_upwards [hi.ae_hasDerivAt_integral] with t ht
  intro hm
  exact ht hm (Real.log 7) (by simp)

/-- The physical source product is integrable despite the actual arithmetic jumps. -/
theorem balanced_density_weight_intervalIntegrable (A a b : ℝ) (hA : 0 < A) :
    IntervalIntegrable (fun t => balancedFirstPrimeDensity t * minusCorrelationWeight A t)
      volume a b :=
  (balancedFirstPrimeDensity_intervalIntegrable a b).mul_continuousOn
    (minusCorrelationWeight_contDiff A hA).continuous.continuousOn

/-- Every finite head recovers its literal surviving upper trace. -/
theorem balanced_physical_head_eq_trace_sub_curvature (A H : ℝ) (hA : 0 < A) :
    (∫ t in Real.log 7..H, balancedFirstPrimeDensity t * minusCorrelationWeight A t) =
      balancedFirstPrimePrimitive H * minusCorrelationWeight A H -
        ∫ t in Real.log 7..H, balancedFirstPrimePrimitive t * actualXiCurvature A t := by
  have hF := balancedFirstPrimePrimitive_absolutelyContinuous H
  have hparts := hF.integral_mul_deriv_eq_deriv_mul
    (minusCorrelationWeight_contDiff A hA).contDiffOn.absolutelyContinuousOnInterval
  rw [balancedFirstPrimePrimitive_at_lower] at hparts
  simp only [zero_mul, sub_zero] at hparts
  have he : (∫ t in Real.log 7..H,
      deriv balancedFirstPrimePrimitive t * minusCorrelationWeight A t) =
        ∫ t in Real.log 7..H,
          balancedFirstPrimeDensity t * minusCorrelationWeight A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [balancedFirstPrimePrimitive_ae_hasDerivAt H] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv]
  rw [he] at hparts
  have hd : (∫ t in Real.log 7..H,
      balancedFirstPrimePrimitive t * deriv (minusCorrelationWeight A) t) =
        ∫ t in Real.log 7..H,
          balancedFirstPrimePrimitive t * actualXiCurvature A t := by
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    rw [(minusCorrelationWeight_hasDerivAt A t hA).deriv]
  rw [hd] at hparts
  linarith only [hparts]

/-- Both full source traces vanish, with no deletion of the zero-to-seven physical head. -/
theorem balanced_full_work_eq_physical (A : ℝ) (hA : 0 < A) :
    balancedFirstPrimeFullWork A =
      ∫ t in Real.log 7..2 * A, balancedFirstPrimeDensity t * minusCorrelationWeight A t := by
  have h := balanced_physical_head_eq_trace_sub_curvature A (2 * A) hA
  rw [minusCorrelationWeight_at_upper A hA] at h
  simpa only [mul_zero, zero_sub, balancedFirstPrimeFullWork] using h.symm

/-- Exact original first-prime-plus-main recovery with zero and seven corrections retained. -/
theorem firstPrime_main_eq_balanced_source (A : ℝ) (hA : 1 ≤ A) :
    firstPrimeMoment A + diagonalMainCoefficient A * A =
      criticalContinuousMoment A - firstPrimeZeroHead A - balancedFirstPrimeFullWork A := by
  have hp : 0 < A := by linarith
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (balanced_density_weight_intervalIntegrable A 0 (Real.log 7) hp)
    (balanced_density_weight_intervalIntegrable A (Real.log 7) (2 * A) hp)
  have hfull := balanced_density_full_source_work A hA
  have htail := balanced_full_work_eq_physical A hp
  unfold firstPrimeZeroHead
  linarith only [hsplit, hfull, htail]

/-- The moving split remains a time split of the complete seven-anchored primitive. -/
theorem balanced_full_eq_head_add_tail (A : ℝ) (hA : 0 < A) :
    balancedFirstPrimeFullWork A = balancedFirstPrimeHead A + balancedFirstPrimeTailWork A := by
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (balancedFirstPrime_curvature_intervalIntegrable A (Real.log 7)
      (Real.log (⌊A ^ 2⌋₊ : ℝ)) hA)
    (balancedFirstPrime_curvature_intervalIntegrable A
      (Real.log (⌊A ^ 2⌋₊ : ℝ)) (2 * A) hA)
  unfold balancedFirstPrimeFullWork balancedFirstPrimeHead balancedFirstPrimeTailWork
  linarith only [hsplit]

/-- The remaining original physical source and its plus interior trace recover the tail exactly. -/
theorem balanced_tail_eq_physical_add_trace (A : ℝ) (hA : 0 < A) :
    balancedFirstPrimeTailWork A =
      (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..2 * A,
        balancedFirstPrimeDensity t * minusCorrelationWeight A t) +
        balancedFirstPrimePrimitive (Real.log (⌊A ^ 2⌋₊ : ℝ)) *
          minusCorrelationWeight A (Real.log (⌊A ^ 2⌋₊ : ℝ)) := by
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (balanced_density_weight_intervalIntegrable A (Real.log 7)
      (Real.log (⌊A ^ 2⌋₊ : ℝ)) hA)
    (balanced_density_weight_intervalIntegrable A
      (Real.log (⌊A ^ 2⌋₊ : ℝ)) (2 * A) hA)
  have hhead := balanced_physical_head_eq_trace_sub_curvature A
    (Real.log (⌊A ^ 2⌋₊ : ℝ)) hA
  have hfull := balanced_full_work_eq_physical A hA
  have hparts := balanced_full_eq_head_add_tail A hA
  unfold balancedFirstPrimeHead at hparts
  linarith only [hsplit, hhead, hfull, hparts]

end RH16BalancedFirstPrimeReturn
```
