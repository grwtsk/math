# Complete source: GRWTSK.Combinatorics.Sequences.HypergeometricLowerTail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d585c34e73d979b5517cc5c0ebba6107cf40c1cf` · SHA-256 `d4381a04288835f752f19fc56f3b64813180dabce45d0d9533274dcc81d4e0ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Tactic

/-!
# Finite hypergeometric lower tails

All sample spaces below are the actual fixed-size subsets of a finite set.
The exponential estimates are proved by finite factorial moments and Markov's
inequality, without replacing sampling without replacement by independence.
-/

namespace GRWTSK.HypergeometricLowerTail
open scoped BigOperators

/-- The falling-factorial ratio is bounded by the corresponding power. -/
theorem choose_mul_pow_le (b N j : ℕ) (hb : b ≤ N) :
    (b.choose j : ℝ) * (N : ℝ) ^ j ≤ (N.choose j : ℝ) * (b : ℝ) ^ j := by
  induction j with
  | zero => simp
  | succ j ih =>
    by_cases hj : j < b
    · have hjb : j ≤ b := hj.le
      have hjN : j ≤ N := hjb.trans hb
      have hr : ((b - j : ℕ) : ℝ) * N ≤ ((N - j : ℕ) : ℝ) * b := by
        rw [Nat.cast_sub hjb, Nat.cast_sub hjN]
        have hb' : (b : ℝ) ≤ N := by exact_mod_cast hb
        have hj' : (0 : ℝ) ≤ j := by positivity
        nlinarith
      have hprod := mul_le_mul hr ih (by positivity) (by positivity)
      have hbc : (j + 1 : ℝ) * (b.choose (j + 1) : ℝ) =
          ((b - j : ℕ) : ℝ) * (b.choose j : ℝ) := by
        exact_mod_cast (by simpa only [mul_comm] using Nat.choose_succ_right_eq b j :
          (j + 1) * b.choose (j + 1) = (b - j) * b.choose j)
      have hNc : (j + 1 : ℝ) * (N.choose (j + 1) : ℝ) =
          ((N - j : ℕ) : ℝ) * (N.choose j : ℝ) := by
        exact_mod_cast (by simpa only [mul_comm] using Nat.choose_succ_right_eq N j :
          (j + 1) * N.choose (j + 1) = (N - j) * N.choose j)
      apply (mul_le_mul_iff_of_pos_left (by positivity : (0 : ℝ) < j + 1)).mp
      rw [← mul_assoc, hbc, ← mul_assoc, hNc]
      simpa only [pow_succ, mul_assoc, mul_comm, mul_left_comm] using hprod
    · rw [Nat.choose_eq_zero_of_lt (by omega : b < j + 1)]
      simp only [Nat.cast_zero, zero_mul]
      positivity

theorem choose_ratio_le_pow (b N j : ℕ) (hb : b ≤ N) (hN : 0 < N) (hj : j ≤ N) :
    (b.choose j : ℝ) / (N.choose j : ℝ) ≤ ((b : ℝ) / N) ^ j := by
  have hNc : (0 : ℝ) < N.choose j := by exact_mod_cast Nat.choose_pos hj
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  rw [div_pow]
  apply (div_le_div_iff₀ hNc (pow_pos hNr _)).mpr
  simpa only [mul_comm] using choose_mul_pow_le b N j hb

theorem log_two_lower : (24 / 35 : ℝ) ≤ Real.log 2 := by
  have h₁ := Real.le_log_one_add_of_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 2)
  have h₂ := Real.le_log_one_add_of_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 3)
  norm_num at h₁ h₂
  have hsum : Real.log (3 / 2 : ℝ) + Real.log (4 / 3 : ℝ) = Real.log 2 := by
    rw [← Real.log_mul (by norm_num) (by norm_num)]
    norm_num
  linarith

theorem log_seven_quarters_upper : Real.log (7 / 4 : ℝ) ≤ 9 / 16 := by
  have h := Real.log_div_le_sum_range_add (by norm_num : (0 : ℝ) ≤ 3 / 11)
    (by norm_num : (3 / 11 : ℝ) < 1) 2
  norm_num [Finset.sum_range_succ] at h
  linarith

section FiniteSampling
variable {α : Type*} [DecidableEq α]

/-- Exact factorial moments of the hypergeometric counting law. -/
theorem intersection_choose_sum (S B : Finset α) (hB : B ⊆ S) (k j : ℕ) (hjk : j ≤ k) :
    (∑ R ∈ S.powersetCard k, (R ∩ B).card.choose j) =
      B.card.choose j * (S.card - j).choose (k - j) := by
  have hrow (R : Finset α) : (R ∩ B).card.choose j =
      ∑ T ∈ B.powersetCard j, if T ⊆ R then 1 else 0 := by
    rw [← Finset.card_powersetCard, ← Finset.card_filter]
    congr 1
    ext T
    simp only [Finset.mem_powersetCard, Finset.mem_filter]
    constructor
    · rintro ⟨hT, hc⟩
      exact ⟨⟨hT.trans Finset.inter_subset_right, hc⟩, hT.trans Finset.inter_subset_left⟩
    · rintro ⟨⟨hTB, hc⟩, hTR⟩
      exact ⟨Finset.subset_inter hTR hTB, hc⟩
  simp_rw [hrow]
  rw [Finset.sum_comm]
  calc
    _ = ∑ _T ∈ B.powersetCard j, (S.card - j).choose (k - j) := by
      apply Finset.sum_congr rfl
      intro T hT
      obtain ⟨hTB, hc⟩ := Finset.mem_powersetCard.mp hT
      rw [← Finset.card_filter, Finset.card_filter_powersetCard_subset T S k (hTB.trans hB)]
      · rw [hc]
      · simpa only [hc] using hjk
    _ = _ := by simp

theorem sum_choose_eq_two_pow_of_le (c k : ℕ) (hck : c ≤ k) :
    (∑ j ∈ Finset.range (k + 1), c.choose j) = 2 ^ c := by
  rw [← Nat.sum_range_choose c]
  symm
  apply Finset.sum_subset (Finset.range_mono (by omega))
  intro j _ hj
  have hj' : c < j := by simp only [Finset.mem_range, not_lt] at hj; omega
  rw [Nat.choose_eq_zero_of_lt hj']

/-- The exponential moment is an exact finite sum of factorial moments. -/
theorem two_pow_intersection_sum (S B : Finset α) (hB : B ⊆ S) (k : ℕ) :
    (∑ R ∈ S.powersetCard k, 2 ^ (R ∩ B).card) =
      ∑ j ∈ Finset.range (k + 1), B.card.choose j * (S.card - j).choose (k - j) := by
  have hrow (R : Finset α) (hR : R ∈ S.powersetCard k) :
      2 ^ (R ∩ B).card = ∑ j ∈ Finset.range (k + 1), (R ∩ B).card.choose j := by
    symm
    apply sum_choose_eq_two_pow_of_le
    exact (Finset.card_le_card Finset.inter_subset_left).trans (Finset.mem_powersetCard.mp hR).2.le
  calc
    _ = ∑ R ∈ S.powersetCard k, ∑ j ∈ Finset.range (k + 1), (R ∩ B).card.choose j :=
      Finset.sum_congr rfl hrow
    _ = ∑ j ∈ Finset.range (k + 1), ∑ R ∈ S.powersetCard k, (R ∩ B).card.choose j :=
      Finset.sum_comm
    _ = _ := by
      apply Finset.sum_congr rfl
      intro j hj
      exact intersection_choose_sum S B hB k j (by simp only [Finset.mem_range] at hj; omega)

/-- The exponential moment of the number of sampled bad elements is at most
the corresponding binomial moment. This is proved for the fixed-size law. -/
theorem two_pow_intersection_expect_le (S B : Finset α) (hB : B ⊆ S)
    (hS : S.Nonempty) (k : ℕ) (hk : k ≤ S.card) :
    (∑ R ∈ S.powersetCard k, (2 : ℝ) ^ (R ∩ B).card) / (S.card.choose k : ℝ) ≤
      (1 + (B.card : ℝ) / S.card) ^ k := by
  have hN : 0 < S.card := hS.card_pos
  have hNk : (0 : ℝ) < S.card.choose k := by exact_mod_cast Nat.choose_pos hk
  have hsum : (∑ R ∈ S.powersetCard k, (2 : ℝ) ^ (R ∩ B).card) =
      ∑ j ∈ Finset.range (k + 1), (B.card.choose j : ℝ) * (S.card - j).choose (k - j) := by
    exact_mod_cast two_pow_intersection_sum S B hB k
  rw [hsum, Finset.sum_div]
  calc
    _ ≤ ∑ j ∈ Finset.range (k + 1), (k.choose j : ℝ) * ((B.card : ℝ) / S.card) ^ j := by
      apply Finset.sum_le_sum
      intro j hj
      have hjk : j ≤ k := by simp only [Finset.mem_range] at hj; omega
      have hjN : j ≤ S.card := hjk.trans hk
      have hNj : (0 : ℝ) < S.card.choose j := by exact_mod_cast Nat.choose_pos hjN
      have hc : (S.card.choose k : ℝ) * (k.choose j : ℝ) =
          (S.card.choose j : ℝ) * (S.card - j).choose (k - j) := by
        exact_mod_cast Nat.choose_mul hjk
      have hratio : ((S.card - j).choose (k - j) : ℝ) / (S.card.choose k : ℝ) =
          (k.choose j : ℝ) / (S.card.choose j : ℝ) := by
        apply (div_eq_div_iff hNk.ne' hNj.ne').mpr
        nlinarith [hc]
      calc
        _ = (k.choose j : ℝ) * ((B.card.choose j : ℝ) / (S.card.choose j : ℝ)) := by
          rw [mul_div_assoc, hratio]
          ring
        _ ≤ _ := mul_le_mul_of_nonneg_left
          (choose_ratio_le_pow B.card S.card j (Finset.card_le_card hB) hN hjN) (by positivity)
    _ = _ := by
      rw [show 1 + (B.card : ℝ) / S.card = (B.card : ℝ) / S.card + 1 by ring, add_pow]
      simp only [one_pow, mul_one, mul_comm]

/-- The actual lower-tail probability on the uniform fixed-size subset space. -/
noncomputable def lowerTailProbability (S G : Finset α) (k : ℕ) (q : ℝ) : ℝ := by
  classical
  exact (((S.powersetCard k).filter (fun R => ((R ∩ G).card : ℝ) < q * k)).card : ℝ) /
    (S.card.choose k : ℝ)

theorem exp_log_two_mul_nat (n : ℕ) : Real.exp (Real.log 2 * n) = (2 : ℝ) ^ n := by
  rw [mul_comm, Real.exp_nat_mul, Real.exp_log (by norm_num)]

theorem intersection_complement_card (S G R : Finset α) (hR : R ⊆ S) :
    (R ∩ G).card + (R ∩ (S \ G)).card = R.card := by
  have heq : R ∩ (S \ G) = R \ (R ∩ G) := by
    ext x
    simp only [Finset.mem_inter, Finset.mem_sdiff]
    constructor
    · rintro ⟨hx, hs, hg⟩
      exact ⟨hx, fun h => hg h.2⟩
    · rintro ⟨hx, h⟩
      exact ⟨hx, hR hx, fun hg => h ⟨hx, hg⟩⟩
  rw [heq, Finset.card_sdiff_of_subset Finset.inter_subset_left]
  exact Nat.add_sub_of_le (Finset.card_le_card Finset.inter_subset_left)

/-- Exponential Markov applied to the exact fixed-size law and its proved MGF. -/
theorem lowerTailProbability_le_exponential (S G : Finset α) (hS : S.Nonempty)
    (k : ℕ) (hk : k ≤ S.card) (q : ℝ) :
    lowerTailProbability S G k q ≤
      Real.exp ((k : ℝ) * (Real.log (1 + ((S \ G).card : ℝ) / S.card) -
        (1 - q) * Real.log 2)) := by
  classical
  let space := S.powersetCard k
  let event := space.filter (fun R => ((R ∩ G).card : ℝ) < q * k)
  let a := (1 - q) * (k : ℝ)
  have hlog : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have hpoint (R : Finset α) (hR : R ∈ event) :
      Real.exp (Real.log 2 * a) ≤ (2 : ℝ) ^ (R ∩ (S \ G)).card := by
    obtain ⟨hRspace, hlow⟩ := Finset.mem_filter.mp hR
    obtain ⟨hRS, hRk⟩ := Finset.mem_powersetCard.mp hRspace
    have hcard := intersection_complement_card S G R hRS
    have hcard' : ((R ∩ G).card : ℝ) + (R ∩ (S \ G)).card = k := by
      exact_mod_cast hcard.trans hRk
    have hbad : a ≤ ((R ∩ (S \ G)).card : ℝ) := by dsimp [a]; linarith
    rw [← exp_log_two_mul_nat]
    exact Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hbad hlog)
  have hsum : (event.card : ℝ) * Real.exp (Real.log 2 * a) ≤
      ∑ R ∈ space, (2 : ℝ) ^ (R ∩ (S \ G)).card := by
    calc
      _ = ∑ _R ∈ event, Real.exp (Real.log 2 * a) := by simp
      _ ≤ ∑ R ∈ event, (2 : ℝ) ^ (R ∩ (S \ G)).card := Finset.sum_le_sum hpoint
      _ ≤ _ := by
        apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.filter_subset _ _)
        intro R _ _
        positivity
  have hden : (0 : ℝ) < S.card.choose k := by exact_mod_cast Nat.choose_pos hk
  have hmgf := two_pow_intersection_expect_le S (S \ G) Finset.sdiff_subset hS k hk
  have hmarkov : lowerTailProbability S G k q ≤
      (1 + ((S \ G).card : ℝ) / S.card) ^ k / Real.exp (Real.log 2 * a) := by
    apply (le_div_iff₀ (Real.exp_pos _)).mpr
    change (event.card : ℝ) / (S.card.choose k : ℝ) * Real.exp (Real.log 2 * a) ≤ _
    rw [div_mul_eq_mul_div]
    exact (div_le_div_of_nonneg_right hsum hden.le).trans hmgf
  have hbase : 0 < 1 + ((S \ G).card : ℝ) / S.card := by positivity
  have hpow : (1 + ((S \ G).card : ℝ) / S.card) ^ k =
      Real.exp ((k : ℝ) * Real.log (1 + ((S \ G).card : ℝ) / S.card)) := by
    rw [Real.exp_nat_mul, Real.exp_log hbase]
  rw [hpow, ← Real.exp_sub] at hmarkov
  have heq : (k : ℝ) * Real.log (1 + ((S \ G).card : ℝ) / S.card) - Real.log 2 * a =
      (k : ℝ) * (Real.log (1 + ((S \ G).card : ℝ) / S.card) - (1 - q) * Real.log 2) := by
    dsimp [a]
    ring
  rwa [heq] at hmarkov

/-- A success density at least `1/4` gives the lower-tail estimate required in
Pham–Sauermann Lemma 3.1. -/
theorem lowerTailProbability_quarter (S G : Finset α) (hG : G ⊆ S) (hS : S.Nonempty)
    (k : ℕ) (hk : k ≤ S.card) (hdensity : (S.card : ℝ) / 4 ≤ G.card) :
    lowerTailProbability S G k (1 / 8) ≤ Real.exp (-(k : ℝ) / 32) := by
  have hN : (0 : ℝ) < S.card := by exact_mod_cast hS.card_pos
  have hcard : ((S \ G).card : ℝ) = (S.card : ℝ) - G.card := by
    rw [Finset.card_sdiff_of_subset hG, Nat.cast_sub (Finset.card_le_card hG)]
  have hratio : ((S \ G).card : ℝ) / S.card ≤ 3 / 4 := by
    apply (div_le_iff₀ hN).mpr
    rw [hcard]
    linarith
  have hbase : 0 < 1 + ((S \ G).card : ℝ) / S.card := by positivity
  have hlog : Real.log (1 + ((S \ G).card : ℝ) / S.card) ≤ Real.log (7 / 4) :=
    Real.log_le_log hbase (by linarith)
  have hrate : Real.log (1 + ((S \ G).card : ℝ) / S.card) -
      (1 - (1 / 8 : ℝ)) * Real.log 2 ≤ -(1 / 32 : ℝ) := by
    linarith [log_seven_quarters_upper, log_two_lower]
  have hmul := mul_le_mul_of_nonneg_left hrate (by positivity : (0 : ℝ) ≤ k)
  apply (lowerTailProbability_le_exponential S G hS k hk (1 / 8)).trans
  apply Real.exp_le_exp.mpr
  nlinarith [hmul]

/-- A success density at least `3/4` gives the lower-tail estimate required in
Pham–Sauermann Lemma 3.3. -/
theorem lowerTailProbability_threeQuarters (S G : Finset α) (hG : G ⊆ S) (hS : S.Nonempty)
    (k : ℕ) (hk : k ≤ S.card) (hdensity : (3 / 4 : ℝ) * S.card ≤ G.card) :
    lowerTailProbability S G k (1 / 2) ≤ Real.exp (-(k : ℝ) / 24) := by
  have hN : (0 : ℝ) < S.card := by exact_mod_cast hS.card_pos
  have hcard : ((S \ G).card : ℝ) = (S.card : ℝ) - G.card := by
    rw [Finset.card_sdiff_of_subset hG, Nat.cast_sub (Finset.card_le_card hG)]
  have hratio : ((S \ G).card : ℝ) / S.card ≤ 1 / 4 := by
    apply (div_le_iff₀ hN).mpr
    rw [hcard]
    linarith
  have hbase : 0 < 1 + ((S \ G).card : ℝ) / S.card := by positivity
  have hlog : Real.log (1 + ((S \ G).card : ℝ) / S.card) ≤ Real.log (5 / 4) :=
    Real.log_le_log hbase (by linarith)
  have hlog54 : Real.log (5 / 4 : ℝ) ≤ 1 / 4 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 5 / 4)
    linarith
  have hrate : Real.log (1 + ((S \ G).card : ℝ) / S.card) -
      (1 - (1 / 2 : ℝ)) * Real.log 2 ≤ -(1 / 24 : ℝ) := by
    linarith [log_two_lower]
  have hmul := mul_le_mul_of_nonneg_left hrate (by positivity : (0 : ℝ) ≤ k)
  apply (lowerTailProbability_le_exponential S G hS k hk (1 / 2)).trans
  apply Real.exp_le_exp.mpr
  nlinarith [hmul]

end FiniteSampling

end GRWTSK.HypergeometricLowerTail
```
