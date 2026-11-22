/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95StageCertificates

/-!
# Exact coverage of the Riemann95 threshold-only safety test

The bound on the deficit by `n - 1` discards the actual factorial and
prime-product contribution. Its strict safety test has a finite domain.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Riemann95StageCertificates

private theorem clock_step (n : ℕ) :
    clock (n + 2) = clock (n / 4 + 1) + 1 := by
  unfold clock
  rw [show n + 2 - 1 = n + 1 by omega, show n / 4 + 1 - 1 = n / 4 by omega,
    offsetCount_four_succ, Nat.add_comm]

private theorem clock_plateau {n : ℕ} (hn : 2 ≤ n) :
    (n ≤ 5 → clock n = 1) ∧
    (6 ≤ n → n ≤ 21 → clock n = 2) ∧
    (22 ≤ n → n ≤ 85 → clock n = 3) ∧
    (86 ≤ n → n ≤ 341 → clock n = 4) := by
  have step (m : ℕ) (hm : 2 ≤ m) :
      clock m = clock ((m - 2) / 4 + 1) + 1 := by
    simpa only [Nat.sub_add_cancel hm] using clock_step (m - 2)
  have one (m : ℕ) (lo : 2 ≤ m) (hi : m ≤ 5) : clock m = 1 := by
    rw [step m lo, show (m - 2) / 4 + 1 = 1 by omega]
    simp [clock, offsetCount]
  have two (m : ℕ) (lo : 6 ≤ m) (hi : m ≤ 21) : clock m = 2 := by
    rw [step m (by omega), one _ (by omega) (by omega)]
  have three (m : ℕ) (lo : 22 ≤ m) (hi : m ≤ 85) : clock m = 3 := by
    rw [step m (by omega), two _ (by omega) (by omega)]
  exact ⟨one n hn, two n, three n, fun lo hi => by
    rw [step n hn, three _ (by omega) (by omega)]⟩

/-- Beyond the fourth clock jump the threshold never exceeds the
elementary upper bound on the deficit. -/
theorem threshold_le_sub_one_of_ge_86 (n : ℕ) (hn : 86 ≤ n) :
    threshold n ≤ n - 1 := by
  induction n using Nat.strong_induction_on with
  | h n ih =>
    by_cases hsmall : n ≤ 341
    · unfold threshold
      rw [(clock_plateau (by omega : 2 ≤ n)).2.2.2 hn hsmall]
      norm_num
      omega
    · let m := (n - 2) / 4 + 1
      have hm : 86 ≤ m := by dsimp [m]; omega
      have hmn : m < n := by dsimp [m]; omega
      have hclock : clock n = clock m + 1 := by
        simpa only [m, Nat.sub_add_cancel (by omega : 2 ≤ n)] using clock_step (n - 2)
      have hprev := ih m hmn hm
      calc
        threshold n ≤ 4 * threshold m := by
          unfold threshold
          rw [hclock, pow_succ]
          have hk : clock m + 1 + 1 ≤ 2 * (clock m + 1) := by omega
          calc
            _ ≤ (2 * (clock m + 1)) * (2 ^ clock m * 2) :=
              Nat.mul_le_mul_right _ hk
            _ = _ := by ring
        _ ≤ 4 * (m - 1) := Nat.mul_le_mul_left _ hprev
        _ ≤ n - 1 := by dsimp [m]; omega

/-- For original arguments at least two, this sufficient safety test
applies on exactly three finite intervals. -/
theorem threshold_only_iff {n : ℕ} (hn : 2 ≤ n) :
    n - 1 < threshold n ↔ n ≤ 4 ∨ (6 ≤ n ∧ n ≤ 12) ∨ (22 ≤ n ∧ n ≤ 32) := by
  obtain ⟨one, two, three, four⟩ := clock_plateau hn
  by_cases a : n ≤ 5
  · unfold threshold
    rw [one a]
    norm_num
    omega
  by_cases b : n ≤ 21
  · unfold threshold
    rw [two (by omega) b]
    norm_num
    omega
  by_cases c : n ≤ 85
  · unfold threshold
    rw [three (by omega) c]
    norm_num
    omega
  have h := threshold_le_sub_one_of_ge_86 n (by omega)
  omega

/-- Every ordinal window after the first lies outside the threshold-only test. -/
theorem no_threshold_only_slot {window : ℕ} (hw : 0 < window) (slot : Fin 95) :
    ¬ (stageArgument (stageOrdinal window slot) - 1 <
      threshold (stageArgument (stageOrdinal window slot))) := by
  apply Nat.not_lt_of_ge
  apply threshold_le_sub_one_of_ge_86
  unfold stageArgument stageOrdinal
  omega

/-- A checker can discharge the three threshold-only intervals without
computing the deficit. Every remaining stage needs the actual safety test
or a separate source-bound argument. -/
theorem all_windows_accept_iff_residual_threshold_obligation :
    (∀ window, accepts window = true) ↔
      ∀ stage, threshold (stageArgument stage) ≤ stageArgument stage - 1 →
        ¬ Counterexample (stageArgument stage) := by
  rw [all_windows_accept_iff]
  refine ⟨fun h stage _ => h stage, ?_⟩
  intro h stage
  by_cases hthreshold : threshold (stageArgument stage) ≤ stageArgument stage - 1
  · exact h stage hthreshold
  · exact safe_of_threshold_gt _ (Nat.lt_of_not_ge hthreshold)

end GRWTSK.NumberTheory.Riemann95StageCertificates
