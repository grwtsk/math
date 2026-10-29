import FormalResearch.RiemannHypothesis.Conversation.BranchSignedPrimitiveCertificate
import FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction

/-!
# Explicit first signed primitive prices and original-source return

Source: Batch 26, `signed-primitive-certificates.md`, sections 2–3, at
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. The numerical variation price
and the sharp exponent `max m 1` follow from explicit source-kernel slope
and signed-primitive hypotheses. The slope estimate still requires the
higher correlation/sampling argument. The arithmetic primitive hypothesis
is also unproved. Neither input is silently manufactured by this consumer.

Human mathematical direction: grwtsk contributors. Formalization developed
with OpenAI Codex, using the original signed Abel error theorem unchanged.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchSignedPrimitiveReturn

open MeasureTheory Set
open SourcePairing BranchSignedPrimitiveCertificate
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensAbel EstimateSourceMobiusKernel EstimatePrimeSmoothDefect
open GRWTSK.RiemannHypothesis.Conversation.PolynomialMertensReduction

/-- The exact sampler slope allowance written for the actual logarithmic kernel. -/
def slopeAllowance (A : ℝ) : ℝ := 20 / A + 220 / A ^ 2 + 528 / A ^ 3

/-- The exact first primitive price before replacing it by its uniform upper bound. -/
def primitivePrice (A : ℝ) : ℝ := 40 + 440 / A + 1056 / A ^ 2

/-- The numerical factor retains every term of the source sampler ledger. -/
theorem slope_price_identity {A : ℝ} (hA : 0 < A) :
    slopeAllowance A * (2 * A) = primitivePrice A := by
  dsimp [slopeAllowance, primitivePrice]
  field_simp
  ring

/-- The complete primitive price is nonnegative at a positive scale. -/
theorem primitivePrice_nonneg {A : ℝ} (hA : 0 < A) : 0 ≤ primitivePrice A := by
  dsimp [primitivePrice]
  positivity

/-- The exact price is uniformly at most 1536 over all real scales A ≥ 1. -/
theorem primitivePrice_le_1536 {A : ℝ} (hA : 1 ≤ A) : primitivePrice A ≤ 1536 := by
  have h0 : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have h1 : 440 / A ≤ (440 : ℝ) := (div_le_iff₀ h0).2 (by nlinarith)
  have h2 : 1056 / A ^ 2 ≤ (1056 : ℝ) :=
    (div_le_iff₀ (sq_pos_of_pos h0)).2 (by nlinarith)
  dsimp [primitivePrice]
  linarith

/-- A proved bound on the actual kernel slope would give exactly the note's variation price. -/
theorem variationPrice_le_primitivePrice {A : ℝ} (hA : 1 ≤ A)
    (hslope : ∀ t ∈ Icc (2 * Real.log A) (2 * A),
      |deriv (nativeKernel A) t| ≤ slopeAllowance A) :
    variationPrice A ≤ primitivePrice A := by
  have h0 : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hv : IntervalIntegrable (fun t ↦ |deriv (nativeKernel A) t|) volume
      (2 * Real.log A) (2 * A) :=
    (nativeKernel_contDiff h0).continuous_deriv_one.abs.intervalIntegrable _ _
  have hs : 0 ≤ slopeAllowance A := by dsimp [slopeAllowance]; positivity
  have hlog := Real.log_nonneg hA
  calc
    variationPrice A ≤ ∫ _t in (2 * Real.log A)..(2 * A), slopeAllowance A :=
      intervalIntegral.integral_mono_on (native_window_order hA) hv
        (intervalIntegrable_const) hslope
    _ = slopeAllowance A * (2 * A - 2 * Real.log A) := by
      rw [intervalIntegral.integral_const, smul_eq_mul]
      ring
    _ ≤ slopeAllowance A * (2 * A) :=
      mul_le_mul_of_nonneg_left (by linarith) hs
    _ = primitivePrice A := slope_price_identity h0

