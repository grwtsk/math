/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.

Source proof candidates; native compilation/kernel/axiom checks are pending.
The correction budget is uniform in the genuine cutoff. Its decay identifies
the remaining zero-head oscillation obligation; it does not discharge it. -/
import GRWTSK.NumberTheory.Chebyshev.RawPairedLocalContinuity

set_option autoImplicit false
noncomputable section

open Filter MeasureTheory Set
open scoped Topology Interval

namespace GRWTSK.NumberTheory.Chebyshev.RawPairedCorrectionReduction

open FirstRieszWeakRawLimit RawPairedOscillation RawPairedAffineCancellation
open RawPairedLocalContinuity RieszDiagonalUnsmoothing
open GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

/-- The actual finite zero head, with both height signs and analytic multiplicities. -/
def zeroPairNorm (x T t : ℝ) : ℝ :=
  ‖pairedDifference (fun u => finiteHeightZeroHead u T) x t‖

/-- The same interval and 4h normalization as the raw paired oscillation. -/
def zeroPairedOscillation (x h T : ℝ) : ℝ :=
  (∫ t in (x - h)..(x + h), zeroPairNorm x T t) / (4 * h)

/-- At this auxiliary cutoff the zero head is empty. The genuine cutoff T
is unrestricted in every comparison below. -/
def correctionBudget (x h : ℝ) : ℝ := pairedOscillation x h (-1)

theorem finiteHeightZeroHead_neg_one (x : ℝ) : finiteHeightZeroHead x (-1) = 0 := by
  simp [finiteHeightZeroHead, heightHead_eq_empty_of_neg (by norm_num : (-1 : ℝ) < 0)]

theorem raw_pair_neg_one (x t : ℝ) :
    pairedDifference (fun u => rawClassicalHead u (-1)) x t =
      pairedDifference (fun u =>
        (GRWTSK.Analysis.RealAnalysis.ClassicalRieszCorrection.slope u : ℂ)) x t := by
  rw [raw_pair_eq_zero_head_and_correction]
  simp only [finiteHeightZeroHead_neg_one, zero_add]

theorem raw_pair_decomposition (x t T : ℝ) :
    pairedDifference (fun u => rawClassicalHead u T) x t =
      pairedDifference (fun u => finiteHeightZeroHead u T) x t +
        pairedDifference (fun u => rawClassicalHead u (-1)) x t := by
  rw [raw_pair_eq_zero_head_and_correction, raw_pair_neg_one]
  unfold pairedDifference
  ring

theorem rawPairNorm_le_zero_add_correction (x T t : ℝ) :
    rawPairNorm x T t ≤ zeroPairNorm x T t + rawPairNorm x (-1) t := by
  unfold rawPairNorm zeroPairNorm
  rw [raw_pair_decomposition]
  exact norm_add_le _ _

theorem zeroPairNorm_le_raw_add_correction (x T t : ℝ) :
    zeroPairNorm x T t ≤ rawPairNorm x T t + rawPairNorm x (-1) t := by
  have heq : pairedDifference (fun u => finiteHeightZeroHead u T) x t =
      pairedDifference (fun u => rawClassicalHead u T) x t -
        pairedDifference (fun u => rawClassicalHead u (-1)) x t := by
    rw [raw_pair_decomposition]
    abel
  unfold zeroPairNorm rawPairNorm
  rw [heq]
  exact norm_sub_le _ _

theorem continuousAt_finiteHeightZeroHead (x T : ℝ) (hx : 1 < x) :
    ContinuousAt (fun u => finiteHeightZeroHead u T) x := by
  have hl : ContinuousAt Real.log x := Real.continuousAt_log (by linarith)
  unfold finiteHeightZeroHead pointwiseZeroTerm
  fun_prop

theorem zeroPairNorm_intervalIntegrable (x h T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) :
    IntervalIntegrable (zeroPairNorm x T) volume (x - h) (x + h) := by
  apply ContinuousOn.intervalIntegrable
  intro t ht
  rw [uIcc_of_le (by linarith)] at ht
  unfold zeroPairNorm pairedDifference
  have hc := continuousAt_finiteHeightZeroHead t T (by linarith [ht.1])
  have hr := (continuousAt_finiteHeightZeroHead (2 * x - t) T (by linarith [ht.2])).comp
    (show ContinuousAt (fun u : ℝ => 2 * x - u) t by fun_prop)
  exact (((hc.add hr).sub continuousAt_const).norm).continuousWithinAt

theorem pairedOscillation_le_zero_add_budget (x h T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) :
    pairedOscillation x h T ≤ zeroPairedOscillation x h T + correctionBudget x h := by
  have hr := rawPairNorm_intervalIntegrable x h T hh ha
  have hz := zeroPairNorm_intervalIntegrable x h T hh ha
  have hc := rawPairNorm_intervalIntegrable x h (-1) hh ha
  have hi := intervalIntegral.integral_mono_on (by linarith : x - h ≤ x + h)
    hr (hz.add hc) (fun t _ht => rawPairNorm_le_zero_add_correction x T t)
  rw [intervalIntegral.integral_add hz hc] at hi
  change (∫ t in (x - h)..(x + h), rawPairNorm x T t) / (4 * h) ≤
    (∫ t in (x - h)..(x + h), zeroPairNorm x T t) / (4 * h) +
      (∫ t in (x - h)..(x + h), rawPairNorm x (-1) t) / (4 * h)
  rw [← add_div]
  exact div_le_div_of_nonneg_right hi (by positivity)

