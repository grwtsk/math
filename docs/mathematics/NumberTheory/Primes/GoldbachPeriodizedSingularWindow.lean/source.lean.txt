/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachCircleWindowGeometry
import GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Common periodized singular windows for the Goldbach progression model

The finite singular kernel is lifted to `AddCircle 1`. The clipped three-lift
real arc is then integrated as the preimage of one circle ball, which removes
all numerator dependence from the singular integral.

For radii below one half, the circle-window integral is also identified with
the ordinary symmetric real integral over `[-ρ, ρ]`. The inherited separation
condition `2 * Q^2 < N + 1` is shown to imply that small-radius premise for
every indexed denominator.

No singular integral is evaluated here. No progression estimate, infinite
singular-series theorem, minor-arc bound, or Goldbach theorem is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow

open scoped BigOperators Real
open Set Metric AddCircle MeasureTheory intervalIntegral
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachCircleWindowGeometry
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization

noncomputable section

local instance unitPeriodPositive : Fact (0 < (1 : ℝ)) := ⟨zero_lt_one⟩

/-- The finite singular kernel, intrinsically defined on the unit additive
circle. -/
def goldbachFiniteSingularKernelCircle
    (N : ℕ) (z : AddCircle (1 : ℝ)) : ℂ :=
  (∑ n ∈ Finset.range (N + 1), fourier (n : ℤ) z) *
    (∑ n ∈ Finset.range (N + 1), fourier (n : ℤ) z) *
      fourier (-(N : ℤ)) z

/-- Pulling the circle kernel back to the real line recovers the inherited
finite singular kernel exactly. -/
theorem goldbachFiniteSingularKernel_eq_circle
    (N : ℕ) (β : ℝ) :
    goldbachFiniteSingularKernel N β =
      goldbachFiniteSingularKernelCircle N
        (β : AddCircle (1 : ℝ)) := by
  rfl

/-- The circle singular kernel is continuous. -/
@[continuity, fun_prop]
theorem continuous_goldbachFiniteSingularKernelCircle
    (N : ℕ) :
    Continuous (goldbachFiniteSingularKernelCircle N) := by
  unfold goldbachFiniteSingularKernelCircle
  fun_prop

/-- The real singular kernel is one-periodic. -/
theorem periodic_goldbachFiniteSingularKernel
    (N : ℕ) :
    Function.Periodic (goldbachFiniteSingularKernel N) 1 := by
  intro β
  unfold goldbachFiniteSingularKernel
    goldbachIntegerExponentialKernel
  simp_rw [show β + 1 = β + ((1 : ℤ) : ℝ) by norm_num,
    unitCharacter_add_int]

/-- The numerator-independent singular integral over the metric circle
window. -/
def goldbachCommonCircleSingularIntegral
    (Q N q : ℕ) : ℂ :=
  ∫ z in goldbachCircleWindow Q N q,
    goldbachFiniteSingularKernelCircle N z

/-- The conventional symmetric real-window version of the finite singular
integral. It agrees with the circle integral only under a small-radius
hypothesis. -/
def goldbachSymmetricRealSingularIntegral
    (Q N q : ℕ) : ℂ :=
  ∫ β in Set.Icc
      (-goldbachRationalArcRadius Q N q)
      (goldbachRationalArcRadius Q N q),
    goldbachFiniteSingularKernel N β

