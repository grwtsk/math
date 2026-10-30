/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarCutoffRecombine

/-!
# Exact one-prime incidence calculus for the divisor-mask commutator

For a fresh prime p above the short-divisor cutoff Z, multiplying a source index by
p can change the selected/kept divisor inventory only at the single divisor p.

This file makes that statement exact.

* Smaller-index transport m -> p*m removes p from keptDivisors and changes no
  other fresh-prime incidence.
* Larger-index transport n -> p*n inserts p into selectedDivisors; it inserts p
  into keptDivisors exactly when the original smaller index keeps p.
* Simultaneous transport (m,n) -> (p*m,p*n), with Z<p, never keeps the inserted p,
  so its kept inventory is exactly the original kept inventory with p erased.

The corresponding omega and pairWeight formulas keep the zero-count convention and
all denominators explicit. No probabilistic independence, entropy decrement,
Duffin--Schaeffer compression, sieve parity statement or asymptotic estimate is
imported.

These identities provide the source map needed before any averaging argument can
legitimately be compared with those external methods.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom audit,
and expected-interface checking: NOT_RUN. No complete far-source or RH claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarDivisorMaskIncidence

open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal
open GRWTSK.NumberTheory.Moebius.PickupRoughFarMaskCommutator
open GRWTSK.NumberTheory.Moebius.PickupRoughFarCutoffRecombine

/-- A fresh prime q distinct from p has the same divisibility status on m and p*m. -/
theorem fresh_dvd_prime_mul_iff
    (P : List ℕ) (N p q m : ℕ)
    (hp : Nat.Prime p) (hqFresh : q ∈ freshPrimes P N) (hqp : q ≠ p) :
    q ∣ p*m ↔ q ∣ m := by
  have hq := (fresh_mem hqFresh).1
  constructor
  · intro h
    rcases hq.dvd_mul.mp h with hdiv | hdiv
    · rcases (Nat.dvd_prime hp).mp hdiv with h1 | heq
      · exact (hq.ne_one h1).elim
      · exact (hqp heq).elim
    · exact hdiv
  · intro h
    exact dvd_mul_of_dvd_right h p

/-- Above Z, smaller-index transport removes precisely p from the kept inventory. -/
theorem keptDivisors_left_eq_erase
    (P : List ℕ) (N Z p m n : ℕ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p) :
    keptDivisors P N Z (p*m) n = (keptDivisors P N Z m n).erase p := by
  ext q
  simp only [keptDivisors, selectedDivisors, Finset.mem_filter, Finset.mem_erase]
  constructor
  · rintro ⟨⟨hqFresh, hqn⟩, hkeep⟩
    have hqp : q ≠ p := by
      intro heq
      subst q
      have hpm : p ∣ p*m := dvd_mul_right p m
      rcases hkeep with hpZ | hnot
      · omega
      · exact hnot hpm
    have hqm : q ∣ p*m ↔ q ∣ m :=
      fresh_dvd_prime_mul_iff P N p q m (fresh_mem hpFresh).1 hqFresh hqp
    refine ⟨hqp, ⟨⟨hqFresh, hqn⟩, ?_⟩⟩
    rcases hkeep with hqZ | hnot
    · exact Or.inl hqZ
    · exact Or.inr (by simpa only [hqm] using hnot)
  · rintro ⟨hqp, ⟨⟨hqFresh, hqn⟩, hkeep⟩⟩
    have hqm : q ∣ p*m ↔ q ∣ m :=
      fresh_dvd_prime_mul_iff P N p q m (fresh_mem hpFresh).1 hqFresh hqp
    refine ⟨⟨hqFresh, hqn⟩, ?_⟩
    rcases hkeep with hqZ | hnot
    · exact Or.inl hqZ
    · exact Or.inr (by simpa only [hqm] using hnot)

/-- Larger-index transport inserts precisely p into the selected divisor inventory. -/
theorem selectedDivisors_right_eq_insert
    (P : List ℕ) (N p n : ℕ)
    (hpFresh : p ∈ freshPrimes P N) :
    selectedDivisors (freshPrimes P N) (p*n) =
      insert p (selectedDivisors (freshPrimes P N) n) := by
  ext q
  simp only [selectedDivisors, Finset.mem_filter, Finset.mem_insert]
  constructor
  · rintro ⟨hqFresh, hqpn⟩
    have hq := (fresh_mem hqFresh).1
    rcases hq.dvd_mul.mp hqpn with hqp | hqn
    · rcases (Nat.dvd_prime (fresh_mem hpFresh).1).mp hqp with h1 | heq
      · exact (hq.ne_one h1).elim
      · exact Or.inl heq
    · exact Or.inr ⟨hqFresh, hqn⟩
  · rintro (rfl | ⟨hqFresh, hqn⟩)
    · exact ⟨hpFresh, dvd_mul_right p n⟩
    · exact ⟨hqFresh, dvd_mul_of_dvd_right hqn p⟩

/-- The divisor count gains one exactly when p was not already a divisor of n. -/
theorem omega_right_eq
    (P : List ℕ) (N p n : ℕ)
    (hpFresh : p ∈ freshPrimes P N) :
    omega P N (p*n) = omega P N n + (if p ∣ n then 0 else 1) := by
  unfold omega divisorCount
  rw [selectedDivisors_right_eq_insert P N p n hpFresh]
  by_cases hpn : p ∣ n
  · have hmem : p ∈ selectedDivisors (freshPrimes P N) n := by
      exact Finset.mem_filter.mpr ⟨hpFresh, hpn⟩
    simp [hpn, hmem]
  · have hmem : p ∉ selectedDivisors (freshPrimes P N) n := by
      intro h
      exact hpn (Finset.mem_filter.mp h).2
    simp [hpn, hmem]

/-- Larger-index transport adds p to the kept inventory iff p satisfies the
original smaller-index keep test. -/
theorem keptDivisors_right_eq
    (P : List ℕ) (N Z p m n : ℕ)
    (hpFresh : p ∈ freshPrimes P N) :
    keptDivisors P N Z m (p*n) =
      if p ≤ Z ∨ ¬ p ∣ m
      then insert p (keptDivisors P N Z m n)
      else keptDivisors P N Z m n := by
  by_cases hpKeep : p ≤ Z ∨ ¬ p ∣ m
  · rw [if_pos hpKeep]
    ext q
    simp only [keptDivisors, selectedDivisors, Finset.mem_filter, Finset.mem_insert]
    constructor
    · rintro ⟨⟨hqFresh, hqpn⟩, hqKeep⟩
      have hq := (fresh_mem hqFresh).1
      rcases hq.dvd_mul.mp hqpn with hqp | hqn
      · rcases (Nat.dvd_prime (fresh_mem hpFresh).1).mp hqp with h1 | heq
        · exact (hq.ne_one h1).elim
        · exact Or.inl heq
      · exact Or.inr ⟨⟨hqFresh, hqn⟩, hqKeep⟩
    · rintro (rfl | ⟨⟨hqFresh, hqn⟩, hqKeep⟩)
      · exact ⟨⟨hpFresh, dvd_mul_right p n⟩, hpKeep⟩
      · exact ⟨⟨hqFresh, dvd_mul_of_dvd_right hqn p⟩, hqKeep⟩
  · rw [if_neg hpKeep]
    ext q
    simp only [keptDivisors, selectedDivisors, Finset.mem_filter]
    constructor
    · rintro ⟨⟨hqFresh, hqpn⟩, hqKeep⟩
      have hq := (fresh_mem hqFresh).1
      rcases hq.dvd_mul.mp hqpn with hqp | hqn
      · rcases (Nat.dvd_prime (fresh_mem hpFresh).1).mp hqp with h1 | heq
        · exact (hq.ne_one h1).elim
        · subst q
          exact (hpKeep hqKeep).elim
      · exact ⟨⟨hqFresh, hqn⟩, hqKeep⟩
    · rintro ⟨⟨hqFresh, hqn⟩, hqKeep⟩
      exact ⟨⟨hqFresh, dvd_mul_of_dvd_right hqn p⟩, hqKeep⟩

/-- With Z<p, simultaneous transport never keeps the inserted p; all other
incidences are unchanged. -/
theorem keptDivisors_both_eq_erase
    (P : List ℕ) (N Z p m n : ℕ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p) :
    keptDivisors P N Z (p*m) (p*n) =
      (keptDivisors P N Z m n).erase p := by
  rw [keptDivisors_right_eq P N Z p (p*m) n hpFresh]
  have hpDiv : p ∣ p*m := dvd_mul_right p m
  rw [if_neg (by omega : ¬(p ≤ Z ∨ ¬ p ∣ p*m))]
  exact keptDivisors_left_eq_erase P N Z p m n hpFresh hZp

/-- Exact left weight change. Above Z, it is either zero or exactly one
denominator unit; no average/probability approximation is used. -/
theorem pairWeight_left_sub_eq
    (P : List ℕ) (N Z p m n : ℕ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p) :
    pairWeight P N Z m n - pairWeight P N Z (p*m) n =
      if p ∣ n ∧ ¬ p ∣ m then (omega P N n : ℝ)⁻¹ else 0 := by
  unfold pairWeight
  rw [keptDivisors_left_eq_erase P N Z p m n hpFresh hZp]
  by_cases hcase : p ∣ n ∧ ¬ p ∣ m
  · have hmem : p ∈ keptDivisors P N Z m n := by
      simp [keptDivisors, selectedDivisors, hpFresh, hcase.1, hZp.not_le, hcase.2]
    rw [if_pos hcase, Finset.card_erase_of_mem hmem]
    by_cases hw : omega P N n = 0
    · have hpos : 0 < omega P N n := by
        exact divisorCount_pos_of_mem hpFresh hcase.1
      omega
    · have hwR : (omega P N n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr hw
      field_simp [hwR]
      ring
  · have hnotmem : p ∉ keptDivisors P N Z m n := by
      intro hmem
      have h := Finset.mem_filter.mp hmem
      have hpn := (Finset.mem_filter.mp h.1).2
      have hkeep := h.2
      have hpm : ¬ p ∣ m := by
        rcases hkeep with hpZ | hnot
        · omega
        · exact hnot
      exact hcase ⟨hpn, hpm⟩
    rw [if_neg hcase, Finset.erase_eq_of_not_mem hnotmem]
    ring

/-- Exact right transported weight: numerator and denominator increments are
both explicit and can differ. -/
theorem pairWeight_right_eq
    (P : List ℕ) (N Z p m n : ℕ)
    (hpFresh : p ∈ freshPrimes P N) :
    pairWeight P N Z m (p*n) =
      ((((keptDivisors P N Z m n).card +
        (if p ∣ n then 0 else if p ≤ Z ∨ ¬ p ∣ m then 1 else 0) : ℕ) : ℝ) /
       (((omega P N n + (if p ∣ n then 0 else 1) : ℕ) : ℝ))) := by
  unfold pairWeight
  rw [omega_right_eq P N p n hpFresh, keptDivisors_right_eq P N Z p m n hpFresh]
  by_cases hpn : p ∣ n
  · have hsel : p ∈ selectedDivisors (freshPrimes P N) n :=
      Finset.mem_filter.mpr ⟨hpFresh, hpn⟩
    by_cases hkeep : p ≤ Z ∨ ¬ p ∣ m
    · have hmem : p ∈ keptDivisors P N Z m n := by
        exact Finset.mem_filter.mpr ⟨hsel, hkeep⟩
      simp [hpn, hkeep, hmem]
    · simp [hpn, hkeep]
  · have hnot : p ∉ keptDivisors P N Z m n := by
      intro hmem
      exact hpn (Finset.mem_filter.mp (Finset.mem_filter.mp hmem).1).2
    by_cases hkeep : p ≤ Z ∨ ¬ p ∣ m
    · simp [hpn, hkeep, hnot]
    · simp [hpn, hkeep]

/-- Exact simultaneous transported weight above Z. The numerator loses any old
kept p while the denominator gains p exactly when p was not already in n. -/
theorem pairWeight_both_eq
    (P : List ℕ) (N Z p m n : ℕ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p) :
    pairWeight P N Z (p*m) (p*n) =
      ((((keptDivisors P N Z m n).erase p).card : ℝ) /
        ((omega P N n + (if p ∣ n then 0 else 1) : ℕ) : ℝ)) := by
  unfold pairWeight
  rw [keptDivisors_both_eq_erase P N Z p m n hpFresh hZp,
    omega_right_eq P N p n hpFresh]

end GRWTSK.NumberTheory.Moebius.PickupRoughFarDivisorMaskIncidence
