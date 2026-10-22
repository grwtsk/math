/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Real.PowerCellMajorant
import GRWTSK.NumberTheory.Zeta.Riemann.CubicPowerSummation
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Topology.Algebra.InfiniteSum.NatInt

set_option autoImplicit false

/-!
# The complete cubic Euler--Maclaurin cell remainder

The maintained cellRemainder is reused at exponent -s. The sum of the cell
integrals' absolute masses is finite on Re(s)>-2; this is stronger than
cancellation between signed cells. Complete tail bounds use the first OMITTED
cell q=N+1, with N cells in the included prefix. No equality with riemannZeta
is assumed or proved in this module. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CubicRemainder

open MeasureTheory Set Filter
open scoped Topology Interval BigOperators
open GRWTSK.Analysis.Real.PowerCellMajorant
open GRWTSK.Analysis.Real.CubicEulerMaclaurin
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.RiemannHypothesis.CubicPowerSummation

noncomputable section

/-- An independently specified infinite sum of the unchanged normalized cell integrals. -/
def cubicRemainder (s : ℂ) : ℂ :=
  ∑' k : ℕ, cellRemainder ((k : ℝ) + 1) (-s)

theorem cell_integrable (q : ℝ) (hq : 0 < q) (s : ℂ) :
    IntervalIntegrable (fun u : ℝ => (third u : ℂ) * logPower (q + u) (-s - 3))
      volume 0 1 := by
  have ht : Continuous (fun u : ℝ => (third u : ℂ)) := by unfold third; fun_prop
  exact (ht.continuousOn.mul (continuousOn_shifted_power q hq (-s - 3))).intervalIntegrable_of_Icc
    (by norm_num)

/-- Domination on every point of a cell and an entire closed right half-plane. -/
theorem norm_cell_density_le (q σ₀ : ℝ) (hq : 1 ≤ q) (s : ℂ) (hs : σ₀ ≤ s.re)
    (u : ℝ) (hu : u ∈ Icc (0 : ℝ) 1) :
    ‖(third u : ℂ) * logPower (q + u) (-s - 3)‖ ≤
      Real.exp (-(σ₀ + 3) * Real.log (q + u)) / 48 := by
  have hqu : 1 ≤ q + u := by linarith [hu.1]
  have hlog : 0 ≤ Real.log (q + u) := Real.log_nonneg hqu
  have he : ‖logPower (q + u) (-s - 3)‖ =
      Real.exp ((-s.re - 3) * Real.log (q + u)) := by
    simp [logPower, Complex.norm_exp, Complex.mul_re]
  have hp : ‖logPower (q + u) (-s - 3)‖ ≤
      Real.exp (-(σ₀ + 3) * Real.log (q + u)) := by
    rw [he]
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_right (by linarith) hlog
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
  have hb := mul_le_mul (abs_third_le u hu) hp (norm_nonneg _)
    (by norm_num : (0 : ℝ) ≤ 1 / 48)
  simpa only [one_div, inv_mul_eq_div] using hb

/-- Bound the integral of the norm, not merely the norm of a cancelled cell. -/
theorem integral_norm_cell_le (q σ₀ : ℝ) (hq : 1 ≤ q) (hσ : -2 < σ₀)
    (s : ℂ) (hs : σ₀ ≤ s.re) :
    (∫ u in (0 : ℝ)..1, ‖(third u : ℂ) * logPower (q + u) (-s - 3)‖) ≤
      powerCell q (σ₀ + 2) / 48 := by
  have hq0 : 0 < q := lt_of_lt_of_le zero_lt_one hq
  have hp : 0 < σ₀ + 2 := by linarith
  have hc : ContinuousOn (fun u : ℝ => Real.exp (-((σ₀ + 2) + 1) * Real.log (q + u)))
      (Icc (0 : ℝ) 1) := by
    intro u hu
    have ht : q + u ≠ 0 := ne_of_gt (by linarith [hu.1])
    exact (by fun_prop (disch := assumption) : ContinuousAt
      (fun v : ℝ => Real.exp (-((σ₀ + 2) + 1) * Real.log (q + v))) u).continuousWithinAt
  calc
    _ ≤ ∫ u in (0 : ℝ)..1, Real.exp (-((σ₀ + 2) + 1) * Real.log (q + u)) / 48 := by
      apply intervalIntegral.integral_mono_on (by norm_num) (cell_integrable q hq0 s).norm
        ((hc.intervalIntegrable_of_Icc (by norm_num)).div_const 48)
      intro u hu
      simpa only [add_assoc, show (2 : ℝ) + 1 = 3 by norm_num] using
        norm_cell_density_le q σ₀ hq s hs u hu
    _ = _ := by rw [intervalIntegral.integral_div, integral_powerCell q (σ₀ + 2) hq0 hp]

