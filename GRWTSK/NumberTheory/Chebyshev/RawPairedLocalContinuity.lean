/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.

Source proof candidates; native compilation/kernel/axiom checks are pending.
The cutoff is fixed throughout each limit. No growing-cutoff decay or tail
exchange follows from these local continuity statements. -/
import GRWTSK.NumberTheory.Chebyshev.RawPairedAffineCancellation

set_option autoImplicit false
noncomputable section

open Filter MeasureTheory Set
open scoped Topology Interval

namespace GRWTSK.NumberTheory.Chebyshev.RawPairedLocalContinuity

open FirstRieszWeakRawLimit RawSymmetricAverages RawPairedOscillation
open RawPairedAffineCancellation

/-- The actual paired norm in the existing oscillation integral. -/
def rawPairNorm (x T t : ℝ) : ℝ :=
  ‖pairedDifference (fun u => rawClassicalHead u T) x t‖

theorem rawPairNorm_nonneg (x T t : ℝ) : 0 ≤ rawPairNorm x T t := norm_nonneg _

@[simp] theorem rawPairNorm_center (x T : ℝ) : rawPairNorm x T x = 0 := by
  unfold rawPairNorm pairedDifference
  rw [show 2 * x - x = x by ring]
  simp [two_mul]

theorem continuousAt_rawPairNorm (x T : ℝ) (hx : 1 < x) :
    ContinuousAt (rawPairNorm x T) x := by
  unfold rawPairNorm pairedDifference
  have hc := continuousAt_rawClassicalHead x T hx
  have hr := (continuousAt_rawClassicalHead (2 * x - x) T (by linarith)).comp
    (show ContinuousAt (fun t : ℝ => 2 * x - t) x by fun_prop)
  exact ((hc.add hr).sub continuousAt_const).norm

theorem rawPairNorm_intervalIntegrable (x h T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) :
    IntervalIntegrable (rawPairNorm x T) volume (x - h) (x + h) := by
  apply ContinuousOn.intervalIntegrable
  intro t ht
  rw [uIcc_of_le (by linarith)] at ht
  unfold rawPairNorm pairedDifference
  have hc := continuousAt_rawClassicalHead t T (by linarith [ht.1])
  have hr := (continuousAt_rawClassicalHead (2 * x - t) T (by linarith [ht.2])).comp
    (show ContinuousAt (fun u : ℝ => 2 * x - u) t by fun_prop)
  exact (((hc.add hr).sub continuousAt_const).norm).continuousWithinAt

theorem pairedOscillation_nonneg (x h T : ℝ) (hh : 0 < h) :
    0 ≤ pairedOscillation x h T := by
  unfold pairedOscillation
  apply div_nonneg
  · apply intervalIntegral.integral_nonneg_of_forall (by linarith)
    intro t
    exact norm_nonneg _
  · positivity

/-- A local pointwise paired bound pays the exact existing normalization 4h. -/
theorem pairedOscillation_le_of_pair_bound (x h T ε : ℝ)
    (hh : 0 < h) (ha : 1 < x - h)
    (hbound : ∀ t ∈ Icc (x - h) (x + h), rawPairNorm x T t ≤ ε) :
    pairedOscillation x h T ≤ ε / 2 := by
  have hi := rawPairNorm_intervalIntegrable x h T hh ha
  have hle := intervalIntegral.integral_mono_on (by linarith : x - h ≤ x + h)
    hi (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => ε) volume (x - h) (x + h))
    hbound
  have hc : (∫ _t in (x - h)..(x + h), ε) = (2 * h) * ε := by
    rw [intervalIntegral.integral_const]
    simp only [smul_eq_mul]
    ring
  rw [hc] at hle
  change (∫ t in (x - h)..(x + h), rawPairNorm x T t) / (4 * h) ≤ ε / 2
  calc
    _ ≤ ((2 * h) * ε) / (4 * h) := div_le_div_of_nonneg_right hle (by positivity)
    _ = ε / 2 := by field_simp [hh.ne'] <;> ring

/-- For each fixed cutoff, the entire positive-radius family has paired decay.
This is not a uniform estimate in the cutoff and cannot discharge the joint
height/radius limit required for unaveraged reconstruction. -/
theorem pairedOscillation_tendsto_zero_fixed_height (x T : ℝ) (hx : 1 < x) :
    Tendsto (fun h : ℝ => pairedOscillation x h T) (𝓝[>] 0) (𝓝 0) := by
  rw [Metric.tendsto_nhds]
  intro ε hε
  obtain ⟨δ, hδ, hclose⟩ := Metric.continuousAt_iff.mp (continuousAt_rawPairNorm x T hx) ε hε
  have hsmall : ∀ᶠ h : ℝ in 𝓝[>] 0, h < δ ∧ h < x - 1 :=
    ((gt_mem_nhds hδ).and (gt_mem_nhds (sub_pos.mpr hx))).filter_mono nhdsWithin_le_nhds
  filter_upwards [self_mem_nhdsWithin, hsmall] with h hh hs
  change 0 < h at hh
  have hbound (t : ℝ) (ht : t ∈ Icc (x - h) (x + h)) : rawPairNorm x T t ≤ ε := by
    have hdist : dist t x ≤ h := by
      rw [Real.dist_eq]
      exact abs_le.mpr ⟨by linarith [ht.1], by linarith [ht.2]⟩
    have hc := hclose (hdist.trans_lt hs.1)
    rw [rawPairNorm_center, Real.dist_eq, sub_zero,
      abs_of_nonneg (rawPairNorm_nonneg x T t)] at hc
    exact hc.le
  rw [Real.dist_eq, sub_zero, abs_of_nonneg (pairedOscillation_nonneg x h T hh)]
  exact (pairedOscillation_le_of_pair_bound x h T ε hh (by linarith [hs.2]) hbound).trans_lt
    (half_lt_self hε)

/-- Demonstrated local application: the existing normalized raw averages tend
to their finite-height head. The arithmetic target psiHalf is not substituted. -/
theorem rawAverage_tendsto_fixed_height (x T : ℝ) (hx : 1 < x) :
    Tendsto (fun h : ℝ => rawAverage x h T) (𝓝[>] 0) (𝓝 (rawClassicalHead x T)) := by
  rw [Metric.tendsto_nhds]
  intro ε hε
  have hosc := (pairedOscillation_tendsto_zero_fixed_height x T hx).eventually (gt_mem_nhds hε)
  have hsmall : ∀ᶠ h : ℝ in 𝓝[>] 0, h < x - 1 :=
    (gt_mem_nhds (sub_pos.mpr hx)).filter_mono nhdsWithin_le_nhds
  filter_upwards [self_mem_nhdsWithin, hsmall, hosc] with h hh hs ho
  change 0 < h at hh
  rw [dist_eq_norm]
  exact (norm_average_sub_point_le_paired x h T hh (by linarith)).trans_lt ho

end GRWTSK.NumberTheory.Chebyshev.RawPairedLocalContinuity
