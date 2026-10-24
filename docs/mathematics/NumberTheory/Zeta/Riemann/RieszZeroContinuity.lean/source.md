# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.RieszZeroContinuity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5defd1bb14197c5b36174470f7f6d9ecca74db7a` · SHA-256 `b1640a2e925a79dffc8deaf3a280eb878551574556c8d4714af3f071087206cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail
import Mathlib.Topology.UniformSpace.UniformApproximation

/-! # Compact-uniform convergence and continuity of the actual Riesz zero series -/
set_option autoImplicit false
noncomputable section
open Filter Set
open scoped Topology
namespace GRWTSK.NumberTheory.Zeta.Riemann.RieszZeroContinuity
open FirstRieszZeroTail
open GRWTSK.RiemannHypothesis.CanonicalHighCounting
open GRWTSK.Analysis.Series.HeightCountingTail

theorem firstRieszTailBudget_mono (x b T : ℝ) (hx : 1 < x) (hxb : x ≤ b) (hT : 2 ≤ T) :
    firstRieszTailBudget x T ≤ firstRieszTailBudget b T := by
  have hl := Real.log_le_log (by linarith : 0 < x) hxb
  have he := Real.exp_le_exp.mpr (show 2 * Real.log x ≤ 2 * Real.log b by linarith)
  have ht : 0 ≤ inverseSquareBudget T := by
    unfold inverseSquareBudget
    have : 0 ≤ Real.log T := Real.log_nonneg (by linarith)
    positivity
  exact mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_right he countingCoefficient_pos.le) ht

theorem finiteRieszZeroHead_tendstoUniformlyOn (a b : ℝ) (ha : 1 < a) :
    TendstoUniformlyOn (fun T x : ℝ => finiteRieszZeroHead x T)
      fullRieszZeroValue atTop (Icc a b) := by
  rw [Metric.tendstoUniformlyOn_iff]
  intro ε hε
  have he := (firstRieszTailBudget_tendsto_zero b).eventually (gt_mem_nhds hε)
  filter_upwards [he, eventually_ge_atTop (2 : ℝ)] with T heT hT x hx
  rw [dist_eq_norm]
  exact ((norm_fullRieszZeroValue_sub_head x T (ha.trans_le hx.1) hT).trans
    (firstRieszTailBudget_mono x b T (ha.trans_le hx.1) hx.2 hT)).trans_lt heT

theorem fullRieszZeroValue_continuousOn (a b : ℝ) (ha : 1 < a) :
    ContinuousOn fullRieszZeroValue (Icc a b) := by
  apply (finiteRieszZeroHead_tendstoUniformlyOn a b ha).continuousOn
  apply Frequently.of_forall
  intro T x hx
  exact (hasDerivAt_finiteRieszZeroHead x T (by linarith [hx.1])).continuousAt.continuousWithinAt
end GRWTSK.NumberTheory.Zeta.Riemann.RieszZeroContinuity
```
