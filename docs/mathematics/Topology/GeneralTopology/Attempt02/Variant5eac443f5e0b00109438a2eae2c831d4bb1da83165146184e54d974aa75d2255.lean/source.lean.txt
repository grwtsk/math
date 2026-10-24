import ArithmeticInterceptFinite
import Mathlib.Analysis.SpecialFunctions.Log.Monotone
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Topology.Order.MonotoneConvergence

/-! The genuine first Stieltjes finite sequence and an elementary convergent squeeze.
Research direction grwtsk contributors; scratch construction OpenAI Codex.
No Laurent identification, Ramaré instance or actual arithmetic c identity is assumed. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualFirstStieltjes
open Set Filter MeasureTheory
open scoped Topology
open ContinuousResearch.ArithmeticInterceptFinite

def logQuotient (x : ℝ) : ℝ := Real.log x / x

def stieltjesSequence (N : ℕ) : ℝ :=
  (∑ k ∈ Finset.Icc 1 N, Real.log (k : ℝ) / k) - (Real.log (N : ℝ))^2 / 2

def lowerSequence (N : ℕ) : ℝ := stieltjesSequence N - logQuotient N

def firstStieltjesConstant : ℝ := ⨅ n : ℕ, stieltjesSequence (n + 4)

theorem logQuotient_nonneg {x : ℝ} (hx : 1 ≤ x) : 0 ≤ logQuotient x := by
  exact div_nonneg (Real.log_nonneg hx) (by linarith)

theorem logQuotient_antitone : AntitoneOn logQuotient (Ici 4) := by
  apply Real.log_div_self_antitoneOn.mono
  intro x hx
  have he : Real.exp 1 ≤ (4 : ℝ) := by
    have h := Real.exp_one_lt_d9
    linarith
  exact he.trans hx

theorem logQuotient_continuousOn : ContinuousOn logQuotient (Ici 4) := by
  intro x hx
  change 4 ≤ x at hx
  exact ((Real.continuousAt_log (by linarith : x ≠ 0)).div continuousAt_id
    (by linarith : x ≠ 0)).continuousWithinAt

theorem logQuotient_intervalIntegrable {a b : ℝ} (ha : 4 ≤ a) (hb : 4 ≤ b) :
    IntervalIntegrable logQuotient volume a b := by
  exact (logQuotient_continuousOn.mono (by
    intro x hx
    rcases le_total a b with h | h
    · rw [uIcc_of_le h] at hx
      exact ha.trans hx.1
    · rw [uIcc_of_ge h] at hx
      exact hb.trans hx.1)).intervalIntegrable

