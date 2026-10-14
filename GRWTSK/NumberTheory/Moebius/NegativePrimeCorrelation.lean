/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.PrimeBlockEnergy
import GRWTSK.NumberTheory.Moebius.PrimePrefixGrowth
import Mathlib.Tactic.NormNum.Prime

/-! A concrete source-generated negative correlation. This rules out a
nonnegative-correlation shortcut, not the compensated reverberation conjecture. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set Real
open scoped BigOperators

private theorem source11_primes : ∀ p ∈ ({2,3,5,7} : Finset ℕ), p.Prime := by
  intro p hp
  simp only [Finset.mem_insert, Finset.mem_singleton] at hp
  rcases hp with rfl | rfl | rfl | rfl <;> norm_num

private theorem source11_cell {u : ℝ} (hl : log 11 ≤ u) (hr : u ≤ log 12) :
    primeNoteCascade {2,3,5,7} u =
      2 * (1 - (sqrt 2)⁻¹ - (sqrt 3)⁻¹ - (sqrt 5)⁻¹ + (sqrt 6)⁻¹ -
        (sqrt 7)⁻¹ + (sqrt 10)⁻¹ + exp (-u/2)) := by
  have hpowers : ({2,3,5,7} : Finset ℕ).powerset =
      {∅,{2},{3},{5},{7},{2,3},{2,5},{2,7},{3,5},{3,7},{5,7},
        {2,3,5},{2,3,7},{2,5,7},{3,5,7},{2,3,5,7}} := by decide
  have hactive : ∀ n : ℕ, 1 ≤ n → n ≤ 11 → log (n : ℝ) ≤ u := by
    intro n hn hn11
    exact (log_le_log (by exact_mod_cast hn : (0:ℝ) < n) (by exact_mod_cast hn11)).trans hl
  have hinactive : ∀ n : ℕ, 13 ≤ n → pickupResponse n u = 0 := by
    intro n hn
    have hnlog : log (12:ℝ) < log (n:ℝ) :=
      log_lt_log (by norm_num) (by exact_mod_cast (by omega : 12 < n))
    exact if_neg (by linarith : ¬log (n:ℝ) ≤ u)
  have hm6 : moebiusReal 6 = 1 := by
    have h := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
      (by norm_num : Nat.Coprime 2 3)
    rw [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)] at h
    unfold moebiusReal
    norm_num at h ⊢
    exact_mod_cast h
  have hm10 : moebiusReal 10 = 1 := by
    have h := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
      (by norm_num : Nat.Coprime 2 5)
    rw [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 5)] at h
    unfold moebiusReal
    norm_num at h ⊢
    exact_mod_cast h
  have hmp : ∀ p : ℕ, p.Prime → moebiusReal p = -1 := by
    intro p hp
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime hp]
  have hu0 : 0 ≤ u := (log_nonneg (by norm_num : (1:ℝ) ≤ 11)).trans hl
  unfold primeNoteCascade
  rw [hpowers]
  simp (disch := decide) only [Finset.sum_insert, Finset.sum_singleton,
    Finset.prod_insert, Finset.prod_singleton, Finset.prod_empty]
  norm_num [hinactive, hm6, hm10,
    hmp 2 (by norm_num), hmp 3 (by norm_num), hmp 5 (by norm_num), hmp 7 (by norm_num)]
  simp only [pickupResponse,
    if_pos (hactive 2 (by norm_num) (by norm_num)),
    if_pos (hactive 3 (by norm_num) (by norm_num)),
    if_pos (hactive 5 (by norm_num) (by norm_num)),
    if_pos (hactive 6 (by norm_num) (by norm_num)),
    if_pos (hactive 7 (by norm_num) (by norm_num)),
    if_pos (hactive 10 (by norm_num) (by norm_num)), Nat.cast_one, sqrt_one, inv_one]
  norm_num [moebiusReal, hu0]
  ring

private theorem source11_radical_bound :
    1 - (sqrt 2)⁻¹ - (sqrt 3)⁻¹ - (sqrt 5)⁻¹ + (sqrt 6)⁻¹ -
      (sqrt 7)⁻¹ + (sqrt 10)⁻¹ < -(1/3:ℝ) := by
  have hs (n : ℕ) (hn : 0 < n) : ((sqrt (n:ℝ))⁻¹)^2 = (n:ℝ)⁻¹ := by
    rw [inv_pow, sq_sqrt (Nat.cast_nonneg n)]
  have hn (n : ℕ) : 0 ≤ (sqrt (n:ℝ))⁻¹ := by positivity
  have h2 : (7/10:ℝ) ≤ (sqrt 2)⁻¹ := by nlinarith [hs 2 (by norm_num), hn 2]
  have h3 : (4/7:ℝ) ≤ (sqrt 3)⁻¹ := by nlinarith [hs 3 (by norm_num), hn 3]
  have h5 : (4/9:ℝ) ≤ (sqrt 5)⁻¹ := by nlinarith [hs 5 (by norm_num), hn 5]
  have h6 : (sqrt 6)⁻¹ ≤ (5/12:ℝ) := by nlinarith [hs 6 (by norm_num), hn 6]
  have h7 : (3/8:ℝ) ≤ (sqrt 7)⁻¹ := by nlinarith [hs 7 (by norm_num), hn 7]
  have h10 : (sqrt 10)⁻¹ ≤ (1/3:ℝ) := by nlinarith [hs 10 (by norm_num), hn 10]
  linarith

