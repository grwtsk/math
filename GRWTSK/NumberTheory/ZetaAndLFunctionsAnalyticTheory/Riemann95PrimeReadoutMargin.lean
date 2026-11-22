/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.Riemann95PrimeWindowAddress

/-!
# Numeric margins for the Riemann95 prime readout

The selected window is supplied, and only the numerical prime readout may
have an error. The slot recovered here is the control coordinate; tape and
head remain separate inputs to configuration decoding.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Riemann95StageCertificates

def readoutCandidates (w : ℕ) (radius sample : ℚ) : Finset (Fin 95) :=
  Finset.univ.filter fun j => |sample - (primeLabel w j : ℚ)| < radius

def decodePrimeSample (w : ℕ) (radius sample : ℚ) : Option (Fin 95) :=
  if h : (readoutCandidates w radius sample).Nonempty then
    some ((readoutCandidates w radius sample).min' h)
  else none

theorem decodePrimeSample_eq_none_iff (w : ℕ) (radius sample : ℚ) :
    decodePrimeSample w radius sample = none ↔
      ∀ j : Fin 95, radius ≤ |sample - (primeLabel w j : ℚ)| := by
  by_cases h : (readoutCandidates w radius sample).Nonempty
  · rw [decodePrimeSample, dite_eq_left h]
    obtain ⟨j, hj⟩ := h
    have close : |sample - (primeLabel w j : ℚ)| < radius := by
      simpa [readoutCandidates] using hj
    exact ⟨fun eq => by contradiction, fun far => (not_le_of_gt close (far j)).elim⟩
  · rw [decodePrimeSample, dite_eq_right h]
    refine ⟨fun _ j => le_of_not_gt (fun close => h ⟨j, ?_⟩), fun _ => rfl⟩
    simp [readoutCandidates, close]

theorem decodePrimeSample_correct_of_separation (w : ℕ) (radius sample : ℚ)
    (separation : ∀ i j : Fin 95, i ≠ j →
      2 * radius ≤ |(primeLabel w i : ℚ) - (primeLabel w j : ℚ)|)
    (j : Fin 95) (accurate : |sample - (primeLabel w j : ℚ)| < radius) :
    decodePrimeSample w radius sample = some j := by
  have hj : j ∈ readoutCandidates w radius sample := by simp [readoutCandidates, accurate]
  have nonempty : (readoutCandidates w radius sample).Nonempty := ⟨j, hj⟩
  rw [decodePrimeSample, dite_eq_left nonempty]
  congr 1
  let i := (readoutCandidates w radius sample).min' nonempty
  have hi : |sample - (primeLabel w i : ℚ)| < radius := by
    have h := Finset.min'_mem _ nonempty
    simpa [i, readoutCandidates] using h
  by_contra different
  have sep := separation i j different
  have triangle := abs_sub_le (primeLabel w i : ℚ) sample (primeLabel w j : ℚ)
  rw [abs_sub_comm (primeLabel w i : ℚ) sample] at triangle
  linarith

/-- Distinct numeric labels provide at least unit separation in every window. -/
theorem halfUnit_prime_readout (w : ℕ) (sample : ℚ) (j : Fin 95)
    (accurate : |sample - (primeLabel w j : ℚ)| < 1 / 2) :
    decodePrimeSample w (1 / 2) sample = some j := by
  apply decodePrimeSample_correct_of_separation w (1 / 2) sample _ j accurate
  intro i j different
  have hn : primeLabel w i ≠ primeLabel w j :=
    fun h => different ((primeLabel_eq_iff w w i j).mp h).2
  rcases lt_or_gt_of_ne hn with h | h
  · rw [abs_sub_comm, abs_of_nonneg (sub_nonneg.mpr (by exact_mod_cast h.le))]
    have ht : (primeLabel w i : ℚ) + 1 ≤ (primeLabel w j : ℚ) := by exact_mod_cast h
    linarith
  · rw [abs_of_nonneg (sub_nonneg.mpr (by exact_mod_cast h.le))]
    have ht : (primeLabel w j : ℚ) + 1 ≤ (primeLabel w i : ℚ) := by exact_mod_cast h
    linarith

private theorem primeLabel_odd_of_window_pos {w : ℕ} (positive : 0 < w) (i : Fin 95) :
    Odd (primeLabel w i) := by
  apply (primeLabel_prime w i).odd_of_ne_two
  have ht : primeLabel 0 0 < primeLabel w i := by
    apply (primeLabel_lt_iff_ordinal_lt (0, 0) (w, i)).mpr
    change 0 < 95 * w + i.val
    omega
  have first : primeLabel 0 (0 : Fin 95) = 2 := Nat.nth_prime_zero_eq_two
  rw [first] at ht
  exact ht.ne'

/-- Every positive-indexed window contains only odd primes, so a strict
one-unit error still permits exact slot decoding. -/
theorem unit_prime_readout_of_window_pos {w : ℕ} (positive : 0 < w)
    (sample : ℚ) (j : Fin 95) (accurate : |sample - (primeLabel w j : ℚ)| < 1) :
    decodePrimeSample w 1 sample = some j := by
  apply decodePrimeSample_correct_of_separation w 1 sample _ j accurate
  intro i j different
  have hn : primeLabel w i ≠ primeLabel w j :=
    fun h => different ((primeLabel_eq_iff w w i j).mp h).2
  obtain ⟨a, ha⟩ := primeLabel_odd_of_window_pos positive i
  obtain ⟨b, hb⟩ := primeLabel_odd_of_window_pos positive j
  rcases lt_or_gt_of_ne hn with h | h
  · rw [abs_sub_comm, abs_of_nonneg (sub_nonneg.mpr (by exact_mod_cast h.le))]
    have hg : primeLabel w i + 2 ≤ primeLabel w j := by omega
    have ht : (primeLabel w i : ℚ) + 2 ≤ (primeLabel w j : ℚ) := by exact_mod_cast hg
    linarith
  · rw [abs_of_nonneg (sub_nonneg.mpr (by exact_mod_cast h.le))]
    have hg : primeLabel w j + 2 ≤ primeLabel w i := by omega
    have ht : (primeLabel w j : ℚ) + 2 ≤ (primeLabel w i : ℚ) := by exact_mod_cast hg
    linarith

/-- The midpoint of the first two actual prime labels defeats every decoder
that promises correctness for closed half-unit errors in window zero. -/
theorem no_closed_halfUnit_prime_decoder :
    ¬ ∃ decode : ℚ → Option (Fin 95), ∀ (j : Fin 95) (sample : ℚ),
      |sample - (primeLabel 0 j : ℚ)| ≤ 1 / 2 → decode sample = some j := by
  rintro ⟨decode, correct⟩
  have h0 : primeLabel 0 (0 : Fin 95) = 2 := Nat.nth_prime_zero_eq_two
  have h1 : primeLabel 0 (1 : Fin 95) = 3 := Nat.nth_prime_one_eq_three
  have e0 := correct 0 (5 / 2) (by rw [h0]; norm_num)
  have e1 := correct 1 (5 / 2) (by rw [h1]; norm_num)
  exact (by decide : (0 : Fin 95) ≠ 1) (Option.some.inj (e0.symm.trans e1))

end GRWTSK.NumberTheory.Riemann95StageCertificates