theorem zeroPairedOscillation_le_raw_add_budget (x h T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) :
    zeroPairedOscillation x h T ≤ pairedOscillation x h T + correctionBudget x h := by
  have hr := rawPairNorm_intervalIntegrable x h T hh ha
  have hz := zeroPairNorm_intervalIntegrable x h T hh ha
  have hc := rawPairNorm_intervalIntegrable x h (-1) hh ha
  have hi := intervalIntegral.integral_mono_on (by linarith : x - h ≤ x + h)
    hz (hr.add hc) (fun t _ht => zeroPairNorm_le_raw_add_correction x T t)
  rw [intervalIntegral.integral_add hr hc] at hi
  change (∫ t in (x - h)..(x + h), zeroPairNorm x T t) / (4 * h) ≤
    (∫ t in (x - h)..(x + h), rawPairNorm x T t) / (4 * h) +
      (∫ t in (x - h)..(x + h), rawPairNorm x (-1) t) / (4 * h)
  rw [← add_div]
  exact div_le_div_of_nonneg_right hi (by positivity)

/-- A cutoff-independent bound on the difference, not on either oscillation. -/
theorem abs_oscillation_sub_zero_le_budget (x h T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) :
    |pairedOscillation x h T - zeroPairedOscillation x h T| ≤ correctionBudget x h := by
  have hr := pairedOscillation_le_zero_add_budget x h T hh ha
  have hz := zeroPairedOscillation_le_raw_add_budget x h T hh ha
  exact abs_le.mpr ⟨by linarith, by linarith⟩

theorem correctionBudget_tendsto_zero (x : ℝ) (hx : 1 < x) :
    Tendsto (correctionBudget x) (𝓝[>] 0) (𝓝 0) :=
  pairedOscillation_tendsto_zero_fixed_height x (-1) hx

/-- Every height family is retained, with no boundedness or rate hypothesis. -/
theorem oscillation_difference_tendsto_zero {α : Type*} (F : Filter α)
    (x : ℝ) (hx : 1 < x) (r T : α → ℝ) (hr : Tendsto r F (𝓝[>] 0)) :
    Tendsto (fun a => pairedOscillation x (r a) (T a) -
      zeroPairedOscillation x (r a) (T a)) F (𝓝 0) := by
  rw [Metric.tendsto_nhds]
  intro ε hε
  have hb := ((correctionBudget_tendsto_zero x hx).comp hr).eventually (gt_mem_nhds hε)
  have hsmall : ∀ᶠ h : ℝ in 𝓝[>] 0, h < x - 1 :=
    (gt_mem_nhds (sub_pos.mpr hx)).filter_mono nhdsWithin_le_nhds
  filter_upwards [hr.eventually self_mem_nhdsWithin, hr.eventually hsmall, hb] with a ha hs hb
  change 0 < r a at ha
  rw [Real.dist_eq, sub_zero]
  exact (abs_oscillation_sub_zero_le_budget x (r a) (T a) ha (by linarith)).trans_lt hb

/-- The genuine growing-height zero-head decay remains an equivalent obligation. -/
theorem paired_decay_iff_zero_decay {α : Type*} (F : Filter α)
    (x : ℝ) (hx : 1 < x) (r T : α → ℝ) (hr : Tendsto r F (𝓝[>] 0)) :
    Tendsto (fun a => pairedOscillation x (r a) (T a)) F (𝓝 0) ↔
      Tendsto (fun a => zeroPairedOscillation x (r a) (T a)) F (𝓝 0) := by
  have hd := oscillation_difference_tendsto_zero F x hx r T hr
  constructor
  · intro hraw
    have h := hraw.sub hd
    simpa only [sub_self, sub_sub_cancel] using h
  · intro hzero
    have h := hd.add hzero
    simpa only [zero_add, sub_add_cancel] using h

/-- Application to the existing full positive-radius sequence and any cutoffs. -/
theorem radius_paired_decay_iff_zero_decay (x : ℝ) (hx : 1 < x) (T : ℕ → ℝ) :
    Tendsto (fun n => pairedOscillation x (radius n) (T n)) atTop (𝓝 0) ↔
      Tendsto (fun n => zeroPairedOscillation x (radius n) (T n)) atTop (𝓝 0) := by
  apply paired_decay_iff_zero_decay atTop x hx radius T
  exact tendsto_nhdsWithin_iff.mpr
    ⟨radius_tendsto_zero, Eventually.of_forall (fun n => radius_pos n)⟩

end GRWTSK.NumberTheory.Chebyshev.RawPairedCorrectionReduction