theorem norm_cell_le (q σ₀ : ℝ) (hq : 1 ≤ q) (hσ : -2 < σ₀)
    (s : ℂ) (hs : σ₀ ≤ s.re) :
    ‖cellRemainder q (-s)‖ ≤ powerCell q (σ₀ + 2) / 48 := by
  unfold cellRemainder
  exact (intervalIntegral.norm_integral_le_integral_norm (by norm_num)).trans
    (integral_norm_cell_le q σ₀ hq hσ s hs)

/-- The majorant is independent of the imaginary coordinate and of s within the half-plane. -/
theorem summable_cell_majorant (q σ₀ : ℝ) (hq : 1 ≤ q) (hσ : -2 < σ₀) :
    Summable (fun k : ℕ => powerCell (q + (k : ℝ)) (σ₀ + 2) / 48) :=
  (summable_powerCell q (σ₀ + 2) (by linarith) (by linarith)).div_const 48

/-- Absolute spatial mass is summable before any cell regrouping is used. -/
theorem summable_integral_norm_cells (q : ℝ) (hq : 1 ≤ q) (s : ℂ) (hs : -2 < s.re) :
    Summable (fun k : ℕ => ∫ u in (0 : ℝ)..1,
      ‖(third u : ℂ) * logPower (q + (k : ℝ) + u) (-s - 3)‖) :=
  (summable_cell_majorant q s.re hq hs).of_nonneg_of_le
    (fun k => intervalIntegral.integral_nonneg (by norm_num) (fun u _ => norm_nonneg _))
    (fun k => integral_norm_cell_le (q + (k : ℝ)) s.re
      (by linarith [Nat.cast_nonneg (α := ℝ) k]) hs s le_rfl)

theorem summable_norm_cells (q : ℝ) (hq : 1 ≤ q) (s : ℂ) (hs : -2 < s.re) :
    Summable (fun k : ℕ => ‖cellRemainder (q + (k : ℝ)) (-s)‖) :=
  (summable_cell_majorant q s.re hq hs).of_nonneg_of_le (fun _ => norm_nonneg _)
    (fun k => norm_cell_le (q + (k : ℝ)) s.re
      (by linarith [Nat.cast_nonneg (α := ℝ) k]) hs s le_rfl)

theorem summable_cells (q : ℝ) (hq : 1 ≤ q) (s : ℂ) (hs : -2 < s.re) :
    Summable (fun k : ℕ => cellRemainder (q + (k : ℝ)) (-s)) :=
  (summable_norm_cells q hq s hs).of_norm

/-- Sharp dominating-integral budget for the complete omitted family, not a finite sample. -/
theorem norm_tsum_cells_le (q σ₀ : ℝ) (hq : 1 ≤ q) (hσ : -2 < σ₀)
    (s : ℂ) (hs : σ₀ ≤ s.re) :
    ‖∑' k : ℕ, cellRemainder (q + (k : ℝ)) (-s)‖ ≤
      decayPower (σ₀ + 2) q / (48 * (σ₀ + 2)) := by
  have hss : -2 < s.re := hσ.trans_le hs
  calc
    _ ≤ ∑' k : ℕ, ‖cellRemainder (q + (k : ℝ)) (-s)‖ :=
      norm_tsum_le_tsum_norm (summable_norm_cells q hq s hss)
    _ ≤ ∑' k : ℕ, powerCell (q + (k : ℝ)) (σ₀ + 2) / 48 :=
      hasSum_le (fun k : ℕ => norm_cell_le (q + (k : ℝ)) σ₀
        (by linarith [Nat.cast_nonneg (α := ℝ) k]) hσ s hs)
        (summable_norm_cells q hq s hss).hasSum (summable_cell_majorant q σ₀ hq hσ).hasSum
    _ = (∑' k : ℕ, powerCell (q + (k : ℝ)) (σ₀ + 2)) / 48 := by rw [tsum_div_const]
    _ ≤ (decayPower (σ₀ + 2) q / (σ₀ + 2)) / 48 :=
      div_le_div_of_nonneg_right (tsum_powerCell_le q (σ₀ + 2) (by linarith) (by linarith))
        (by norm_num)
    _ = _ := by rw [div_div, mul_comm (σ₀ + 2) (48 : ℝ)]

theorem norm_cubicRemainder_le (s : ℂ) (hs : -2 < s.re) :
    ‖cubicRemainder s‖ ≤ 1 / (48 * (s.re + 2)) := by
  simpa only [cubicRemainder, add_comm (1 : ℝ), decayPower_one] using
    norm_tsum_cells_le 1 s.re (by norm_num) hs s le_rfl

/-- N included cells have first omitted left endpoint N+1. -/
theorem cubicRemainder_eq_prefix_add_tail (s : ℂ) (hs : -2 < s.re) (N : ℕ) :
    cubicRemainder s =
      (∑ k ∈ Finset.range N, cellRemainder ((k : ℝ) + 1) (-s)) +
      ∑' k : ℕ, cellRemainder (((N : ℝ) + 1) + (k : ℝ)) (-s) := by
  have hsum : Summable (fun k : ℕ => cellRemainder ((k : ℝ) + 1) (-s)) := by
    simpa only [add_comm (1 : ℝ)] using summable_cells 1 (by norm_num) s hs
  simpa only [cubicRemainder, Nat.cast_add, add_assoc, add_comm, add_left_comm] using
    (hsum.sum_add_tsum_nat_add N).symm

/-- A complete half-plane-uniform tail bound, with the real-part margin retained. -/
theorem norm_cubicRemainder_sub_prefix_le (σ₀ : ℝ) (hσ : -2 < σ₀)
    (s : ℂ) (hs : σ₀ ≤ s.re) (N : ℕ) :
    ‖cubicRemainder s - ∑ k ∈ Finset.range N, cellRemainder ((k : ℝ) + 1) (-s)‖ ≤
      decayPower (σ₀ + 2) ((N : ℝ) + 1) / (48 * (σ₀ + 2)) := by
  rw [cubicRemainder_eq_prefix_add_tail s (hσ.trans_le hs) N, add_sub_cancel_left]
  exact norm_tsum_cells_le ((N : ℝ) + 1) σ₀
    (by linarith [Nat.cast_nonneg (α := ℝ) N]) hσ s hs

/-- On the closed half-plane needed by the Jensen disks, the tail has a rational cutoff factor. -/
theorem norm_sub_prefix_le_inverse (s : ℂ) (hs : -1 ≤ s.re) (N : ℕ) :
    ‖cubicRemainder s - ∑ k ∈ Finset.range N, cellRemainder ((k : ℝ) + 1) (-s)‖ ≤
      1 / (48 * ((N : ℝ) + 1)) := by
  have hq : 0 < (N : ℝ) + 1 := by positivity
  have hb := norm_cubicRemainder_sub_prefix_le (-1) (by norm_num) s hs N
  have he : decayPower 1 ((N : ℝ) + 1) = 1 / ((N : ℝ) + 1) := by
    simp only [decayPower, neg_one_mul, Real.exp_neg, Real.exp_log hq, one_div]
  norm_num only [show (-1 : ℝ) + 2 = 1 by norm_num, mul_one] at hb
  rw [he] at hb
  simpa only [div_div, mul_comm (48 : ℝ)] using hb

/-- The useful disk-domain remainder bound no longer needs a caller-supplied radius. -/
theorem norm_cubicRemainder_le_one_div_48 (s : ℂ) (hs : -1 ≤ s.re) :
    ‖cubicRemainder s‖ ≤ (1 / 48 : ℝ) := by
  simpa using norm_sub_prefix_le_inverse s hs 0

/-- The earlier finite inventory converges to this actual complete cell sum. -/
theorem prefix_tendsto (s : ℂ) (hs : -2 < s.re) :
    Tendsto (fun N : ℕ => ∑ k ∈ Finset.range N, cellRemainder ((k : ℝ) + 1) (-s))
      atTop (𝓝 (cubicRemainder s)) := by
  have hsum : Summable (fun k : ℕ => cellRemainder ((k : ℝ) + 1) (-s)) := by
    simpa only [add_comm (1 : ℝ)] using summable_cells 1 (by norm_num) s hs
  exact hsum.hasSum.tendsto_sum_nat

/-- A finite prefix evaluation has its own error, separate from the complete omitted cells. -/
theorem norm_cubicRemainder_sub_approx_le (s : ℂ) (hs : -2 < s.re) (N : ℕ)
    (v : ℂ) (ε : ℝ)
    (heval : ‖(∑ k ∈ Finset.range N, cellRemainder ((k : ℝ) + 1) (-s)) - v‖ ≤ ε) :
    ‖cubicRemainder s - v‖ ≤
      decayPower (s.re + 2) ((N : ℝ) + 1) / (48 * (s.re + 2)) + ε := by
  let P : ℂ := ∑ k ∈ Finset.range N, cellRemainder ((k : ℝ) + 1) (-s)
  calc
    _ = ‖(cubicRemainder s - P) + (P - v)‖ := by congr 1; ring
    _ ≤ ‖cubicRemainder s - P‖ + ‖P - v‖ := norm_add_le _ _
    _ ≤ _ := add_le_add (norm_cubicRemainder_sub_prefix_le s.re hs s le_rfl N) heval

end
end GRWTSK.RiemannHypothesis.CubicRemainder
