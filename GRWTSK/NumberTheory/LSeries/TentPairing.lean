/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.TentMellinInversion
import Mathlib.NumberTheory.LSeries.Basic
import Mathlib.MeasureTheory.Integral.DominatedConvergence

set_option autoImplicit false

/-!
# Absolutely convergent Dirichlet series paired with the actual tent

The only series premise is absolute convergence at the fixed real point two.
Equality of term norms along that vertical line and the derived Cauchy kernel
majorant prove every integral and the summable-integral-norm interchange.
The final arithmetic specialization discharges the series premise upstream.
This is a right-line Mellin identity, not a contour shift to a zero divisor.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.LSeries.TentPairing

open MeasureTheory Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.Real.TentWeight
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentMellinInversion

noncomputable section

/-- A term of the original Dirichlet series, with its upstream zero-index convention. -/
def pairedTerm (f : ℕ → ℂ) (x h : ℝ) (m : ℕ) (t : ℝ) : ℂ :=
  _root_.LSeries.term f (rightLine t) m * tentKernel x h (rightLine t)

/-- No imaginary-height factor is lost: for a positive integer base its norm is constant. -/
theorem term_norm_on_rightLine (f : ℕ → ℂ) (m : ℕ) (t : ℝ) :
    ‖_root_.LSeries.term f (rightLine t) m‖ = ‖_root_.LSeries.term f 2 m‖ := by
  simp [_root_.LSeries.norm_term_eq, rightLine]

theorem continuous_term_rightLine (f : ℕ → ℂ) (m : ℕ) :
    Continuous (fun t : ℝ => _root_.LSeries.term f (rightLine t) m) := by
  by_cases hm : m = 0
  · subst m; simp only [_root_.LSeries.term_zero]; exact continuous_const
  have hmC : (m : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr hm
  simp_rw [_root_.LSeries.term_of_ne_zero hm, Complex.cpow_def_of_ne_zero hmC]
  have hr : Continuous rightLine := by unfold rightLine; fun_prop
  exact continuous_const.div ((continuous_const.mul hr).cexp) (fun _ => Complex.exp_ne_zero _)

/-- Product domination uses a summable coefficient norm and an integrable height factor. -/
theorem norm_pairedTerm_le (f : ℕ → ℂ) (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (m : ℕ) (t : ℝ) :
    ‖pairedTerm f x h m t‖ ≤
      (‖_root_.LSeries.term f 2 m‖ * rightLineConstant x h) * (1 + t ^ 2)⁻¹ := by
  rw [pairedTerm, norm_mul, term_norm_on_rightLine]
  simpa only [mul_assoc] using mul_le_mul_of_nonneg_left
    (norm_tentKernel_rightLine_le x h t hh ha) (norm_nonneg (_root_.LSeries.term f 2 m))

/-- Each term is integrable, including the n=0 convention and height zero. -/
theorem integrable_pairedTerm (f : ℕ → ℂ) (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (m : ℕ) : Integrable (pairedTerm f x h m) := by
  have hc : Continuous (pairedTerm f x h m) := (continuous_term_rightLine f m).mul
    ((continuous_tentKernel x h hh ha).comp (show Continuous rightLine from by unfold rightLine; fun_prop))
  exact (integrable_inv_one_add_sq.const_mul
    (‖_root_.LSeries.term f 2 m‖ * rightLineConstant x h)).mono'
    hc.aestronglyMeasurable (Eventually.of_forall (norm_pairedTerm_le f x h hh ha m))

/-- The integrated absolute norm has an explicit bound, rather than an assumed Fubini premise. -/
theorem integral_norm_pairedTerm_le (f : ℕ → ℂ) (x h : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (m : ℕ) :
    (∫ t : ℝ, ‖pairedTerm f x h m t‖) ≤
      ‖_root_.LSeries.term f 2 m‖ * (rightLineConstant x h * Real.pi) := by
  have hb := integral_mono (integrable_pairedTerm f x h hh ha m).norm
    (integrable_inv_one_add_sq.const_mul
      (‖_root_.LSeries.term f 2 m‖ * rightLineConstant x h))
    (norm_pairedTerm_le f x h hh ha m)
  simpa only [integral_const_mul, integral_univ_inv_one_add_sq, mul_assoc] using hb

/-- The absolute series at two supplies summability of the integrated norms. -/
theorem summable_integral_norm_pairedTerm (f : ℕ → ℂ)
    (hf : LSeriesSummable f 2) (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Summable (fun m : ℕ => ∫ t : ℝ, ‖pairedTerm f x h m t‖) := by
  have hfn : Summable (fun m : ℕ => ‖_root_.LSeries.term f 2 m‖) := hf.norm
  exact (hfn.mul_right (rightLineConstant x h * Real.pi)).of_nonneg_of_le
    (fun m => integral_nonneg (fun t => norm_nonneg (pairedTerm f x h m t)))
    (integral_norm_pairedTerm_le f x h hh ha)

/-- Each term inverts to its actual coefficient times the actual tent weight. -/
theorem pairedTerm_inversion (f : ℕ → ℂ) (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (m : ℕ) :
    ((1 / (2 * Real.pi) : ℝ) : ℂ) * (∫ t : ℝ, pairedTerm f x h m t) =
      f m * (tent x h (m : ℝ) : ℂ) := by
  by_cases hm : m = 0
  · subst m
    have hw := tent_eq_zero_of_outside x h 0 hh (by intro ht; linarith [ht.1])
    simp [pairedTerm, hw]
  have hmR : 0 < (m : ℝ) := Nat.cast_pos.mpr (Nat.pos_of_ne_zero hm)
  have heq : pairedTerm f x h m = fun t : ℝ =>
      f m * ((m : ℂ) ^ (-rightLine t) * tentKernel x h (rightLine t)) := by
    funext t
    simp only [pairedTerm, _root_.LSeries.term_of_ne_zero hm,
      Complex.cpow_neg, div_eq_mul_inv, mul_assoc]
  rw [heq, integral_const_mul]
  calc
    _ = f m * (((1 / (2 * Real.pi) : ℝ) : ℂ) *
      ∫ t : ℝ, (m : ℂ) ^ (-rightLine t) * tentKernel x h (rightLine t)) := by ring
    _ = _ := by
      simpa using congrArg (fun v : ℂ => f m * v) (rightLine_inversion x h (m : ℝ) hh ha hmR)

/-- The complete absolutely convergent Dirichlet series may be integrated term by term.
No residue inventory, truncation limit or sum-integral equality is a hypothesis. -/
theorem dirichlet_tent_pairing (f : ℕ → ℂ) (hf : LSeriesSummable f 2)
    (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    ((1 / (2 * Real.pi) : ℝ) : ℂ) *
      (∫ t : ℝ, _root_.LSeries f (rightLine t) * tentKernel x h (rightLine t)) =
        ∑' m : ℕ, f m * (tent x h (m : ℝ) : ℂ) := by
  have hinter := integral_tsum_of_summable_integral_norm
    (integrable_pairedTerm f x h hh ha)
    (summable_integral_norm_pairedTerm f hf x h hh ha)
  have hsum : (fun t : ℝ => _root_.LSeries f (rightLine t) * tentKernel x h (rightLine t)) =
      fun t : ℝ => ∑' m : ℕ, pairedTerm f x h m t := by
    funext t
    simp only [_root_.LSeries, pairedTerm, tsum_mul_right]
  rw [hsum, ← hinter, ← tsum_mul_left]
  exact tsum_congr (pairedTerm_inversion f x h hh ha)

end
end GRWTSK.NumberTheory.LSeries.TentPairing