/-- The literal first primitive certificate, with the full scale-sensitive price. -/
theorem native_work_abs_le_priced_primitive {A B : ℝ} (hA : 1 ≤ A) (hB0 : 0 ≤ B)
    (hslope : ∀ t ∈ Icc (2 * Real.log A) (2 * A),
      |deriv (nativeKernel A) t| ≤ slopeAllowance A)
    (hprimitive : ∀ t ∈ Icc (2 * Real.log A) (2 * A), |nativePrimitive A t| ≤ B) :
    |mertensKernelIntegral A (sourceMobiusKernel A)| ≤ primitivePrice A * B := by
  apply (native_work_abs_le_primitive_variation hA hprimitive).trans
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left
    (variationPrice_le_primitivePrice hA hslope) hB0

/-- The original finite signed source differs from its first primitive work by at most 84A. -/
theorem original_source_linear_error {A : ℝ} (hA : 1 ≤ A) :
    |closedPrimeMoment A - mertensKernelIntegral A (sourceMobiusKernel A)| ≤ 84 * A := by
  have h := source_minus_integral_abs_le hA
  change |closedPrimeMoment A - mertensKernelIntegral A (sourceMobiusKernel A)| ≤
    24 * A + 60 at h
  linarith

/-- The exact polynomial exponent and coefficient return to the unchanged complete source. -/
theorem original_source_abs_polynomial {A D : ℝ} {m : ℕ} (hA : 1 ≤ A) (hD : 0 ≤ D)
    (hslope : ∀ t ∈ Icc (2 * Real.log A) (2 * A),
      |deriv (nativeKernel A) t| ≤ slopeAllowance A)
    (hprimitive : ∀ t ∈ Icc (2 * Real.log A) (2 * A),
      |nativePrimitive A t| ≤ D * A ^ m) :
    |closedPrimeMoment A| ≤ (1536 * D + 84) * A ^ max m 1 := by
  have hwork := native_work_abs_le_priced_primitive hA
    (mul_nonneg hD (pow_nonneg (show 0 ≤ A by linarith) m)) hslope hprimitive
  have hwork' : |mertensKernelIntegral A (sourceMobiusKernel A)| ≤ 1536 * D * A ^ m := by
    apply hwork.trans
    have h := mul_le_mul_of_nonneg_right (primitivePrice_le_1536 hA)
      (mul_nonneg hD (pow_nonneg (show 0 ≤ A by linarith) m))
    simpa only [mul_assoc] using h
  have herr := original_source_linear_error hA
  have hsum : |closedPrimeMoment A| ≤
      |closedPrimeMoment A - mertensKernelIntegral A (sourceMobiusKernel A)| +
        |mertensKernelIntegral A (sourceMobiusKernel A)| := by
    simpa only [sub_add_cancel] using abs_add_le
      (closedPrimeMoment A - mertensKernelIntegral A (sourceMobiusKernel A))
      (mertensKernelIntegral A (sourceMobiusKernel A))
  have hp : A ^ m ≤ A ^ max m 1 := pow_le_pow_right₀ hA (le_max_left _ _)
  have ha : A ≤ A ^ max m 1 := by
    simpa only [pow_one] using pow_le_pow_right₀ hA (le_max_right m 1)
  calc
    |closedPrimeMoment A| ≤ 1536 * D * A ^ m + 84 * A := by linarith
    _ ≤ 1536 * D * A ^ max m 1 + 84 * A ^ max m 1 :=
      add_le_add (mul_le_mul_of_nonneg_left hp (by positivity))
        (mul_le_mul_of_nonneg_left ha (by norm_num))
    _ = _ := by ring

/-- Fixed primitive and slope certificates provide the exact eventual original-source witness. -/
theorem original_source_eventually_polynomial {m : ℕ} {D R : ℝ} (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hslope : ∀ A : ℝ, R ≤ A → ∀ t ∈ Icc (2 * Real.log A) (2 * A),
      |deriv (nativeKernel A) t| ≤ slopeAllowance A)
    (hprimitive : ∀ A : ℝ, R ≤ A → ∀ t ∈ Icc (2 * Real.log A) (2 * A),
      |nativePrimitive A t| ≤ D * A ^ m) : EventuallyPolynomialUpper closedPrimeMoment := by
  refine ⟨max m 1, 1536 * D + 84, R, by positivity, hR, ?_⟩
  intro A hRA
  exact (le_abs_self _).trans
    (original_source_abs_polynomial (hR.trans hRA) hD (hslope A hRA) (hprimitive A hRA))

end FormalResearch.RiemannHypothesis.BranchSignedPrimitiveReturn
