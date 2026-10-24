import FormalResearch.RiemannHypothesis.Conversation.BranchKernelSampler

/-!
# Second signed primitive certificate for the original source

Source: Batch 26, `signed-primitive-certificates.md`, section 4, at
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. The triangular signed
primitive is the genuine integral of the first primitive. A second
integration by parts uses the exact zero of the native kernel slope.
The price is analytic; a polynomial bound on the signed primitive remains
an explicit arithmetic hypothesis.

Human mathematical direction: grwtsk contributors. Formalization developed
with OpenAI Codex, preserving the original source and Abel error.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchSecondPrimitiveCertificate

open MeasureTheory Set Filter
open BranchSignedPrimitiveDecoder BranchSignedPrimitiveCertificate
open BranchSignedPrimitiveReturn BranchKernelSampler
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensAbel EstimateSourceMobiusKernel EstimatePrimeSmoothDefect
open GRWTSK.RiemannHypothesis.Conversation.PolynomialMertensReduction

/-- The exact triangular second signed primitive in logarithmic source coordinates. -/
def nativeSecondPrimitive (A t : ℝ) : ℝ :=
  ∫ u in (2 * Real.log A)..t, (t - u) * logDensity u

/-- The signed logarithmic density is integrable on every oriented compact interval. -/
theorem logDensity_intervalIntegrable_all (a b : ℝ) :
    IntervalIntegrable logDensity volume a b := by
  rcases le_total a b with hab | hba
  · exact logDensity_intervalIntegrable hab
  · exact (logDensity_intervalIntegrable hba).symm

/-- The actual first primitive is continuous on the whole real reading axis. -/
theorem nativePrimitive_continuous (A : ℝ) : Continuous (nativePrimitive A) :=
  intervalIntegral.continuous_primitive logDensity_intervalIntegrable_all _

/-- The triangular signed primitive is exactly the integral of the first primitive. -/
theorem nativeSecondPrimitive_eq_integral (A t : ℝ) :
    nativeSecondPrimitive A t = ∫ u in (2 * Real.log A)..t, nativePrimitive A u := by
  have hi := logDensity_intervalIntegrable_all (2 * Real.log A) t
  have hp : AbsolutelyContinuousOnInterval (nativePrimitive A) (2 * Real.log A) t :=
    hi.absolutelyContinuousOnInterval_intervalIntegral (by simp)
  have hl : ContDiff ℝ 1 (fun u : ℝ ↦ t - u) := by fun_prop
  have h := hp.integral_mul_deriv_eq_deriv_mul
    (ContDiffOn.absolutelyContinuousOnInterval hl.contDiffOn)
  have hd : deriv (fun u : ℝ ↦ t - u) = fun _ ↦ (-1 : ℝ) := by
    funext u
    exact ((hasDerivAt_id u).const_sub t).deriv
  rw [hd, sub_self, mul_zero,
    show nativePrimitive A (2 * Real.log A) = 0 by simp [nativePrimitive], zero_mul] at h
  have he : (∫ u in (2 * Real.log A)..t, deriv (nativePrimitive A) u * (t - u)) =
      nativeSecondPrimitive A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [hi.ae_hasDerivAt_integral] with u hu hmem
    change deriv (fun x ↦ ∫ v in (2 * Real.log A)..x, logDensity v) u * (t - u) = _
    rw [(hu (uIoc_subset_uIcc hmem) (2 * Real.log A) (by simp)).deriv]
    exact mul_comm _ _
  rw [he] at h
  simp only [mul_neg, mul_one, intervalIntegral.integral_neg, sub_zero, zero_sub] at h
  linarith

/-- Ordinary differentiation of Q recovers P at every reading time. -/
theorem nativeSecondPrimitive_hasDerivAt (A t : ℝ) :
    HasDerivAt (nativeSecondPrimitive A) (nativePrimitive A t) t := by
  have he : nativeSecondPrimitive A = fun t ↦
      ∫ u in (2 * Real.log A)..t, nativePrimitive A u :=
    funext (nativeSecondPrimitive_eq_integral A)
  rw [he]
  have hp := nativePrimitive_continuous A
  exact intervalIntegral.integral_hasDerivAt_right (hp.intervalIntegrable _ _)
    hp.stronglyMeasurable.stronglyMeasurableAtFilter hp.continuousAt

