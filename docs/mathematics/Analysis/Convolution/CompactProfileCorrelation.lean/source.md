# Complete source: GRWTSK.Analysis.Convolution.CompactProfileCorrelation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b22a87177a8f6ef0ca63a159330480af9f1d8e1b` · SHA-256 `212aced3feab9bab9176445e5ee5050a566a404ec726ccd9457be408c27ada08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.InnerProductSpace.DilationGram
import Mathlib.Analysis.Calculus.ContDiff.Convolution
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.Analysis.Calculus.Deriv.Support

/-!
# Finite regularity of the actual source correlation and polarity kernel

The residual and normalized source are C1 with compact support. Applying
one derivative to each convolution factor proves C2 correlation without
asserting a C2 residual or infinitely smooth power-four zero extension.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceRegularity

open MeasureTheory Set Filter Topology
open scoped Convolution ContDiff
open ArithmeticSupplier SourceResidual

noncomputable section

theorem bump_third_continuous : Continuous (clippedProfile bumpThirdPolynomial) := by
  unfold clippedProfile
  apply continuous_if
  · intro x hx
    change x ∈ frontier (Icc (-1 : ℝ) 1) at hx
    rw [frontier_Icc (by norm_num : (-1 : ℝ) ≤ 1)] at hx
    simp only [mem_insert_iff, mem_singleton_iff] at hx
    rcases hx with rfl | rfl <;> norm_num [bumpThirdPolynomial]
  · unfold bumpThirdPolynomial
    fun_prop
  · exact continuous_const.continuousOn

def sourceThird (A x : ℝ) : ℝ :=
  A ^ (-(1 / 2 : ℝ)) * (((clippedProfile bumpThirdPolynomial (x / A) / A) / A) / A)

theorem sourceSecond_hasDerivAt (A x : ℝ) :
    HasDerivAt (sourceSecond A) (sourceThird A x) x := by
  have derivative := ((((bump_second_hasDerivAt (x / A)).comp x
    ((hasDerivAt_id x).div_const A)).div_const A).div_const A).const_mul
      (A ^ (-(1 / 2 : ℝ)))
  change HasDerivAt (fun y ↦ A ^ (-(1 / 2 : ℝ)) *
    ((clippedProfile bumpSecondPolynomial (y / A) / A) / A)) (sourceThird A x) x
  simpa [sourceSecond, sourceThird, Function.comp_def, div_eq_mul_inv] using derivative

def residualFirst (A x : ℝ) : ℝ := sourceThird A x - (1 / 4 : ℝ) * sourceFirst A x

theorem residual_hasDerivAt (A x : ℝ) :
    HasDerivAt (sourceResidual A) (residualFirst A x) x := by
  have same : sourceResidual A = sourceSecond A - fun y ↦ (1 / 4 : ℝ) * source A y :=
    funext (sourceResidual_eq A)
  rw [same]
  exact (sourceSecond_hasDerivAt A x).sub ((source_hasDerivAt A x).const_mul (1 / 4 : ℝ))

theorem residual_first_continuous (A : ℝ) : Continuous (residualFirst A) := by
  have firstContinuous : Continuous (clippedProfile bumpFirstPolynomial) :=
    (show Differentiable ℝ (clippedProfile bumpFirstPolynomial) from
      fun x ↦ (bump_first_hasDerivAt x).differentiableAt).continuous
  have thirdScaled := bump_third_continuous.comp (continuous_id.div_const A)
  unfold residualFirst sourceThird sourceFirst
  exact (continuous_const.mul
    (((thirdScaled.div_const A).div_const A).div_const A)).sub
    (continuous_const.mul (continuous_const.mul
      ((firstContinuous.comp (continuous_id.div_const A)).div_const A)))

theorem residual_contDiff_one (A : ℝ) : ContDiff ℝ 1 (sourceResidual A) := by
  apply contDiff_one_iff_deriv.mpr
  refine ⟨fun x ↦ (residual_hasDerivAt A x).differentiableAt, ?_⟩
  rw [show deriv (sourceResidual A) = residualFirst A from
    funext (fun x ↦ (residual_hasDerivAt A x).deriv)]
  exact residual_first_continuous A

theorem normalized_source_contDiff_one (A : ℝ) : ContDiff ℝ 1 (normalizedSource A) :=
  (residual_contDiff_one A).div_const _

theorem normalized_source_zero_outside {A x : ℝ} (hA : 0 < A)
    (hx : x ∉ Icc (-A) A) : normalizedSource A x = 0 := by
  simp only [normalizedSource, sourceResidual_zero_outside hA hx, zero_div]

theorem normalized_source_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (normalizedSource A) :=
  HasCompactSupport.intro isCompact_Icc (fun _x hx ↦ normalized_source_zero_outside hA hx)

