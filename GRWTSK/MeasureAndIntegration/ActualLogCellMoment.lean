import ActualFirstStieltjes
import Mathlib.NumberTheory.Harmonic.ZetaAsymp

/-! Genuine logarithmic-cell moments and their independently constructed sequence limit.
Research direction grwtsk contributors; focused scratch construction OpenAI Codex.
No zeta derivative, RH, or actual intercept identity is assumed. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualLogCellMoment
open Set MeasureTheory Filter
open scoped Topology
open ContinuousResearch.ActualFirstStieltjes

/-- Physical positive cell; the zero-index cell is never used in the series. -/
def logCell (n : ℕ) : ℝ :=
  ∫ x : ℝ in (n : ℝ)..(n + 1), (x - n) * Real.log x / x^2

def logCellSum (N : ℕ) : ℝ := ∑ n ∈ Finset.range N, logCell (n + 1)

theorem logCell_integrable {n : ℕ} (hn : 0 < n) :
    IntervalIntegrable (fun x : ℝ => (x-n)*Real.log x/x^2) volume n (n+1) := by
  apply ContinuousOn.intervalIntegrable
  intro x hx
  have hx0 : x ≠ 0 := by
    rw [uIcc_of_le (by linarith : (n:ℝ) ≤ n+1)] at hx
    have hn0 : (0:ℝ) < n := by exact_mod_cast hn
    linarith [hx.1]
  exact (((continuousAt_id.sub continuousAt_const).mul
    (Real.continuousAt_log hx0)).div (continuousAt_id.pow 2)
    (pow_ne_zero _ hx0)).continuousWithinAt

theorem logCell_eval {n : ℕ} (hn : 0 < n) :
    logCell n = ((Real.log (n+1))^2-(Real.log n)^2)/2 +
      n/(n+1)*(Real.log (n+1)+1) - (Real.log n+1) := by
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast hn.ne'
  have hn1 : (n : ℝ)+1 ≠ 0 := by positivity
  have he : logCell n =
      ((Real.log (n+1))^2/2 + n*(Real.log (n+1)+1)/(n+1)) -
      ((Real.log n)^2/2 + n*(Real.log n+1)/n) := by
    apply intervalIntegral.integral_eq_sub_of_hasDerivAt
      (f := fun x : ℝ => (Real.log x)^2/2 + n*(Real.log x+1)/x)
    · intro x hx
      have hx0 : x ≠ 0 := by
        rw [uIcc_of_le (by linarith : (n:ℝ) ≤ n+1)] at hx
        have hnpos : (0:ℝ) < n := by exact_mod_cast hn
        linarith [hx.1]
      have hlog := Real.hasDerivAt_log hx0
      have h := ((hlog.pow 2).div_const 2).add
        (((hlog.add_const 1).const_mul (n:ℝ)).div (hasDerivAt_id x) hx0)
      apply h.congr_deriv
      simp only [id_eq, Nat.cast_ofNat, Nat.reduceSub, pow_one]
      field_simp [hx0]
      ring
    · exact logCell_integrable hn
  rw [he]
  field_simp [hn0, hn1]
  ring

theorem logCell_nonneg {n : ℕ} (hn : 0 < n) : 0 ≤ logCell n := by
  rw [logCell, intervalIntegral.integral_of_le (by linarith : (n:ℝ) ≤ n+1)]
  apply setIntegral_nonneg measurableSet_Ioc
  intro x hx
  have hn1 : (1:ℝ) ≤ n := by exact_mod_cast hn
  exact div_nonneg (mul_nonneg (sub_nonneg.mpr hx.1.le)
    (Real.log_nonneg (hn1.trans hx.1.le))) (sq_nonneg x)

theorem logCellSum_eval (N : ℕ) :
    logCellSum N = -stieltjesSequence (N+1) + Real.log (N+1) + 1 - harmonic (N+1) := by
  induction N with
  | zero => simp [logCellSum, stieltjesSequence, harmonic_succ, harmonic_zero]
  | succ N hN =>
    rw [logCellSum, Finset.sum_range_succ]
    change logCellSum N + logCell (N+1) = _
    rw [hN, logCell_eval (by omega : 0 < N+1)]
    unfold stieltjesSequence
    rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ (N+1)+1), harmonic_succ (N+1)]
    push_cast
    field_simp
    ring

theorem logCellSum_tendsto :
    Tendsto logCellSum atTop (𝓝 (1-Real.eulerMascheroniConstant-firstStieltjesConstant)) := by
  have hs := tendsto_stieltjesSequence.comp (tendsto_add_atTop_nat 1)
  have hg := Real.tendsto_harmonic_sub_log.comp (tendsto_add_atTop_nat 1)
  have hc : Tendsto (fun _ : ℕ => (1 : ℝ)) atTop (𝓝 1) := tendsto_const_nhds
  have h := (hc.sub hg).sub hs
  convert h using 1
  funext N
  rw [logCellSum_eval]
  simp only [Function.comp_apply]
  push_cast
  ring

theorem logCell_hasSum :
    HasSum (fun n : ℕ => logCell (n+1))
      (1-Real.eulerMascheroniConstant-firstStieltjesConstant) := by
  rw [hasSum_iff_tendsto_nat_of_nonneg (fun n => logCell_nonneg (by omega))]
  exact logCellSum_tendsto

theorem logCell_summable : Summable (fun n : ℕ => logCell (n+1)) :=
  logCell_hasSum.summable

theorem logCell_tsum :
    ∑' n : ℕ, logCell (n+1) = 1-Real.eulerMascheroniConstant-firstStieltjesConstant :=
  logCell_hasSum.tsum_eq

end ContinuousResearch.ActualLogCellMoment

#check ContinuousResearch.ActualLogCellMoment.logCell
#print axioms ContinuousResearch.ActualLogCellMoment.logCell
#print ContinuousResearch.ActualLogCellMoment.logCell

#check ContinuousResearch.ActualLogCellMoment.logCellSum
#print axioms ContinuousResearch.ActualLogCellMoment.logCellSum
#print ContinuousResearch.ActualLogCellMoment.logCellSum

#check ContinuousResearch.ActualLogCellMoment.logCell_integrable
#print axioms ContinuousResearch.ActualLogCellMoment.logCell_integrable
#print ContinuousResearch.ActualLogCellMoment.logCell_integrable

#check ContinuousResearch.ActualLogCellMoment.logCell_eval
#print axioms ContinuousResearch.ActualLogCellMoment.logCell_eval
#print ContinuousResearch.ActualLogCellMoment.logCell_eval

#check ContinuousResearch.ActualLogCellMoment.logCell_nonneg
#print axioms ContinuousResearch.ActualLogCellMoment.logCell_nonneg
#print ContinuousResearch.ActualLogCellMoment.logCell_nonneg

#check ContinuousResearch.ActualLogCellMoment.logCellSum_eval
#print axioms ContinuousResearch.ActualLogCellMoment.logCellSum_eval
#print ContinuousResearch.ActualLogCellMoment.logCellSum_eval

#check ContinuousResearch.ActualLogCellMoment.logCellSum_tendsto
#print axioms ContinuousResearch.ActualLogCellMoment.logCellSum_tendsto
#print ContinuousResearch.ActualLogCellMoment.logCellSum_tendsto

#check ContinuousResearch.ActualLogCellMoment.logCell_hasSum
#print axioms ContinuousResearch.ActualLogCellMoment.logCell_hasSum
#print ContinuousResearch.ActualLogCellMoment.logCell_hasSum

#check ContinuousResearch.ActualLogCellMoment.logCell_summable
#print axioms ContinuousResearch.ActualLogCellMoment.logCell_summable
#print ContinuousResearch.ActualLogCellMoment.logCell_summable

#check ContinuousResearch.ActualLogCellMoment.logCell_tsum
#print axioms ContinuousResearch.ActualLogCellMoment.logCell_tsum
#print ContinuousResearch.ActualLogCellMoment.logCell_tsum

