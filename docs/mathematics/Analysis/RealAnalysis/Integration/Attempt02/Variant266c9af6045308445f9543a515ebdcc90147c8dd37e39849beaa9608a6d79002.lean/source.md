# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Attempt02.Variant266c9af6045308445f9543a515ebdcc90147c8dd37e39849beaa9608a6d79002

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ab8d7c28baac45b2ae8994abfa84bcf7b055032` · SHA-256 `266c9af6045308445f9543a515ebdcc90147c8dd37e39849beaa9608a6d79002`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualXiPntAtOne

/-!
Genuine actual inverse-square Xi L1 controls the original normalized F7 upper
trace by dominated convergence. The primitive remains the original anchored
integral, and every real upper cutoff and the lower closed-seven anchor are
retained. This proves no undamped absolute-average or critical covariance
witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualF7NormalizedPnt
open MeasureTheory Set Filter
open scoped Interval Topology
open SourceActualXiPntAtOne RootActualXiTailPrimitive RH16ActualPsiNegativeBlock
noncomputable section

/-- The actual causal normalized source density with its closed real upper cutoff. -/
def actualF7NormalizedKernel (T r : ℝ) : ℝ :=
  (Iic T).indicator (fun r =>
    actualXiInverseSquareTimeDensity r * Real.exp ((r - T) / 2)) r

/-- The actual PNT L1 source gives measurable normalized kernels at every real cutoff. -/
theorem actualF7NormalizedKernel_aestronglyMeasurable (T : ℝ) :
    AEStronglyMeasurable (actualF7NormalizedKernel T)
      (volume.restrict (Ioi (Real.log 7))) := by
  exact ((actualXiInverseSquareTimeDensity_integrableOn.aestronglyMeasurable.mul
    (by fun_prop : Continuous (fun r : ℝ => Real.exp ((r - T) / 2))).aestronglyMeasurable)
      .indicator measurableSet_Iic)

/-- Genuine causal damping is at most one; no prime-source sign is assumed. -/
theorem actualF7NormalizedKernel_norm_le (T r : ℝ) :
    ‖actualF7NormalizedKernel T r‖ ≤ |actualXiInverseSquareTimeDensity r| := by
  unfold actualF7NormalizedKernel
  by_cases hr : r ≤ T
  · rw [Set.indicator_of_mem hr, Real.norm_eq_abs, abs_mul, Real.abs_exp]
    exact mul_le_of_le_one_right (abs_nonneg _)
      (Real.exp_le_one_iff.mpr (by linarith))
  · rw [Set.indicator_of_notMem hr, norm_zero]
    exact abs_nonneg _

/-- Each literal normalized kernel has genuine positive-axis L1 before its limit is taken. -/
theorem actualF7NormalizedKernel_integrable (T : ℝ) :
    Integrable (actualF7NormalizedKernel T) (volume.restrict (Ioi (Real.log 7))) := by
  exact actualXiInverseSquareTimeDensity_integrableOn.norm.mono'
    (actualF7NormalizedKernel_aestronglyMeasurable T)
      (ae_of_all _ (actualF7NormalizedKernel_norm_le T))

private theorem density_normalized (T r : ℝ) :
    actualXiInverseSquareTimeDensity r * Real.exp ((r - T) / 2) =
      actualXiTailTimeDensity r * Real.exp (-T / 2) := by
  unfold actualXiInverseSquareTimeDensity actualXiTailTimeDensity
  rw [mul_assoc, ← Real.exp_add, mul_assoc, ← Real.exp_add]
  congr 2
  ring

/-- The entire actual F7 primitive is retained at every finite real upper cutoff. -/
theorem actualF7NormalizedKernel_integral_eq_primitive {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ r in Ioi (Real.log 7), actualF7NormalizedKernel T r) =
      actualAnchoredXiTailPrimitive T * Real.exp (-T / 2) := by
  unfold actualF7NormalizedKernel
  rw [integral_indicator measurableSet_Iic, Measure.restrict_restrict measurableSet_Iic]
  rw [inter_comm, Ioi_inter_Iic]
  rw [← intervalIntegral.integral_of_le hT]
  rw [intervalIntegral.integral_congr (fun r _ => density_normalized T r),
    intervalIntegral.integral_mul_const]
  rfl

private theorem kernel_tendsto_zero (r : ℝ) :
    Tendsto (fun T => actualF7NormalizedKernel T r) atTop (𝓝 0) := by
  have hb : Tendsto (fun T : ℝ => Real.exp (-T / 2)) atTop (𝓝 0) := by
    convert (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 0 (1 / 2) (by norm_num)) using 1
    funext T
    simp only [Real.rpow_zero, one_mul]
    congr 1
    ring
  have hp := hb.const_mul
    (actualXiInverseSquareTimeDensity r * Real.exp (r / 2))
  simp only [mul_zero] at hp
  apply hp.congr'
  filter_upwards [eventually_ge_atTop r] with T hT
  unfold actualF7NormalizedKernel
  rw [Set.indicator_of_mem hT]
  rw [show (r - T) / 2 = r / 2 + -T / 2 by ring, Real.exp_add]
  ring

/-- Actual PNT gives an ordinary zero limit for the full original normalized upper F7 trace. -/
theorem actualAnchoredXiTailPrimitive_normalized_tendsto_zero :
    Tendsto (fun T => actualAnchoredXiTailPrimitive T * Real.exp (-T / 2))
      atTop (𝓝 0) := by
  have hh := tendsto_integral_filter_of_dominated_convergence
    (μ := volume.restrict (Ioi (Real.log 7)))
    (F := actualF7NormalizedKernel) (f := fun _ => (0 : ℝ))
    (fun r => |actualXiInverseSquareTimeDensity r|)
    (Eventually.of_forall actualF7NormalizedKernel_aestronglyMeasurable)
    (Eventually.of_forall (fun T => ae_of_all _ (actualF7NormalizedKernel_norm_le T)))
    actualXiInverseSquareTimeDensity_integrableOn.norm
    (ae_of_all _ kernel_tendsto_zero)
  simp only [integral_zero] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (Real.log (7 : ℝ))] with T hT
  exact actualF7NormalizedKernel_integral_eq_primitive hT

end
end FormalResearch.RiemannHypothesis.SourceActualF7NormalizedPnt
```
