/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.MeasureAndIntegration.PowerCellMajorant
import Mathlib.Analysis.Normed.Group.InfiniteSum
import Mathlib.Tactic

/-!
# Complete logarithmic power tails from exact integral cells

For q>0 and alpha>0, the decreasing density x^(-alpha-1) at the RIGHT
endpoint is bounded by its integral on [q,q+1]. The inherited cell integral
then telescopes. Consequently the entire tail beyond q, not merely its first
term, is bounded by q^(-alpha)/alpha.

The elementary inequality alpha*log(x)<=exp(alpha*log(x)) absorbs one
logarithm. A sequence bounded by log(n)*n^(-1-2alpha) therefore has complete
omitted-tail norm at most q^(-alpha)/alpha^2. This coarse estimate is chosen
for a simple explicit real-part margin; it is not advertised as the optimal
logarithmic integral-test bound.

Consumer: the actual twisted von Mangoldt Dirichlet series. The omitted
integer q+1 is paired with the cell [q,q+1], preserving the cutoff convention.
Nothing is asserted at alpha=0, where the displayed budget is totalized but
the proved summability mechanism fails. Source proof candidates only.
AI assistance; compilation, fresh kernel and transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set Filter MeasureTheory
open scoped Topology Interval BigOperators

namespace GRWTSK.Analysis.RealAnalysis.LogarithmicPowerTail

open PowerCellMajorant

/-- A decreasing endpoint density is paid by the preceding full unit cell. -/
theorem endpoint_le_cell (q α : ℝ) (hq : 0 < q) (hα : 0 < α) :
    decayPower (α + 1) (q + 1) ≤ powerCell q α := by
  have hc : ContinuousOn (fun u : ℝ => decayPower (α + 1) (q + u)) (Icc 0 1) := by
    intro u hu
    have hn : q + u ≠ 0 := ne_of_gt (by linarith [hu.1])
    exact (by unfold decayPower; fun_prop (disch := assumption) :
      ContinuousAt (fun v : ℝ => decayPower (α + 1) (q + v)) u).continuousWithinAt
  calc
    decayPower (α + 1) (q + 1) =
        ∫ _u in (0 : ℝ)..1, decayPower (α + 1) (q + 1) := by simp
    _ ≤ ∫ u in (0 : ℝ)..1, decayPower (α + 1) (q + u) := by
      apply intervalIntegral.integral_mono_on (by norm_num) intervalIntegrable_const
        (hc.intervalIntegrable_of_Icc (by norm_num))
      intro u hu
      exact decayPower_antitone (α + 1) (by linarith)
        (by linarith [hu.1]) (by linarith [hu.2])
    _ = powerCell q α := integral_powerCell q α hq hα

/-- Normal summability follows from the exact cell majorant. -/
theorem summable_endpoint (q α : ℝ) (hq : 0 < q) (hα : 0 < α) :
    Summable (fun k : ℕ => decayPower (α + 1) (q + (k : ℝ) + 1)) :=
  (summable_powerCell q α hq hα).of_nonneg_of_le
    (fun _ => (decayPower_pos _ _).le)
    (fun k => endpoint_le_cell (q + (k : ℝ)) α (by positivity) hα)

theorem complete_endpoint_tail (q α : ℝ) (hq : 0 < q) (hα : 0 < α) :
    (∑' k : ℕ, decayPower (α + 1) (q + (k : ℝ) + 1)) ≤ decayPower α q / α := by
  refine (hasSum_le (fun k : ℕ => endpoint_le_cell (q + (k : ℝ)) α (by positivity) hα)
    (summable_endpoint q α hq hα).hasSum
    (summable_powerCell q α hq hα).hasSum).trans (tsum_powerCell_le q α hq hα)

/-- Absorb the logarithm while retaining the positive real-part margin. -/
theorem log_mul_decay_le (x α : ℝ) (hx : 1 ≤ x) (hα : 0 < α) :
    Real.log x * decayPower (1 + 2 * α) x ≤ decayPower (α + 1) x / α := by
  have hlog : Real.log x ≤ Real.exp (α * Real.log x) / α := by
    apply (le_div_iff₀ hα).mpr
    nlinarith [Real.add_one_le_exp (α * Real.log x)]
  calc
    _ ≤ (Real.exp (α * Real.log x) / α) * decayPower (1 + 2 * α) x :=
      mul_le_mul_of_nonneg_right hlog (decayPower_pos _ _).le
    _ = decayPower (α + 1) x / α := by
      unfold decayPower
      rw [div_mul_eq_mul_div, ← Real.exp_add]
      congr 2
      ring

/-- A source-specific coefficient inequality gives absolute summability of
EVERY omitted term. It does not identify the source by itself. -/
theorem summable_norm_of_endpoint_bound (b : ℕ → ℂ) (q α : ℝ)
    (hq : 0 < q) (hα : 0 < α)
    (bound : ∀ k, ‖b k‖ ≤ decayPower (α + 1) (q + (k : ℝ) + 1) / α) :
    Summable (fun k => ‖b k‖) :=
  ((summable_endpoint q α hq hα).div_const α).of_nonneg_of_le
    (fun k => norm_nonneg (b k)) bound

/-- Complete omitted-tail budget after logarithmic absorption. -/
theorem norm_tsum_le (b : ℕ → ℂ) (q α : ℝ) (hq : 0 < q) (hα : 0 < α)
    (bound : ∀ k, ‖b k‖ ≤ decayPower (α + 1) (q + (k : ℝ) + 1) / α) :
    ‖∑' k, b k‖ ≤ decayPower α q / α ^ 2 := by
  have hb := summable_norm_of_endpoint_bound b q α hq hα bound
  calc
    _ ≤ ∑' k, ‖b k‖ := norm_tsum_le_tsum_norm hb
    _ ≤ ∑' k : ℕ, decayPower (α + 1) (q + (k : ℝ) + 1) / α :=
      hasSum_le bound hb.hasSum ((summable_endpoint q α hq hα).div_const α).hasSum
    _ = (∑' k : ℕ, decayPower (α + 1) (q + (k : ℝ) + 1)) / α := by rw [tsum_div_const]
    _ ≤ (decayPower α q / α) / α :=
      div_le_div_of_nonneg_right (complete_endpoint_tail q α hq hα) hα.le
    _ = _ := by rw [div_div, pow_two]

end GRWTSK.Analysis.RealAnalysis.LogarithmicPowerTail