theorem normalized_source_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (normalizedSource A) :=
  (SourceNormalization.normalized_source_continuous A).integrable_of_hasCompactSupport
    (normalized_source_hasCompactSupport hA)

def reflectedSource (A x : ℝ) : ℝ := normalizedSource A (-x)

theorem reflected_source_contDiff_one (A : ℝ) : ContDiff ℝ 1 (reflectedSource A) :=
  (normalized_source_contDiff_one A).comp contDiff_id.neg

theorem reflected_source_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (reflectedSource A) := by
  apply HasCompactSupport.intro (show IsCompact (Icc (-A) A) from isCompact_Icc)
  intro x hx
  unfold reflectedSource
  apply normalized_source_zero_outside hA
  intro hneg
  apply hx
  constructor <;> linarith [hneg.1, hneg.2]

theorem correlation_eq_convolution (A : ℝ) :
    correlation A = normalizedSource A ⋆[ContinuousLinearMap.mul ℝ ℝ] reflectedSource A := by
  funext t
  rw [convolution_mul]
  unfold correlation reflectedSource
  apply integral_congr_ae
  filter_upwards [] with x
  rw [show -(t - x) = x - t by ring]

theorem correlation_contDiff_one {A : ℝ} (hA : 0 < A) : ContDiff ℝ 1 (correlation A) := by
  rw [correlation_eq_convolution]
  exact (normalized_source_hasCompactSupport hA).contDiff_convolution_left
    (ContinuousLinearMap.mul ℝ ℝ) (normalized_source_contDiff_one A)
    (reflected_source_contDiff_one A).continuous.locallyIntegrable

theorem correlation_deriv_eq_convolution {A : ℝ} (hA : 0 < A) :
    deriv (correlation A) =
      deriv (normalizedSource A) ⋆[ContinuousLinearMap.mul ℝ ℝ] reflectedSource A := by
  funext t
  rw [correlation_eq_convolution]
  exact ((normalized_source_hasCompactSupport hA).hasDerivAt_convolution_left
    (ContinuousLinearMap.mul ℝ ℝ) (normalized_source_contDiff_one A)
    (reflected_source_contDiff_one A).continuous.locallyIntegrable t).deriv

theorem correlation_deriv_contDiff_one {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (deriv (correlation A)) := by
  rw [correlation_deriv_eq_convolution hA]
  exact (reflected_source_hasCompactSupport hA).contDiff_convolution_right
    (ContinuousLinearMap.mul ℝ ℝ)
    (normalized_source_contDiff_one A).continuous_deriv_one.locallyIntegrable
    (reflected_source_contDiff_one A)

theorem correlation_contDiff_two {A : ℝ} (hA : 0 < A) : ContDiff ℝ 2 (correlation A) := by
  change ContDiff ℝ ((1 : ℕ∞ω) + 1) (correlation A)
  apply contDiff_succ_iff_deriv.mpr
  exact ⟨(correlation_contDiff_one hA).differentiable one_ne_zero,
    by norm_num, correlation_deriv_contDiff_one hA⟩

theorem reflected_source_deriv (A : ℝ) :
    deriv (reflectedSource A) = fun x ↦ -deriv (normalizedSource A) (-x) := by
  funext x
  have differentiable := (normalized_source_contDiff_one A).differentiable one_ne_zero
  have derivative := ((differentiable (-x)).hasDerivAt).comp x (hasDerivAt_id x).neg
  change deriv (fun y ↦ normalizedSource A (-y)) x = -deriv (normalizedSource A) (-x)
  simpa [Function.comp_def] using derivative.deriv

theorem correlation_second_deriv_eq_integral {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (correlation A)) t =
      -(∫ x : ℝ, deriv (normalizedSource A) x * deriv (normalizedSource A) (x - t)) := by
  rw [correlation_deriv_eq_convolution hA]
  rw [((reflected_source_hasCompactSupport hA).hasDerivAt_convolution_right
    (ContinuousLinearMap.mul ℝ ℝ)
    (normalized_source_contDiff_one A).continuous_deriv_one.locallyIntegrable
    (reflected_source_contDiff_one A) t).deriv]
  rw [reflected_source_deriv, convolution_mul, ← integral_neg]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [show -(t - x) = x - t by ring]
  ring

theorem polarity_kernel_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (polarityKernel A) := by
  have first : Continuous (deriv (correlation A)) :=
    (correlation_contDiff_one hA).continuous_deriv_one
  have second : Continuous (deriv (deriv (correlation A))) :=
    (correlation_deriv_contDiff_one hA).continuous_deriv_one
  unfold polarityKernel
  fun_prop

theorem correlation_zero_of_two_mul_lt {A t : ℝ} (hA : 0 < A) (ht : 2 * A < t) :
    correlation A t = 0 := by
  unfold correlation
  have zero : (fun x : ℝ ↦ normalizedSource A x * normalizedSource A (x - t)) =
      fun _ ↦ (0 : ℝ) := by
    funext x
    by_cases hx : x ∈ Icc (-A) A
    · rw [normalized_source_zero_outside (x := x - t) hA (by
        intro hxt
        linarith [hx.2, hxt.1]), mul_zero]
    · rw [normalized_source_zero_outside hA hx, zero_mul]
  rw [zero, integral_zero]

theorem correlation_eventually_zero {A t : ℝ} (hA : 0 < A) (ht : 2 * A < t) :
    correlation A =ᶠ[𝓝 t] fun _ ↦ (0 : ℝ) := by
  filter_upwards [Ioi_mem_nhds ht] with u hu
  exact correlation_zero_of_two_mul_lt hA hu

theorem correlation_derivatives_zero_of_two_mul_lt {A t : ℝ} (hA : 0 < A)
    (ht : 2 * A < t) :
    deriv (correlation A) t = 0 ∧ deriv (deriv (correlation A)) t = 0 := by
  have eqzero := correlation_eventually_zero hA ht
  have first : deriv (correlation A) =ᶠ[𝓝 t] fun _ ↦ (0 : ℝ) := by
    filter_upwards [eqzero.deriv] with x hx
    simpa using hx
  constructor
  · exact (hasDerivAt_const t (0 : ℝ)).congr_of_eventuallyEq eqzero |>.deriv
  · exact (hasDerivAt_const t (0 : ℝ)).congr_of_eventuallyEq first |>.deriv

/-- The prescribed kernel is silent on the strict upper tail of the reading window. -/
theorem polarity_kernel_zero_of_upper_tail {A t : ℝ} (hA : 0 < A)
    (ht : 2 * A - Real.log 2 < t) : polarityKernel A t = 0 := by
  unfold polarityKernel
  apply Finset.sum_eq_zero
  intro k hk
  have hk2 := (Finset.mem_Icc.mp hk).1
  have castBound : (2 : ℝ) ≤ k := by exact_mod_cast hk2
  have logBound : Real.log (2 : ℝ) ≤ Real.log (k : ℝ) :=
    Real.log_le_log (by norm_num) castBound
  have after : 2 * A < t + Real.log (k : ℝ) := by linarith
  rw [(correlation_derivatives_zero_of_two_mul_lt hA after).1,
    (correlation_derivatives_zero_of_two_mul_lt hA after).2]
  ring


/-- Compact convolution support supplies global integrability of both actual derivatives. -/
theorem correlation_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (correlation A) := by
  rw [correlation_eq_convolution]
  exact (normalized_source_hasCompactSupport hA).convolution
    (ContinuousLinearMap.mul ℝ ℝ) (reflected_source_hasCompactSupport hA)

theorem correlation_deriv_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (deriv (correlation A)) :=
  (correlation_contDiff_one hA).continuous_deriv_one.integrable_of_hasCompactSupport
    (correlation_hasCompactSupport hA).deriv

theorem correlation_second_deriv_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (deriv (deriv (correlation A))) :=
  (correlation_deriv_contDiff_one hA).continuous_deriv_one.integrable_of_hasCompactSupport
    (correlation_hasCompactSupport hA).deriv.deriv

theorem polarity_kernel_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (polarityKernel A) := by
  unfold polarityKernel
  apply integrable_finsetSum
  intro k _hk
  exact ((measurePreserving_add_right volume (Real.log (k : ℝ))).integrable_comp_of_integrable
    (correlation_second_deriv_integrable hA)).sub
    (((measurePreserving_add_right volume (Real.log (k : ℝ))).integrable_comp_of_integrable
      (correlation_deriv_integrable hA)).const_mul (1 / 2 : ℝ))
    |>.const_mul _

/-- Small positive scales have an empty literal inventory, so no strict polarity sector exists. -/
theorem polarity_kernel_zero_of_empty_inventory {A : ℝ} (hA : 2 * A < Real.log 2) :
    polarityKernel A = fun _ ↦ (0 : ℝ) := by
  have cutoff : integerCutoff A < 2 := by
    unfold integerCutoff
    apply (Nat.floor_lt (le_of_lt (Real.exp_pos _))).mpr
    exact (Real.exp_lt_exp.mpr hA).trans_eq (Real.exp_log (by norm_num))
  funext t
  simp [polarityKernel, Finset.Icc_eq_empty_of_lt cutoff]

theorem strict_sector_empty_of_small_scale {A : ℝ} (hA : 2 * A < Real.log 2) (σ : ℝ) :
    {t | t ∈ readingWindow A ∧ 0 < σ * polarityKernel A t} = ∅ := by
  rw [polarity_kernel_zero_of_empty_inventory hA]
  simp

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceRegularity
```
