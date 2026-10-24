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
    exact h.congr_deriv (by simp only [logQuotient]; ring)
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
  simp only [Nat.cast_add, Nat.cast_ofNat] at hl hn
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

theorem firstStieltjesConstant_le_stieltjesSequence (N : ℕ) (hN : 4 ≤ N) :
    firstStieltjesConstant ≤ stieltjesSequence N := by
  have h := stieltjes_tail_antitone.le_of_tendsto tendsto_stieltjes_tail (N - 4)
  simpa [Nat.sub_add_cancel hN] using h

theorem logQuotient_tendsto_zero : Tendsto (fun N : ℕ => logQuotient N) atTop (𝓝 0) := by
  have hr : Tendsto (fun x : ℝ => Real.log x / x) atTop (𝓝 0) := by
    simpa using Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 (by norm_num : (1 : ℝ) ≠ 0)
  exact hr.comp tendsto_natCast_atTop_atTop

theorem lowerSequence_tendsto : Tendsto lowerSequence atTop (𝓝 firstStieltjesConstant) := by
  change Tendsto (fun n : ℕ => stieltjesSequence n - logQuotient n) atTop (𝓝 firstStieltjesConstant)
  simpa only [sub_zero] using tendsto_stieltjesSequence.sub logQuotient_tendsto_zero

theorem lowerSequence_le_firstStieltjesConstant (N : ℕ) (hN : 4 ≤ N) :
    lowerSequence N ≤ firstStieltjesConstant := by
  have ht : Tendsto (fun n : ℕ => lowerSequence (n + 4)) atTop (𝓝 firstStieltjesConstant) :=
    lowerSequence_tendsto.comp (tendsto_add_atTop_nat 4)
  have h := lower_tail_monotone.ge_of_tendsto ht (N - 4)
  simpa [Nat.sub_add_cancel hN] using h

/-- Genuine finite-N enclosure; its width tends to zero. -/
theorem firstStieltjesConstant_enclosure (N : ℕ) (hN : 4 ≤ N) :
    stieltjesSequence N - Real.log (N : ℝ) / N ≤ firstStieltjesConstant ∧
      firstStieltjesConstant ≤ stieltjesSequence N :=
  ⟨lowerSequence_le_firstStieltjesConstant N hN,
    firstStieltjesConstant_le_stieltjesSequence N hN⟩

theorem firstStieltjesConstant_gt_neg_249 : -(249 : ℝ) / 1000 < firstStieltjesConstant :=
  stieltjesLowerFour_gt_neg_249.trans_le lower_four_le_firstStieltjesConstant

/-- No gamma_1 lower assumption remains for this independently proved real sequence limit.
The actual infinite proper-power and Laurent/intercept identifications remain separate. -/
theorem intercept_gt_one_five_hundred {B1 : ℝ} (hB1 : finiteProperPowerMoment ≤ B1) :
    (Real.eulerMascheroniConstant)^2 + 2 * firstStieltjesConstant + B1 - 2 > 1 / 500 :=
  intercept_gt_one_five_hundred_of_actual_bridges firstStieltjesConstant B1
    lower_four_le_firstStieltjesConstant hB1

theorem stieltjesSequence_limit_unique {L : ℝ}
    (hL : Tendsto stieltjesSequence atTop (𝓝 L)) : L = firstStieltjesConstant :=
  tendsto_nhds_unique hL tendsto_stieltjesSequence

end ContinuousResearch.ActualFirstStieltjes

#check ContinuousResearch.ActualFirstStieltjes.logQuotient
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient
#print ContinuousResearch.ActualFirstStieltjes.logQuotient

#check ContinuousResearch.ActualFirstStieltjes.stieltjesSequence
#print axioms ContinuousResearch.ActualFirstStieltjes.stieltjesSequence
#print ContinuousResearch.ActualFirstStieltjes.stieltjesSequence

#check ContinuousResearch.ActualFirstStieltjes.lowerSequence
#print axioms ContinuousResearch.ActualFirstStieltjes.lowerSequence
#print ContinuousResearch.ActualFirstStieltjes.lowerSequence

#check ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant
#print axioms ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant
#print ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_nonneg
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_nonneg
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_nonneg

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_antitone
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_antitone
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_antitone

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_continuousOn
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_continuousOn
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_continuousOn

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_intervalIntegrable
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_intervalIntegrable
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_intervalIntegrable

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_integral
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_integral
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_integral

