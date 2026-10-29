/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupRoughMixedCrossPrime

/-!
# A paid direct negative-part band of the ORIGINAL joint mean

Recombine the actual extraction-prime weights before estimating. The coefficient
is the fraction of distinct divisors of the ORIGINAL larger core that belong to
the retained short-or-coprime sector. It lies in [0,1], including zero-count
indices; it is not an arbitrary certificate. Both pair orientations remain.

The band 0 < n-m <= 2^floor(3j/4) has an independent 7/8-rate allowance.
The complementary far-gap signed sum is explicit and UNBOUNDED here.
No variance, new RH interface, or source-mass ratio is used.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay, axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal

open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughCoreStrip
open GRWTSK.NumberTheory.Moebius.PickupRoughSharedPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughLongPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughJointSecondMoment
open GRWTSK.NumberTheory.Moebius.PickupRoughMixedCrossPrime

/-- Same selected-divisor inventory and same short/coprime mask as joint. -/
def keptDivisors (P : List ℕ) (N Z m n : ℕ) : Finset ℕ :=
  (selectedDivisors (freshPrimes P N) n).filter (fun p => p ≤ Z ∨ ¬p ∣ m)

def pairWeight (P : List ℕ) (N Z m n : ℕ) : ℝ :=
  ((keptDivisors P N Z m n).card : ℝ) / (omega P N n : ℝ)

theorem pairWeight_nonnegative (P : List ℕ) (N Z m n : ℕ) :
    0 ≤ pairWeight P N Z m n := by unfold pairWeight; positivity

/-- This bounds the actual retained fraction, not the original Mobius observation. -/
theorem pairWeight_le_one (P : List ℕ) (N Z m n : ℕ) :
    pairWeight P N Z m n ≤ 1 := by
  by_cases hz : omega P N n = 0
  · simp [pairWeight, hz]
  · have hp : (0 : ℝ) < (omega P N n : ℝ) := by exact_mod_cast (Nat.pos_of_ne_zero hz)
    have hc : (keptDivisors P N Z m n).card ≤ omega P N n := by
      exact Finset.card_filter_le _ _
    unfold pairWeight
    exact (div_le_one hp).mpr (by exact_mod_cast hc)

