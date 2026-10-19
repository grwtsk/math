import FormalResearch.RiemannHypothesis.SourceComparison.SourceSamplingDerivative
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment

/-!
Exact second differentiation of the actual positive sampling kernel. This
requires only the already proved C² correlation. It does not claim the sharp
second-derivative norm bound, which needs one further correlation derivative
for the existing two-moment variation theorem.
-/

set_option autoImplicit false

namespace SamplingSecondDerivativeScratch

open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationDifferenceMoments
open SourceSampling SourceSamplingDerivative CorrelationSecondDerivative
open Filter Topology

noncomputable section

/-- The exact next logarithmic weight after differentiating the source kernel twice. -/
def secondDifference (A t : ℝ) : ℝ :=
  deriv (correlationDifference A) t - (3 / 2) * correlationDifference A t

/-- The second weight is exactly C''-2C'+3C/4. -/
theorem secondDifference_eq (A t : ℝ) (hA : 1 ≤ A) :
    secondDifference A t =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        2 * deriv (sourceCorrelation explicitSecondDerivative A) t +
        (3 / 4) * sourceCorrelation explicitSecondDerivative A t := by
  rw [secondDifference, (correlationDifference_hasDerivAt A t hA).deriv]
  unfold correlationDifference
  ring

/-- The existing second-correlation theorem already gives continuity of the next weight. -/
theorem secondDifference_continuous (A : ℝ) (hA : 1 ≤ A) : Continuous (secondDifference A) :=
  (correlationDifference_contDiff A hA).continuous_deriv_one.sub
    ((correlationDifference_contDiff A hA).continuous.const_mul (3 / 2))

/-- Both original moments and all three existing derivative budgets remain literal. -/
theorem secondDifference_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |secondDifference A t| ≤ 65 / (3 * A ^ 2) + 2 * Real.sqrt (65 / 3) / A + 3 / 4 := by
  rw [secondDifference_eq A t hA]
  calc
    _ ≤ |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        |2 * deriv (sourceCorrelation explicitSecondDerivative A) t| +
        |(3 / 4) * sourceCorrelation explicitSecondDerivative A t| :=
      (abs_add_le _ _).trans (add_le_add (abs_sub _ _) le_rfl)
    _ ≤ 65 / (3 * A ^ 2) + 2 * (Real.sqrt (65 / 3) / A) + (3 / 4) * 1 := by
      rw [abs_mul, abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2),
        abs_of_pos (by norm_num : (0 : ℝ) < 3 / 4)]
      exact add_le_add
        (add_le_add (sourceCorrelation_second_derivative_abs_le A t hA)
          (mul_le_mul_of_nonneg_left
            (DerivativeEnergy.sourceCorrelation_derivative_abs_le A t hA) (by norm_num)))
        (mul_le_mul_of_nonneg_left
          (EstimateCorrelation.actual_correlation_abs_le_one A t hA) (by norm_num))
    _ = _ := by ring

/-- The next weight also vanishes at the actual inclusive support endpoint. -/
theorem secondDifference_zero_right (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    secondDifference A t = 0 := by
  have hd : deriv (correlationDifference A) t = 0 := by
    apply HasDerivWithinAt.deriv_eq_zero (s := Set.Ici t)
      ((hasDerivWithinAt_const t (Set.Ici t) (0 : ℝ)).congr_of_mem ?_ (le_refl t))
      (uniqueDiffWithinAt_Ici t)
    intro u hu
    exact source_difference_zero_right A u hA (ht.trans hu)
  rw [secondDifference, hd, source_difference_zero_right A t hA ht, mul_zero, sub_zero]

/-- The first derivative of one original term differentiates again with the exact x⁻² factor. -/
theorem derivative_sampling_term_hasDerivAt (A x k : ℝ)
    (hA : 1 ≤ A) (hx : 0 < x) (hk : 0 < k) :
    HasDerivAt (fun y : ℝ ↦ 1 / y * (Real.log k / Real.sqrt (y * k) *
      correlationDifference A (Real.log (y * k))))
      (1 / x ^ 2 * (Real.log k / Real.sqrt (x * k) *
        secondDifference A (Real.log (x * k)))) x := by
  have hprod : x * k ≠ 0 := (mul_pos hx hk).ne'
  have hsqrt : Real.sqrt (x * k) ≠ 0 := (Real.sqrt_pos.mpr (mul_pos hx hk)).ne'
  have hm : HasDerivAt (fun y : ℝ ↦ y * k) k x := by
    simpa only [id_eq, one_mul] using (hasDerivAt_id x).mul_const k
  have hc := ((correlationDifference_contDiff A hA).differentiable
    (by norm_num) (Real.log (x * k))).hasDerivAt
  apply HasDerivAt.congr_deriv
    (((hasDerivAt_const x (1 : ℝ)).div (hasDerivAt_id x) hx.ne').mul
      (((hasDerivAt_const x (Real.log k)).div (hm.sqrt hprod) hsqrt).mul
        (hc.comp x (hm.log hprod))))
  unfold secondDifference
  dsimp only [Function.comp_apply, Pi.div_apply, Pi.mul_apply, id_eq]
  field_simp [hx.ne', hk.ne', hsqrt]
  ring_nf
  rw [Real.sq_sqrt (mul_pos hx hk).le]
  ring

/-- Padding the differentiated source uses only terms proved zero beyond support. -/
theorem second_difference_sum_eq_fixed_sum (A x : ℝ) (N : ℕ)
    (hA : 1 ≤ A) (hx : 0 < x) (hN : Real.exp (2 * A) / x ≤ (N : ℝ)) :
    (∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      secondDifference A (Real.log (x * (k : ℝ)))) =
      ∑ k ∈ Finset.Icc 1 N, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        secondDifference A (Real.log (x * (k : ℝ))) := by
  apply Finset.sum_subset (samplingIndices_subset_fixed A x N hx hN)
  intro k hk hout
  have hk1 := (Finset.mem_Icc.mp hk).1
  have hcut : Real.exp (2 * A) ≤ x * (k : ℝ) := by
    by_contra h
    exact hout ((mem_samplingIndices_iff A x k hx).mpr ⟨hk1, lt_of_not_ge h⟩)
  have hlog : 2 * A ≤ Real.log (x * (k : ℝ)) := by
    simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
  rw [secondDifference_zero_right A _ hA hlog, mul_zero]

/-- The actual source kernel has this second derivative through every moving cutoff. -/
theorem sourceSamplingKernel_derivative_hasDerivAt (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (deriv (sourceSamplingKernel A))
      (1 / x ^ 2 * ∑ k ∈ samplingIndices A x,
        Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
          secondDifference A (Real.log (x * (k : ℝ)))) x := by
  let N : ℕ := ⌊2 * Real.exp (2 * A) / x⌋₊ + 1
  have hN (y : ℝ) (hy : x / 2 < y) : Real.exp (2 * A) / y ≤ (N : ℝ) := by
    have hy0 : 0 < y := by linarith
    have hquot : Real.exp (2 * A) / y < 2 * Real.exp (2 * A) / x := by
      apply (div_lt_div_iff₀ hy0 hx).mpr
      nlinarith [Real.exp_pos (2 * A)]
    have hf := Nat.lt_floor_add_one (2 * Real.exp (2 * A) / x)
    exact (hquot.trans (by simpa only [N, Nat.cast_add, Nat.cast_one] using hf)).le
  have heq : deriv (sourceSamplingKernel A) =ᶠ[𝓝 x]
      (fun y ↦ ∑ k ∈ Finset.Icc 1 N, 1 / y * (Real.log (k : ℝ) /
        Real.sqrt (y * (k : ℝ)) * correlationDifference A (Real.log (y * (k : ℝ))))) := by
    filter_upwards [eventually_gt_nhds (show x / 2 < x by linarith)] with y hy
    rw [sourceSamplingKernel_deriv A y hA (by linarith),
      difference_sum_eq_fixed_sum A y N hA (by linarith) (hN y hy), Finset.mul_sum]
  have hd := HasDerivAt.fun_sum (u := Finset.Icc 1 N) (fun k hk ↦
    derivative_sampling_term_hasDerivAt A x k hA hx
      (by exact_mod_cast (show 0 < k by have := (Finset.mem_Icc.mp hk).1; omega)))
  have hfixed := hd.congr_of_eventuallyEq heq
  rw [← Finset.mul_sum, ← second_difference_sum_eq_fixed_sum A x N hA hx
    (hN x (by linarith))] at hfixed
  exact hfixed

/-- Compact C¹ integration by parts transports the literal second exponential moment. -/
theorem derivative_secondMoment (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F)
    (hs : HasCompactSupport F) :
    (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * deriv F t) =
      -(2 * (∫ t : ℝ, t * Real.exp (t / 2) * F t) +
        (1 / 2) * ∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * F t) := by
  have hi1 : MeasureTheory.Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) * F t) :=
    ((continuous_id.mul (continuous_id.div_const 2).rexp).mul hF.continuous).integrable_of_hasCompactSupport hs.mul_left
  have hi2 : MeasureTheory.Integrable (fun t : ℝ ↦ t ^ 2 * Real.exp (t / 2) * F t) :=
    (((continuous_id.pow 2).mul (continuous_id.div_const 2).rexp).mul hF.continuous).integrable_of_hasCompactSupport hs.mul_left
  have hid : MeasureTheory.Integrable (fun t : ℝ ↦ t ^ 2 * Real.exp (t / 2) * deriv F t) :=
    ((continuous_id.pow 2).mul ((continuous_id.div_const 2).rexp)
      |>.mul hF.continuous_deriv_one).integrable_of_hasCompactSupport hs.deriv.mul_left
  have hup : MeasureTheory.Integrable (fun t : ℝ ↦
      (2 * t * Real.exp (t / 2) + (1 / 2) * (t ^ 2 * Real.exp (t / 2))) * F t) := by
    apply ((hi1.const_mul 2).add (hi2.const_mul (1 / 2))).congr
    filter_upwards [] with t
    dsimp only [Pi.add_apply]
    ring
  have hb := MeasureTheory.integral_mul_deriv_eq_deriv_mul_of_integrable
    (fun t _ ↦ show HasDerivAt (fun t : ℝ ↦ t ^ 2 * Real.exp (t / 2))
      (2 * t * Real.exp (t / 2) + (1 / 2) * (t ^ 2 * Real.exp (t / 2))) t from by
      apply (((hasDerivAt_id t).pow 2).mul (((hasDerivAt_id t).div_const 2).exp)).congr_deriv
      dsimp
      ring)
    (fun t _ ↦ (hF.differentiable (by norm_num) t).hasDerivAt) hid hup hi2
  have he (t : ℝ) :
      (2 * t * Real.exp (t / 2) + (1 / 2) * (t ^ 2 * Real.exp (t / 2))) * F t =
      2 * (t * Real.exp (t / 2) * F t) + (1 / 2) * (t ^ 2 * Real.exp (t / 2) * F t) := by ring
  simp_rw [he] at hb
  rw [MeasureTheory.integral_add (hi1.const_mul 2) (hi2.const_mul (1 / 2)),
    MeasureTheory.integral_const_mul, MeasureTheory.integral_const_mul] at hb
  exact hb

/-- The signed difference has second moment coefficient minus the actual source beta. -/
theorem correlationDifference_secondMoment (A : ℝ) (hA : 1 ≤ A) :
    (1 / 2 : ℝ) * (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * correlationDifference A t) =
      -CorrelationSecondMoment.sourceRankOneCoefficient A := by
  have hc := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hs := sourceCorrelation_hasCompactSupport A (by linarith : 0 < A)
  have hi := CorrelationSecondMoment.weighted_correlation_secondMoment_integrable A hA
  have hid : MeasureTheory.Integrable (fun t : ℝ ↦ t ^ 2 * Real.exp (t / 2) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) :=
    ((continuous_id.pow 2).mul ((continuous_id.div_const 2).rexp)
      |>.mul hc.continuous_deriv_one).integrable_of_hasCompactSupport hs.deriv.mul_left
  simp only [correlationDifference, mul_sub, ← mul_div_assoc]
  rw [MeasureTheory.integral_sub hid (hi.div_const 2), MeasureTheory.integral_div,
    derivative_secondMoment _ hc hs, CorrelationFirstMoment.full_correlation_firstMoment_zero A hA]
  have hb := CorrelationSecondMoment.full_correlation_secondMoment_eq_square A hA
  unfold CorrelationSecondMoment.sourceRankOneCoefficient
  linarith

end
end SamplingSecondDerivativeScratch

#print axioms SamplingSecondDerivativeScratch.secondDifference
#print axioms SamplingSecondDerivativeScratch.secondDifference_eq
#print axioms SamplingSecondDerivativeScratch.secondDifference_continuous
#print axioms SamplingSecondDerivativeScratch.secondDifference_abs_le
#print axioms SamplingSecondDerivativeScratch.secondDifference_zero_right
#print axioms SamplingSecondDerivativeScratch.derivative_sampling_term_hasDerivAt
#print axioms SamplingSecondDerivativeScratch.second_difference_sum_eq_fixed_sum
#print axioms SamplingSecondDerivativeScratch.sourceSamplingKernel_derivative_hasDerivAt

#print axioms SamplingSecondDerivativeScratch.derivative_secondMoment
#print axioms SamplingSecondDerivativeScratch.correlationDifference_secondMoment
