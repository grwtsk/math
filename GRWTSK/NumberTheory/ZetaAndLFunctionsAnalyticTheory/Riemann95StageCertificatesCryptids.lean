/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Cryptids.Semantics.Riemann95
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95StageCertificates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeArgumentCounterexample

set_option autoImplicit false

/-! # Source return to the original blank-tape machine -/

namespace GRWTSK.NumberTheory.Riemann95StageCertificates

open ConjectureMachines
open ConjectureMachines.Riemann120

private theorem primeProduct_eq (n : ℕ) : primeProduct n = Riemann120.primorial n := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [primeProduct, Riemann120.primorial, ih]

private theorem offsetCount_eq (base n : ℕ) : offsetCount base n = offsetDigits base n := by
  induction n using Nat.strong_induction_on with
  | h n ih =>
    cases n with
    | zero => simp [offsetCount, offsetDigits]
    | succ n =>
      have smaller := Nat.lt_succ_of_le (Nat.div_le_self n base)
      by_cases h : 2 ≤ base <;> simp [offsetCount, offsetDigits, ih _ smaller, h]

private theorem clock_eq (z : ℕ) : offsetCount 4 z = quarterClock z := by
  induction z using Nat.strong_induction_on with
  | h z ih =>
    cases z with
    | zero => simp [offsetCount, quarterClock]
    | succ z =>
      rw [offsetCount_four_succ, quarterClock]
      rw [ih _ (Nat.lt_succ_of_le (Nat.div_le_self z 4))]

/-- The checker uses precisely the source predicate, including integer truncation. -/
theorem counterexample_iff_cryptids (n : ℕ) : Counterexample n ↔ ShuniaCounterexample n := by
  simp only [Counterexample, ShuniaCounterexample, threshold, clock, clock_eq,
    deficit, shuniaDeficit, shuniaProd, primeProduct_eq]
  rw [offsetCount_eq]

theorem search_detects_cryptids_halt :
    (∃ count, (search count).Nonempty) ↔ Halts Riemann95.candidate := by
  rw [search_complete, Riemann95.halts_candidate_iff_counterexample]
  exact exists_congr fun stage => counterexample_iff_cryptids (stageArgument stage)

theorem all_windows_accept_iff_cryptids_RH :
    (∀ window, accepts window = true) ↔ RiemannHypothesis :=
  all_windows_accept_iff_RH (fun n _ => counterexample_iff_cryptids n)
    Riemann95.halts_candidate_iff_counterexample
    Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis

open GRWTSK.PrimeArgumentCounterexample

/-- If the original machine halts, the exact arithmetic predicate has a
prime-valued witness beyond every cutoff. -/
theorem exists_cryptids_prime_counterexample_above
    (halts : Halts Riemann95.candidate) (bound : ℕ) :
    ∃ p : ℕ, Nat.Prime p ∧ bound < p ∧ ShuniaCounterexample p := by
  have notRH := Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis.mp halts
  refine exists_prime_counterexample_above ShuniaCounterexample ?_ ?_ bound
  · intro p hp htheta
    by_contra safe
    have below : shuniaDeficit p ≤ (quarterClock (p - 1) + 1) * 2 ^ quarterClock (p - 1) := by
      unfold ShuniaCounterexample at safe
      omega
    have upper := theta_defect_le_of_safe hp
      (Riemann120Analytic.quarterClock_spec p (by omega)).1 below
      (Riemann120Analytic.self_sub_theta_le_shuniaDeficit_mul_log (by omega))
    exact (not_lt_of_ge upper) htheta
  · intro K hK
    simpa only [defectScale, mul_assoc] using
      Riemann120Analytic.not_riemannHypothesis_imp_exists_self_sub_psi_gt notRH (K := K) hK

theorem cryptids_halts_iff_prime_counterexample :
    Halts Riemann95.candidate ↔ ∃ p : ℕ, Nat.Prime p ∧ ShuniaCounterexample p := by
  constructor
  · intro halts
    obtain ⟨p, prime, _, bad⟩ := exists_cryptids_prime_counterexample_above halts 0
    exact ⟨p, prime, bad⟩
  · rintro ⟨p, prime, bad⟩
    apply Riemann95.halts_candidate_iff_counterexample.mpr
    exact ⟨p - 2, by rwa [Nat.sub_add_cancel prime.two_le]⟩