#check ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_succ
#print axioms ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_succ
#print ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_succ

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_cell_lower
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_cell_lower
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_cell_lower

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_cell_upper
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_cell_upper
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_cell_upper

#check ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_succ_le
#print axioms ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_succ_le
#print ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_succ_le

#check ContinuousResearch.ActualFirstStieltjes.lowerSequence_le_succ
#print axioms ContinuousResearch.ActualFirstStieltjes.lowerSequence_le_succ
#print ContinuousResearch.ActualFirstStieltjes.lowerSequence_le_succ

#check ContinuousResearch.ActualFirstStieltjes.stieltjes_tail_antitone
#print axioms ContinuousResearch.ActualFirstStieltjes.stieltjes_tail_antitone
#print ContinuousResearch.ActualFirstStieltjes.stieltjes_tail_antitone

#check ContinuousResearch.ActualFirstStieltjes.lower_tail_monotone
#print axioms ContinuousResearch.ActualFirstStieltjes.lower_tail_monotone
#print ContinuousResearch.ActualFirstStieltjes.lower_tail_monotone

#check ContinuousResearch.ActualFirstStieltjes.lowerSequence_four
#print axioms ContinuousResearch.ActualFirstStieltjes.lowerSequence_four
#print ContinuousResearch.ActualFirstStieltjes.lowerSequence_four

#check ContinuousResearch.ActualFirstStieltjes.lower_four_le_stieltjes_tail
#print axioms ContinuousResearch.ActualFirstStieltjes.lower_four_le_stieltjes_tail
#print ContinuousResearch.ActualFirstStieltjes.lower_four_le_stieltjes_tail

#check ContinuousResearch.ActualFirstStieltjes.stieltjes_tail_bddBelow
#print axioms ContinuousResearch.ActualFirstStieltjes.stieltjes_tail_bddBelow
#print ContinuousResearch.ActualFirstStieltjes.stieltjes_tail_bddBelow

#check ContinuousResearch.ActualFirstStieltjes.tendsto_stieltjes_tail
#print axioms ContinuousResearch.ActualFirstStieltjes.tendsto_stieltjes_tail
#print ContinuousResearch.ActualFirstStieltjes.tendsto_stieltjes_tail

#check ContinuousResearch.ActualFirstStieltjes.tendsto_stieltjesSequence
#print axioms ContinuousResearch.ActualFirstStieltjes.tendsto_stieltjesSequence
#print ContinuousResearch.ActualFirstStieltjes.tendsto_stieltjesSequence

#check ContinuousResearch.ActualFirstStieltjes.lower_four_le_firstStieltjesConstant
#print axioms ContinuousResearch.ActualFirstStieltjes.lower_four_le_firstStieltjesConstant
#print ContinuousResearch.ActualFirstStieltjes.lower_four_le_firstStieltjesConstant

#check ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_le_stieltjesSequence
#print axioms ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_le_stieltjesSequence
#print ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_le_stieltjesSequence

#check ContinuousResearch.ActualFirstStieltjes.logQuotient_tendsto_zero
#print axioms ContinuousResearch.ActualFirstStieltjes.logQuotient_tendsto_zero
#print ContinuousResearch.ActualFirstStieltjes.logQuotient_tendsto_zero

#check ContinuousResearch.ActualFirstStieltjes.lowerSequence_tendsto
#print axioms ContinuousResearch.ActualFirstStieltjes.lowerSequence_tendsto
#print ContinuousResearch.ActualFirstStieltjes.lowerSequence_tendsto

#check ContinuousResearch.ActualFirstStieltjes.lowerSequence_le_firstStieltjesConstant
#print axioms ContinuousResearch.ActualFirstStieltjes.lowerSequence_le_firstStieltjesConstant
#print ContinuousResearch.ActualFirstStieltjes.lowerSequence_le_firstStieltjesConstant

#check ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_enclosure
#print axioms ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_enclosure
#print ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_enclosure

#check ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_gt_neg_249
#print axioms ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_gt_neg_249
#print ContinuousResearch.ActualFirstStieltjes.firstStieltjesConstant_gt_neg_249

#check ContinuousResearch.ActualFirstStieltjes.intercept_gt_one_five_hundred
#print axioms ContinuousResearch.ActualFirstStieltjes.intercept_gt_one_five_hundred
#print ContinuousResearch.ActualFirstStieltjes.intercept_gt_one_five_hundred

#check ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_limit_unique
#print axioms ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_limit_unique
#print ContinuousResearch.ActualFirstStieltjes.stieltjesSequence_limit_unique
