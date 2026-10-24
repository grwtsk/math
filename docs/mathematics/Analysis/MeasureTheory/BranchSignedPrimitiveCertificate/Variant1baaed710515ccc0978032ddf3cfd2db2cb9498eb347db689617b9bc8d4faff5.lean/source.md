# Complete source: GRWTSK.Analysis.MeasureTheory.BranchSignedPrimitiveCertificate.Variant1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e434c4e7c7ec5f172a0b5dd71fa4af7b22ef7b11` · SHA-256 `1baaed710515ccc0978032ddf3cfd2db2cb9498eb347db689617b9bc8d4faff5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.BranchSignedPrimitiveDecoder
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusDerivative
import Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun

/-!
# First signed primitive certificate for the unchanged source

Source: Batch 26, `signed-primitive-certificates.md`, sections 2–3, at
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. This proves the actual logarithmic
kernel identity, boundary zero, absolutely continuous Mertens primitive and
signed integration by parts. The total variation is retained as its genuine
integral; the stronger numeric sampler price and the arithmetic polynomial
primitive supplier are separate obligations.

Human mathematical direction: grwtsk contributors. Formalization developed
with OpenAI Codex, using Mathlib and existing literal source proofs.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchSignedPrimitiveCertificate

open MeasureTheory Set Filter
open SourcePairing BranchSignedPrimitiveDecoder SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensAbel EstimateSourceMobiusKernel EstimateSourceMobiusDerivative
open Realization CorrelationRegularity

/-- The actual logarithmic derivative kernel on the fixed closed inventory. -/
def nativeKernel (A t : ℝ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
    Real.log (k : ℝ) / Real.sqrt k *
      (deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log k) -
        sourceCorrelation explicitSecondDerivative A (t + Real.log k) / 2)

/-- The signed primitive starts at the unchanged lower logarithmic boundary. -/
def nativePrimitive (A t : ℝ) : ℝ := ∫ u in (2 * Real.log A)..t, logDensity u

/-- Genuine total variation price for the C¹ logarithmic kernel. -/
def variationPrice (A : ℝ) : ℝ :=
  ∫ t in (2 * Real.log A)..(2 * A), |deriv (nativeKernel A) t|

/-- The native real logarithmic window is ordered for every A ≥ 1. -/
theorem native_window_order {A : ℝ} (hA : 1 ≤ A) : 2 * Real.log A ≤ 2 * A := by
  have h := Real.log_le_sub_one_of_pos (lt_of_lt_of_le (by norm_num) hA)
  linarith

/-- The kernel is literally the conjugated derivative of the unchanged finite Möbius kernel. -/
theorem nativeKernel_eq_normalized_derivative {A : ℝ} (hA : 0 < A) (t : ℝ) :
    nativeKernel A t = Real.exp (3 * t / 2) *
      deriv (sourceMobiusKernel A) (Real.exp t) := by
  rw [sourceMobiusKernel_deriv A (Real.exp t) hA (Real.exp_pos t),
    nativeKernel, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k hk
  have hk1 := (Finset.mem_Icc.mp hk).1
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  rw [Real.log_mul (Real.exp_ne_zero t) hk0.ne', Real.log_exp,
    Real.sqrt_mul (Real.exp_pos t).le, ← Real.exp_half]
  have he : Real.exp (3 * t / 2) = Real.exp t * Real.exp (t / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [he]
  field_simp

/-- C² correlation regularity is sufficient for the actual kernel's global C¹ regularity. -/
theorem nativeKernel_contDiff {A : ℝ} (hA : 0 < A) : ContDiff ℝ 1 (nativeKernel A) := by
  unfold nativeKernel
  apply ContDiff.sum
  intro k _
  exact contDiff_const.mul
    (((sourceCorrelation_deriv_contDiff hA).comp (contDiff_id.add contDiff_const)).sub
      (((sourceCorrelation_contDiff A hA).comp (contDiff_id.add contDiff_const)).div_const 2))

/-- Termwise ordinary differentiation retains every signed summand of the fixed inventory. -/
theorem nativeKernel_deriv_eq_sum {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (nativeKernel A) t =
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A), Real.log (k : ℝ) / Real.sqrt k *
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log k) -
          deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log k) / 2) := by
  have hd (k : ℕ) := by
    have h1 := (sourceCorrelation_deriv_contDiff hA).differentiable_one (t + Real.log k)
    have h0 := (sourceCorrelation_contDiff A hA).differentiable_one (t + Real.log k)
    have harg := (hasDerivAt_id t).add_const (Real.log k)
    have hs := (h1.hasDerivAt.comp t harg).sub ((h0.hasDerivAt.comp t harg).div_const 2)
    exact hs.const_mul (Real.log (k : ℝ) / Real.sqrt k)
  have h := HasDerivAt.sum (u := Finset.Icc 1 (sourceKernelCutoff A)) (fun k _ ↦ hd k)
  have hh := h.deriv
  simp only [mul_one, Function.comp_apply, Pi.sub_apply, id_eq] at hh
  have he : (∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A), fun y ↦
      Real.log (k : ℝ) / Real.sqrt k *
        (deriv (sourceCorrelation explicitSecondDerivative A) (y + Real.log k) -
          sourceCorrelation explicitSecondDerivative A (y + Real.log k) / 2)) =
        nativeKernel A := by
    funext y
    simp only [Finset.sum_apply, nativeKernel]
  rw [he] at hh
  exact hh

/-- The exact upper boundary contributes zero, including the touching support seam. -/
theorem nativeKernel_upper_zero {A : ℝ} (hA : 1 ≤ A) : nativeKernel A (2 * A) = 0 := by
  rw [nativeKernel_eq_normalized_derivative (lt_of_lt_of_le (by norm_num) hA)]
  rw [show Real.exp (2 * A) = sourceUpper A from rfl,
    sourceMobiusKernel_deriv_upper_zero A hA, mul_zero]

/-- The logarithmic Mertens density is interval integrable, despite its discrete jumps. -/
theorem logDensity_intervalIntegrable {a b : ℝ} (hab : a ≤ b) :
    IntervalIntegrable logDensity volume a b := by
  have hi : IntervalIntegrable primitiveDensity volume (Real.exp a) (Real.exp b) :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le (Real.exp_le_exp.mpr hab)).2
      (primitiveDensity_integrable (Real.exp_pos a))
  have ht := (intervalIntegral.integrable_comp_mul_deriv_iff_of_deriv_nonneg
    (a := a) (b := b) (f := Real.exp) (f' := Real.exp) (g := primitiveDensity)
    Real.continuous_exp.continuousOn (fun x _ ↦ Real.hasDerivAt_exp x)
    (fun x _ ↦ (Real.exp_pos x).le)).2 hi
  simpa only [Function.comp_apply, logDensity_eq_transported] using ht

/-- The literal first signed primitive is absolutely continuous on its whole source window. -/
theorem nativePrimitive_absolutelyContinuous {A : ℝ} (hA : 1 ≤ A) :
    AbsolutelyContinuousOnInterval (nativePrimitive A) (2 * Real.log A) (2 * A) := by
  have hi := logDensity_intervalIntegrable (native_window_order hA)
  exact hi.absolutelyContinuousOnInterval_intervalIntegral (by simp)

/-- Its derivative recovers the original normalized Mertens density almost everywhere. -/
theorem nativePrimitive_deriv_ae {A : ℝ} (hA : 1 ≤ A) :
    ∀ᵐ t, t ∈ uIcc (2 * Real.log A) (2 * A) →
      deriv (nativePrimitive A) t = logDensity t := by
  have hi := logDensity_intervalIntegrable (native_window_order hA)
  filter_upwards [hi.ae_hasDerivAt_integral] with t ht hmem
  exact (ht hmem (2 * Real.log A) (by simp)).deriv

/-- Exponential change of variables preserves the signed source Abel integral exactly. -/
theorem native_work_eq_log_integral {A : ℝ} (hA : 1 ≤ A) :
    mertensKernelIntegral A (sourceMobiusKernel A) =
      -(∫ t in (2 * Real.log A)..(2 * A), logDensity t * nativeKernel A t) := by
  have hA0 : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have he : Real.exp (2 * Real.log A) = A ^ 2 := by
    rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
      Real.exp_add, Real.exp_log hA0]
    ring
  have hs := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (a := 2 * Real.log A) (b := 2 * A) (f := Real.exp) (f' := Real.exp)
    (g := fun x ↦ mertens x * deriv (sourceMobiusKernel A) x)
    Real.continuous_exp.continuousOn (fun x _ ↦ Real.hasDerivAt_exp x)
    (fun x _ ↦ (Real.exp_pos x).le)
  have hp : (fun t ↦ (mertens (Real.exp t) *
      deriv (sourceMobiusKernel A) (Real.exp t)) * Real.exp t) =
      fun t ↦ logDensity t * nativeKernel A t := by
    funext t
    rw [nativeKernel_eq_normalized_derivative hA0]
    have hx : Real.exp (-t / 2) * Real.exp (3 * t / 2) = Real.exp t := by
      rw [← Real.exp_add]
      congr 1
      ring
    dsimp [logDensity]
    calc
      _ = (Real.exp (-t / 2) * Real.exp (3 * t / 2)) *
          mertens (Real.exp t) * deriv (sourceMobiusKernel A) (Real.exp t) := by
            rw [hx]
            ring
      _ = _ := by ring
  dsimp only [Function.comp_def] at hs
  rw [hp, he] at hs
  rw [mertensKernelIntegral, sourceLower, sourceUpper,
    ← intervalIntegral.integral_of_le
      (he ▸ Real.exp_le_exp.mpr (native_window_order hA)), ← hs]

/-- Signed integration by parts moves the absolute value after the Mertens primitive. -/
theorem native_work_eq_primitive_integral {A : ℝ} (hA : 1 ≤ A) :
    mertensKernelIntegral A (sourceMobiusKernel A) =
      ∫ t in (2 * Real.log A)..(2 * A), nativePrimitive A t * deriv (nativeKernel A) t := by
  have hk : AbsolutelyContinuousOnInterval (nativeKernel A) (2 * Real.log A) (2 * A) :=
    ContDiffOn.absolutelyContinuousOnInterval
      (nativeKernel_contDiff (lt_of_lt_of_le (by norm_num) hA)).contDiffOn
  have h := (nativePrimitive_absolutelyContinuous hA).integral_mul_deriv_eq_deriv_mul hk
  rw [nativeKernel_upper_zero hA, mul_zero,
    show nativePrimitive A (2 * Real.log A) = 0 by simp [nativePrimitive], zero_mul] at h
  have he : (∫ t in (2 * Real.log A)..(2 * A),
      deriv (nativePrimitive A) t * nativeKernel A t) =
      ∫ t in (2 * Real.log A)..(2 * A), logDensity t * nativeKernel A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [nativePrimitive_deriv_ae hA] with t ht hmem
    rw [ht (uIoc_subset_uIcc hmem)]
  rw [he] at h
  rw [native_work_eq_log_integral hA]
  simpa only [zero_sub, neg_zero] using h.symm

/-- The exact kernel variation price is nonnegative on the ordered source window. -/
theorem variationPrice_nonneg {A : ℝ} (hA : 1 ≤ A) : 0 ≤ variationPrice A := by
  exact intervalIntegral.integral_nonneg (native_window_order hA) (fun _ _ ↦ abs_nonneg _)

/-- The native primitive/kernel derivative product is genuinely interval integrable. -/
theorem native_primitive_product_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ nativePrimitive A t * deriv (nativeKernel A) t) volume
      (2 * Real.log A) (2 * A) := by
  have hk := (nativeKernel_contDiff (lt_of_lt_of_le (by norm_num) hA)).continuous_deriv_one
  have hp := (nativePrimitive_absolutelyContinuous hA).continuousOn
  exact (hk.intervalIntegrable (2 * Real.log A) (2 * A)).continuousOn_mul hp

