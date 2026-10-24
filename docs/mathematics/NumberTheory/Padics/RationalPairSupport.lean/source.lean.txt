/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Finite support of rational S-units from ACTUAL reduced numerator/denominator.
The two valuations are retained separately; a common pole is counted once
by boundaryDepth, not twice by an absolute-value sum. Only a declared prime
identifies this depth with arithmetic valuation. Zero is never an S-unit.
This is the rational-prime profile, not a number-field ideal/conductor result.
Unelaborated source proof scripts: NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Data.Nat.GCD.Basic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Padics.RationalPairSupport

open GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess

/-- Coprime nonzero integers have disjoint positive factorization coordinates. -/
theorem coprime_depths (m n p : ℕ) (hm : m ≠ 0) (hn : n ≠ 0)
    (h : Nat.Coprime m n) : m.factorization p = 0 ∨ n.factorization p = 0 := by
  by_cases hmp : m.factorization p = 0
  · exact Or.inl hmp
  · right
    by_contra hnp
    have hM := (mem_occupied_iff m p hm).mp (Finsupp.mem_support_iff.mpr hmp)
    have hN := (mem_occupied_iff n p hn).mp (Finsupp.mem_support_iff.mpr hnp)
    have hd : p ∣ 1 := by
      simpa only [h.gcd_eq_one] using Nat.dvd_gcd hM.2 hN.2
    exact hM.1.ne_one (Nat.dvd_one.mp hd)

/-- Primes where the numerator OR denominator of this REDUCED rational is nonunit. -/
def support (q : ℚ) : Finset ℕ := occupied q.num.natAbs ∪ occupied q.den

theorem support_prime (q : ℚ) (p : ℕ) (hp : p ∈ support q) : Nat.Prime p := by
  rcases Finset.mem_union.mp hp with h | h
  · have hz := Finsupp.mem_support_iff.mp h
    by_contra hnp
    exact hz (Nat.factorization_eq_zero_of_not_prime _ hnp)
  · have hz := Finsupp.mem_support_iff.mp h
    by_contra hnp
    exact hz (Nat.factorization_eq_zero_of_not_prime _ hnp)

/-- Use the actual numerator/denominator valuation, not independently supplied depths. -/
theorem valuation_factorization (q : ℚ) (p : ℕ) (hp : Nat.Prime p) :
    padicValRat p q = (q.num.natAbs.factorization p : ℤ) -
      (q.den.factorization p : ℤ) := by
  rw [padicValRat_def]
  simp only [padicValInt, Nat.factorization_def _ hp]

/-- Reducedness prevents cancellation of equal nonzero numerator/denominator depths. -/
theorem mem_support_iff_valuation (q : ℚ) (hq : q ≠ 0) (p : ℕ) (hp : Nat.Prime p) :
    p ∈ support q ↔ padicValRat p q ≠ 0 := by
  have hn : q.num.natAbs ≠ 0 := Int.natAbs_ne_zero.mpr (Rat.num_ne_zero.mpr hq)
  have hd : q.den ≠ 0 := q.den_nz
  have he := coprime_depths q.num.natAbs q.den p hn hd q.reduced
  simp only [support, occupied, Finset.mem_union, Finsupp.mem_support_iff]
  rw [valuation_factorization q p hp]
  rcases he with h | h <;> simp [h]

/-- Rational S-unit in the named finite rational-prime set; this is a support predicate.
No ring-of-S-integers equivalence is silently installed. -/
def IsSUnit (S : Finset ℕ) (q : ℚ) : Prop := q ≠ 0 ∧ support q ⊆ S

/-- Both zeros and poles are retained, with the common support unioned once. -/
def pairSupport (u v : ℚ) : Finset ℕ := support u ∪ support v

theorem pairSupport_prime (u v : ℚ) (p : ℕ) (hp : p ∈ pairSupport u v) : Nat.Prime p := by
  rcases Finset.mem_union.mp hp with h | h
  · exact support_prime u p h
  · exact support_prime v p h

theorem mem_pairSupport_iff (u v : ℚ) (hu : u ≠ 0) (hv : v ≠ 0)
    (p : ℕ) (hp : Nat.Prime p) :
    p ∈ pairSupport u v ↔ padicValRat p u ≠ 0 ∨ padicValRat p v ≠ 0 := by
  rw [pairSupport, Finset.mem_union, mem_support_iff_valuation u hu p hp,
    mem_support_iff_valuation v hv p hp]

theorem pair_SUnit_iff (u v : ℚ) (hu : u ≠ 0) (hv : v ≠ 0) (S : Finset ℕ) :
    IsSUnit S u ∧ IsSUnit S v ↔ pairSupport u v ⊆ S := by
  simp only [IsSUnit, hu, hv, ne_eq, not_false_eq_true, true_and,
    pairSupport, Finset.union_subset_iff]

/-- Simultaneous valuation depth: a common pole has one depth, not the sum of two copies. -/
def boundaryDepth (p : ℕ) (u v : ℚ) : ℕ :=
  max (padicValRat p u).natAbs (padicValRat p v).natAbs

theorem boundaryDepth_ne_zero_iff (p : ℕ) (u v : ℚ) :
    boundaryDepth p u v ≠ 0 ↔ padicValRat p u ≠ 0 ∨ padicValRat p v ≠ 0 := by
  have hz : boundaryDepth p u v = 0 ↔ padicValRat p u = 0 ∧ padicValRat p v = 0 := by
    constructor
    · intro h
      have hu := le_max_left (padicValRat p u).natAbs (padicValRat p v).natAbs
      have hv := le_max_right (padicValRat p u).natAbs (padicValRat p v).natAbs
      change max (padicValRat p u).natAbs (padicValRat p v).natAbs = 0 at h
      exact ⟨Int.natAbs_eq_zero.mp (by omega), Int.natAbs_eq_zero.mp (by omega)⟩
    · rintro ⟨hu,hv⟩
      simp [boundaryDepth,hu,hv]
  rw [ne_eq, hz, not_and_or]

/-- A common prime in coprime factors is impossible, so its overlap budget vanishes. -/
theorem supportLog_coprime (m n : ℕ) (hm : m ≠ 0) (hn : n ≠ 0)
    (h : Nat.Coprime m n) : supportLog (m*n) = supportLog m + supportLog n := by
  have he : occupied m ∩ occupied n = ∅ := by
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro p hp
    rcases Finset.mem_inter.mp hp with ⟨hpm,hpn⟩
    have hM := Finsupp.mem_support_iff.mp hpm
    have hN := Finsupp.mem_support_iff.mp hpn
    exact (coprime_depths m n p hm hn h).elim hM hN
  have ho : overlapLog m n = 0 := by simp [overlapLog, he]
  simpa only [ho, add_zero] using supportLog_product m n hm hn

/-- Guard against interpreting the library's zero valuation convention as a unit. -/
theorem zero_not_SUnit (S : Finset ℕ) : ¬ IsSUnit S 0 := by simp [IsSUnit]

end GRWTSK.NumberTheory.Padics.RationalPairSupport