/-- A literal finite mask count, before any division or source estimate. -/
theorem kept_sum (P : List ℕ) (N Z m n : ℕ) (c : ℝ) :
    (∑ p ∈ freshPrimes P N, if p ∣ n ∧ (p ≤ Z ∨ ¬p ∣ m) then c else 0) =
      (keptDivisors P N Z m n).card*c := by
  calc
    _ = ∑ _p ∈ keptDivisors P N Z m n, c := by
      simp only [keptDivisors, selectedDivisors, Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro p _
      by_cases hd : p ∣ n <;> by_cases hg : p ≤ Z ∨ ¬p ∣ m <;> simp [hd, hg]
    _ = _ := by simp

/-- Restore the original larger index n=p*q, not a new inner cutoff. -/
theorem joint_prime_reindex (P : List ℕ) (N L Z : ℕ) (G : ℕ → ℕ → ℝ)
    {p : ℕ} (hp : p ∈ freshPrimes P N) :
    (∑ q ∈ Finset.Icc 1 (N/p), ∑ m ∈ Finset.Icc 1 N,
      if inWindow L N N p q m ∧ (p ≤ Z ∨ ¬p ∣ m) then atom P N G p q m else 0) =
    ∑ n ∈ Finset.Icc 1 N, if p ∣ n then
      ∑ m ∈ Finset.Icc 1 N,
        if L < m ∧ m < n ∧ (p ≤ Z ∨ ¬p ∣ m) then
          (rough P m*correctedQuotient P p (n/p)/(omega P N n : ℝ))*G m n
        else 0
      else 0 := by
  let f : ℕ → ℝ := fun n => ∑ m ∈ Finset.Icc 1 N,
    if L < m ∧ m < n ∧ (p ≤ Z ∨ ¬p ∣ m) then
      (rough P m*correctedQuotient P p (n/p)/(omega P N n : ℝ))*G m n else 0
  have hp0 := (fresh_mem hp).1.pos
  have he := sum_divisible_window_eq_quotient 0 N p hp0 f
  simp only [zero_add, add_zero] at he
  calc
    _ = ∑ q ∈ Finset.Icc 1 (N/p), if 0 < p*q then f (p*q) else 0 := by
      apply Finset.sum_congr rfl
      intro q hq
      have hq0 := (Finset.mem_Icc.mp hq).1
      have hcut : p*q ≤ N := by
        simpa only [Nat.mul_comm] using (Nat.le_div_iff_mul_le hp0).mp (Finset.mem_Icc.mp hq).2
      rw [if_pos (Nat.mul_pos hp0 hq0)]
      unfold f
      apply Finset.sum_congr rfl
      intro m hm
      simp only [inWindow, hcut, (Finset.mem_Icc.mp hm).2, true_and, and_true, and_assoc,
        atom, Nat.mul_div_cancel_left q hp0]
    _ = _ := he.symm

/-- Recombination uses the per-divisor Mobius identity INCLUDING repeated primes.
This is the actual joint mean, not a replacement remainder. -/
theorem joint_pair_identity (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (N L Z : ℕ) (G : ℕ → ℕ → ℝ) :
    joint P N L N N Z G =
      -(∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
        if L < m ∧ m < n then rough P m*rough P n*pairWeight P N Z m n*G m n else 0) := by
  rw [joint_prime_first]
  have hrow (p : ℕ) (hp : p ∈ freshPrimes P N) :
      (∑ q ∈ Finset.Icc 1 (N/p), ∑ m ∈ Finset.Icc 1 N,
        if inWindow L N N p q m ∧ (p ≤ Z ∨ ¬p ∣ m) then atom P N G p q m else 0) =
      ∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
        if L < m ∧ m < n then
          (if p ∣ n ∧ (p ≤ Z ∨ ¬p ∣ m) then
            -(rough P m*rough P n*G m n)/(omega P N n : ℝ) else 0)
        else 0 := by
    rw [joint_prime_reindex P N L Z G hp]
    apply Finset.sum_congr rfl
    intro n _
    by_cases hd : p ∣ n
    · rw [if_pos hd]
      have hr := rough_divisor_identity P hP hp hd
      have hc : correctedQuotient P p (n/p) = -rough P n := by linarith
      apply Finset.sum_congr rfl
      intro m _
      by_cases hmn : L < m ∧ m < n <;> by_cases hg : p ≤ Z ∨ ¬p ∣ m <;>
        simp [hmn, hg, hd, hc] <;> ring
    · simp [hd]
  calc
    _ = ∑ p ∈ freshPrimes P N, ∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
        if L < m ∧ m < n then
          (if p ∣ n ∧ (p ≤ Z ∨ ¬p ∣ m) then
            -(rough P m*rough P n*G m n)/(omega P N n : ℝ) else 0)
        else 0 := Finset.sum_congr rfl hrow
    _ = ∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N, ∑ p ∈ freshPrimes P N,
        if L < m ∧ m < n then
          (if p ∣ n ∧ (p ≤ Z ∨ ¬p ∣ m) then
            -(rough P m*rough P n*G m n)/(omega P N n : ℝ) else 0)
        else 0 := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n _
      rw [Finset.sum_comm]
    _ = _ := by
      simp only [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro n _
      apply Finset.sum_congr rfl
      intro m _
      by_cases hmn : L < m ∧ m < n
      · simp only [if_pos hmn]
        rw [kept_sum]
        unfold pairWeight
        ring
      · simp [hmn]

/-- A band of the negative part -2*joint, with both ordered orientations. -/
def nearNegative (P : List ℕ) (N L Z H : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  2*∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
    if L < m ∧ m < n ∧ n ≤ m+H
    then rough P m*rough P n*pairWeight P N Z m n*G m n else 0

/-- The exact remaining FAR sum; no growth property is asserted for it. -/
def farNegative (P : List ℕ) (N L Z H : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  2*∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
    if L < m ∧ m+H < n
    then rough P m*rough P n*pairWeight P N Z m n*G m n else 0

theorem negative_joint_partition (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (N L Z H : ℕ) (G : ℕ → ℕ → ℝ) :
    -2*joint P N L N N Z G = nearNegative P N L Z H G + farNegative P N L Z H G := by
  rw [joint_pair_identity P hP]
  unfold nearNegative farNegative
  rw [← mul_add, ← Finset.sum_add_distrib]
  have he : (∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
      if L < m ∧ m < n then rough P m*rough P n*pairWeight P N Z m n*G m n else 0) =
      ∑ n ∈ Finset.Icc 1 N,
        ((∑ m ∈ Finset.Icc 1 N, if L < m ∧ m < n ∧ n ≤ m+H
          then rough P m*rough P n*pairWeight P N Z m n*G m n else 0) +
         (∑ m ∈ Finset.Icc 1 N, if L < m ∧ m+H < n
          then rough P m*rough P n*pairWeight P N Z m n*G m n else 0)) := by
    apply Finset.sum_congr rfl
    intro n _
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro m _
    by_cases hl : L < m <;> by_cases hmn : m < n <;> by_cases hb : n ≤ m+H <;>
      simp [hl, hmn, hb, show m+H<n ↔ ¬n≤m+H by omega] <;> omega
  rw [← he]
  ring

/-- Bound the literal source multiplier, without assuming a sign for its Gram. -/
theorem pair_coefficient_abs_le (P : List ℕ) (N Z m n : ℕ) :
    |rough P m*rough P n*pairWeight P N Z m n| ≤ 1 := by
  have hp : |rough P m*rough P n| ≤ 1 := by
    rw [abs_mul]
    simpa using mul_le_mul (rough_abs_le_one P m) (rough_abs_le_one P n)
      (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
  rw [abs_mul, abs_of_nonneg (pairWeight_nonnegative P N Z m n)]
  simpa using mul_le_mul hp (pairWeight_le_one P N Z m n)
    (pairWeight_nonnegative P N Z m n) (by norm_num : (0 : ℝ) ≤ 1)

/-- The actual Gram majorant gains 1/m on the strict triangle m<n. -/
theorem pair_atom_abs_le (P : List ℕ) (N Z : ℕ) (G : ℕ → ℕ → ℝ)
    {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n → |G m n| ≤ K*inverseSqrtKernel m n)
    {m n : ℕ} (hm : 1 ≤ m) (hmn : m < n) :
    |rough P m*rough P n*pairWeight P N Z m n*G m n| ≤ K/(m : ℝ) := by
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hs : 0 < Real.sqrt (m : ℝ) := Real.sqrt_pos.mpr hmR
  have hmono : (Real.sqrt (n : ℝ))⁻¹ ≤ (Real.sqrt (m : ℝ))⁻¹ := by
    simpa only [one_div] using one_div_le_one_div_of_le hs
      (Real.sqrt_le_sqrt (by exact_mod_cast hmn.le))
  have he : (Real.sqrt (m : ℝ))⁻¹*(Real.sqrt (m : ℝ))⁻¹ = (m : ℝ)⁻¹ := by
    rw [← mul_inv_rev, ← pow_two, Real.sq_sqrt hmR.le]
  rw [abs_mul]
  calc
    _ ≤ 1*|G m n| := mul_le_mul_of_nonneg_right (pair_coefficient_abs_le P N Z m n) (abs_nonneg _)
    _ ≤ K*inverseSqrtKernel m n := by simpa only [one_mul] using hG m n hm (by omega)
    _ ≤ K*((Real.sqrt (m : ℝ))⁻¹*(Real.sqrt (m : ℝ))⁻¹) := by
      unfold inverseSqrtKernel
      gcongr <;> first | assumption | positivity
    _ = K/(m : ℝ) := by rw [he]; ring

/-- At most H closed integer successors of m are in the band, even at the cutoff. -/
theorem near_count_le (N H m : ℕ) :
    ((Finset.Icc 1 N).filter (fun n => m<n ∧ n≤m+H)).card ≤ H := by
  have hsub : (Finset.Icc 1 N).filter (fun n => m<n ∧ n≤m+H) ⊆
      Finset.Icc (m+1) (m+H) := by
    intro n hn
    have h := (Finset.mem_filter.mp hn).2
    exact Finset.mem_Icc.mpr ⟨by omega, h.2⟩
  have hc : (Finset.Icc (m+1) (m+H)).card = H := by rw [Nat.card_Icc]; omega
  simpa only [hc] using Finset.card_le_card hsub

/-- Independent direct negative-part bound, with every extraction prime already
recombined into its proved [0,1] fraction. No correlation premise is supplied. -/
theorem nearNegative_abs_le (P : List ℕ) (N L Z H : ℕ) (G : ℕ → ℕ → ℝ)
    {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n → |G m n| ≤ K*inverseSqrtKernel m n) :
    |nearNegative P N L Z H G| ≤ 2*K*(H : ℝ)*
      (∑ m ∈ Finset.Icc 1 N, (m : ℝ)⁻¹) := by
  have hrow (m : ℕ) (hm : m ∈ Finset.Icc 1 N) :
      |∑ n ∈ Finset.Icc 1 N, if L<m ∧ m<n ∧ n≤m+H
        then rough P m*rough P n*pairWeight P N Z m n*G m n else 0| ≤
      (H : ℝ)*(K/(m : ℝ)) := by
    have hcount : (((Finset.Icc 1 N).filter (fun n => m<n ∧ n≤m+H)).card : ℝ) ≤ H := by
      exact_mod_cast near_count_le N H m
    calc
      _ ≤ ∑ n ∈ Finset.Icc 1 N, |if L<m ∧ m<n ∧ n≤m+H
          then rough P m*rough P n*pairWeight P N Z m n*G m n else 0| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ n ∈ Finset.Icc 1 N, if m<n ∧ n≤m+H then K/(m : ℝ) else 0 := by
        apply Finset.sum_le_sum
        intro n _
        by_cases hg : m<n ∧ n≤m+H
        · rw [if_pos hg]
          by_cases hl : L<m
          · simp only [hl, hg.1, hg.2, and_self, if_true]
            exact pair_atom_abs_le P N Z G hK hG (Finset.mem_Icc.mp hm).1 hg.1
          · simp only [hl, false_and, if_false, abs_zero]
            positivity
        · have hn : ¬(L<m ∧ m<n ∧ n≤m+H) := fun h => hg h.2
          simp [hg, hn]
      _ = (((Finset.Icc 1 N).filter (fun n => m<n ∧ n≤m+H)).card : ℝ)*(K/(m : ℝ)) := by
        rw [← Finset.sum_filter]
        simp
      _ ≤ _ := mul_le_mul_of_nonneg_right hcount (by positivity)
  have hs : |∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
      if L<m ∧ m<n ∧ n≤m+H
      then rough P m*rough P n*pairWeight P N Z m n*G m n else 0| ≤
      K*(H : ℝ)*(∑ m ∈ Finset.Icc 1 N, (m : ℝ)⁻¹) := by
    calc
      _ ≤ ∑ m ∈ Finset.Icc 1 N, |∑ n ∈ Finset.Icc 1 N,
          if L<m ∧ m<n ∧ n≤m+H
          then rough P m*rough P n*pairWeight P N Z m n*G m n else 0| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ m ∈ Finset.Icc 1 N, (H : ℝ)*(K/(m : ℝ)) := Finset.sum_le_sum hrow
      _ = _ := by simp only [div_eq_mul_inv, Finset.mul_sum]; ring
  unfold nearNegative
  rw [Finset.sum_comm, abs_mul, show |(2 : ℝ)| = 2 by norm_num]
  nlinarith

/-- A gap partition only; this does not change P_j, N_j, or the inner horizon. -/
def gapWidth (j : ℕ) : ℕ := 2 ^ (3*j/4)

theorem gapWidth_le (j : ℕ) :
    (gapWidth j : ℝ) ≤ Real.exp ((3/4)*dyadicTime j) := by
  have hk : 4*(3*j/4) ≤ 3*j := by
    simpa only [Nat.mul_comm] using Nat.div_mul_le_self (3*j) 4
  have hkR : 4*((3*j/4 : ℕ) : ℝ) ≤ 3*(j : ℝ) := by exact_mod_cast hk
  rw [gapWidth, ← exp_dyadicTime (3*j/4)]
  apply Real.exp_le_exp.mpr
  simp only [dyadicTime, GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential.time]
  nlinarith [mul_le_mul_of_nonneg_right hkR log_two_positive.le]

/-- A wide, previously unpaid band of the required NEGATIVE part is paid directly. -/
theorem nearNegative_seven_eighths (j : ℕ) :
    |nearNegative (stages j) (2^j) (thinCutoff j) (thinCutoff j) (gapWidth j)
        (gram (stages j) (dyadicTime j))| ≤
      (4800*Real.exp (96/Real.log 2))*Real.exp ((7/8)*dyadicTime j) := by
  let T := dyadicTime j
  have hT : 0 ≤ T := dyadicTime_nonnegative j
  have hG (m n : ℕ) (hm : 1 ≤ m) (hn : 1 ≤ n) :
      |gram (stages j) T m n| ≤ (4*T*factor (stages j)^2)*inverseSqrtKernel m n := by
    simpa only [inverseSqrtKernel, mul_assoc] using gram_abs_le (stages j) (stages_prime j) hT hm hn
  have hb := nearNegative_abs_le (stages j) (2^j) (thinCutoff j) (thinCutoff j)
    (gapWidth j) (gram (stages j) T) (by positivity : 0 ≤ 4*T*factor (stages j)^2) hG
  have hh : (∑ m ∈ Finset.Icc 1 (2^j), (m : ℝ)⁻¹) ≤ 1+T := by
    simpa only [log_dyadic_cutoff] using reciprocal_sum_le (2^j)
  have hw := gapWidth_le j
  have ht := time_harmonic_factor_le j
  calc
    _ ≤ 2*(4*T*factor (stages j)^2)*(gapWidth j : ℝ)*
        (∑ m ∈ Finset.Icc 1 (2^j), (m : ℝ)⁻¹) := hb
    _ ≤ 8*(T*factor (stages j)^2*(1+T))*Real.exp ((3/4)*T) := by
      have hprod := mul_le_mul hw hh
        (Finset.sum_nonneg (fun _ _ => by positivity)) (Real.exp_pos _).le
      have hc := mul_le_mul_of_nonneg_left hprod (show 0 ≤ 8*T*factor (stages j)^2 by positivity)
      convert hc using 1 <;> ring
    _ ≤ 8*(600*Real.exp (96/Real.log 2)*Real.exp (T/8))*Real.exp ((3/4)*T) := by
      exact mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left ht (by norm_num)) (Real.exp_pos _).le
    _ = _ := by
      have he : Real.exp (T/8)*Real.exp ((3/4)*T) = Real.exp ((7/8)*T) := by
        rw [← Real.exp_add]
        congr 1
        ring
      calc
        _ = (4800*Real.exp (96/Real.log 2))*(Real.exp (T/8)*Real.exp ((3/4)*T)) := by ring
        _ = _ := by rw [he]

/-- Concrete original-source allowance plus its explicit FAR signed sum.
No bound on farNegative, full-energy exponent improvement, or RH is asserted. -/
theorem interaction_le_paid_and_far (j : ℕ) :
    interaction (stages j) (dyadicTime j) ≤
      (1536*Real.exp (64/Real.log 2)+4800*Real.exp (96/Real.log 2))*
        Real.exp ((7/8)*dyadicTime j) +
      farNegative (stages j) (2^j) (thinCutoff j) (thinCutoff j) (gapWidth j)
        (gram (stages j) (dyadicTime j)) := by
  let T := dyadicTime j
  have hT : 0 ≤ T := dyadicTime_nonnegative j
  have hL : thinCutoff j ≤ ⌊Real.exp T⌋₊ := by
    rw [dyadic_cutoff]
    exact Nat.sqrt_le_self (2^j)
  have he := interaction_joint (stages j) (stages_prime j) T (thinCutoff j) (thinCutoff j) hL
  rw [dyadic_cutoff] at he
  have hp := negative_joint_partition (stages j) (stages_prime j) (2^j)
    (thinCutoff j) (thinCutoff j) (gapWidth j) (gram (stages j) T)
  have hlo := (le_abs_self (thinInteraction (stages j) T (thinCutoff j))).trans
    (thinInteraction_seven_eighths j)
  have hn := (le_abs_self (nearNegative (stages j) (2^j) (thinCutoff j) (thinCutoff j)
    (gapWidth j) (gram (stages j) T))).trans (nearNegative_seven_eighths j)
  have hs := (le_abs_self (orderedShared (stages j) T (thinCutoff j) (thinCutoff j))).trans
    (orderedShared_five_eighths j)
  unfold orderedShared at hs
  rw [dyadic_cutoff] at hs
  have hr : Real.exp ((5/8)*T) ≤ Real.exp ((7/8)*T) := Real.exp_le_exp.mpr (by nlinarith)
  have hsr := mul_le_mul_of_nonneg_left hr (show 0 ≤ 1024*Real.exp (64/Real.log 2) by positivity)
  linarith

end GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal
