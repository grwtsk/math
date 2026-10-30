/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarRemainingGainBound

/-!
# Exact recombination of the geometric prime-transport commutator

The actual block Gram kills every closed-N loss crossing. The surviving cutoff
commutator is therefore exactly

  leftGap - leftGain - rightGain + bothLowGain + bothNearGain.

Each named contribution retains the transported rough(p::P) coefficients, the
original pairWeight, the exact moved Gram entry and its source-defined support.
The restricted ranges in the previously bounded contributions are proved equal to
the corresponding full source-box sums before recombination.

A consumer-facing absolute envelope is then obtained only from the already proved
sector bounds. No prime scale is selected here, and the separate divisor-mask
commutator remains unresolved.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom audit,
and expected-interface checking: NOT_RUN. No complete far-source or RH claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffRecombine

open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal
open GRWTSK.NumberTheory.Moebius.PickupRoughFarMaskCommutator
open GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffStrips
open GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffEffective
open GRWTSK.NumberTheory.Moebius.PickupRoughFarLeftGapBound
open GRWTSK.NumberTheory.Moebius.PickupRoughFarRightGainBound
open GRWTSK.NumberTheory.Moebius.PickupRoughFarRemainingGainBound

theorem leftGainContribution_eq_full_range
    (P : List ℕ) (N L Z H p : ℕ) (G : ℕ → ℕ → ℝ) :
    leftGainContribution P N L Z H p G =
      ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
        if leftGained N L H p m n then
          rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) n
        else 0 := by
  unfold leftGainContribution
  apply Finset.sum_congr
  · ext m
    simp only [Finset.mem_Icc]
    constructor
    · intro hm
      exact ⟨hm.1, by
        by_cases hLN : L ≤ N
        · exact hm.2.trans hLN
        · omega⟩
    · intro hm
      constructor
      · exact hm.1
      · by_contra h
        have hmL : L < m := by omega
        have hzero : ∀ n ∈ Finset.Icc 1 N, ¬ leftGained N L H p m n := by
          intro n hn hg
          exact (Nat.not_le_of_gt hmL) hg.2
        have : (∑ n ∈ Finset.Icc 1 N,
          if leftGained N L H p m n then
            rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) n
          else 0) = 0 := by
          apply Finset.sum_eq_zero
          intro n hn
          simp [hzero n hn]
        contradiction
  · intro m hm
    rfl

theorem bothLowGainContribution_eq_full_range
    (P : List ℕ) (N L Z H p : ℕ) (hp : 0 < p) (G : ℕ → ℕ → ℝ) :
    bothLowGainContribution P N L Z H p G =
      ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
        if bothLowGained N L H p m n then
          rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) (p*n)
        else 0 := by
  unfold bothLowGainContribution
  have hnsub : Finset.Icc 1 (N/p) ⊆ Finset.Icc 1 N := by
    intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
      (Finset.mem_Icc.mp hn).2.trans (Nat.div_le_self N p)⟩
  have hmN (m n : ℕ) (h : bothLowGained N L H p m n) : m ≤ N := by
    have hmoved := h.1.1
    unfold farActive at hmoved
    nlinarith
  have hnDiv (m n : ℕ) (h : bothLowGained N L H p m n) : n ≤ N/p := by
    have hmoved := h.1.1
    unfold farActive at hmoved
    exact (Nat.le_div_iff_mul_le hp).mpr (by
      simpa only [Nat.mul_comm] using hmoved.2.2.2.1)
  calc
    _ = ∑ m ∈ Finset.Icc 1 L, ∑ n ∈ Finset.Icc 1 N,
        if bothLowGained N L H p m n then
          rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) (p*n)
        else 0 := by
      apply Finset.sum_congr rfl
      intro m hm
      apply (Finset.sum_subset hnsub).symm
      intro n hn hout
      by_cases hg : bothLowGained N L H p m n
      · exact (hout (Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, hnDiv m n hg⟩)).elim
      · simp [hg]
    _ = _ := by
      classical
      apply Finset.sum_bij (fun m _ => m)
      · intro m hm
        have hm1 := (Finset.mem_Icc.mp hm).1
        by_cases hex : ∃ n ∈ Finset.Icc 1 N, bothLowGained N L H p m n
        · obtain ⟨n, hn, hg⟩ := hex
          exact Finset.mem_Icc.mpr ⟨hm1, hmN m n hg⟩
        · exact Finset.mem_Icc.mpr ⟨hm1, by
            by_cases hLN : L ≤ N
            · exact (Finset.mem_Icc.mp hm).2.trans hLN
            · omega⟩
      · intro a ha b hb hEq
        exact hEq
      · intro m hm
        by_cases hmL : m ≤ L
        · refine ⟨m, Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1, hmL⟩, rfl, ?_⟩
          rfl
        · have hz : ∑ n ∈ Finset.Icc 1 N,
              (if bothLowGained N L H p m n then
                rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) (p*n)
              else 0) = 0 := by
            apply Finset.sum_eq_zero
            intro n hn
            have hnot : ¬ bothLowGained N L H p m n := by
              intro hg
              exact hmL hg.2
            simp [hnot]
          refine ⟨1, ?_, by simp, ?_⟩
          · by_cases hL0 : 1 ≤ L
            · exact Finset.mem_Icc.mpr ⟨le_rfl, hL0⟩
            · simp at hL0
          · simp [hz]
      · intro m hm
        rfl