/-- The second primitive is globally C¹ even though the Mertens density has jumps. -/
theorem nativeSecondPrimitive_contDiff (A : ℝ) : ContDiff ℝ 1 (nativeSecondPrimitive A) := by
  rw [contDiff_one_iff_deriv]
  refine ⟨fun t ↦ (nativeSecondPrimitive_hasDerivAt A t).differentiableAt, ?_⟩
  have he : deriv (nativeSecondPrimitive A) = nativePrimitive A :=
    funext fun t ↦ (nativeSecondPrimitive_hasDerivAt A t).deriv
  rw [he]
  exact nativePrimitive_continuous A

/-- The second primitive has the already checked complete finite Möbius decoder. -/
theorem nativeSecondPrimitive_finite_decoder {A t : ℝ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) :
    nativeSecondPrimitive A t =
      mertens (A ^ 2) * secondWeight (A ^ 2) (Real.exp t) +
        ∑ n ∈ Finset.Ioc ⌊A ^ 2⌋₊ ⌊Real.exp t⌋₊, realMoebius n * secondWeight n (Real.exp t) :=
  source_second_primitive_decoder hA ht

/-- The second signed source identity retains the minus sign after two integrations by parts. -/
theorem native_work_eq_second_primitive_integral {A : ℝ} (hA : 1 ≤ A) :
    mertensKernelIntegral A (sourceMobiusKernel A) =
      -(∫ t in (2 * Real.log A)..(2 * A),
        nativeSecondPrimitive A t * deriv (deriv (nativeKernel A)) t) := by
  have hp : AbsolutelyContinuousOnInterval (nativeSecondPrimitive A)
      (2 * Real.log A) (2 * A) :=
    ContDiffOn.absolutelyContinuousOnInterval (nativeSecondPrimitive_contDiff A).contDiffOn
  have hc : ContDiff ℝ 2 (deriv (nativeKernel A)) :=
    (nativeKernel_contDiff_three (by linarith : 0 < A)).deriv'
  have hk : AbsolutelyContinuousOnInterval (deriv (nativeKernel A))
      (2 * Real.log A) (2 * A) :=
    ContDiffOn.absolutelyContinuousOnInterval (hc.of_le (by norm_num)).contDiffOn
  have h := hp.integral_mul_deriv_eq_deriv_mul hk
  have he : deriv (nativeSecondPrimitive A) = nativePrimitive A :=
    funext fun t ↦ (nativeSecondPrimitive_hasDerivAt A t).deriv
  rw [nativeKernel_deriv_upper_zero hA, mul_zero,
    show nativeSecondPrimitive A (2 * Real.log A) = 0 by simp [nativeSecondPrimitive],
    zero_mul, he] at h
  rw [native_work_eq_primitive_integral hA]
  simpa only [zero_sub, neg_zero, neg_neg] using congrArg Neg.neg h.symm

/-- Genuine integrated curvature price for the unchanged logarithmic kernel. -/
def secondVariationPrice (A : ℝ) : ℝ :=
  ∫ t in (2 * Real.log A)..(2 * A), |deriv (deriv (nativeKernel A)) t|

/-- Full scale-dependent second primitive allowance. -/
def secondPrimitivePrice (A : ℝ) : ℝ := 176 / A + 2640 / A ^ 2 + 6520 / A ^ 3

/-- The integrated curvature allowance retains every coefficient from the sampler. -/
theorem curvature_price_identity {A : ℝ} (hA : 0 < A) :
    curvatureAllowance A * (2 * A) = secondPrimitivePrice A := by
  dsimp [curvatureAllowance, secondPrimitivePrice]
  field_simp
  ring

