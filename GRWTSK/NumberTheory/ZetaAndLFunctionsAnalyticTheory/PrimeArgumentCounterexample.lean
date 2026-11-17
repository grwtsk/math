/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.NumberTheory.Bertrand
import Mathlib.NumberTheory.Chebyshev

/-!
# Moving a Chebyshev defect to a prime argument

The least prime above `n` adds exactly one term to the Chebyshev theta sum.
Bertrand's postulate controls the scale after this change of argument. This
gives a transfer from a sufficiently large psi defect to a prime argument
for any arithmetic test implied by the resulting theta defect.
-/

namespace GRWTSK.PrimeArgumentCounterexample

open Chebyshev Real

/-- The scale used in the one-sided Chebyshev estimates. -/
noncomputable def defectScale (n : ℕ) : ℝ := sqrt n * (log n) ^ 2

/-- The least prime above `n` lies within Bertrand's bound and adds one theta term. -/
theorem exists_next_prime_theta_eq {n : ℕ} (hn : n ≠ 0) :
    ∃ p : ℕ, p.Prime ∧ n < p ∧ p ≤ 2 * n ∧ (theta p = theta n + log p) := by
  have hex := Nat.exists_prime_lt_and_le_two_mul n hn
  let p := Nat.find hex
  obtain ⟨hp, hnp, hbound⟩ : p.Prime ∧ n < p ∧ p ≤ 2 * n := Nat.find_spec hex
  have hset : Nat.primesLE p = insert p (Nat.primesLE n) := by
    ext q
    simp only [Nat.mem_primesLE, Finset.mem_insert]
    constructor
    · rintro ⟨hqp, hq⟩
      by_cases hqn : q ≤ n
      · exact Or.inr ⟨hqn, hq⟩
      · have hpq : p ≤ q :=
          Nat.find_min' hex ⟨hq, Nat.lt_of_not_ge hqn, hqp.trans hbound⟩
        exact Or.inl (hqp.antisymm hpq)
    · rintro (rfl | ⟨hqn, hq⟩)
      · exact ⟨le_rfl, hp⟩
      · exact ⟨hqn.trans hnp.le, hq⟩
  refine ⟨p, hp, hnp, hbound, ?_⟩
  have hpout : p ∉ Nat.primesLE n := fun hmem => hnp.not_ge (Nat.mem_primesLE.mp hmem).1
  rw [theta_eq_sum_primesLE_log, theta_eq_sum_primesLE_log, hset,
    Finset.sum_insert hpout, add_comm]

private theorem one_le_log_four : 1 ≤ log (4 : ℝ) := by
  have hlogInv := log_le_sub_one_of_pos (show 0 < (2 : ℝ)⁻¹ by norm_num)
  rw [log_inv] at hlogInv
  rw [show (4 : ℝ) = 2 * 2 by norm_num, log_mul (by norm_num) (by norm_num)]
  norm_num at hlogInv
  linarith

private theorem sqrt_four : sqrt (4 : ℝ) = 2 := by
  rw [show (4 : ℝ) = (2 : ℝ) ^ 2 by norm_num, sqrt_sq (by norm_num)]

private theorem log_at_least_one {n : ℕ} (hn : 253 < n) : 1 ≤ log (n : ℝ) := by
  have hfour : (4 : ℝ) ≤ n := by exact_mod_cast (show 4 ≤ n by omega)
  exact one_le_log_four.trans (log_le_log (by norm_num) hfour)

private theorem log_le_defectScale {n : ℕ} (hn : 253 < n) : log (n : ℝ) ≤ defectScale n := by
  have hlog := log_at_least_one hn
  have hsqrt : 1 ≤ sqrt (n : ℝ) := by
    rw [← sqrt_one]
    exact sqrt_le_sqrt (by exact_mod_cast (show 1 ≤ n by omega))
  calc
    log (n : ℝ) ≤ log (n : ℝ) ^ 2 := by nlinarith
    _ = 1 * log (n : ℝ) ^ 2 := by ring
    _ ≤ defectScale n := mul_le_mul_of_nonneg_right hsqrt (sq_nonneg _)

