import FormalResearch.RiemannHypothesis.Conversation.WeightedSourcePickup

/-!
# Closed-integer pickup identity

Written continuation 2026-10-09: grwtsk contributors. Local finite integration
adapter: OpenAI Codex. The original closed-right Möbius recording is consumed
without deleting touching atoms, composite integers or prime powers.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.WeightedSourcePickupIdentity
open GRWTSK.RiemannHypothesis.Conversation.WeightedSourcePickup
open FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel
open MeasureTheory Set
open scoped BigOperators
noncomputable section

def clockAtom (n : ℕ) : ℝ → ℝ :=
  (Ici (Real.log n)).indicator (fun u ↦ Real.exp (-u / 2))

theorem clockAtom_integrableOn (n : ℕ) (T : ℝ) :
    IntegrableOn (clockAtom n) (Icc 0 T) volume := by
  unfold clockAtom
  rw [integrableOn_indicator_iff measurableSet_Ici]
  exact ((Real.continuous_exp.comp (continuous_id.neg.div_const 2)).integrableOn_Icc).mono_set
    Set.inter_subset_right

theorem exponential_clock_integral (a b : ℝ) :
    (∫ u in a..b, Real.exp (-u / 2)) =
      2 * (Real.exp (-a / 2) - Real.exp (-b / 2)) := by
  have hd (u : ℝ) : HasDerivAt (fun u : ℝ ↦ -2 * Real.exp (-u / 2))
      (Real.exp (-u / 2)) u := by
    apply ((((hasDerivAt_id u).neg.div_const 2).exp).const_mul (-2)).congr_deriv
    simp only [Pi.neg_apply, id_eq]
    ring_nf
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ ↦ hd u)
    ((Real.continuous_exp.comp (continuous_id.neg.div_const 2)).intervalIntegrable _ _)]
  ring

theorem clockAtom_integral {n : ℕ} (hn : 1 ≤ n) {T : ℝ} (_hT : 0 ≤ T) :
    (∫ u in Icc 0 T, clockAtom n u) = atomPickup T n := by
  have hnp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hnlog : 0 ≤ Real.log n := Real.log_nonneg (by exact_mod_cast hn)
  have hset : Icc (0 : ℝ) T ∩ Ici (Real.log n) = Icc (Real.log n) T := by
    ext u
    simp only [mem_inter_iff, mem_Icc, mem_Ici]
    constructor
    · rintro ⟨⟨_, hhi⟩, hlo⟩
      exact ⟨hlo, hhi⟩
    · intro hu
      exact ⟨⟨hnlog.trans hu.1, hu.2⟩, hu.1⟩
  rw [clockAtom, setIntegral_indicator measurableSet_Ici, hset]
  by_cases hnt : (n : ℝ) ≤ Real.exp T
  · have hlogT := (Real.log_le_iff_le_exp hnp).mpr hnt
    rw [integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hlogT,
      exponential_clock_integral, atomPickup, if_pos hnt,
      exp_negative_half, Real.exp_log hnp]
  · have hlogT : T < Real.log n := lt_of_not_ge
      (fun h ↦ hnt ((Real.log_le_iff_le_exp hnp).mp h))
    simp [Icc_eq_empty_of_lt hlogT, atomPickup, hnt]

/-- Zero contributes nothing; all positive integer atoms remain closed-right. -/
theorem mertens_positive_inventory (x : ℝ) :
    mertens x = ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, realMoebius n := by
  unfold mertens
  symm
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hn).2⟩
  · intro n hn hnot
    have he : n = 0 := by
      simp only [Finset.mem_Icc, not_and_or, not_le] at hn hnot
      omega
    simp [he]

theorem recording_clock_inventory {A T u : ℝ} (hT : T ≤ 2 * A)
    (hu : u ∈ Icc 0 T) :
    arithmeticRecording (Real.exp u) =
      ∑ n ∈ integerInventory A, if Real.log n ≤ u then realMoebius n else 0 := by
  rw [arithmeticRecording, mertens_positive_inventory]
  have hfloor : ⌊Real.exp u⌋₊ ≤ integerCutoff A :=
    Nat.floor_le_floor (Real.exp_le_exp.mpr (hu.2.trans hT))
  have hin : ∀ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, Real.log n ≤ u := by
    intro n hn
    have hn' := Finset.mem_Icc.mp hn
    apply (Real.log_le_iff_le_exp (by exact_mod_cast (by omega : 0 < n))).mpr
    exact (by exact_mod_cast hn'.2 : (n : ℝ) ≤ (⌊Real.exp u⌋₊ : ℝ)).trans
      (Nat.floor_le (Real.exp_pos u).le)
  calc
    _ = ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
        if Real.log n ≤ u then realMoebius n else 0 := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [if_pos (hin n hn)]
    _ = _ := by
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
          (Finset.mem_Icc.mp hn).2.trans hfloor⟩
      · intro n hn hnot
        have hnl := (Finset.mem_Icc.mp hn).1
        have hlog : ¬ Real.log n ≤ u := by
          intro h
          have hle := Nat.le_floor ((Real.log_le_iff_le_exp
            (by exact_mod_cast (by omega : 0 < n))).mp h)
          exact hnot (Finset.mem_Icc.mpr ⟨hnl, hle⟩)
        simp [hlog]

theorem pickup_finite_inventory {A T : ℝ} (hT : 0 ≤ T) (hTA : T ≤ 2 * A) :
    pickup T = ∑ n ∈ integerInventory A, realMoebius n * atomPickup T n := by
  rw [pickup_eq_integral hT, intervalIntegral.integral_of_le hT,
    ← integral_Icc_eq_integral_Ioc]
  calc
    _ = ∫ u in Icc 0 T, ∑ n ∈ integerInventory A, realMoebius n * clockAtom n u := by
      apply setIntegral_congr_fun measurableSet_Icc
      intro u hu
      rw [pickupDensity, recording_clock_inventory hTA hu, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      simp only [clockAtom, indicator_apply, mem_Ici]
      split_ifs <;> ring
    _ = ∑ n ∈ integerInventory A, ∫ u in Icc 0 T, realMoebius n * clockAtom n u := by
      rw [integral_finsetSum]
      intro n _
      exact (clockAtom_integrableOn n T).const_mul _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [integral_const_mul, clockAtom_integral (Finset.mem_Icc.mp hn).1 hT]

/-- The original centered reading equals the specified weighted Möbius sum. -/
theorem centeredPickup_exact {A t : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) : centeredPickup A t = weightedRecording A t := by
  have hreset : 0 ≤ 2 * Real.log A := mul_nonneg (by norm_num) (Real.log_nonneg hA)
  have hresetA : 2 * Real.log A ≤ 2 * A := by
    have hlog := Real.log_le_sub_one_of_pos (by linarith : 0 < A)
    linarith
  rw [centeredPickup, pickup_finite_inventory (hreset.trans ht.1) ht.2,
    pickup_finite_inventory hreset hresetA, ← Finset.sum_sub_distrib]
  unfold weightedRecording pickupWeight
  apply Finset.sum_congr rfl
  intro n _
  simp only [atomPickup, exp_reset (by linarith : 0 < A),
    exp_negative_reset (by linarith : 0 < A)]
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourcePickupIdentity
