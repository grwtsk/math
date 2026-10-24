import FormalResearch.RiemannHypothesis.Conversation.FiniteHeadConsumer

/-!
# Kernel-checked short ordinary-prime head at 54

Batch 04's literal head certificate is proved with rational interval tables.
Each inverse square-root interval is checked by its squared endpoint inequality.
Every logarithm upper bound follows from twenty positive Taylor terms below
Real.exp. Floating-point values were used only to propose the rational table;
the Lean inequalities, including every primality case, are the acceptance.
No sampled numerical computation is used as a theorem premise.

Human programme and target 54: grwtsk contributors. Table proposal and local
Lean certificate: OpenAI Codex. Mathlib's exponential-series and square-root
laws retain their upstream identities. The much larger published theta
range and the selected Green bound remain separate obligations.
-/

set_option autoImplicit false
set_option maxHeartbeats 3000000

namespace GRWTSK.RiemannHypothesis.Conversation.ShortPrimeHead

open ArithmeticPrimitive OpenArithmeticSuppliers FiniteHeadConsumer
open scoped BigOperators
noncomputable section

def invLower (n : ℕ) : ℝ :=
  match n with
  | 2 => 70710 / 100000
  | 3 => 57735 / 100000
  | 4 => 50000 / 100000
  | 5 => 44721 / 100000
  | 6 => 40824 / 100000
  | 7 => 37796 / 100000
  | 8 => 35355 / 100000
  | 9 => 33333 / 100000
  | 10 => 31622 / 100000
  | 11 => 30151 / 100000
  | 12 => 28867 / 100000
  | 13 => 27735 / 100000
  | 14 => 26726 / 100000
  | 15 => 25819 / 100000
  | 16 => 25000 / 100000
  | 17 => 24253 / 100000
  | 18 => 23570 / 100000
  | 19 => 22941 / 100000
  | 20 => 22360 / 100000
  | 21 => 21821 / 100000
  | 22 => 21320 / 100000
  | 23 => 20851 / 100000
  | 24 => 20412 / 100000
  | 25 => 20000 / 100000
  | 26 => 19611 / 100000
  | 27 => 19245 / 100000
  | 28 => 18898 / 100000
  | 29 => 18569 / 100000
  | 30 => 18257 / 100000
  | 31 => 17960 / 100000
  | 32 => 17677 / 100000
  | 33 => 17407 / 100000
  | 34 => 17149 / 100000
  | 35 => 16903 / 100000
  | 36 => 16666 / 100000
  | 37 => 16439 / 100000
  | 38 => 16222 / 100000
  | 39 => 16012 / 100000
  | 40 => 15811 / 100000
  | 41 => 15617 / 100000
  | 42 => 15430 / 100000
  | 43 => 15249 / 100000
  | 44 => 15075 / 100000
  | 45 => 14907 / 100000
  | 46 => 14744 / 100000
  | 47 => 14586 / 100000
  | 48 => 14433 / 100000
  | 49 => 14285 / 100000
  | 50 => 14142 / 100000
  | 51 => 14002 / 100000
  | 52 => 13867 / 100000
  | 53 => 13736 / 100000
  | 54 => 13608 / 100000
  | _ => 0

def invUpper (n : ℕ) : ℝ :=
  match n with
  | 2 => 70711 / 100000
  | 3 => 57736 / 100000
  | 4 => 50000 / 100000
  | 5 => 44722 / 100000
  | 6 => 40825 / 100000
  | 7 => 37797 / 100000
  | 8 => 35356 / 100000
  | 9 => 33334 / 100000
  | 10 => 31623 / 100000
  | 11 => 30152 / 100000
  | 12 => 28868 / 100000
  | 13 => 27736 / 100000
  | 14 => 26727 / 100000
  | 15 => 25820 / 100000
  | 16 => 25000 / 100000
  | 17 => 24254 / 100000
  | 18 => 23571 / 100000
  | 19 => 22942 / 100000
  | 20 => 22361 / 100000
  | 21 => 21822 / 100000
  | 22 => 21321 / 100000
  | 23 => 20852 / 100000
  | 24 => 20413 / 100000
  | 25 => 20000 / 100000
  | 26 => 19612 / 100000
  | 27 => 19246 / 100000
  | 28 => 18899 / 100000
  | 29 => 18570 / 100000
  | 30 => 18258 / 100000
  | 31 => 17961 / 100000
  | 32 => 17678 / 100000
  | 33 => 17408 / 100000
  | 34 => 17150 / 100000
  | 35 => 16904 / 100000
  | 36 => 16667 / 100000
  | 37 => 16440 / 100000
  | 38 => 16223 / 100000
  | 39 => 16013 / 100000
  | 40 => 15812 / 100000
  | 41 => 15618 / 100000
  | 42 => 15431 / 100000
  | 43 => 15250 / 100000
  | 44 => 15076 / 100000
  | 45 => 14908 / 100000
  | 46 => 14745 / 100000
  | 47 => 14587 / 100000
  | 48 => 14434 / 100000
  | 49 => 14286 / 100000
  | 50 => 14143 / 100000
  | 51 => 14003 / 100000
  | 52 => 13868 / 100000
  | 53 => 13737 / 100000
  | 54 => 13609 / 100000
  | _ => 0

def logUpper (n : ℕ) : ℝ :=
  match n with
  | 2 => 694 / 1000
  | 3 => 1099 / 1000
  | 5 => 1610 / 1000
  | 7 => 1946 / 1000
  | 11 => 2398 / 1000
  | 13 => 2565 / 1000
  | 17 => 2834 / 1000
  | 19 => 2945 / 1000
  | 23 => 3136 / 1000
  | 29 => 3368 / 1000
  | 31 => 3434 / 1000
  | 37 => 3611 / 1000
  | 41 => 3714 / 1000
  | 43 => 3762 / 1000
  | 47 => 3851 / 1000
  | 53 => 3971 / 1000
  | _ => 0

theorem inv_sqrt_lower {n l : ℝ} (hn : 0 < n) (hl : 0 ≤ l) (hsq : l ^ 2 * n ≤ 1) :
    l ≤ 1 / Real.sqrt n := by
  have hs := Real.sqrt_pos.mpr hn
  have hp : 0 ≤ l * Real.sqrt n := mul_nonneg hl hs.le
  have hb : (l * Real.sqrt n) ^ 2 ≤ 1 := by
    simpa only [mul_pow, Real.sq_sqrt hn.le] using hsq
  apply (le_div_iff₀ hs).mpr
  nlinarith

theorem inv_sqrt_upper {n u : ℝ} (hn : 0 < n) (hu : 0 ≤ u) (hsq : 1 ≤ u ^ 2 * n) :
    1 / Real.sqrt n ≤ u := by
  have hs := Real.sqrt_pos.mpr hn
  have hp : 0 ≤ u * Real.sqrt n := mul_nonneg hu hs.le
  have hb : 1 ≤ (u * Real.sqrt n) ^ 2 := by
    simpa only [mul_pow, Real.sq_sqrt hn.le] using hsq
  apply (div_le_iff₀ hs).mpr
  nlinarith

theorem table_inv_lower {n : ℕ} (hn : n ∈ Finset.Icc 2 54) :
    invLower n ≤ 1 / Real.sqrt n := by
  obtain ⟨hn2, hn54⟩ := Finset.mem_Icc.mp hn
  apply inv_sqrt_lower (by exact_mod_cast (by omega : 0 < n))
  · interval_cases n <;> norm_num [invLower]
  · interval_cases n <;> norm_num [invLower]

theorem table_inv_upper {n : ℕ} (hn : n ∈ Finset.Icc 2 54) :
    1 / Real.sqrt n ≤ invUpper n := by
  obtain ⟨hn2, hn54⟩ := Finset.mem_Icc.mp hn
  apply inv_sqrt_upper (by exact_mod_cast (by omega : 0 < n))
  · interval_cases n <;> norm_num [invUpper]
  · interval_cases n <;> norm_num [invUpper]

theorem log_upper_of_taylor {n L : ℝ} (hn : 0 < n) (hL : 0 ≤ L)
    (hseries : n ≤ ∑ i ∈ Finset.range 20, L ^ i / (Nat.factorial i : ℝ)) : Real.log n ≤ L :=
  (Real.log_le_iff_le_exp hn).mpr (hseries.trans (Real.sum_le_exp_of_nonneg hL 20))

theorem table_prime_log_upper {n : ℕ} (hn : n ∈ Finset.Icc 2 54) (hp : n.Prime) :
    Real.log n ≤ logUpper n := by
  obtain ⟨hn2, hn54⟩ := Finset.mem_Icc.mp hn
  interval_cases n <;> norm_num at hp
  all_goals apply log_upper_of_taylor (by norm_num) (by norm_num [logUpper])
  all_goals norm_num [logUpper, Finset.sum_range_succ, Nat.factorial]

theorem table_log_upper_nonneg {n : ℕ} (hn : n ∈ Finset.Icc 2 54) : 0 ≤ logUpper n := by
  obtain ⟨hn2, hn54⟩ := Finset.mem_Icc.mp hn
  interval_cases n <;> norm_num [logUpper]

