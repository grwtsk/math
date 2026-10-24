# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27a078c0f289151a33db11bc1bde27ecf3e7d660` · SHA-256 `75b1f4ebbdede410e179c224a8cdfd69b8949d7ccd986c2ee90d1733cfc8f970`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePoleReducedBump

/-!
# The one-pole-reduced actual source cross-correlation

Compact convolution supplies classical differentiation under the integral.
The first translation derivative is negative and the second is positive.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimatePoleReducedCorrelation

open MeasureTheory Set
open scoped ContDiff Convolution
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity EstimatePoleReducedBump

noncomputable section

/-- The actual test paired with the normalized underlying source bump. -/
def poleReducedCorrelation (A t : ℝ) : ℝ :=
  ∫ x, normalizedTest explicitSecondDerivative A x * normalizedSourceBump A (x-t)

/-- Each actual cross-correlation product is genuinely integrable. -/
theorem poleReducedCorrelation_product_integrable (A t : ℝ) (hA : 0 < A) :
    Integrable (fun x ↦ normalizedTest explicitSecondDerivative A x *
      normalizedSourceBump A (x-t)) volume :=
  (((normalizedTest_contDiff A hA).continuous).mul
    ((normalizedSourceBump_contDiff A hA).continuous.comp
      (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
        (normalizedTest_hasCompactSupport A hA).mul_right

/-- The actual second-derivative integrand is integrable before its use. -/
theorem poleReducedCorrelation_second_product_integrable (A t : ℝ) (hA : 0 < A) :
    Integrable (fun x ↦ normalizedTest explicitSecondDerivative A x *
      deriv (deriv (normalizedSourceBump A)) (x-t)) volume := by
  have hq : ContDiff ℝ 1 (deriv (normalizedSourceBump A)) :=
    (normalizedSourceBump_contDiff A hA).deriv'
  have hc : Continuous (fun x ↦ normalizedTest explicitSecondDerivative A x *
      deriv (deriv (normalizedSourceBump A)) (x-t)) :=
    ((normalizedTest_contDiff A hA).continuous).mul
      (hq.continuous_deriv_one.comp (continuous_id.sub continuous_const))
  exact hc.integrable_of_hasCompactSupport (normalizedTest_hasCompactSupport A hA).mul_right

/-- Reflection turns this literal cross-correlation into compact convolution. -/
theorem poleReducedCorrelation_eq_convolution (A : ℝ) :
    poleReducedCorrelation A = (normalizedTest explicitSecondDerivative A ⋆
      (fun x ↦ normalizedSourceBump A (-x))) := by
  funext t
  unfold poleReducedCorrelation convolution
  apply integral_congr_ae
  filter_upwards [] with x
  simp [sub_eq_add_neg]

private theorem reflected_bump_compact (A : ℝ) (hA : 0 < A) :
    HasCompactSupport (fun x ↦ normalizedSourceBump A (-x)) := by
  refine exists_compact_iff_hasCompactSupport.mp ⟨Icc (-A) A, isCompact_Icc, ?_⟩
  intro x hx
  apply (normalizedSourceBump_zero_of_le_abs A (-x) hA ?_).1
  rw [abs_neg]
  by_contra h
  exact hx (abs_le.mp (le_of_lt (lt_of_not_ge h)))

private theorem reflected_bump_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 2 (fun x ↦ normalizedSourceBump A (-x)) :=
  (normalizedSourceBump_contDiff A hA).comp contDiff_neg

/-- The cross-correlation is classically C², including the touching endpoints. -/
theorem poleReducedCorrelation_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 2 (poleReducedCorrelation A) := by
  rw [poleReducedCorrelation_eq_convolution]
  exact (reflected_bump_compact A hA).contDiff_convolution_right
    (ContinuousLinearMap.lsmul ℝ ℝ) (normalizedTest_integrable A hA).locallyIntegrable
    (reflected_bump_contDiff A hA)

/-- The first translation derivative has its literal negative sign. -/
theorem poleReducedCorrelation_hasDerivAt (A t : ℝ) (hA : 0 < A) :
    HasDerivAt (poleReducedCorrelation A)
      (∫ x, normalizedTest explicitSecondDerivative A x *
        (-deriv (normalizedSourceBump A) (x-t))) t := by
  rw [poleReducedCorrelation_eq_convolution]
  have h := (reflected_bump_compact A hA).hasDerivAt_convolution_right
    (ContinuousLinearMap.lsmul ℝ ℝ) (normalizedTest_integrable A hA).locallyIntegrable
    ((reflected_bump_contDiff A hA).of_le (by norm_num : (1 : ℕ∞ω) ≤ 2)) t
  apply h.congr_deriv
  rw [convolution_lsmul]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [deriv_comp_neg, neg_sub]
  simp only [smul_eq_mul]

/-- The actual second derivative has the positive translation sign. -/
theorem poleReducedCorrelation_second_deriv (A t : ℝ) (hA : 0 < A) :
    deriv (deriv (poleReducedCorrelation A)) t =
      ∫ x, normalizedTest explicitSecondDerivative A x *
        deriv (deriv (normalizedSourceBump A)) (x-t) := by
  let q := fun x ↦ normalizedSourceBump A (-x)
  have hq : ContDiff ℝ 2 q := reflected_bump_contDiff A hA
  have hqc : HasCompactSupport q := reflected_bump_compact A hA
  have heq : deriv (poleReducedCorrelation A) =
      (normalizedTest explicitSecondDerivative A ⋆ deriv q) := by
    funext s
    rw [poleReducedCorrelation_eq_convolution]
    exact (hqc.hasDerivAt_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ)
      (normalizedTest_integrable A hA).locallyIntegrable
      (hq.of_le (by norm_num : (1 : ℕ∞ω) ≤ 2)) s).deriv
  rw [heq, (hqc.deriv.hasDerivAt_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ)
    (normalizedTest_integrable A hA).locallyIntegrable hq.deriv' t).deriv, convolution_lsmul]
  have hq' : deriv q = fun x ↦ -deriv (normalizedSourceBump A) (-x) := by
    funext x
    exact deriv_comp_neg (f := normalizedSourceBump A) (x := x)
  apply integral_congr_ae
  filter_upwards [] with x
  rw [hq', deriv.fun_neg, deriv_comp_neg, neg_neg, neg_sub]
  simp only [smul_eq_mul]

/-- The one-pole-reduced operator is exactly the original source correlation. -/
theorem poleReducedCorrelation_pole_operator (A t : ℝ) (hA : 0 < A) :
    deriv (deriv (poleReducedCorrelation A)) t - poleReducedCorrelation A t / 4 =
      sourceCorrelation explicitSecondDerivative A t := by
  rw [poleReducedCorrelation_second_deriv A t hA]
  unfold poleReducedCorrelation sourceCorrelation
  rw [← integral_div, ← integral_sub
    (poleReducedCorrelation_second_product_integrable A t hA)
    ((poleReducedCorrelation_product_integrable A t hA).div_const 4)]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [mul_div_assoc, ← mul_sub, normalizedSourceBump_pole_operator A (x-t) hA]

/-- The cross-correlation and its first derivative both vanish at touching support. -/
theorem poleReducedCorrelation_zero_of_two_mul_le_abs (A t : ℝ)
    (hA : 0 < A) (ht : 2 * A ≤ |t|) :
    poleReducedCorrelation A t = 0 ∧ deriv (poleReducedCorrelation A) t = 0 := by
  have hz (x : ℝ) : normalizedTest explicitSecondDerivative A x = 0 ∨
      (normalizedSourceBump A (x-t) = 0 ∧ deriv (normalizedSourceBump A) (x-t) = 0) := by
    by_cases hx : A ≤ |x|
    · exact Or.inl (normalizedTest_zero_of_le_abs A x hA hx)
    · apply Or.inr
      apply normalizedSourceBump_zero_of_le_abs A (x-t) hA
      have hb : |t| ≤ |x| + |x-t| := by
        calc
          |t| = |x-(x-t)| := by congr 1; ring
          _ ≤ _ := abs_sub _ _
      linarith [lt_of_not_ge hx]
  constructor
  · unfold poleReducedCorrelation
    apply integral_eq_zero_of_ae
    filter_upwards [] with x
    rcases hz x with hv | ⟨hq, _⟩
    · simp [hv]
    · simp [hq]
  · rw [(poleReducedCorrelation_hasDerivAt A t hA).deriv]
    apply integral_eq_zero_of_ae
    filter_upwards [] with x
    rcases hz x with hv | ⟨_, hq⟩
    · simp [hv]
    · simp [hq]

end
end EstimatePoleReducedCorrelation
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