theorem logQuotient_integral {a b : ℝ} (ha : 4 ≤ a) (hb : 4 ≤ b) :
    (∫ x in a..b, logQuotient x) = (Real.log b)^2 / 2 - (Real.log a)^2 / 2 := by
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
    (f := fun x : ℝ => (Real.log x)^2 / 2) (f' := logQuotient)
  · intro x hx
    have hx4 : 4 ≤ x := by
      rcases le_total a b with h | h
      · rw [uIcc_of_le h] at hx
        exact ha.trans hx.1
      · rw [uIcc_of_ge h] at hx
        exact hb.trans hx.1
    have h := ((Real.hasDerivAt_log (by linarith : x ≠ 0)).pow 2).div_const 2
    exact h.congr_deriv (by simp only [logQuotient, pow_one]; ring)
  · exact logQuotient_intervalIntegrable ha hb

theorem stieltjesSequence_succ (N : ℕ) (hN : 4 ≤ N) :
    stieltjesSequence (N + 1) - stieltjesSequence N =
      logQuotient (N + 1) - (∫ x in (N : ℝ)..(N + 1 : ℕ), logQuotient x) := by
  have hNreal : (4 : ℝ) ≤ N := by exact_mod_cast hN
  rw [logQuotient_integral hNreal (by exact_mod_cast (show 4 ≤ N + 1 by omega))]
  unfold stieltjesSequence logQuotient
  rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
  simp only [Nat.cast_add, Nat.cast_one]
  ring

theorem logQuotient_cell_lower (N : ℕ) (hN : 4 ≤ N) :
    logQuotient (N + 1) ≤ ∫ x in (N : ℝ)..(N + 1 : ℕ), logQuotient x := by
  have hanti : AntitoneOn logQuotient (Icc (N : ℝ) (N + (1 : ℕ))) :=
    logQuotient_antitone.mono (by intro x hx; exact (show (4 : ℝ) ≤ N by exact_mod_cast hN).trans hx.1)
  simpa using hanti.sum_le_integral (a := 1)

theorem logQuotient_cell_upper (N : ℕ) (hN : 4 ≤ N) :
    (∫ x in (N : ℝ)..(N + 1 : ℕ), logQuotient x) ≤ logQuotient N := by
  have hanti : AntitoneOn logQuotient (Icc (N : ℝ) (N + (1 : ℕ))) :=
    logQuotient_antitone.mono (by intro x hx; exact (show (4 : ℝ) ≤ N by exact_mod_cast hN).trans hx.1)
  simpa using hanti.integral_le_sum (a := 1)

theorem stieltjesSequence_succ_le (N : ℕ) (hN : 4 ≤ N) :
    stieltjesSequence (N + 1) ≤ stieltjesSequence N := by
  have h := stieltjesSequence_succ N hN
  have hl := logQuotient_cell_lower N hN
  linarith

theorem lowerSequence_le_succ (N : ℕ) (hN : 4 ≤ N) :
    lowerSequence N ≤ lowerSequence (N + 1) := by
  have h := stieltjesSequence_succ N hN
  have hu := logQuotient_cell_upper N hN
  unfold lowerSequence
  simp only [Nat.cast_add, Nat.cast_one] at h hu ⊢
  linarith

theorem stieltjes_tail_antitone : Antitone (fun n : ℕ => stieltjesSequence (n + 4)) := by
  apply antitone_nat_of_succ_le
  intro n
  simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
    stieltjesSequence_succ_le (n + 4) (by omega)

theorem lower_tail_monotone : Monotone (fun n : ℕ => lowerSequence (n + 4)) := by
  apply monotone_nat_of_le_succ
  intro n
  simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
    lowerSequence_le_succ (n + 4) (by omega)

theorem lowerSequence_four : lowerSequence 4 = stieltjesLowerFour := by
  unfold lowerSequence stieltjesSequence logQuotient stieltjesLowerFour
  have h4 : Real.log (4 : ℝ) = 2 * Real.log 2 := by
    convert Real.log_pow (2 : ℝ) 2 using 1 <;> norm_num
  norm_num [Finset.sum_Icc_succ_top]
  rw [h4]
  ring

theorem lower_four_le_stieltjes_tail (n : ℕ) : stieltjesLowerFour ≤ stieltjesSequence (n + 4) := by
  have hl := lower_tail_monotone (show 0 ≤ n by omega)
  change lowerSequence 4 ≤ lowerSequence (n + 4) at hl
  rw [lowerSequence_four] at hl
  have hn : 0 ≤ logQuotient (n + 4) := logQuotient_nonneg (by exact_mod_cast (show 1 ≤ n + 4 by omega))
  unfold lowerSequence at hl
  linarith

theorem stieltjes_tail_bddBelow : BddBelow (range (fun n : ℕ => stieltjesSequence (n + 4))) := by
  refine ⟨stieltjesLowerFour, ?_⟩
  rintro _ ⟨n, rfl⟩
  exact lower_four_le_stieltjes_tail n

theorem tendsto_stieltjes_tail :
    Tendsto (fun n : ℕ => stieltjesSequence (n + 4)) atTop (𝓝 firstStieltjesConstant) :=
  tendsto_atTop_ciInf stieltjes_tail_antitone stieltjes_tail_bddBelow

theorem tendsto_stieltjesSequence :
    Tendsto stieltjesSequence atTop (𝓝 firstStieltjesConstant) :=
  (tendsto_add_atTop_iff_nat 4).mp tendsto_stieltjes_tail

theorem lower_four_le_firstStieltjesConstant : stieltjesLowerFour ≤ firstStieltjesConstant := by
  exact ge_of_tendsto tendsto_stieltjes_tail (Eventually.of_forall lower_four_le_stieltjes_tail)

end ContinuousResearch.ActualFirstStieltjes