theorem table_log_upper_zero {n : ℕ} (hn : n ∈ Finset.Icc 2 54) (hp : ¬ n.Prime) :
    logUpper n = 0 := by
  obtain ⟨hn2, hn54⟩ := Finset.mem_Icc.mp hn
  interval_cases n <;> norm_num [logUpper] <;> exact hp (by norm_num)

def termUpper (n : ℕ) : ℝ :=
  logUpper n * (invUpper n - invLower 54) - (invLower n - invUpper 54)

theorem actual_term_le_table {n : ℕ} (hn : n ∈ Finset.Icc 2 54) :
    ordinaryPrimeCoefficient n * (1 / Real.sqrt n - 1 / Real.sqrt 54) ≤ termUpper n := by
  obtain ⟨hn2, hn54⟩ := Finset.mem_Icc.mp hn
  have hlo := table_inv_lower hn
  have hhi := table_inv_upper hn
  have hlo54 := table_inv_lower (n := 54) (by norm_num)
  have hhi54 := table_inv_upper (n := 54) (by norm_num)
  have hk : 0 ≤ 1 / Real.sqrt n - 1 / Real.sqrt 54 := by
    have hns : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.mpr (by exact_mod_cast (by omega : 0 < n))
    have hle : Real.sqrt (n : ℝ) ≤ Real.sqrt 54 := Real.sqrt_le_sqrt (by exact_mod_cast hn54)
    have h := one_div_le_one_div_of_le hns hle
    linarith
  have hkup : 1 / Real.sqrt n - 1 / Real.sqrt 54 ≤ invUpper n - invLower 54 := by linarith
  have hklow : invLower n - invUpper 54 ≤ 1 / Real.sqrt n - 1 / Real.sqrt 54 := by linarith
  rw [ordinaryPrimeCoefficient_at_source_index hn2]
  unfold termUpper
  by_cases hp : n.Prime
  · rw [if_pos hp]
    have hlog := table_prime_log_upper hn hp
    have hprod := mul_le_mul_of_nonneg_right hlog hk
    have hproduct := mul_le_mul_of_nonneg_left hkup (table_log_upper_nonneg hn)
    nlinarith
  · rw [if_neg hp, table_log_upper_zero hn hp, zero_mul]
    nlinarith

theorem short_head_rational_upper : ordinaryPrimePrimitive 54 ≤ -(538809 / 250000) := by
  unfold ordinaryPrimePrimitive closedPrimitive
  rw [show ⌊(54 : ℝ)⌋₊ = (54 : ℕ) by norm_num]
  unfold finitePrimitive
  calc
    _ ≤ 2 * ∑ n ∈ Finset.Icc 2 54, termUpper n := by
      exact mul_le_mul_of_nonneg_left (Finset.sum_le_sum (fun n hn => actual_term_le_table hn))
        (by norm_num)
    _ ≤ -(538809 / 250000) := by
      rw [← Finset.Ico_add_one_right_eq_Icc, Finset.sum_Ico_eq_sum_range]
      norm_num [termUpper, invLower, invUpper, logUpper, Finset.sum_range_succ]

theorem short_prime_head_strict : ordinaryPrimePrimitive 54 < -(107 / 50) :=
  short_head_rational_upper.trans_lt (by norm_num)

theorem short_prime_head_certificate : ShortPrimeHeadCertificate := short_prime_head_strict.le

/-- The source's logarithmic clock is an explicit local notation adapter. -/
def loggedPrimePrimitive (t : ℝ) : ℝ := ordinaryPrimePrimitive (Real.exp t)

theorem logged_prime_at_log {x : ℝ} (hx : 0 < x) :
    loggedPrimePrimitive (Real.log x) = ordinaryPrimePrimitive x := by
  rw [loggedPrimePrimitive, Real.exp_log hx]

theorem short_prime_head_log_strict : loggedPrimePrimitive (Real.log 54) < -(107 / 50) := by
  simpa only [logged_prime_at_log (by norm_num : (0 : ℝ) < 54)] using short_prime_head_strict

/-- The next consumer discharges the short-head premise, retaining the external theta range. -/
theorem finite_theta_envelope_implies_entrance_reserve (h : FiniteThetaEnvelope) :
    ordinaryPrimePrimitive ReserveConsumer.entranceScale ≤ -ReserveConsumer.reserve :=
  finiteThetaEnvelope_and_head_imply_entranceReserve h short_prime_head_certificate

end
end GRWTSK.RiemannHypothesis.Conversation.ShortPrimeHead