theorem source11_negative_on_cell {u : ℝ} (hl : log 11 ≤ u) (hr : u ≤ log 12) :
    primeNoteCascade {2,3,5,7} u < 0 := by
  have he : exp (-u/2) ≤ (sqrt 11)⁻¹ := by
    have hid := pickup_exp_negative_log_half (by norm_num : 1 ≤ (11:ℕ))
    norm_num at hid
    rw [← hid]
    exact exp_le_exp.mpr (by linarith)
  have hi : (sqrt 11)⁻¹ < (1/3:ℝ) := by
    have hsq : ((sqrt (11:ℝ))⁻¹)^2 = (11:ℝ)⁻¹ := by
      rw [inv_pow, sq_sqrt (by norm_num)]
    nlinarith [show 0 ≤ (sqrt (11:ℝ))⁻¹ by positivity]
  rw [source11_cell hl hr]
  linarith [source11_radical_bound]

/-- The exact small witness is an initial segment of the primes. -/
theorem primePrefix_eleven : primePrefix 11 = {2,3,5,7} := by decide

private theorem source11_shift_positive {u : ℝ} (hl : log 11 < u) (hr : u ≤ log 12) :
    0 < causalShift (log 11) (primeNoteCascade {2,3,5,7}) u := by
  have hlogs : log (11:ℝ) + log 2 = log 22 := by
    rw [← log_mul (by norm_num : (11:ℝ) ≠ 0) (by norm_num : (2:ℝ) ≠ 0)]
    norm_num
  have h12 : log (12:ℝ) < log 22 := log_lt_log (by norm_num) (by norm_num)
  have hshort : u-log 11 ≤ log 2 := by linarith
  have hz := cascade_union_before_delays (P := ∅) (B := {2,3,5,7})
    (by simp) source11_primes (by simp) (u := u-log 11) (fun p hp ↦
      hshort.trans (log_le_log (by norm_num) (by exact_mod_cast (source11_primes p hp).two_le)))
  simp only [Finset.empty_union, primeNoteCascade_empty] at hz
  rw [causalShift, if_pos hl.le, hz]
  have he : exp (-(u-log 11)/2) < 1 := exp_lt_one_iff.mpr (by linarith)
  simp only [baseNote, pickupResponse, Nat.cast_one, log_one, sqrt_one, inv_one,
    if_pos (show 0 ≤ u-log 11 by linarith)]
  linarith

/-- A kernel-checked strictly negative delayed correlation in the actual natural
prime order. In particular, source correlations cannot simply be discarded. -/
theorem primePrefix_eleven_negative_correlation :
    noteCorrelation (primeNoteCascade (primePrefix 11)) (log 11) (log 12) < 0 := by
  rw [primePrefix_eleven]
  have h0 : 0 ≤ log (11:ℝ) := log_nonneg (by norm_num)
  have h12 : log (11:ℝ) < log 12 := log_lt_log (by norm_num) (by norm_num)
  have hf := primeNoteCascade_continuous source11_primes
  have hs := causalShift_continuous hf (primeNoteCascade_zero source11_primes) (log 11)
  have hc := hf.mul hs
  have hzero : (∫ u in (0:ℝ)..log 11,
      primeNoteCascade {2,3,5,7} u * causalShift (log 11) (primeNoteCascade {2,3,5,7}) u) = 0 := by
    calc
      _ = ∫ u in (0:ℝ)..log 11, (0:ℝ) := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le h0] at hu
        change primeNoteCascade {2,3,5,7} u * causalShift (log 11) (primeNoteCascade {2,3,5,7}) u = 0
        unfold causalShift
        split_ifs with h
        · have hz : primeNoteCascade {2,3,5,7} (u-log 11) = 0 :=
            cascade_eq_zero_of_nonpos source11_primes (by linarith [hu.2])
          rw [hz, mul_zero]
        · simp
      _ = 0 := intervalIntegral.integral_zero
  have hneg : (∫ u in log 11..log 12,
      primeNoteCascade {2,3,5,7} u * causalShift (log 11) (primeNoteCascade {2,3,5,7}) u) < 0 := by
    have hpoint : ∀ u ∈ Ioc (log (11:ℝ)) (log 12),
        primeNoteCascade {2,3,5,7} u * causalShift (log 11) (primeNoteCascade {2,3,5,7}) u < 0 := by
      intro u hu
      exact mul_neg_of_neg_of_pos (source11_negative_on_cell hu.1.le hu.2)
        (source11_shift_positive hu.1 hu.2)
    have hi := intervalIntegral.integral_lt_integral_of_continuousOn_of_le_of_exists_lt h12
      hc.continuousOn continuousOn_const (fun u hu ↦ (hpoint u hu).le)
      ⟨log 12, ⟨h12.le, le_rfl⟩, hpoint (log 12) ⟨h12, le_rfl⟩⟩
    simpa using hi
  unfold noteCorrelation
  rw [max_eq_right (h0.trans h12.le), ← intervalIntegral.integral_add_adjacent_intervals
    (show IntervalIntegrable (fun u ↦ primeNoteCascade {2,3,5,7} u *
      causalShift (log 11) (primeNoteCascade {2,3,5,7}) u) volume 0 (log 11) from hc.intervalIntegrable _ _)
    (show IntervalIntegrable (fun u ↦ primeNoteCascade {2,3,5,7} u *
      causalShift (log 11) (primeNoteCascade {2,3,5,7}) u) volume (log 11) (log 12) from hc.intervalIntegrable _ _),
    hzero, zero_add]
  exact hneg

theorem not_all_prefix_correlations_nonnegative :
    ¬(∀ p : ℕ, p.Prime → ∀ T : ℝ, 0 ≤ T →
      0 ≤ noteCorrelation (primeNoteCascade (primePrefix p)) (log p) T) := by
  intro h
  have hc := h 11 (by norm_num) (log 12) (log_nonneg (by norm_num))
  norm_num at hc
  exact (not_le_of_gt primePrefix_eleven_negative_correlation) hc

end GRWTSK.RiemannHypothesis.CCC