theorem bothNearGainContribution_eq_full_range
    (P : List ℕ) (N L Z H p : ℕ) (hp : 0 < p) (G : ℕ → ℕ → ℝ) :
    bothNearGainContribution P N L Z H p G =
      ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
        if bothNearGained N L H p m n then
          rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) (p*n)
        else 0 := by
  unfold bothNearGainContribution
  have hsub : Finset.Icc 1 (N/p) ⊆ Finset.Icc 1 N := by
    intro x hx
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hx).1,
      (Finset.mem_Icc.mp hx).2.trans (Nat.div_le_self N p)⟩
  calc
    _ = ∑ m ∈ Finset.Icc 1 (N/p), ∑ n ∈ Finset.Icc 1 N,
        if bothNearGained N L H p m n then
          rough (p::P) m * rough (p::P) n * pairWeight P N Z m n * G (p*m) (p*n)
        else 0 := by
      apply Finset.sum_congr rfl
      intro m hm
      apply (Finset.sum_subset hsub).symm
      intro n hn hout
      by_cases hg : bothNearGained N L H p m n
      · have hmoved := hg.1.1
        unfold farActive at hmoved
        have hnDiv : n ≤ N/p := (Nat.le_div_iff_mul_le hp).mpr
          (by simpa only [Nat.mul_comm] using hmoved.2.2.2.1)
        exact (hout (Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, hnDiv⟩)).elim
      · simp [hg]
    _ = _ := by
      apply (Finset.sum_subset hsub).symm
      intro m hm hout
      apply Finset.sum_eq_zero
      intro n hn
      by_cases hg : bothNearGained N L H p m n
      · have hmoved := hg.1.1
        unfold farActive at hmoved
        have hmDiv : m ≤ N/p := (Nat.le_div_iff_mul_le hp).mpr
          (by simpa only [Nat.mul_comm] using hmoved.2.1)
        exact (hout (Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1, hmDiv⟩)).elim
      · simp [hg]

/-- Exact actual-Gram geometric recombination, with all closed-N loss terms removed. -/
theorem transportedCutoff_eq_sector_sum
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (N L Z H p : ℕ) (hp : Nat.Prime p) (T : ℝ)
    (hN : N = ⌊Real.exp T⌋₊) :
    transportedCutoff P N L Z H p T =
      leftGapContribution P N L Z H p (gram P T) -
      leftGainContribution P N L Z H p (gram P T) -
      rightGainContribution P N L Z H p (gram P T) +
      bothLowGainContribution P N L Z H p (gram P T) +
      bothNearGainContribution P N L Z H p (gram P T) := by
  have hp1 : 1 ≤ p := hp.one_lt.le
  have hp0 : 0 < p := hp.pos
  rw [leftGapContribution_eq_full_range P N L Z H p hp0 (gram P T),
    leftGainContribution_eq_full_range P N L Z H p (gram P T),
    rightGainContribution_eq_full_range P N L Z H p hp0 (gram P T),
    bothLowGainContribution_eq_full_range P N L Z H p hp0 (gram P T),
    bothNearGainContribution_eq_full_range P N L Z H p hp0 (gram P T)]
  unfold transportedCutoff quadraticPairing pairing
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n hn
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m hm
  rw [cutoffCommutator_eq_boundaryStrips]
  unfold signedChange
  have hrightLoss :
      rightLost N L H p m n → gram P T m (p*n) = 0 :=
    rightLost_gram_zero P hP T N L H p m n hp1 hN
  have hbothLoss :
      bothLost N L H p m n → gram P T (p*m) (p*n) = 0 :=
    bothLost_gram_zero P hP T N L H p m n hp1 hN
  by_cases hll : leftLost N L H p m n
  · have hleft :=
      leftLost_gram_eq_zero_or_gap P hP T N L H p m n hp1 hN hll
    by_cases hgap : leftGapLost N L H p m n
    · have hlg : ¬ leftGained N L H p m n := fun hg => hll.2 hg.1
      simp only [hll, hgap, hlg, if_true, if_false]
    · have hz := hleft.resolve_right hgap
      have hlg : ¬ leftGained N L H p m n := fun hg => hll.2 hg.1
      simp only [hll, hgap, hlg, if_true, if_false, hz, mul_zero, add_zero]
  · have hgap : ¬ leftGapLost N L H p m n := fun hg => hll hg.1
    by_cases hlg : leftGained N L H p m n
    · simp only [hll, hgap, hlg, if_false, if_true]
    · simp only [hll, hgap, hlg, if_false]
  all_goals
    by_cases hrl : rightLost N L H p m n
    · have hz := hrightLoss hrl
      have hrg : ¬ rightGained N L H p m n := fun hg => hrl.2 hg.1
      simp only [hrl, hrg, if_true, if_false, hz, mul_zero, add_zero, sub_zero]
    · by_cases hrg : rightGained N L H p m n
      · simp only [hrl, hrg, if_false, if_true]
      · simp only [hrl, hrg, if_false]
  all_goals
    by_cases hbl : bothLost N L H p m n
    · have hz := hbothLoss hbl
      have hbg : ¬ bothGained N L H p m n := fun hg => hbl.2 hg.1
      have hlow : ¬ bothLowGained N L H p m n := fun h => hbg h.1
      have hnear : ¬ bothNearGained N L H p m n := fun h => hbg h.1
      simp only [hbl, hbg, hlow, hnear, if_true, if_false, hz, mul_zero, add_zero,
        sub_zero]
      ring
    · by_cases hbg : bothGained N L H p m n
      · rw [bothGained_iff_low_or_near] at hbg
        rcases hbg with hlow | hnear
        · have hnnear : ¬ bothNearGained N L H p m n := by
            intro h
            exact bothLow_near_disjoint ⟨hlow, h⟩
          simp only [hbl, hlow.1, hlow, hnnear, if_false, if_true]
          ring
        · have hnlow : ¬ bothLowGained N L H p m n := by
            intro h
            exact bothLow_near_disjoint ⟨h, hnear⟩
          simp only [hbl, hnear.1, hnlow, hnear, if_false, if_true]
          ring
      · have hlow : ¬ bothLowGained N L H p m n := fun h => hbg h.1
        have hnear : ¬ bothNearGained N L H p m n := fun h => hbg h.1
        simp only [hbl, hbg, hlow, hnear, if_false]
        ring

/-- Complete geometric envelope before any prime-scale choice. -/
theorem transportedCutoff_abs_le
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (N L Z H p : ℕ) (hp : Nat.Prime p) (T K : ℝ)
    (hN : N = ⌊Real.exp T⌋₊) (hK : 0 ≤ K)
    (hG : ∀ a b, 1 ≤ a → 1 ≤ b →
      |gram P T a b| ≤ K * inverseSqrtKernel a b) :
    |transportedCutoff P N L Z H p T| ≤
      (N/p : ℝ) * K *
          (((p-1 : ℕ) : ℝ) * (Real.sqrt (p : ℝ))⁻¹) +
      (N : ℝ) * K * (p : ℝ)⁻¹ *
          (∑ m ∈ Finset.Icc 1 L, (m : ℝ)⁻¹) +
      (N/p : ℝ) * K * Real.sqrt (N : ℝ) *
          (Real.sqrt ((L+1 : ℕ) : ℝ))⁻¹ +
      ((N/p : ℕ) : ℝ) * K * (p : ℝ)⁻¹ *
          (∑ m ∈ Finset.Icc 1 L, (m : ℝ)⁻¹) +
      K * (H : ℝ) * (p : ℝ)⁻¹ *
          (∑ m ∈ Finset.Icc 1 (N/p), (m : ℝ)⁻¹) := by
  rw [transportedCutoff_eq_sector_sum P hP N L Z H p hp T hN]
  have h1 := leftGapContribution_abs_le P N L Z H p hp.one_lt.le
    (gram P T) hK hG
  have h2 := leftGainContribution_abs_le P N L Z H p hp.one_lt.le
    (gram P T) hK hG
  have h3 := rightGainContribution_abs_le P N L Z H p hp.one_lt.le
    (gram P T) hK hG
  have h4 := bothLowGainContribution_abs_le P N L Z H p hp.one_lt.le
    (gram P T) hK hG
  have h5 := bothNearGainContribution_abs_le P N L Z H p hp.one_lt.le
    (gram P T) hK hG
  calc
    _ ≤ |leftGapContribution P N L Z H p (gram P T)| +
        |leftGainContribution P N L Z H p (gram P T)| +
        |rightGainContribution P N L Z H p (gram P T)| +
        |bothLowGainContribution P N L Z H p (gram P T)| +
        |bothNearGainContribution P N L Z H p (gram P T)| := by
      have hA := abs_sub (leftGapContribution P N L Z H p (gram P T))
        (leftGainContribution P N L Z H p (gram P T))
      have hB := abs_sub
        (leftGapContribution P N L Z H p (gram P T) -
          leftGainContribution P N L Z H p (gram P T))
        (rightGainContribution P N L Z H p (gram P T))
      have hC := abs_add
        (leftGapContribution P N L Z H p (gram P T) -
          leftGainContribution P N L Z H p (gram P T) -
          rightGainContribution P N L Z H p (gram P T))
        (bothLowGainContribution P N L Z H p (gram P T))
      have hD := abs_add
        (leftGapContribution P N L Z H p (gram P T) -
          leftGainContribution P N L Z H p (gram P T) -
          rightGainContribution P N L Z H p (gram P T) +
          bothLowGainContribution P N L Z H p (gram P T))
        (bothNearGainContribution P N L Z H p (gram P T))
      linarith
    _ ≤ _ := by linarith

end GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffRecombine
