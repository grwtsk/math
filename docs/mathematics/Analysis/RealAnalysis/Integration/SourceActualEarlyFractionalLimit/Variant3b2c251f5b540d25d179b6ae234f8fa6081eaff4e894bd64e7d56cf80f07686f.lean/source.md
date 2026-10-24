# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualEarlyFractionalLimit.Variant3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db4c9daff0e07b2c0efc58900c7d55f7c83a0a8e` · SHA-256 `3b2c251f5b540d25d179b6ae234f8fa6081eaff4e894bd64e7d56cf80f07686f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceLeadingFullKappaReduction
import SourceStrictComplementaryEarlyBudget
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
The actual early floor sector has its literal fractional-part limiting constant.
The unchanged profile is compared to its genuine unit correlation at the origin.
Every real floor endpoint and the entire integrable fractional tail remain.
No zeta value identification or signed arithmetic witness is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit

open MeasureTheory Set Filter
open scoped Interval Topology
open SourcePairing SourcePositiveSampling SourceSamplingCoefficients
open SourceLeadingFullKappaReduction SourceStrictComplementaryLocalization
open SourceStrictComplementaryEarlyBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource

noncomputable section

/-- Independently specified genuine fractional-part density on the upper positive axis. -/
def earlyFractionalDensity (x : ℝ) : ℝ :=
  Int.fract x * x ^ (-(3 : ℝ) / 2)

/-- The literal upper fractional-part constant, before any zeta identification. -/
def earlyFractionalConstant : ℝ :=
  1 + (1 / 2 : ℝ) * ∫ x in Ioi (1 : ℝ), earlyFractionalDensity x

private theorem rpow_negative_three_halves {x : ℝ} (hx : 0 < x) :
    x ^ (-(3 : ℝ) / 2) = 1 / (x * Real.sqrt x) := by
  have hp : x * Real.sqrt x = x ^ ((3 : ℝ) / 2) := by
    nth_rw 1 [← Real.rpow_one x]
    rw [Real.sqrt_eq_rpow, ← Real.rpow_add hx]
    norm_num
  rw [hp, one_div, ← Real.rpow_neg hx.le]
  norm_num

private theorem exp_neg_half_log_eq_inv_sqrt {x : ℝ} (hx : 0 < x) :
    Real.exp (-Real.log x / 2) = 1 / Real.sqrt x := by
  rw [show -Real.log x / 2 = -(Real.log x * (1 / 2)) by ring,
    Real.exp_neg, ← Real.rpow_def_of_pos hx, ← Real.sqrt_eq_rpow]
  simp only [one_div]

/-- The literal density has genuine L1 on the entire upper positive axis. -/
theorem earlyFractionalDensity_integrable :
    IntegrableOn earlyFractionalDensity (Ioi (1 : ℝ)) := by
  have hi := (SourceSamplingCoefficients.coefficientWeight_integrable 0).mono_set
    (Ioi_subset_Ioi (by norm_num :
    (0 : ℝ) ≤ 1))
  have he : SourceSamplingCoefficients.coefficientWeight 0 = earlyFractionalDensity := by
    funext x
    unfold SourceSamplingCoefficients.coefficientWeight earlyFractionalDensity
    simp
  rw [he] at hi
  exact hi

theorem earlyFractionalDensity_nonneg {x : ℝ} (hx : 0 < x) :
    0 ≤ earlyFractionalDensity x := by
  unfold earlyFractionalDensity
  positivity

/-- Genuine fractional-tail truncation has the exact inverse-square-root envelope. -/
theorem earlyFractionalDensity_tail_bounds {u : ℝ} (hu : 1 ≤ u) :
    0 ≤ (∫ x in Ioi u, earlyFractionalDensity x) ∧
      (∫ x in Ioi u, earlyFractionalDensity x) ≤ 2 / Real.sqrt u := by
  have hu0 : 0 < u := by linarith
  have hi := earlyFractionalDensity_integrable.mono_set (Ioi_subset_Ioi hu)
  have hr := integrableOn_Ioi_rpow_of_lt (by norm_num : -(3 : ℝ) / 2 < -1) hu0
  constructor
  · exact setIntegral_nonneg measurableSet_Ioi
      (fun x hx => earlyFractionalDensity_nonneg (hu0.trans hx))
  · calc
      _ ≤ ∫ x in Ioi u, x ^ (-(3 : ℝ) / 2) := by
        apply setIntegral_mono_on hi hr measurableSet_Ioi
        intro x hx
        unfold earlyFractionalDensity
        exact mul_le_of_le_one_left (Real.rpow_pos_of_pos (hu0.trans hx) _).le
          (Int.fract_lt_one x).le
      _ = 2 / Real.sqrt u := by
        rw [integral_Ioi_rpow_of_lt (by norm_num : -(3 : ℝ) / 2 < -1) hu0]
        norm_num
        rw [Real.rpow_neg hu0.le, ← Real.sqrt_eq_rpow]
        ring

