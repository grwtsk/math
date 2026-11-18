/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Cryptids.Semantics.Riemann95
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95StageCertificates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeArgumentCounterexample
import Mathlib.Analysis.Complex.ExponentialBounds

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

/-- Exact Chebyshev threshold for the original checker. A zero cutoff
passes because the prime product is positive. At a positive cutoff,
equality of the logarithms is a rejection. -/
theorem safe_iff_zero_cutoff_or_log_cutoff_lt_theta {n : ℕ} (hn : 2 ≤ n) :
    ¬ ShuniaCounterexample n ↔ primeProductCutoff n = 0 ∨
      Real.log (primeProductCutoff n : ℝ) < Chebyshev.theta (n : ℝ) := by
  rw [← counterexample_iff_cryptids, safe_iff_primeProductCutoff_lt hn, primeProduct_eq]
  have product_pos := Riemann120Analytic.primorial_pos n
  by_cases zero : primeProductCutoff n = 0
  · simp [zero, product_pos]
  · have cutoff_pos : (0 : ℝ) < (primeProductCutoff n : ℝ) := by
      exact_mod_cast Nat.pos_of_ne_zero zero
    have product_pos_real : (0 : ℝ) < (Riemann120.primorial n : ℝ) := by
      exact_mod_cast product_pos
    rw [or_iff_right zero, ← Riemann120Analytic.log_primorial_eq_theta,
      Real.log_lt_log_iff cutoff_pos product_pos_real]
    exact_mod_cast (Iff.rfl : primeProductCutoff n < Riemann120.primorial n ↔
      primeProductCutoff n < Riemann120.primorial n)

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

section BoundedGaps

open Chebyshev

private theorem defectScale_mono_of_one_le {m n : ℕ} (hm : 1 ≤ m) (hmn : m ≤ n) :
    defectScale m ≤ defectScale n := by
  have hmR : (1 : ℝ) ≤ m := by exact_mod_cast hm
  have hmnR : (m : ℝ) ≤ n := by exact_mod_cast hmn
  unfold defectScale
  exact mul_le_mul (Real.sqrt_le_sqrt hmnR)
    (pow_le_pow_left₀ (Real.log_nonneg hmR) (Real.log_le_log (by linarith) hmnR) 2)
    (sq_nonneg _) (Real.sqrt_nonneg _)

private theorem one_le_defectScale {n : ℕ} (hn : 253 < n) : 1 ≤ defectScale n := by
  have hthree : (3 : ℝ) ≤ n := by exact_mod_cast (show 3 ≤ n by omega)
  have hlog : 1 ≤ Real.log (n : ℝ) := by
    rw [← Real.log_exp 1]
    exact Real.log_le_log (Real.exp_pos _) (Real.exp_one_lt_three.le.trans hthree)
  have hroot : 1 ≤ Real.sqrt (n : ℝ) := by
    rw [← Real.sqrt_one]
    exact Real.sqrt_le_sqrt (by linarith)
  have hlogSq := pow_le_pow_left₀ (by norm_num : 0 ≤ (1 : ℝ)) hlog 2
  simpa [defectScale] using mul_le_mul hroot hlogSq (by norm_num) (Real.sqrt_nonneg _)

/-- If the pinned machine halts, every finite length occurs in a consecutive
interval of actual arithmetic counterexamples beyond any prescribed cutoff.
Subtracting the interval span from the right-endpoint defect gives a lower
bound throughout the interval. The Chebyshev psi function and the defect
scale are monotone. -/
theorem exists_counterexample_interval_of_cryptids_halts
    (halts : Halts Riemann95.candidate) (bound span : ℕ) :
    ∃ first ≥ bound, ∀ n, first ≤ n → n ≤ first + span → Counterexample n := by
  have notRH := Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis.mp halts
  let cutoff := max 254 bound + span
  let K : ℝ := 10 + (cutoff : ℝ)
  have hK : 0 < K := by dsimp [K]; positivity
  obtain ⟨n, hn, hψ⟩ : ∃ n : ℕ, 253 < n ∧ K * defectScale n < (n : ℝ) - psi n := by
    simpa only [defectScale, mul_assoc] using
      Riemann120Analytic.not_riemannHypothesis_imp_exists_self_sub_psi_gt notRH (K := K) hK
  have hloss : (cutoff : ℝ) ≤ (cutoff : ℝ) * defectScale n := by
    simpa using mul_le_mul_of_nonneg_left (one_le_defectScale hn) (by positivity : 0 ≤ (cutoff : ℝ))
  have hscale : 0 ≤ defectScale n := le_trans zero_le_one (one_le_defectScale hn)
  have hspan : span ≤ cutoff := by dsimp [cutoff]; omega
  dsimp only [K] at hψ
  rw [add_mul] at hψ
  have hncutR : (cutoff : ℝ) < n := by
    linarith only [hψ, hloss, psi_nonneg (n : ℝ), hscale]
  have hncut : cutoff < n := by exact_mod_cast hncutR
  have hspanR : (span : ℝ) ≤ cutoff := by exact_mod_cast hspan
  have hlast : 10 * defectScale n < (n : ℝ) - psi n - span := by
    linarith only [hψ, hloss, hspanR]
  have hmax : max 254 bound ≤ n - span := by dsimp [cutoff] at hncut; omega
  have hspanN : span ≤ n := by omega
  refine ⟨n - span, (le_max_right _ _).trans hmax, ?_⟩
  intro m hmFirst hmLast
  rw [Nat.sub_add_cancel hspanN] at hmLast
  have hshort : n ≤ m + span := by omega
  have hmLarge : 253 < m := by
    have h254 := (le_max_left 254 bound).trans (hmax.trans hmFirst)
    omega
  have hshortR : (n : ℝ) ≤ (m : ℝ) + (span : ℝ) := by exact_mod_cast hshort
  have hψmono := psi_mono (show (m : ℝ) ≤ n by exact_mod_cast hmLast)
  have hmDefect : 10 * defectScale m < (m : ℝ) - psi m := calc
    10 * defectScale m ≤ 10 * defectScale n :=
      mul_le_mul_of_nonneg_left (defectScale_mono_of_one_le (by omega) hmLast) (by norm_num)
    _ < (n : ℝ) - psi n - span := hlast
    _ ≤ (m : ℝ) - psi m := by linarith only [hψmono, hshortR]
  apply (counterexample_iff_cryptids m).mpr
  apply Riemann120Analytic.shuniaCounterexample_of_self_sub_psi_gt hmLarge
  simpa only [defectScale, mul_assoc] using hmDefect

/-- Align a sufficiently long bad interval to the 95-slot partition.
Under halting, every slot of every window in a block of any prescribed
finite length can fail beyond any prescribed cutoff. -/
theorem exists_all_bad_window_block_of_cryptids_halts
    (halts : Halts Riemann95.candidate) (start gap : ℕ) :
    ∃ window ≥ start, ∀ i ≤ gap, ∀ slot : Fin 95, slot ∈ badSlots (window + i) := by
  obtain ⟨a, ha, bad⟩ := exists_counterexample_interval_of_cryptids_halts halts
    (95 * start + 2) (95 * (gap + 2))
  let window := (a - 2) / 95 + 1
  have hdecode := Nat.div_add_mod (a - 2) 95
  have hrem : (a - 2) % 95 < 95 := Nat.mod_lt _ (by decide)
  have hfloor : a ≤ 95 * window + 2 := by dsimp [window]; omega
  have hceil : 95 * window + 2 ≤ a + 95 := by dsimp [window]; omega
  refine ⟨window, by omega, ?_⟩
  intro i hi slot
  apply mem_badSlots.mpr
  apply bad
  · unfold stageArgument stageOrdinal
    omega
  · have hslot := slot.isLt
    unfold stageArgument stageOrdinal
    omega

/-- One accepted ordinal window per bounded block after any cutoff suffices.
A bounded-gap sample may omit infinitely many windows. If RH were false,
some block of the same length would consist entirely of failing slots. -/
theorem bounded_gap_window_acceptance_iff_cryptids_RH (start gap : ℕ) :
    (∀ w ≥ start, ∃ i ≤ gap, accepts (w + i) = true) ↔ RiemannHypothesis := by
  constructor
  · intro accepted
    by_contra notRH
    have halts := Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis.mpr notRH
    obtain ⟨window, hwindow, bad⟩ := exists_all_bad_window_block_of_cryptids_halts halts start gap
    obtain ⟨i, hi, hpass⟩ := accepted window hwindow
    exact (accepts_iff _).mp hpass 0 (mem_badSlots.mp (bad i hi 0))
  · intro rh w _
    exact ⟨0, Nat.zero_le gap, all_windows_accept_iff_cryptids_RH.mpr rh (w + 0)⟩

/-- Checking any fixed positive-stride progression of ordinal windows,
starting at any offset, is equivalent to RH. -/
theorem arithmetic_progression_window_acceptance_iff_cryptids_RH
    (start stride : ℕ) (hstride : 0 < stride) :
    (∀ k, accepts (start + stride * k) = true) ↔ RiemannHypothesis := by
  constructor
  · intro accepted
    apply (bounded_gap_window_acceptance_iff_cryptids_RH start stride).mp
    intro w hw
    let i := stride - (w - start) % stride
    have hmod := Nat.mod_lt (w - start) hstride
    have hdecode := Nat.div_add_mod (w - start) stride
    refine ⟨i, Nat.sub_le _ _, ?_⟩
    have haddress : w + i = start + stride * ((w - start) / stride + 1) := by
      rw [Nat.mul_add, Nat.mul_one]
      dsimp only [i]
      omega
    rw [haddress]
    exact accepted _
  · intro rh k
    exact all_windows_accept_iff_cryptids_RH.mpr rh (start + stride * k)

/-- A sound implementation may supply an accepted certificate at any position
in each bounded block. The conclusion uses checker soundness and
coverage of the block schedule. -/
theorem cryptids_RH_of_bounded_gap_sound_certificates {Certificate : Type*}
    (certifies : ℕ → Certificate → Prop)
    (sound : ∀ w c, certifies w c → accepts w = true) (start gap : ℕ)
    (cover : ∀ w ≥ start, ∃ i ≤ gap, ∃ c, certifies (w + i) c) :
    RiemannHypothesis := by
  apply (bounded_gap_window_acceptance_iff_cryptids_RH start gap).mp
  intro w hw
  obtain ⟨i, hi, c, hc⟩ := cover w hw
  exact ⟨i, hi, sound (w + i) c hc⟩

end BoundedGaps

end GRWTSK.NumberTheory.Riemann95StageCertificates