/-- The actual curvature price satisfies the complete second primitive allowance. -/
theorem actual_secondVariationPrice_le {A : ℝ} (hA : 1 ≤ A) :
    secondVariationPrice A ≤ secondPrimitivePrice A := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hc : ContDiff ℝ 2 (deriv (nativeKernel A)) := (nativeKernel_contDiff_three hp).deriv'
  have hi : IntervalIntegrable (fun t ↦ |deriv (deriv (nativeKernel A)) t|) volume
      (2 * Real.log A) (2 * A) := hc.continuous_deriv (by norm_num) |>.abs.intervalIntegrable _ _
  have hn : 0 ≤ curvatureAllowance A := by dsimp [curvatureAllowance]; positivity
  calc
    secondVariationPrice A ≤ ∫ _t in (2 * Real.log A)..(2 * A), curvatureAllowance A :=
      intervalIntegral.integral_mono_on (native_window_order hA) hi intervalIntegrable_const
        (fun t ht ↦ nativeKernel_second_deriv_abs_le hA
          ((mul_nonneg (by norm_num) (Real.log_nonneg hA)).trans ht.1))
    _ = curvatureAllowance A * (2 * A - 2 * Real.log A) := by
      rw [intervalIntegral.integral_const, smul_eq_mul]
      ring
    _ ≤ curvatureAllowance A * (2 * A) :=
      mul_le_mul_of_nonneg_left (by linarith [Real.log_nonneg hA]) hn
    _ = secondPrimitivePrice A := curvature_price_identity hp

/-- The complete second primitive price is bounded by 9336/A at every native scale. -/
theorem secondPrimitivePrice_le {A : ℝ} (hA : 1 ≤ A) : secondPrimitivePrice A ≤ 9336 / A := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have h1 : 2640 / A ≤ (2640 : ℝ) := (div_le_iff₀ hp).2 (by nlinarith)
  have h2 : 6520 / A ^ 2 ≤ (6520 : ℝ) :=
    (div_le_iff₀ (sq_pos_of_pos hp)).2 (by nlinarith)
  apply (le_div_iff₀ hp).2
  have he : secondPrimitivePrice A * A = 176 + 2640 / A + 6520 / A ^ 2 := by
    dsimp [secondPrimitivePrice]
    field_simp
  rw [he]
  linarith

/-- An absolute bound on Q pays the actual source work after its signed integration. -/
theorem native_work_abs_le_second_variation {A B : ℝ} (hA : 1 ≤ A)
    (hB : ∀ t ∈ Icc (2 * Real.log A) (2 * A), |nativeSecondPrimitive A t| ≤ B) :
    |mertensKernelIntegral A (sourceMobiusKernel A)| ≤ B * secondVariationPrice A := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hc : ContDiff ℝ 2 (deriv (nativeKernel A)) := (nativeKernel_contDiff_three hp).deriv'
  have hd := hc.continuous_deriv (by norm_num)
  have hq := (nativeSecondPrimitive_contDiff A).continuous
  have hi : IntervalIntegrable (fun t ↦ nativeSecondPrimitive A t *
      deriv (deriv (nativeKernel A)) t) volume (2 * Real.log A) (2 * A) :=
    (hq.mul hd).intervalIntegrable _ _
  have hv : IntervalIntegrable (fun t ↦ |deriv (deriv (nativeKernel A)) t|) volume
      (2 * Real.log A) (2 * A) := hd.abs.intervalIntegrable _ _
  rw [native_work_eq_second_primitive_integral hA, abs_neg]
  calc
    _ ≤ ∫ t in (2 * Real.log A)..(2 * A),
        |nativeSecondPrimitive A t * deriv (deriv (nativeKernel A)) t| :=
      intervalIntegral.abs_integral_le_integral_abs (native_window_order hA)
    _ ≤ ∫ t in (2 * Real.log A)..(2 * A), B * |deriv (deriv (nativeKernel A)) t| := by
      apply intervalIntegral.integral_mono_on (native_window_order hA) hi.abs (hv.const_mul B)
      intro t ht
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_right (hB t ht) (abs_nonneg _)
    _ = B * secondVariationPrice A := intervalIntegral.integral_const_mul _ _

/-- The source-specific second primitive certificate has the proved 9336/A price. -/
theorem native_work_abs_le_second_primitive {A B : ℝ} (hA : 1 ≤ A) (hB0 : 0 ≤ B)
    (hB : ∀ t ∈ Icc (2 * Real.log A) (2 * A), |nativeSecondPrimitive A t| ≤ B) :
    |mertensKernelIntegral A (sourceMobiusKernel A)| ≤ (9336 / A) * B := by
  apply (native_work_abs_le_second_variation hA hB).trans
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left
    ((actual_secondVariationPrice_le hA).trans (secondPrimitivePrice_le hA)) hB0

/-- The full scale-dependent Q price is already proved for the actual source. -/
theorem native_work_abs_le_priced_second_primitive {A B : ℝ} (hA : 1 ≤ A) (hB0 : 0 ≤ B)
    (hB : ∀ t ∈ Icc (2 * Real.log A) (2 * A), |nativeSecondPrimitive A t| ≤ B) :
    |mertensKernelIntegral A (sourceMobiusKernel A)| ≤ secondPrimitivePrice A * B := by
  apply (native_work_abs_le_second_variation hA hB).trans
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left (actual_secondVariationPrice_le hA) hB0

private theorem power_div_le {A : ℝ} (hA : 1 ≤ A) (m : ℕ) :
    A ^ m / A ≤ A ^ max (m - 1) 1 := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  cases m with
  | zero =>
      norm_num only [pow_zero, Nat.zero_sub, max_eq_right (by omega : 0 ≤ 1), pow_one]
      exact (div_le_iff₀ hp).2 (by nlinarith)
  | succ m =>
      rw [pow_succ, mul_div_cancel_right₀ _ hp.ne']
      exact pow_le_pow_right₀ hA (by omega)

/-- A polynomial Q certificate gains one power of A in the complete original-source return. -/
theorem original_source_abs_polynomial_from_second {A D : ℝ} {m : ℕ}
    (hA : 1 ≤ A) (hD : 0 ≤ D)
    (hQ : ∀ t ∈ Icc (2 * Real.log A) (2 * A), |nativeSecondPrimitive A t| ≤ D * A ^ m) :
    |closedPrimeMoment A| ≤ (9336 * D + 84) * A ^ max (m - 1) 1 := by
  have hwork := native_work_abs_le_second_primitive hA
    (mul_nonneg hD (pow_nonneg (show 0 ≤ A by linarith) m)) hQ
  have hwork' : |mertensKernelIntegral A (sourceMobiusKernel A)| ≤
      9336 * D * A ^ max (m - 1) 1 := by
    apply hwork.trans
    have h := mul_le_mul_of_nonneg_left (power_div_le hA m)
      (show 0 ≤ 9336 * D by positivity)
    convert h using 1
    ring
  have herr := original_source_linear_error hA
  have hsum : |closedPrimeMoment A| ≤
      |closedPrimeMoment A - mertensKernelIntegral A (sourceMobiusKernel A)| +
        |mertensKernelIntegral A (sourceMobiusKernel A)| := by
    simpa only [sub_add_cancel] using abs_add_le
      (closedPrimeMoment A - mertensKernelIntegral A (sourceMobiusKernel A))
      (mertensKernelIntegral A (sourceMobiusKernel A))
  have ha : A ≤ A ^ max (m - 1) 1 := by
    simpa only [pow_one] using pow_le_pow_right₀ hA (le_max_right (m - 1) 1)
  calc
    |closedPrimeMoment A| ≤ 9336 * D * A ^ max (m - 1) 1 + 84 * A := by linarith
    _ ≤ 9336 * D * A ^ max (m - 1) 1 + 84 * A ^ max (m - 1) 1 :=
      add_le_add le_rfl (mul_le_mul_of_nonneg_left ha (by norm_num : (0 : ℝ) ≤ 84))
    _ = _ := by ring

/-- A fixed signed second-primitive supplier yields the exact eventual original-source witness. -/
theorem original_source_eventually_polynomial_from_second {m : ℕ} {D R : ℝ}
    (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hQ : ∀ A : ℝ, R ≤ A → ∀ t ∈ Icc (2 * Real.log A) (2 * A),
      |nativeSecondPrimitive A t| ≤ D * A ^ m) : EventuallyPolynomialUpper closedPrimeMoment := by
  refine ⟨max (m - 1) 1, 9336 * D + 84, R, by positivity, hR, ?_⟩
  intro A hRA
  exact (le_abs_self _).trans
    (original_source_abs_polynomial_from_second (hR.trans hRA) hD (hQ A hRA))

end FormalResearch.RiemannHypothesis.BranchSecondPrimitiveCertificate