/-- The independent literal fractional constant is finite and lies between one and two. -/
theorem earlyFractionalConstant_bounds :
    (1 : ℝ) ≤ earlyFractionalConstant ∧ earlyFractionalConstant ≤ 2 := by
  have hi := earlyFractionalDensity_tail_bounds (by norm_num : (1 : ℝ) ≤ 1)
  norm_num at hi
  unfold earlyFractionalConstant
  constructor <;> linarith

/-- True unit-correlation derivative density, still multiplied by the closed natural floor. -/
def earlyUnitFloorDensity (x : ℝ) : ℝ :=
  -(⌊x⌋₊ : ℝ) / (2 * x * Real.sqrt x)

/-- Exact real floor split keeps its entire fractional part, including the unit endpoint. -/
theorem earlyUnitFloorDensity_eq {x : ℝ} (hx : 0 < x) :
    earlyUnitFloorDensity x = -1 / (2 * Real.sqrt x) + earlyFractionalDensity x / 2 := by
  have hfloor : (⌊x⌋₊ : ℝ) = x - Int.fract x := by
    rw [natCast_floor_eq_intCast_floor hx.le]
    exact (Int.self_sub_fract x).symm
  unfold earlyUnitFloorDensity earlyFractionalDensity
  rw [hfloor, rpow_negative_three_halves hx]
  field_simp
  ring

private theorem inv_sqrt_continuousOn {u : ℝ} :
    ContinuousOn (fun x : ℝ => 1 / Real.sqrt x) (Icc (1 : ℝ) u) := by
  intro x hx
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 (by linarith [hx.1])).ne'
  exact (continuousAt_const.div Real.continuous_sqrt.continuousAt hs).continuousWithinAt

private theorem integral_inv_sqrt_Ioc {u : ℝ} (hu : 1 ≤ u) :
    (∫ x in Ioc (1 : ℝ) u, 1 / Real.sqrt x) = 2 * (Real.sqrt u - 1) := by
  have hi : IntervalIntegrable (fun x : ℝ => 1 / Real.sqrt x) volume 1 u :=
    inv_sqrt_continuousOn.intervalIntegrable_of_Icc hu
  have hd (x : ℝ) (hx : x ∈ uIcc (1 : ℝ) u) :
      HasDerivAt (fun y => 2 * Real.sqrt y) (1 / Real.sqrt x) x := by
    rw [uIcc_of_le hu] at hx
    have hp : 0 < x := by linarith [hx.1]
    apply ((Real.hasDerivAt_sqrt hp.ne').const_mul 2).congr_deriv
    field_simp
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt hd hi
  rw [intervalIntegral.integral_of_le hu] at he
  rw [Real.sqrt_one] at he
  linarith only [he]

/-- Actual floor baseline integrability follows from genuine fractional L1 and the smooth term. -/
theorem earlyUnitFloorDensity_integrable {u : ℝ} (hu : 1 ≤ u) :
    IntegrableOn earlyUnitFloorDensity (Ioc (1 : ℝ) u) := by
  have hs : IntegrableOn (fun x : ℝ => 1 / Real.sqrt x) (Ioc (1 : ℝ) u) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hu).mp
      (inv_sqrt_continuousOn.intervalIntegrable_of_Icc hu)
  have hf : IntegrableOn earlyFractionalDensity (Ioc (1 : ℝ) u) :=
    earlyFractionalDensity_integrable.mono_set Ioc_subset_Ioi_self
  have hib : IntegrableOn (fun x : ℝ =>
      (-(1 / 2 : ℝ)) * (1 / Real.sqrt x) + earlyFractionalDensity x / 2)
      (Ioc (1 : ℝ) u) := (hs.const_mul _).add (hf.div_const 2)
  apply hib.congr_fun
  · intro x hx
    rw [earlyUnitFloorDensity_eq (by linarith [hx.1])]
    ring
  · exact measurableSet_Ioc

/-- The exact finite baseline is its square-root head plus the genuine fractional truncation. -/
theorem earlyUnitFloorDensity_integral {u : ℝ} (hu : 1 ≤ u) :
    (∫ x in Ioc (1 : ℝ) u, earlyUnitFloorDensity x) =
      -Real.sqrt u + 1 + (1 / 2 : ℝ) * ∫ x in Ioc (1 : ℝ) u, earlyFractionalDensity x := by
  have hs : IntegrableOn (fun x : ℝ => 1 / Real.sqrt x) (Ioc (1 : ℝ) u) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hu).mp
      (inv_sqrt_continuousOn.intervalIntegrable_of_Icc hu)
  have hf : IntegrableOn earlyFractionalDensity (Ioc (1 : ℝ) u) :=
    earlyFractionalDensity_integrable.mono_set Ioc_subset_Ioi_self
  have he : (∫ x in Ioc (1 : ℝ) u, earlyUnitFloorDensity x) =
      ∫ x in Ioc (1 : ℝ) u,
        (-(1 / 2 : ℝ)) * (1 / Real.sqrt x) + earlyFractionalDensity x / 2 := by
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    rw [earlyUnitFloorDensity_eq (by linarith [hx.1])]
    ring
  rw [he, integral_add (hs.const_mul _) (hf.div_const 2), integral_const_mul, integral_div,
    integral_inv_sqrt_Ioc hu]
  ring

/-- Actual C'/C deviation from the genuine unit-correlation derivative, at all real scales. -/
theorem actualCriticalDeviation_abs_le {A t : ℝ} (hA : 91 ≤ A) (ht : 0 ≤ t) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t -
      (sourceCorrelation explicitSecondDerivative A t - 1) / 2| ≤
        (20 * t + 5 * t ^ 2) / A ^ 2 := by
  have hC := actualCorrelation_sub_one_abs_le hA t
  have hD := actualCorrelation_first_abs_le hA t
  rw [abs_of_nonneg ht] at hD
  calc
    _ ≤ |deriv (sourceCorrelation explicitSecondDerivative A) t| +
        |(sourceCorrelation explicitSecondDerivative A t - 1) / 2| := by
      simpa only [sub_eq_add_neg, abs_neg] using
        abs_add_le (deriv (sourceCorrelation explicitSecondDerivative A) t)
          (-((sourceCorrelation explicitSecondDerivative A t - 1) / 2))
    _ = |deriv (sourceCorrelation explicitSecondDerivative A) t| +
        |sourceCorrelation explicitSecondDerivative A t - 1| / 2 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    _ ≤ 20 / A ^ 2 * t + (10 / A ^ 2 * t ^ 2) / 2 :=
      add_le_add hD (div_le_div_of_nonneg_right hC (by norm_num))
    _ = _ := by ring