/-- A bound on the already integrated signed primitive pays the actual source work. -/
theorem native_work_abs_le_primitive_variation {A B : ℝ} (hA : 1 ≤ A)
    (hB : ∀ t ∈ Icc (2 * Real.log A) (2 * A), |nativePrimitive A t| ≤ B) :
    |mertensKernelIntegral A (sourceMobiusKernel A)| ≤ B * variationPrice A := by
  have hA0 := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hA
  have hi := native_primitive_product_intervalIntegrable hA
  have hv : IntervalIntegrable (fun t ↦ |deriv (nativeKernel A) t|) volume
      (2 * Real.log A) (2 * A) :=
    (nativeKernel_contDiff hA0).continuous_deriv_one.abs.intervalIntegrable _ _
  rw [native_work_eq_primitive_integral hA]
  calc
    _ ≤ ∫ t in (2 * Real.log A)..(2 * A),
        |nativePrimitive A t * deriv (nativeKernel A) t| :=
      intervalIntegral.abs_integral_le_integral_abs (native_window_order hA)
    _ ≤ ∫ t in (2 * Real.log A)..(2 * A), B * |deriv (nativeKernel A) t| := by
      apply intervalIntegral.integral_mono_on (native_window_order hA) hi.abs (hv.const_mul B)
      intro t ht
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_right (hB t ht) (abs_nonneg _)
    _ = B * variationPrice A := intervalIntegral.integral_const_mul _ _

/-- The one-sided certificate charges only the signs that make a positive contribution. -/
theorem native_work_le_sign_selected_variation {A B : ℝ} (hA : 1 ≤ A)
    (hB : ∀ᵐ t ∂volume.restrict (Icc (2 * Real.log A) (2 * A)),
      (0 < deriv (nativeKernel A) t → nativePrimitive A t ≤ B) ∧
      (deriv (nativeKernel A) t < 0 → -nativePrimitive A t ≤ B)) :
    mertensKernelIntegral A (sourceMobiusKernel A) ≤ B * variationPrice A := by
  have hA0 := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hA
  have hi := native_primitive_product_intervalIntegrable hA
  have hv : IntervalIntegrable (fun t ↦ |deriv (nativeKernel A) t|) volume
      (2 * Real.log A) (2 * A) :=
    (nativeKernel_contDiff hA0).continuous_deriv_one.abs.intervalIntegrable _ _
  rw [native_work_eq_primitive_integral hA, variationPrice,
    ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_mono_ae_restrict (native_window_order hA) hi (hv.const_mul B)
  filter_upwards [hB] with t ht
  rcases lt_trichotomy 0 (deriv (nativeKernel A) t) with hpos | hz | hneg
  · rw [abs_of_pos hpos]
    exact mul_le_mul_of_nonneg_right (ht.1 hpos) hpos.le
  · simp [← hz]
  · rw [abs_of_neg hneg]
    have h := mul_le_mul_of_nonneg_right (ht.2 hneg) (neg_pos.mpr hneg).le
    nlinarith

end FormalResearch.RiemannHypothesis.BranchSignedPrimitiveCertificate
```