/-- The actual Shunia tests at all prime values suffice by analytic transfer. -/
theorem all_prime_labels_safe_iff_RH :
    (∀ window slot, ¬ Counterexample (primeLabel window slot)) ↔ RiemannHypothesis := by
  have primeSafe : (∀ window slot, ¬ Counterexample (primeLabel window slot)) ↔
      ¬ ∃ p : ℕ, Nat.Prime p ∧ ShuniaCounterexample p := by
    constructor
    · rintro safe ⟨p, prime, bad⟩
      obtain ⟨window, slot, rfl⟩ := (primeLabelAddress_iff p).mpr prime
      exact safe window slot ((counterexample_iff_cryptids _).mpr bad)
    · intro safe window slot bad
      exact safe ⟨_, primeLabel_prime window slot, (counterexample_iff_cryptids _).mp bad⟩
  rw [primeSafe, ← cryptids_halts_iff_prime_counterexample,
     Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis, not_not]

/-- A prime-valued source counterexample can be found inside an ordinal window
at or above any window cutoff. -/
theorem exists_prime_badSlot_at_or_above (halts : Halts Riemann95.candidate) (start : ℕ) :
    ∃ window ≥ start, ∃ slot : Fin 95,
      Nat.Prime (stageArgument (stageOrdinal window slot)) ∧ slot ∈ badSlots window := by
  obtain ⟨p, prime, beyond, bad⟩ := exists_cryptids_prime_counterexample_above halts
    (95 * start + 1)
  obtain ⟨window, slot, address⟩ := (argumentAddress_iff p).mpr prime.two_le
  have after : start ≤ window := by
    have := slot.isLt
    simp only [stageArgument, stageOrdinal] at address
    omega
  refine ⟨window, after, slot, ?_, mem_badSlots.mpr ?_⟩
  · rwa [address]
  · rw [address]
    exact (counterexample_iff_cryptids p).mpr bad

/-- Rejections of the exact ordinal checker are cofinal exactly when the
original blank-tape machine halts. -/
theorem cryptids_halts_iff_cofinal_rejected_windows :
    Halts Riemann95.candidate ↔ ∀ start : ℕ, ∃ window ≥ start, accepts window = false := by
  constructor
  · intro halts start
    obtain ⟨window, after, slot, _, bad⟩ := exists_prime_badSlot_at_or_above halts start
    refine ⟨window, after, Bool.eq_false_iff.mpr ?_⟩
    intro accepted
    exact (accepts_iff window).mp accepted slot (mem_badSlots.mp bad)
  · intro cofinal
    obtain ⟨window, _, rejected⟩ := cofinal 0
    apply Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis.mpr
    intro rh
    rw [all_windows_accept_iff_cryptids_RH.mpr rh window] at rejected
    contradiction

/-- Acceptance on an entire ordinal-window suffix is equivalent to RH for
every choice of the discarded prefix. -/
theorem windows_accept_from_iff_cryptids_RH (start : ℕ) :
    (∀ window ≥ start, accepts window = true) ↔ RiemannHypothesis := by
  constructor
  · intro accepted
    by_contra notRH
    have halts := Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis.mpr notRH
    obtain ⟨window, after, rejected⟩ := cryptids_halts_iff_cofinal_rejected_windows.mp halts start
    rw [accepted window after] at rejected
    contradiction
  · intro rh window _
    exact all_windows_accept_iff_cryptids_RH.mpr rh window

/-- The exact checker may leave any prescribed finite set of windows unchecked
if it certifies every window outside that set. -/
theorem accepts_off_finite_set_iff_cryptids_RH (skipped : Finset ℕ) :
    (∀ window, window ∉ skipped → accepts window = true) ↔ RiemannHypothesis := by
  constructor
  · intro accepted
    apply (windows_accept_from_iff_cryptids_RH (skipped.sup id + 1)).mp
    intro window after
    apply accepted window
    intro member
    have h := Finset.le_sup (f := id) member
    exact (Nat.not_lt_of_ge h) after
  · intro rh window _
    exact all_windows_accept_iff_cryptids_RH.mpr rh window

end GRWTSK.NumberTheory.Riemann95StageCertificates