/-- The exact clock bound and safe integer threshold bound the Chebyshev theta defect. -/
theorem theta_defect_le_of_safe {n q deficit : ℕ} (hn : 253 < n)
    (hclock : 4 ^ q ≤ 3 * n) (hsafe : deficit ≤ (q + 1) * 2 ^ q)
    (hdefect : (n : ℝ) - theta n ≤ ((deficit : ℝ) + 3) * log n + 1) :
    (n : ℝ) - theta n ≤ 8 * defectScale n := by
  have hnPos : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hlogN := log_at_least_one hn
  have hclockR : (4 : ℝ) ^ q ≤ 3 * n := by exact_mod_cast hclock
  have h3 : (3 : ℝ) ≤ n := by exact_mod_cast (show 3 ≤ n by omega)
  have hclockSq : (4 : ℝ) ^ q ≤ (n : ℝ) ^ 2 :=
    hclockR.trans (by nlinarith only [mul_nonneg (sub_nonneg.mpr h3) hnPos.le])
  have hqLog := log_le_log (by positivity : 0 < (4 : ℝ) ^ q) hclockSq
  rw [log_pow, log_pow] at hqLog
  have hqLe : (q : ℝ) + 1 ≤ 3 * log n := by
    have hq0 : 0 ≤ (q : ℝ) := by positivity
    have hqLog4 := mul_le_mul_of_nonneg_left one_le_log_four hq0
    norm_num at hqLog hqLog4
    linarith
  have h2Pow : (2 : ℝ) ^ q ≤ 2 * sqrt n := by
    apply le_of_sq_le_sq _ (by positivity)
    have hpow : ((2 : ℝ) ^ q) ^ 2 = (4 : ℝ) ^ q := by
      rw [pow_right_comm]
      norm_num
    rw [hpow, mul_pow, sq_sqrt hnPos.le]
    linarith
  have hsafeR : (deficit : ℝ) ≤ ((q : ℝ) + 1) * 2 ^ q := by exact_mod_cast hsafe
  have hproduct : ((q : ℝ) + 1) * 2 ^ q ≤ (3 * log n) * (2 * sqrt n) :=
    mul_le_mul hqLe h2Pow (by positivity) (by linarith)
  have hmain : (deficit : ℝ) * log n ≤ 6 * defectScale n := by
    calc
      (deficit : ℝ) * log n ≤ ((3 * log n) * (2 * sqrt n)) * log n :=
        mul_le_mul_of_nonneg_right (hsafeR.trans hproduct) (by linarith)
      _ = 6 * defectScale n := by unfold defectScale; ring
  have hsqrt : (2 : ℝ) ≤ sqrt n := by
    rw [← sqrt_four]
    exact sqrt_le_sqrt (by exact_mod_cast (show 4 ≤ n by omega))
  have hlogSq : log (n : ℝ) ≤ (log (n : ℝ)) ^ 2 := by nlinarith
  have herror : 3 * log (n : ℝ) + 1 ≤ 2 * defectScale n := by
    have h := mul_le_mul hsqrt hlogSq (by linarith : 0 ≤ log (n : ℝ))
      (sqrt_nonneg (n : ℝ))
    unfold defectScale
    linarith
  rw [add_mul] at hdefect
  linarith only [hdefect, hmain, herror]

/-- A psi defect at `n` gives a proportionate theta defect at the next prime. -/
theorem exists_prime_theta_defect_of_psi_defect {n : ℕ} (hn : 253 < n)
    (hdefect : 100 * defectScale n < (n : ℝ) - psi n) :
    ∃ p : ℕ, p.Prime ∧ n < p ∧ p ≤ 2 * n ∧ 8 * defectScale p < (p : ℝ) - theta p := by
  obtain ⟨p, hp, hnp, hbound, htheta⟩ := exists_next_prime_theta_eq (n := n) (by omega)
  have hnPos : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hpPos : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have hp2 : (p : ℝ) ≤ 2 * n := by exact_mod_cast hbound
  have hlogN := log_at_least_one hn
  have hlogP : 0 ≤ log (p : ℝ) := log_nonneg (by exact_mod_cast hp.one_lt.le)
  have hlog : log (p : ℝ) ≤ 2 * log (n : ℝ) := by
    calc
      log (p : ℝ) ≤ log (2 * n) := log_le_log hpPos hp2
      _ = log 2 + log n := log_mul (by norm_num) hnPos.ne'
      _ ≤ 2 * log n := by
        have h := log_le_log (by norm_num : (0 : ℝ) < 2)
          (show (2 : ℝ) ≤ n by exact_mod_cast (show 2 ≤ n by omega))
        linarith
  have hsqrt : sqrt (p : ℝ) ≤ 2 * sqrt (n : ℝ) := by
    calc
      sqrt (p : ℝ) ≤ sqrt (4 * n) := sqrt_le_sqrt (by linarith)
      _ = 2 * sqrt n := by rw [sqrt_mul (by norm_num), sqrt_four]
  have hscale : defectScale p ≤ 8 * defectScale n := by
    calc
      sqrt (p : ℝ) * log (p : ℝ) ^ 2 ≤ (2 * sqrt (n : ℝ)) * (2 * log (n : ℝ)) ^ 2 :=
        mul_le_mul hsqrt (pow_le_pow_left₀ hlogP hlog 2) (sq_nonneg _) (by positivity)
      _ = 8 * defectScale n := by unfold defectScale; ring
  have hlogScale := log_le_defectScale hn
  have hthetaPsi := theta_le_psi (n : ℝ)
  have hnpReal : (n : ℝ) < p := by exact_mod_cast hnp
  refine ⟨p, hp, hnp, hbound, ?_⟩
  linarith

/-- A test implied by the indicated theta defect has a bad prime argument. -/
theorem exists_prime_counterexample_of_psi_defect (Bad : ℕ → Prop)
    (hBad : ∀ p : ℕ, 253 < p → 8 * defectScale p < (p : ℝ) - theta p → Bad p)
    (hψ : ∃ n : ℕ, 253 < n ∧ 100 * defectScale n < (n : ℝ) - psi n) :
    ∃ p : ℕ, p.Prime ∧ Bad p := by
  obtain ⟨n, hn, hdefect⟩ := hψ
  obtain ⟨p, hp, hnp, _, hpDefect⟩ := exists_prime_theta_defect_of_psi_defect hn hdefect
  exact ⟨p, hp, hBad p (hn.trans hnp) hpDefect⟩

/-- Unbounded normalized psi defects give bad prime arguments above every cutoff. -/
theorem exists_prime_counterexample_above (Bad : ℕ → Prop)
    (hBad : ∀ p : ℕ, 253 < p → 8 * defectScale p < (p : ℝ) - theta p → Bad p)
    (hψ : ∀ K : ℝ, 0 < K → ∃ n : ℕ, 253 < n ∧ K * defectScale n < (n : ℝ) - psi n)
    (B : ℕ) : ∃ p : ℕ, p.Prime ∧ B < p ∧ Bad p := by
  let K : ℝ := max 100 B
  have h100 : 100 ≤ K := le_max_left ..
  have hB : (B : ℝ) ≤ K := le_max_right ..
  have hK : 0 < K := lt_of_lt_of_le (by norm_num) h100
  obtain ⟨n, hn, hdefect⟩ := hψ K hK
  have hscale : 1 ≤ defectScale n := (log_at_least_one hn).trans (log_le_defectScale hn)
  have hBn : B < n := by
    have h := mul_le_mul_of_nonneg_left hscale hK.le
    have hpsi := psi_nonneg (n : ℝ)
    exact_mod_cast (show (B : ℝ) < (n : ℝ) by linarith)
  obtain ⟨p, hp, hnp, _, hpDefect⟩ := exists_prime_theta_defect_of_psi_defect hn
    ((mul_le_mul_of_nonneg_right h100 (by linarith)).trans_lt hdefect)
  exact ⟨p, hp, hBn.trans hnp, hBad p (hn.trans hnp) hpDefect⟩

end GRWTSK.PrimeArgumentCounterexample