/-- The actual closed floor profile differs from its unit baseline by a genuine smooth envelope. -/
theorem actualEarlyFloorDifference_abs_le {A x : ℝ} (hA : 91 ≤ A)
    (hx : x ∈ Icc (1 : ℝ) (vaughanCutoff A : ℝ)) :
    |(⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x - earlyUnitFloorDensity x| ≤
      ((20 * Real.log (vaughanCutoff A : ℝ) +
        5 * (Real.log (vaughanCutoff A : ℝ)) ^ 2) / A ^ 2) * (1 / Real.sqrt x) := by
  have hp : 0 < A := by linarith
  have hx0 : 0 < x := by linarith [hx.1]
  have hs0 : 0 < Real.sqrt x := Real.sqrt_pos.2 hx0
  let T := Real.log (vaughanCutoff A : ℝ)
  have ht0 : 0 ≤ Real.log x := Real.log_nonneg hx.1
  have htT : Real.log x ≤ T := Real.log_le_log hx0 hx.2
  have hT0 : 0 ≤ T := ht0.trans htT
  have hB0 : 0 ≤ (20 * T + 5 * T ^ 2) / A ^ 2 := by positivity
  have hB := (actualCriticalDeviation_abs_le hA ht0).trans
    (show (20 * Real.log x + 5 * (Real.log x) ^ 2) / A ^ 2 ≤
      (20 * T + 5 * T ^ 2) / A ^ 2 by
        apply div_le_div_of_nonneg_right _ (sq_nonneg A)
        nlinarith)
  have hE : (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x - earlyUnitFloorDensity x =
      ((⌊x⌋₊ : ℝ) / (x * Real.sqrt x)) *
        (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) -
          (sourceCorrelation explicitSecondDerivative A (Real.log x) - 1) / 2) := by
    rw [(plainProfile_hasDerivAt hp 1 hx0).deriv]
    simp only [Real.log_one, zero_add]
    rw [exp_neg_half_log_eq_inv_sqrt hx0]
    unfold earlyUnitFloorDensity
    field_simp
    ring
  have hfac : (⌊x⌋₊ : ℝ) / (x * Real.sqrt x) ≤ 1 / Real.sqrt x := by
    have hf := div_le_div_of_nonneg_right (Nat.floor_le hx0.le) (mul_pos hx0 hs0).le
    calc
      _ ≤ x / (x * Real.sqrt x) := hf
      _ = _ := by field_simp
  rw [hE, abs_mul, abs_of_nonneg (by positivity :
    (0 : ℝ) ≤ (⌊x⌋₊ : ℝ) / (x * Real.sqrt x))]
  calc
    _ ≤ ((⌊x⌋₊ : ℝ) / (x * Real.sqrt x)) * ((20 * T + 5 * T ^ 2) / A ^ 2) :=
      mul_le_mul_of_nonneg_left hB (by positivity)
    _ ≤ (1 / Real.sqrt x) * ((20 * T + 5 * T ^ 2) / A ^ 2) :=
      mul_le_mul_of_nonneg_right hfac hB0
    _ = _ := by ring

/-- Explicit actual early-profile approximation error, with its exact natural floor. -/
def actualHeadUnitErrorBudget (A : ℝ) : ℝ :=
  (40 * Real.log (vaughanCutoff A : ℝ) +
    10 * (Real.log (vaughanCutoff A : ℝ)) ^ 2) / A

/-- The entire actual early floor integral has the unit-profile error of order log²(A)/A. -/
theorem actualEarlyBaseline_sub_unit_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |complementaryEarlyBaseline A -
      (∫ x in Ioc (1 : ℝ) (vaughanCutoff A : ℝ), earlyUnitFloorDensity x)| ≤
        actualHeadUnitErrorBudget A := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  let U : ℝ := vaughanCutoff A
  let T := Real.log U
  let B := (20 * T + 5 * T ^ 2) / A ^ 2
  have hU : 1 ≤ U := (actual_cutoff_order A hA1).1
  have hT : 0 ≤ T := Real.log_nonneg hU
  have hB : 0 ≤ B := by unfold B; positivity
  have hs : IntegrableOn (fun x : ℝ => 1 / Real.sqrt x) (Ioc (1 : ℝ) U) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hU).mp
      (inv_sqrt_continuousOn.intervalIntegrable_of_Icc hU)
  have ha := (early_floor_derivative_integrable hA1).mono_set Ioc_subset_Icc_self
  have hb := earlyUnitFloorDensity_integrable hU
  have hm := norm_integral_le_of_norm_le (hs.const_mul B) (by
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
    rw [Real.norm_eq_abs]
    exact actualEarlyFloorDifference_abs_le hA (Ioc_subset_Icc_self hx))
  have hS : Real.sqrt U ≤ A := Real.sqrt_le_iff.mpr
    ⟨hp.le, Nat.floor_le (sq_nonneg A)⟩
  unfold complementaryEarlyBaseline
  rw [← integral_sub ha hb]
  calc
    _ ≤ ∫ x in Ioc (1 : ℝ) U, B * (1 / Real.sqrt x) := by
      simpa only [Real.norm_eq_abs] using hm
    _ = B * (2 * (Real.sqrt U - 1)) := by
      rw [integral_const_mul, integral_inv_sqrt_Ioc hU]
    _ ≤ B * (2 * A) := mul_le_mul_of_nonneg_left (by linarith) hB
    _ = actualHeadUnitErrorBudget A := by
      unfold B T U actualHeadUnitErrorBudget
      field_simp
      ring

/-- Exact fractional truncation, with the closed finite endpoint and open genuine tail. -/
theorem earlyFractionalDensity_split {u : ℝ} (hu : 1 ≤ u) :
    (∫ x in Ioc (1 : ℝ) u, earlyFractionalDensity x) +
      (∫ x in Ioi u, earlyFractionalDensity x) =
        ∫ x in Ioi (1 : ℝ), earlyFractionalDensity x := by
  have he := intervalIntegral.integral_interval_add_Ioi earlyFractionalDensity_integrable
    (earlyFractionalDensity_integrable.mono_set (Ioi_subset_Ioi hu))
  rw [intervalIntegral.integral_of_le hu] at he
  exact he

/-- The actual closed real floor contributes a vanishing square-root endpoint discrepancy. -/
theorem actualCutoff_sqrt_gap_bounds {A : ℝ} (hA : 2 ≤ A) :
    0 ≤ A - Real.sqrt (vaughanCutoff A : ℝ) ∧
      A - Real.sqrt (vaughanCutoff A : ℝ) ≤ 1 / A ∧
        1 / Real.sqrt (vaughanCutoff A : ℝ) ≤ 2 / A := by
  have hp : 0 < A := by linarith
  let U : ℝ := vaughanCutoff A
  have hU : 1 ≤ U := (actual_cutoff_order A (by linarith : 1 ≤ A)).1
  have hs0 : 0 < Real.sqrt U := Real.sqrt_pos.2 (by linarith)
  have hs : Real.sqrt U ≤ A := Real.sqrt_le_iff.mpr
    ⟨hp.le, Nat.floor_le (sq_nonneg A)⟩
  have hss : (Real.sqrt U) ^ 2 = U := Real.sq_sqrt (by linarith)
  have hfloor : A ^ 2 - 1 ≤ U := (Nat.sub_one_lt_floor (A ^ 2)).le
  have hhalf : A / 2 ≤ Real.sqrt U := by
    apply Real.le_sqrt_of_sq_le
    nlinarith
  have hgap : 0 ≤ A - Real.sqrt U := sub_nonneg.mpr hs
  refine ⟨hgap, ?_, ?_⟩
  · apply (le_div_iff₀ hp).2
    nlinarith [mul_nonneg (Real.sqrt_nonneg U) hgap]
  · apply (div_le_div_iff₀ hs0 hp).2
    nlinarith

/-- The exact unit floor integral and the literal fractional constant differ only in their tails. -/
theorem unitEarly_add_scale_sub_fractional_eq {A : ℝ} (hA : 1 ≤ A) :
    (∫ x in Ioc (1 : ℝ) (vaughanCutoff A : ℝ), earlyUnitFloorDensity x) +
      A - earlyFractionalConstant = A - Real.sqrt (vaughanCutoff A : ℝ) -
        (1 / 2 : ℝ) * ∫ x in Ioi (vaughanCutoff A : ℝ), earlyFractionalDensity x := by
  have hU := (actual_cutoff_order A hA).1
  have hs := earlyFractionalDensity_split hU
  rw [earlyUnitFloorDensity_integral hU]
  unfold earlyFractionalConstant
  linarith only [hs]

/-- Both genuine nonnegative endpoint defects give the actual inverse-scale baseline error. -/
theorem unitEarly_add_scale_sub_fractional_abs_le {A : ℝ} (hA : 2 ≤ A) :
    |(∫ x in Ioc (1 : ℝ) (vaughanCutoff A : ℝ), earlyUnitFloorDensity x) +
      A - earlyFractionalConstant| ≤ 2 / A := by
  have hp : 0 < A := by linarith
  have hs := actualCutoff_sqrt_gap_bounds hA
  have ht := earlyFractionalDensity_tail_bounds (actual_cutoff_order A (by linarith : 1 ≤ A)).1
  have hg : A - Real.sqrt (vaughanCutoff A : ℝ) ≤ 2 / A :=
    hs.2.1.trans (div_le_div_of_nonneg_right (by norm_num : (1 : ℝ) ≤ 2) hp.le)
  have htU : (1 / 2 : ℝ) *
      (∫ x in Ioi (vaughanCutoff A : ℝ), earlyFractionalDensity x) ≤ 2 / A := by
    have hh : (1 / 2 : ℝ) *
        (∫ x in Ioi (vaughanCutoff A : ℝ), earlyFractionalDensity x) ≤
        1 / Real.sqrt (vaughanCutoff A : ℝ) := by
      calc
        _ ≤ (1 / 2 : ℝ) * (2 / Real.sqrt (vaughanCutoff A : ℝ)) :=
          mul_le_mul_of_nonneg_left ht.2 (by norm_num)
        _ = _ := by ring
    exact hh.trans hs.2.2
  rw [unitEarly_add_scale_sub_fractional_eq (by linarith : 1 ≤ A)]
  apply abs_le.mpr
  constructor <;> linarith [hs.1, ht.1]

/-- The actual source head plus A has its independently specified fractional constant
with the full true-floor error retained. -/
theorem actualEarly_add_scale_sub_fractional_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |complementaryEarlyBaseline A + A - earlyFractionalConstant| ≤
      actualHeadUnitErrorBudget A + 2 / A := by
  have he := actualEarlyBaseline_sub_unit_abs_le hA
  have hu := unitEarly_add_scale_sub_fractional_abs_le (by linarith : 2 ≤ A)
  have ht := abs_add_le
    (complementaryEarlyBaseline A -
      ∫ x in Ioc (1 : ℝ) (vaughanCutoff A : ℝ), earlyUnitFloorDensity x)
    ((∫ x in Ioc (1 : ℝ) (vaughanCutoff A : ℝ), earlyUnitFloorDensity x) +
      A - earlyFractionalConstant)
  have hE : complementaryEarlyBaseline A + A - earlyFractionalConstant =
      (complementaryEarlyBaseline A -
        ∫ x in Ioc (1 : ℝ) (vaughanCutoff A : ℝ), earlyUnitFloorDensity x) +
      ((∫ x in Ioc (1 : ℝ) (vaughanCutoff A : ℝ), earlyUnitFloorDensity x) +
        A - earlyFractionalConstant) := by ring
  rw [← hE] at ht
  exact ht.trans (add_le_add he hu)

/-- Independent smooth majorant for the actual head error on the original real scale domain. -/
def actualHeadFractionalEnvelope (A : ℝ) : ℝ :=
  80 * (Real.log A / A) + 40 * ((Real.log A) ^ 2 / A) + 2 * (1 / A)

/-- Actual floor logarithms give the quantitative O(log²(A)/A) head error. -/
theorem actualEarly_add_scale_sub_fractional_abs_le_envelope {A : ℝ} (hA : 91 ≤ A) :
    |complementaryEarlyBaseline A + A - earlyFractionalConstant| ≤
      actualHeadFractionalEnvelope A := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have ht0 : 0 ≤ Real.log (vaughanCutoff A : ℝ) :=
    Real.log_nonneg (actual_cutoff_order A hA1).1
  have hl0 : 0 ≤ Real.log A := Real.log_nonneg hA1
  have ht : Real.log (vaughanCutoff A : ℝ) ≤ 2 * Real.log A := by
    have hf := Real.log_le_log (by linarith [(actual_cutoff_order A hA1).1] :
      0 < (vaughanCutoff A : ℝ)) (Nat.floor_le (sq_nonneg A))
    simpa only [Real.log_pow, Nat.cast_ofNat] using hf
  have ht2 : (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ 4 * (Real.log A) ^ 2 := by nlinarith
  apply (actualEarly_add_scale_sub_fractional_abs_le hA).trans
  unfold actualHeadUnitErrorBudget actualHeadFractionalEnvelope
  calc
    _ ≤ (80 * Real.log A + 40 * (Real.log A) ^ 2) / A + 2 / A := by
      apply add_le_add _ le_rfl
      apply div_le_div_of_nonneg_right _ hp.le
      nlinarith
    _ = _ := by ring

/-- The genuine head-error envelope vanishes along all real scales. -/
theorem actualHeadFractionalEnvelope_tendsto_zero :
    Tendsto actualHeadFractionalEnvelope atTop (𝓝 (0 : ℝ)) := by
  unfold actualHeadFractionalEnvelope
  have h1 : Tendsto (fun A : ℝ => Real.log A / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero, pow_one] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 (by norm_num)
  have h2 : Tendsto (fun A : ℝ => (Real.log A) ^ 2 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 2 (by norm_num)
  have h0 : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_div] using tendsto_inv_atTop_zero
  have hh := ((h1.const_mul 80).add (h2.const_mul 40)).add (h0.const_mul 2)
  simpa only [mul_zero, add_zero] using hh

/-- The actual head plus A converges to the literal fractional constant, with no zeta premise. -/
theorem actualEarly_add_scale_tendsto_fractional :
    Tendsto (fun A : ℝ => complementaryEarlyBaseline A + A)
      atTop (𝓝 earlyFractionalConstant) := by
  have hd : Tendsto (fun A : ℝ => complementaryEarlyBaseline A + A - earlyFractionalConstant)
      atTop (𝓝 (0 : ℝ)) := by
    apply tendsto_zero_iff_norm_tendsto_zero.2
    simp only [Real.norm_eq_abs]
    apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _
      actualHeadFractionalEnvelope_tendsto_zero
    filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
    exact actualEarly_add_scale_sub_fractional_abs_le_envelope hA
  have hh := hd.add_const earlyFractionalConstant
  simpa only [sub_add_cancel, zero_add] using hh

end
end FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit
```