/-- Translating the fundamental interval by the rational center and then
projecting to `AddCircle 1` does not change an integral. -/
theorem integral_Ioc_goldbachOffsetCircle
    (a q : ℕ) (F : AddCircle (1 : ℝ) → ℂ) :
    (∫ x in Set.Ioc (0 : ℝ) 1,
        F (goldbachOffsetCircle a q x)) =
      ∫ z : AddCircle (1 : ℝ), F z := by
  let c := goldbachRationalArcCenter a q
  have htranslate :
      (∫ x in Set.Ioc (0 : ℝ) 1,
          F ((x - c : ℝ) : AddCircle (1 : ℝ))) =
        ∫ β in Set.Ioc (-c) (-c + 1),
          F (β : AddCircle (1 : ℝ)) := by
    rw [← intervalIntegral.integral_of_le zero_le_one,
      ← intervalIntegral.integral_of_le (by linarith : -c ≤ -c + 1)]
    simpa [sub_eq_add_neg, add_comm] using
      (intervalIntegral.integral_comp_add_right
        (fun β : ℝ => F (β : AddCircle (1 : ℝ))) (-c)
        (a := (0 : ℝ)) (b := 1))
  rw [show
      (fun x : ℝ => F (goldbachOffsetCircle a q x)) =
        fun x : ℝ =>
          F ((x - c : ℝ) : AddCircle (1 : ℝ)) by
      funext x
      rfl,
    htranslate]
  exact AddCircle.integral_preimage (1 : ℝ) (-c) F

/-- The integral over the clipped pullback of a circle window is the intrinsic
circle-window integral. -/
theorem integral_goldbachCircleWindowPreimage_eq_common
    (Q N a q : ℕ) :
    (∫ x in goldbachCircleWindowPreimage Q N a q,
        goldbachFiniteSingularKernel N
          (goldbachRationalArcOffset a q x)) =
      goldbachCommonCircleSingularIntegral Q N q := by
  let W := goldbachCircleWindow Q N q
  let P : Set ℝ := goldbachOffsetCircle a q ⁻¹' W
  let F := goldbachFiniteSingularKernelCircle N
  have hW : MeasurableSet W := by
    exact measurable_goldbachCircleWindow Q N q
  have hP : MeasurableSet P := by
    exact hW.preimage
      (continuous_goldbachOffsetCircle a q).measurable
  unfold goldbachCircleWindowPreimage
  change
    (∫ x in Set.Ioc (0 : ℝ) 1 ∩ P,
        goldbachFiniteSingularKernel N
          (goldbachRationalArcOffset a q x)) =
      ∫ z in W, F z
  rw [← setIntegral_indicator hP]
  calc
    (∫ x in Set.Ioc (0 : ℝ) 1,
        P.indicator
          (fun x =>
            goldbachFiniteSingularKernel N
              (goldbachRationalArcOffset a q x)) x) =
      ∫ x in Set.Ioc (0 : ℝ) 1,
        (W.indicator F) (goldbachOffsetCircle a q x) := by
          apply setIntegral_congr_fun measurableSet_Ioc
          intro x hx
          by_cases hmem : goldbachOffsetCircle a q x ∈ W
          · have hxP : x ∈ P := hmem
            simp only [Set.indicator_of_mem hxP, Set.indicator_of_mem hmem]
            rfl
          · have hxP : x ∉ P := hmem
            simp [Set.indicator_of_notMem, hxP, hmem]
    _ = ∫ z : AddCircle (1 : ℝ), (W.indicator F) z := by
      exact integral_Ioc_goldbachOffsetCircle a q (W.indicator F)
    _ = ∫ z in W, F z := by
      exact integral_indicator hW

/-- Every indexed clipped arc has the same intrinsic circle-window singular
integral as every other numerator at the same denominator. -/
theorem goldbachProgressionArcSingularIntegral_eq_common
    {Q N a q : ℕ}
    (hindex : (a, q) ∈ goldbachRationalArcIndices Q) :
    goldbachProgressionArcSingularIntegral Q N (a, q) =
      goldbachCommonCircleSingularIntegral Q N q := by
  rw [goldbachProgressionArcSingularIntegral,
    goldbachClippedRationalArc_eq_circleWindowPreimage hindex]
  exact integral_goldbachCircleWindowPreimage_eq_common Q N a q

/-- On the centered fundamental interval, a circle ball of radius below one
half pulls back to the ordinary real closed interval. -/
theorem centered_circleWindow_preimage_eq_Icc
    {r : ℝ} (_hr0 : 0 ≤ r) (hr : r < (1 / 2 : ℝ)) :
    Set.Ioc (-(1 / 2 : ℝ)) (1 / 2 : ℝ) ∩
        ((fun β : ℝ => (β : AddCircle (1 : ℝ))) ⁻¹'
          Metric.closedBall 0 r) =
      Set.Icc (-r) r := by
  let s := Set.Ioc (-(1 / 2 : ℝ)) (1 / 2 : ℝ)
  have hs :
      s ⊆ Metric.closedBall (0 : ℝ) (|(1 : ℝ)| / 2) := by
    intro β hβ
    change -(1 / 2 : ℝ) < β ∧ β ≤ 1 / 2 at hβ
    rw [Real.closedBall_eq_Icc]
    constructor <;> norm_num at * <;> linarith
  have hpre :=
    AddCircle.coe_real_preimage_closedBall_inter_eq
      (p := (1 : ℝ)) (x := (0 : ℝ)) (ε := r) s hs
  have hsmall : r < |(1 : ℝ)| / 2 := by
    simpa using hr
  rw [if_pos hsmall] at hpre
  have hsub :
      Metric.closedBall (0 : ℝ) r ⊆ s := by
    intro β hβ
    rw [Real.closedBall_eq_Icc] at hβ
    constructor <;> linarith [hβ.1, hβ.2]
  have hinter :
      Metric.closedBall (0 : ℝ) r ∩ s =
        Metric.closedBall (0 : ℝ) r :=
    Set.inter_eq_left.mpr hsub
  calc
    s ∩
        ((fun β : ℝ => (β : AddCircle (1 : ℝ))) ⁻¹'
          Metric.closedBall 0 r) =
      ((fun β : ℝ => (β : AddCircle (1 : ℝ))) ⁻¹'
          Metric.closedBall 0 r) ∩ s := by
            rw [Set.inter_comm]
    _ = Metric.closedBall (0 : ℝ) r ∩ s := hpre
    _ = Metric.closedBall (0 : ℝ) r := hinter
    _ = Set.Icc (-r) r := by
      rw [Real.closedBall_eq_Icc]
      ring_nf

/-- Below half the period, the intrinsic circle-window integral is the
ordinary symmetric real-window integral. -/
theorem goldbachCommonCircleSingularIntegral_eq_symmetric
    {Q N q : ℕ}
    (hsmall :
      goldbachRationalArcRadius Q N q < (1 / 2 : ℝ)) :
    goldbachCommonCircleSingularIntegral Q N q =
      goldbachSymmetricRealSingularIntegral Q N q := by
  let r := goldbachRationalArcRadius Q N q
  let W := goldbachCircleWindow Q N q
  let P : Set ℝ :=
    (fun β : ℝ => (β : AddCircle (1 : ℝ))) ⁻¹' W
  let F := goldbachFiniteSingularKernelCircle N
  have hr0 : 0 ≤ r := by
    exact goldbachRationalArcRadius_nonneg Q N q
  have hW : MeasurableSet W := by
    exact measurable_goldbachCircleWindow Q N q
  have hP : MeasurableSet P := by
    exact hW.preimage AddCircle.measurable_mk'
  have hset :
      Set.Ioc (-(1 / 2 : ℝ)) (1 / 2 : ℝ) ∩ P =
        Set.Icc (-r) r := by
    exact centered_circleWindow_preimage_eq_Icc
      hr0 (by simpa [r] using hsmall)
  unfold goldbachCommonCircleSingularIntegral
    goldbachSymmetricRealSingularIntegral
  change
    (∫ z in W, F z) =
      ∫ β in Set.Icc (-r) r,
        goldbachFiniteSingularKernel N β
  calc
    (∫ z in W, F z) =
      ∫ z : AddCircle (1 : ℝ), W.indicator F z := by
        symm
        exact integral_indicator hW
    _ =
      ∫ β in Set.Ioc (-(1 / 2 : ℝ)) (1 / 2 : ℝ),
        (W.indicator F) (β : AddCircle (1 : ℝ)) := by
          convert (AddCircle.integral_preimage
              (1 : ℝ) (-(1 / 2 : ℝ))
              (W.indicator F)).symm using 1
          norm_num
    _ =
      ∫ β in Set.Ioc (-(1 / 2 : ℝ)) (1 / 2 : ℝ),
        P.indicator
          (fun β =>
            goldbachFiniteSingularKernel N β) β := by
          apply setIntegral_congr_fun measurableSet_Ioc
          intro β hβ
          by_cases hmem : (β : AddCircle (1 : ℝ)) ∈ W
          · have hβP : β ∈ P := hmem
            simp [Set.indicator_of_mem, hmem, hβP, F,
              goldbachFiniteSingularKernel_eq_circle]
          · have hβP : β ∉ P := hmem
            simp [Set.indicator_of_notMem, hmem, hβP]
    _ =
      ∫ β in
          Set.Ioc (-(1 / 2 : ℝ)) (1 / 2 : ℝ) ∩ P,
        goldbachFiniteSingularKernel N β := by
          exact setIntegral_indicator hP
    _ =
      ∫ β in Set.Icc (-r) r,
        goldbachFiniteSingularKernel N β := by
          rw [hset]

/-- The inherited global separation scale forces the radius at every
positive admitted denominator below one half. -/
theorem goldbachRationalArcRadius_lt_half_of_denominator
    {Q N q : ℕ}
    (hq : 0 < q) (hqQ : q ≤ Q)
    (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachRationalArcRadius Q N q < (1 / 2 : ℝ) := by
  have hQ : 0 < Q := lt_of_lt_of_le hq hqQ
  have hQQ : Q ≤ Q ^ 2 := by
    nlinarith
  have htwoQ : 2 * Q < N + 1 := by
    exact lt_of_le_of_lt
      (Nat.mul_le_mul_left 2 hQQ) hscale
  have hqone : 1 ≤ q := Nat.one_le_iff_ne_zero.mpr hq.ne'
  have hNmul : N + 1 ≤ q * (N + 1) := by
    simpa [one_mul] using
      Nat.mul_le_mul_right (N + 1) hqone
  have hcross : 2 * Q < q * (N + 1) :=
    lt_of_lt_of_le htwoQ hNmul
  have hden :
      (0 : ℝ) < (q : ℝ) * ((N + 1 : ℕ) : ℝ) := by
    positivity
  unfold goldbachRationalArcRadius
  rw [div_lt_iff₀ hden]
  have hcrossR :
      (2 : ℝ) * (Q : ℝ) <
        (q : ℝ) * ((N + 1 : ℕ) : ℝ) := by
    exact_mod_cast hcross
  nlinarith

/-- Indexed form of the radius estimate. -/
theorem goldbachRationalArcRadius_lt_half_of_global_scale
    {Q N a q : ℕ}
    (hindex : (a, q) ∈ goldbachRationalArcIndices Q)
    (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachRationalArcRadius Q N q < (1 / 2 : ℝ) := by
  rcases (mem_goldbachRationalArcIndices.1 hindex) with
    ⟨haQ, hqQ, hq, haq, hcoprime⟩
  exact goldbachRationalArcRadius_lt_half_of_denominator
    hq hqQ hscale

/-- Under the inherited separation scale, every clipped singular integral is
the same symmetric real-window integral at its denominator. -/
theorem goldbachProgressionArcSingularIntegral_eq_symmetric
    {Q N a q : ℕ}
    (hindex : (a, q) ∈ goldbachRationalArcIndices Q)
    (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachProgressionArcSingularIntegral Q N (a, q) =
      goldbachSymmetricRealSingularIntegral Q N q := by
  rw [goldbachProgressionArcSingularIntegral_eq_common hindex,
    goldbachCommonCircleSingularIntegral_eq_symmetric
      (goldbachRationalArcRadius_lt_half_of_global_scale
        hindex hscale)]

end
end GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow
