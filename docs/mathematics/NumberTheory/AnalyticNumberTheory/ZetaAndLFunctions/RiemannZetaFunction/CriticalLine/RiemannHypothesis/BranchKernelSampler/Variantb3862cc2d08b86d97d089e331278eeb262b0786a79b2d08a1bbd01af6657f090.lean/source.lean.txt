import FormalResearch.RiemannHypothesis.Conversation.BranchCorrelationHigher
import FormalResearch.RiemannHypothesis.Conversation.BranchSignedPrimitiveReturn
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSamplingBound

/-!
# Sampling the derivatives of the literal logarithmic kernel

Source: Batch 26, `signed-primitive-certificates.md`, sections 2–4, at
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. Compact integration by parts
preserves the two weighted moment cancellations under differentiation.
The finite sampler retains the original cutoff and every real scale.

Human mathematical direction: grwtsk contributors. Formalization developed
with OpenAI Codex, using the checked two-moment sampler unchanged.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchKernelSampler

open MeasureTheory Set Filter
open SourcePairing SourceCorrelationEnergy SourceCorrelationCurvature
open BranchCorrelationHigher BranchSecondDerivativeEnergy BranchSignedPrimitiveCertificate
open BranchSignedPrimitiveReturn
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateKernelMoments EstimateMomentReflection
open EstimateLogSampling EstimateTwoMomentSampling EstimateTwoMomentSamplingBound
open EstimateSourceMobiusKernel EstimateSourceMobiusDerivative EstimateMertensAbel

