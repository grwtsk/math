/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Positive power-integral cell majorants

Exact unit-cell masses telescope before any infinite bound is taken. The
terminal endpoint is retained. Summability follows from nonnegative bounded
partial sums, not from a totalized infinite sum. Parameters q>0 and p>0 are
essential; no claim is made at the totalized quotient p=0.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.RealAnalysis.PowerCellMajorant

open MeasureTheory Set
open scoped Interval BigOperators

noncomputable section

/-- Positive-axis inverse powers use the real logarithm. -/
def decayPower (p t : ℝ) : ℝ := Real.exp (-p * Real.log t)

/-- Exact mass of t^(-p-1) on [q,q+1], on the proved positive domain. -/
def powerCell (q p : ℝ) : ℝ := (decayPower p q - decayPower p (q + 1)) / p

theorem decayPower_pos (p t : ℝ) : 0 < decayPower p t := Real.exp_pos _

@[simp] theorem decayPower_one (p : ℝ) : decayPower p 1 = 1 := by
  simp [decayPower]

theorem decayPower_antitone (p : ℝ) (hp : 0 < p) {q r : ℝ}
    (hq : 0 < q) (hqr : q ≤ r) : decayPower p r ≤ decayPower p q := by
  apply Real.exp_le_exp.mpr
  exact mul_le_mul_of_nonpos_left (Real.log_le_log hq hqr) (neg_nonpos.mpr hp.le)

theorem powerCell_nonneg (q p : ℝ) (hq : 0 < q) (hp : 0 < p) :
    0 ≤ powerCell q p :=
  div_nonneg (sub_nonneg.mpr (decayPower_antitone p hp hq (by linarith))) hp.le

/-- The derivative identity retains the shifted exponent p+1. -/
theorem hasDerivAt_decayPower (p t : ℝ) (ht : 0 < t) :
    HasDerivAt (decayPower p) (-p * Real.exp (-(p + 1) * Real.log t)) t := by
  have hd := ((Real.hasDerivAt_log (ne_of_gt ht)).const_mul (-p)).exp
  have he : Real.exp (-(p + 1) * Real.log t) = decayPower p t / t := by
    rw [show -(p + 1) * Real.log t = -p * Real.log t - Real.log t by ring,
      Real.exp_sub, Real.exp_log ht]
    rfl
  apply hd.congr_deriv
  rw [he]
  simp only [decayPower, inv_eq_one_div]
  ring

/-- An actual integral equality, not an assigned majorant field. -/
theorem integral_powerCell (q p : ℝ) (hq : 0 < q) (hp : 0 < p) :
    (∫ u in (0 : ℝ)..1, Real.exp (-(p + 1) * Real.log (q + u))) = powerCell q p := by
  have hd (u : ℝ) (hu : u ∈ uIcc (0 : ℝ) 1) :
      HasDerivAt (fun v : ℝ => -decayPower p (q + v) / p)
        (Real.exp (-(p + 1) * Real.log (q + u))) u := by
    have hu' : u ∈ Icc (0 : ℝ) 1 := by simpa using hu
    have ht : 0 < q + u := by linarith [hu'.1]
    have h := (((hasDerivAt_decayPower p (q + u) ht).comp u
      ((hasDerivAt_id u).const_add q)).neg).div_const p
    apply h.congr_deriv
    field_simp [ne_of_gt hp]
  have hc : ContinuousOn (fun u : ℝ => Real.exp (-(p + 1) * Real.log (q + u)))
      (Icc (0 : ℝ) 1) := by
    intro u hu
    have ht : q + u ≠ 0 := ne_of_gt (by linarith [hu.1])
    exact (by fun_prop (disch := assumption) :
      ContinuousAt (fun v : ℝ => Real.exp (-(p + 1) * Real.log (q + v))) u).continuousWithinAt
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt hd
    (hc.intervalIntegrable_of_Icc (by norm_num))
  simpa only [powerCell, add_zero, neg_div, sub_div, neg_sub_neg] using hi

/-- The finite upper endpoint is not dropped from the telescope. -/
theorem sum_powerCell (q p : ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N, powerCell (q + (k : ℝ)) p) =
      (decayPower p q - decayPower p (q + (N : ℝ))) / p := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      simp only [powerCell, Nat.cast_add, Nat.cast_one, add_assoc]
      ring

theorem sum_powerCell_le (q p : ℝ) (hp : 0 < p) (N : ℕ) :
    (∑ k ∈ Finset.range N, powerCell (q + (k : ℝ)) p) ≤ decayPower p q / p := by
  rw [sum_powerCell]
  exact div_le_div_of_nonneg_right (sub_le_self _ (decayPower_pos _ _).le) hp.le

/-- Nonnegative finite-sum bounds derive the complete majorant's summability. -/
theorem summable_powerCell (q p : ℝ) (hq : 0 < q) (hp : 0 < p) :
    Summable (fun k : ℕ => powerCell (q + (k : ℝ)) p) :=
  summable_of_sum_range_le
    (fun k => powerCell_nonneg _ p (by positivity) hp) (sum_powerCell_le q p hp)

/-- Complete infinite majorant bound; no infinite-sum value is assumed. -/
theorem tsum_powerCell_le (q p : ℝ) (hq : 0 < q) (hp : 0 < p) :
    (∑' k : ℕ, powerCell (q + (k : ℝ)) p) ≤ decayPower p q / p :=
  Real.tsum_le_of_sum_range_le
    (fun k => powerCell_nonneg _ p (by positivity) hp) (sum_powerCell_le q p hp)

end
end GRWTSK.Analysis.RealAnalysis.PowerCellMajorant