/-- Compact C¹ differentiation preserves both vanishing exponential moments. -/
theorem twoMomentProfile_deriv {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    (hMom : TwoMomentProfile F) : TwoMomentProfile (deriv F) := by
  have hc := hF.continuous_deriv_one
  have hs := hMom.2.1
  have hi0 : Integrable (fun x : ℝ ↦ Real.exp (x / 2) * deriv F x) := by
    have h : Continuous (fun x : ℝ ↦ Real.exp (x / 2) * deriv F x) := by fun_prop
    exact h.integrable_of_hasCompactSupport hs.deriv.mul_left
  have hi1 : Integrable (fun x : ℝ ↦ x * Real.exp (x / 2) * deriv F x) := by
    have h : Continuous (fun x : ℝ ↦ x * Real.exp (x / 2) * deriv F x) := by fun_prop
    exact h.integrable_of_hasCompactSupport hs.deriv.mul_left
  have hie : Integrable (fun x : ℝ ↦ Real.exp (x / 2) / 2 * F x) :=
    ((weighted_zero_integrable hMom).div_const 2).congr
      (Eventually.of_forall fun x ↦ by ring)
  have hie1 : Integrable (fun x : ℝ ↦
      (Real.exp (x / 2) + x * Real.exp (x / 2) / 2) * F x) :=
    ((weighted_zero_integrable hMom).add ((weighted_first_integrable hMom).div_const 2)).congr
      (Eventually.of_forall fun x ↦ by simp only [Pi.add_apply]; ring)
  have he (x : ℝ) : HasDerivAt (fun y : ℝ ↦ Real.exp (y / 2))
      (Real.exp (x / 2) / 2) x := by
    convert! (Real.hasDerivAt_exp (x / 2)).comp x ((hasDerivAt_id x).div_const 2) using 1
    ring
  have he1 (x : ℝ) : HasDerivAt (fun y : ℝ ↦ y * Real.exp (y / 2))
      (Real.exp (x / 2) + x * Real.exp (x / 2) / 2) x := by
    convert! (hasDerivAt_id x).mul (he x) using 1
    simp only [id_eq]
    ring
  refine ⟨hc, hs.deriv, ?_, ?_⟩
  · have h := integral_mul_deriv_eq_deriv_mul_of_integrable
      (fun x _ ↦ he x) (fun x _ ↦ (hF.differentiable_one x).hasDerivAt)
      hi0 hie (weighted_zero_integrable hMom)
    have hv : (∫ x : ℝ, Real.exp (x / 2) / 2 * F x) = 0 := by
      simp_rw [div_mul_eq_mul_div]
      rw [integral_div, hMom.2.2.1, zero_div]
    simpa only [hv, neg_zero] using h
  · have h := integral_mul_deriv_eq_deriv_mul_of_integrable
      (fun x _ ↦ he1 x) (fun x _ ↦ (hF.differentiable_one x).hasDerivAt)
      hi1 hie1 (weighted_first_integrable hMom)
    have hv : (∫ x : ℝ,
        (Real.exp (x / 2) + x * Real.exp (x / 2) / 2) * F x) = 0 := by
      simp_rw [add_mul, div_mul_eq_mul_div]
      rw [integral_add (weighted_zero_integrable hMom)
        ((weighted_first_integrable hMom).div_const 2), integral_div,
        hMom.2.2.1, hMom.2.2.2, zero_div, add_zero]
    simpa only [hv, neg_zero] using h

/-- The original differential profile is C³ because its literal correlation is C⁴. -/
theorem derivativeProfile_contDiff_three {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 3 (derivativeProfile A) := by
  have hc := sourceCorrelation_contDiff_four hA
  unfold derivativeProfile
  exact hc.deriv'.sub ((hc.of_le (by norm_num)).div_const 2)

/-- First derivative of the actual differential profile. -/
theorem derivativeProfile_deriv {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (derivativeProfile A) t =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2 := by
  exact (((sourceCorrelation_deriv_contDiff hA).differentiable_one t).hasDerivAt.sub
    (((sourceCorrelation_contDiff A hA).differentiable_one t).hasDerivAt.div_const 2)).deriv

/-- Second derivative of the actual differential profile. -/
theorem derivativeProfile_second_deriv {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (derivativeProfile A)) t =
      deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t -
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2 := by
  have he : deriv (derivativeProfile A) = fun s ↦
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) s -
        deriv (sourceCorrelation explicitSecondDerivative A) s / 2 :=
    funext (derivativeProfile_deriv hA)
  rw [he]
  have hc2 : ContDiff ℝ 2 (deriv (sourceCorrelation explicitSecondDerivative A)) :=
    (sourceCorrelation_contDiff_three hA).deriv'
  have hc : ContDiff ℝ 1 (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) :=
    hc2.deriv'
  exact ((hc.differentiable_one t).hasDerivAt.sub
    (((sourceCorrelation_deriv_contDiff hA).differentiable_one t).hasDerivAt.div_const 2)).deriv

/-- The derivative sampling profile retains the two exact weighted cancellations. -/
theorem derivativeProfile_deriv_twoMomentProfile {A : ℝ} (hA : 1 ≤ A) :
    TwoMomentProfile (deriv (derivativeProfile A)) :=
  twoMomentProfile_deriv ((derivativeProfile_contDiff_three (by linarith)).of_le (by norm_num))
    (derivativeProfile_twoMomentProfile A hA)

/-- Every first derivative of the profile vanishes at and beyond the upper support boundary. -/
theorem derivativeProfile_deriv_upper_zero {A t : ℝ} (hA : 0 < A) (ht : 2 * A ≤ t) :
    deriv (derivativeProfile A) t = 0 := by
  have hz : ∀ y ∈ Ici t, derivativeProfile A y = 0 := by
    intro y hy
    rw [derivativeProfile, sourceCorrelation_deriv_zero_of_two_mul_le A y hA (ht.trans hy),
      sourceCorrelation_eq_zero_of_two_mul_le_abs A y hA
        ((ht.trans hy).trans (le_abs_self y)), zero_div, sub_self]
  have hd : HasDerivWithinAt (derivativeProfile A) 0 (Ici t) t :=
    (hasDerivWithinAt_const t (Ici t) (0 : ℝ)).congr
      (fun y hy ↦ hz y hy) (hz t self_mem_Ici)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Ici t)

/-- The first derivative profile has the exact two sampler allowances. -/
theorem derivativeProfile_deriv_supBounds {A : ℝ} (hA : 1 ≤ A) :
    ProfileSupBounds (deriv (derivativeProfile A))
      (22 / A ^ 2 + 5 / (2 * A)) (132 / A ^ 3 + 11 / A ^ 2) := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hsecond (t : ℝ) :
      |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤ 22 / A ^ 2 := by
    apply (sourceCorrelation_second_deriv_abs_le_energy hp t).trans
    apply (le_div_iff₀ (sq_pos_of_pos hp)).2
    have h := actual_first_energy_lt_twenty_two hA
    nlinarith
  refine ⟨by positivity, by positivity, ?_, ?_⟩
  · intro t
    rw [derivativeProfile_deriv hp]
    apply (abs_sub _ _).trans
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    have h := add_le_add (hsecond t)
      (div_le_div_of_nonneg_right (sourceCorrelation_deriv_abs_le_five_div hA t)
        (by norm_num : (0 : ℝ) ≤ 2))
    convert h using 1
    ring
  · intro t
    rw [derivativeProfile_second_deriv hp]
    apply (abs_sub _ _).trans
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    have h := add_le_add (sourceCorrelation_third_deriv_abs_le hA t)
      (div_le_div_of_nonneg_right (hsecond t) (by norm_num : (0 : ℝ) ≤ 2))
    convert h using 1
    ring

/-- The native finite sampler with the original closed floor cutoff. -/
def nativeSample (A : ℝ) (F : ℝ → ℝ) (t : ℝ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
    Real.log (k : ℝ) / Real.sqrt k * F (t + Real.log k)

/-- The logarithmic conjugation cancels the sampler's exponential prefactor exactly. -/
theorem nativeSample_abs_le {A t B0 B1 : ℝ} {F : ℝ → ℝ} (ht : 0 ≤ t)
    (hF : ContDiff ℝ 1 F) (hMom : TwoMomentProfile F) (hB : ProfileSupBounds F B0 B1)
    (hzero : ∀ u : ℝ, 2 * A ≤ u → F u = 0) :
    |nativeSample A F t| ≤ 8 * B0 + 4 * B1 := by
  have hTail : SamplingTailZero F (Real.exp t) (sourceKernelCutoff A) := by
    intro u hu
    have huUpper : sourceUpper A < u := (Nat.lt_floor_add_one (sourceUpper A)).trans hu
    have hu0 : 0 < u := (Real.exp_pos (2 * A)).trans huUpper
    have hlog : 2 * A < Real.log u := (Real.lt_log_iff_exp_lt hu0).2 huUpper
    simp only [logSamplingTerm, Real.log_exp, hzero (t + Real.log u) (by linarith), mul_zero]
  have he : nativeSample A F t = Real.exp (t / 2) *
      leftSampleSum (logSamplingTerm F (Real.exp t)) (sourceKernelCutoff A) := by
    rw [nativeSample, leftSampleSum, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k hk
    have hk1 := (Finset.mem_Icc.mp hk).1
    have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
    have hcoef : Real.exp (t / 2) * Real.exp (-(t + Real.log k) / 2) =
        (Real.sqrt (k : ℝ))⁻¹ := by
      rw [← Real.exp_add]
      convert exp_neg_log_half_eq_inv_sqrt hk0 using 1
      congr 1
      ring
    simp only [logSamplingTerm, Real.log_exp]
    calc
      _ = Real.log (k : ℝ) * (Real.sqrt (k : ℝ))⁻¹ * F (t + Real.log k) := by ring
      _ = _ := by rw [← hcoef]; ring
  rw [he, abs_mul, abs_of_pos (Real.exp_pos _)]
  have h := mul_le_mul_of_nonneg_left
    (two_moment_sampling_bound hF hMom (Real.exp_pos t) hB (sourceKernelCutoff A) hTail)
    (Real.exp_pos (t / 2)).le
  have hc : Real.exp (t / 2) * Real.exp (-Real.log (Real.exp t) / 2) = 1 := by
    rw [Real.log_exp, ← Real.exp_add]
    rw [show t / 2 + -t / 2 = 0 by ring, Real.exp_zero]
  simpa only [← mul_assoc, hc, one_mul] using h

/-- The actual kernel slope satisfies the source sampler allowance without an analytic premise. -/
theorem nativeKernel_deriv_abs_le {A t : ℝ} (hA : 1 ≤ A) (ht : 0 ≤ t) :
    |deriv (nativeKernel A) t| ≤ slopeAllowance A := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have he : deriv (nativeKernel A) t = nativeSample A (deriv (derivativeProfile A)) t := by
    rw [nativeKernel_deriv_eq_sum hp, nativeSample]
    apply Finset.sum_congr rfl
    intro k _
    rw [derivativeProfile_deriv hp]
  rw [he]
  have hc2 : ContDiff ℝ 2 (deriv (derivativeProfile A)) :=
    (derivativeProfile_contDiff_three hp).deriv'
  have hc : ContDiff ℝ 1 (deriv (derivativeProfile A)) := hc2.of_le (by norm_num)
  have h := nativeSample_abs_le ht hc (derivativeProfile_deriv_twoMomentProfile hA)
    (derivativeProfile_deriv_supBounds hA) (fun u hu ↦ derivativeProfile_deriv_upper_zero hp hu)
  convert h using 1
  dsimp [slopeAllowance]
  ring

/-- The actual first primitive variation price is at most its complete explicit allowance. -/
theorem actual_variationPrice_le {A : ℝ} (hA : 1 ≤ A) :
    variationPrice A ≤ primitivePrice A :=
  variationPrice_le_primitivePrice hA
    (fun t ht ↦ nativeKernel_deriv_abs_le hA
      ((mul_nonneg (by norm_num) (Real.log_nonneg hA)).trans ht.1))

/-- The literal kernel has uniformly bounded variation at every real scale A ≥ 1. -/
theorem actual_variationPrice_le_1536 {A : ℝ} (hA : 1 ≤ A) : variationPrice A ≤ 1536 :=
  (actual_variationPrice_le hA).trans (primitivePrice_le_1536 hA)

/-- The original-source polynomial return now requires only the arithmetic primitive certificate. -/
theorem actual_original_source_abs_polynomial {A D : ℝ} {m : ℕ}
    (hA : 1 ≤ A) (hD : 0 ≤ D)
    (hprimitive : ∀ t ∈ Icc (2 * Real.log A) (2 * A),
      |nativePrimitive A t| ≤ D * A ^ m) :
    |EstimatePrimeSmoothDefect.closedPrimeMoment A| ≤ (1536 * D + 84) * A ^ max m 1 :=
  original_source_abs_polynomial hA hD
    (fun t ht ↦ nativeKernel_deriv_abs_le hA
      ((mul_nonneg (by norm_num) (Real.log_nonneg hA)).trans ht.1)) hprimitive

/-- A fixed polynomial first-primitive supplier returns to the complete original source. -/
theorem actual_original_source_eventually_polynomial {m : ℕ} {D R : ℝ}
    (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hprimitive : ∀ A : ℝ, R ≤ A → ∀ t ∈ Icc (2 * Real.log A) (2 * A),
      |nativePrimitive A t| ≤ D * A ^ m) :
    GRWTSK.RiemannHypothesis.Conversation.PolynomialMertensReduction.EventuallyPolynomialUpper
      EstimatePrimeSmoothDefect.closedPrimeMoment :=
  original_source_eventually_polynomial hD hR
    (fun A hRA t ht ↦ nativeKernel_deriv_abs_le (hR.trans hRA)
      ((mul_nonneg (by norm_num) (Real.log_nonneg (hR.trans hRA))).trans ht.1)) hprimitive

/-- The actual logarithmic kernel has three continuous derivatives. -/
theorem nativeKernel_contDiff_three {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 3 (nativeKernel A) := by
  unfold nativeKernel
  apply ContDiff.sum
  intro k _
  exact contDiff_const.mul
    ((derivativeProfile_contDiff_three hA).comp (contDiff_id.add contDiff_const))

/-- Ordinary differentiation commutes with the native fixed finite sampler. -/
theorem nativeSample_deriv {A t : ℝ} {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F) :
    deriv (nativeSample A F) t = nativeSample A (deriv F) t := by
  unfold nativeSample
  rw [deriv_fun_sum]
  · apply Finset.sum_congr rfl
    intro k _
    have h := ((hF.differentiable_one (t + Real.log k)).hasDerivAt.comp t
      ((hasDerivAt_id t).add_const (Real.log k))).const_mul
        (Real.log (k : ℝ) / Real.sqrt k)
    simpa only [Function.comp_def, mul_one, id_eq] using h.deriv
  · intro k _
    exact (((hF.differentiable_one (t + Real.log k)).hasDerivAt.comp t
      ((hasDerivAt_id t).add_const (Real.log k))).const_mul
        (Real.log (k : ℝ) / Real.sqrt k)).differentiableAt

/-- The second kernel derivative is sampled on the same complete inventory. -/
theorem nativeKernel_second_deriv_eq_sample {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (nativeKernel A)) t =
      nativeSample A (deriv (deriv (derivativeProfile A))) t := by
  have he : deriv (nativeKernel A) = nativeSample A (deriv (derivativeProfile A)) := by
    funext s
    rw [nativeKernel_deriv_eq_sum hA, nativeSample]
    apply Finset.sum_congr rfl
    intro k _
    rw [derivativeProfile_deriv hA]
  rw [he]
  have hc : ContDiff ℝ 2 (deriv (derivativeProfile A)) :=
    (derivativeProfile_contDiff_three hA).deriv'
  exact nativeSample_deriv (hc.of_le (by norm_num))

/-- The second derivative of the profile also vanishes at the closed upper boundary. -/
theorem derivativeProfile_second_deriv_upper_zero {A t : ℝ}
    (hA : 0 < A) (ht : 2 * A ≤ t) : deriv (deriv (derivativeProfile A)) t = 0 := by
  have hz : ∀ y ∈ Ici t, deriv (derivativeProfile A) y = 0 :=
    fun y hy ↦ derivativeProfile_deriv_upper_zero hA (ht.trans hy)
  have hd : HasDerivWithinAt (deriv (derivativeProfile A)) 0 (Ici t) t :=
    (hasDerivWithinAt_const t (Ici t) (0 : ℝ)).congr
      (fun y hy ↦ hz y hy) (hz t self_mem_Ici)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Ici t)

/-- The differentiated logarithmic kernel has an exact zero at the original upper boundary. -/
theorem nativeKernel_deriv_upper_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (nativeKernel A) (2 * A) = 0 := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  rw [nativeKernel_deriv_eq_sum hp]
  apply Finset.sum_eq_zero
  intro k hk
  have hk1 : 1 ≤ (k : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hk).1
  rw [← derivativeProfile_deriv hp,
    derivativeProfile_deriv_upper_zero hp (by linarith [Real.log_nonneg hk1]), mul_zero]

/-- Third derivative of the actual differential profile keeps the full signed formula. -/
theorem derivativeProfile_third_deriv {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (deriv (derivativeProfile A))) t =
      deriv (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) t -
        deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t / 2 := by
  have he : deriv (deriv (derivativeProfile A)) = fun s ↦
      deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) s -
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) s / 2 :=
    funext (derivativeProfile_second_deriv hA)
  rw [he]
  have hc3 : ContDiff ℝ 3 (deriv (sourceCorrelation explicitSecondDerivative A)) :=
    (sourceCorrelation_contDiff_four hA).deriv'
  have hc2 : ContDiff ℝ 2 (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) :=
    hc3.deriv'
  have hc1 : ContDiff ℝ 1
      (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) := hc2.deriv'
  exact ((hc1.differentiable_one t).hasDerivAt.sub
    ((hc2.differentiable (by norm_num) t).hasDerivAt.div_const 2)).deriv

/-- The second derivative sampling profile has the exact remaining sampler allowances. -/
theorem derivativeProfile_second_deriv_supBounds {A : ℝ} (hA : 1 ≤ A) :
    ProfileSupBounds (deriv (deriv (derivativeProfile A)))
      (132 / A ^ 3 + 11 / A ^ 2) (815 / A ^ 4 + 66 / A ^ 3) := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  refine ⟨by positivity, by positivity, (derivativeProfile_deriv_supBounds hA).2.2.2, ?_⟩
  intro t
  rw [derivativeProfile_third_deriv hp]
  apply (abs_sub _ _).trans
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  have h := add_le_add (sourceCorrelation_fourth_deriv_abs_le hA t)
    (div_le_div_of_nonneg_right (sourceCorrelation_third_deriv_abs_le hA t)
      (by norm_num : (0 : ℝ) ≤ 2))
  convert h using 1
  ring

/-- The full second-derivative allowance of the native kernel. -/
def curvatureAllowance (A : ℝ) : ℝ := 88 / A ^ 2 + 1320 / A ^ 3 + 3260 / A ^ 4

/-- The literal kernel curvature has its stated sampler bound for all nonnegative shifts. -/
theorem nativeKernel_second_deriv_abs_le {A t : ℝ} (hA : 1 ≤ A) (ht : 0 ≤ t) :
    |deriv (deriv (nativeKernel A)) t| ≤ curvatureAllowance A := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  rw [nativeKernel_second_deriv_eq_sample hp]
  have hc2 : ContDiff ℝ 2 (deriv (derivativeProfile A)) :=
    (derivativeProfile_contDiff_three hp).deriv'
  have hc1 : ContDiff ℝ 1 (deriv (deriv (derivativeProfile A))) := hc2.deriv'
  have hm := twoMomentProfile_deriv (hc2.of_le (by norm_num))
    (derivativeProfile_deriv_twoMomentProfile hA)
  have h := nativeSample_abs_le ht hc1 hm (derivativeProfile_second_deriv_supBounds hA)
    (fun u hu ↦ derivativeProfile_second_deriv_upper_zero hp hu)
  convert h using 1
  dsimp [curvatureAllowance]
  ring

end FormalResearch.RiemannHypothesis.BranchKernelSampler
