/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib results retain their upstream authorship and licenses. -/
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Tactic

/-!
# Ordered off-diagonal source pairs in gcd coordinates

The finite positive square is reindexed by its actual gcd and the two coprime
quotients. Both ordered pairs are retained. The two product cutoffs are literal;
no symmetry, coefficient support, positivity or cancellation is assumed.

The generic finite sum identity is intended for the actual pickup octave kernel.
It does not identify arbitrary signed coefficients with a multiplicative source;
the Mobius support identity must be supplied separately before factorization.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and transitive axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupGcdReindex

/-- Complete ordered off-diagonal positive source inventory. -/
def orderedPairs (N : ℕ) : Finset (ℕ × ℕ) :=
  ((Finset.Icc 1 N).product (Finset.Icc 1 N)).filter fun p => p.1 ≠ p.2

/-- The gcd is positive and each quotient is positive. Both quotient orderings
remain, and the original product bounds are retained without rounding. -/
def gcdCoordinates (N : ℕ) : Finset (ℕ × ℕ × ℕ) :=
  ((Finset.Icc 1 N).product ((Finset.Icc 1 N).product (Finset.Icc 1 N))).filter
    fun t => Nat.Coprime t.2.1 t.2.2 ∧ t.2.1 ≠ t.2.2 ∧
      t.1 * t.2.1 ≤ N ∧ t.1 * t.2.2 ≤ N

@[simp] theorem mem_orderedPairs {N n m : ℕ} :
    (n, m) ∈ orderedPairs N ↔
      1 ≤ n ∧ n ≤ N ∧ 1 ≤ m ∧ m ≤ N ∧ n ≠ m := by
  simp [orderedPairs, and_assoc]

@[simp] theorem mem_gcdCoordinates {N d a b : ℕ} :
    (d, a, b) ∈ gcdCoordinates N ↔
      1 ≤ d ∧ d ≤ N ∧ 1 ≤ a ∧ a ≤ N ∧ 1 ≤ b ∧ b ≤ N ∧
        Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N := by
  simp [gcdCoordinates, and_assoc]

/-- Coprime quotient coordinates recover the literal common divisor. -/
theorem gcd_decode {d a b : ℕ} (hcop : Nat.Coprime a b) :
    Nat.gcd (d * a) (d * b) = d := by
  rw [Nat.gcd_mul_left, hcop.gcd_eq_one, mul_one]

/-- Decode every gcd coordinate into the original positive ordered pair. -/
theorem decode_mem {N d a b : ℕ} (h : (d, a, b) ∈ gcdCoordinates N) :
    (d * a, d * b) ∈ orderedPairs N := by
  rcases mem_gcdCoordinates.mp h with
    ⟨hd, _hdN, ha, _haN, hb, _hbN, _hcop, hne, hda, hdb⟩
  refine mem_orderedPairs.mpr ⟨by nlinarith, hda, by nlinarith, hdb, ?_⟩
  intro heq
  exact hne (Nat.eq_of_mul_eq_mul_left (by omega : 0 < d) heq)

/-- The actual gcd and integer quotients encode every positive off-diagonal
pair. Zero source coefficients need no exception to this index identity. -/
theorem encode_mem {N n m : ℕ} (h : (n, m) ∈ orderedPairs N) :
    (Nat.gcd n m, n / Nat.gcd n m, m / Nat.gcd n m) ∈ gcdCoordinates N := by
  rcases mem_orderedPairs.mp h with ⟨hn, hnN, hm, hmN, hne⟩
  have hnpos : 0 < n := by omega
  have hgpos : 0 < Nat.gcd n m := Nat.gcd_pos_of_pos_left m hnpos
  have hna : Nat.gcd n m * (n / Nat.gcd n m) = n :=
    Nat.mul_div_cancel_left' (Nat.gcd_dvd_left n m)
  have hmb : Nat.gcd n m * (m / Nat.gcd n m) = m :=
    Nat.mul_div_cancel_left' (Nat.gcd_dvd_right n m)
  have ha : 1 ≤ n / Nat.gcd n m := by
    by_contra h
    have hz : n / Nat.gcd n m = 0 := by omega
    rw [hz, mul_zero] at hna
    omega
  have hb : 1 ≤ m / Nat.gcd n m := by
    by_contra h
    have hz : m / Nat.gcd n m = 0 := by omega
    rw [hz, mul_zero] at hmb
    omega
  refine mem_gcdCoordinates.mpr
    ⟨by omega, (Nat.gcd_le_left m hnpos).trans hnN,
      ha, (Nat.div_le_self n _).trans hnN,
      hb, (Nat.div_le_self m _).trans hmN,
      Nat.coprime_iff_gcd_eq_one.mpr (Nat.gcd_div_gcd_div_gcd_of_pos_left hnpos),
      ?_, by simpa only [hna] using hnN, by simpa only [hmb] using hmN⟩
  intro heq
  apply hne
  calc
    n = Nat.gcd n m * (n / Nat.gcd n m) := hna.symm
    _ = Nat.gcd n m * (m / Nat.gcd n m) := congrArg (fun k => Nat.gcd n m * k) heq
    _ = m := hmb

/-- Positive coprime coordinates are unique; the gcd first fixes the common
factor, after which positive multiplication cancels each quotient. -/
theorem decode_injective_on (N : ℕ) :
    Set.InjOn (fun t : ℕ × ℕ × ℕ => (t.1 * t.2.1, t.1 * t.2.2))
      (gcdCoordinates N : Set (ℕ × ℕ × ℕ)) := by
  intro t ht s hs heq
  rcases t with ⟨d, a, b⟩
  rcases s with ⟨e, c, f⟩
  rcases mem_gcdCoordinates.mp ht with
    ⟨hd, _hdN, _ha, _haN, _hb, _hbN, hcop, _hne, _hda, _hdb⟩
  rcases mem_gcdCoordinates.mp hs with
    ⟨_he, _heN, _hc, _hcN, _hf, _hfN, hcop', _hne', _hec, _hef⟩
  have hn : d * a = e * c := congrArg Prod.fst heq
  have hm : d * b = e * f := congrArg Prod.snd heq
  have hdg : d = e := by
    calc
      d = Nat.gcd (d * a) (d * b) := (gcd_decode hcop).symm
      _ = Nat.gcd (e * c) (e * f) := congrArg₂ Nat.gcd hn hm
      _ = e := gcd_decode hcop'
  subst e
  have hac : a = c := Nat.eq_of_mul_eq_mul_left (by omega : 0 < d) hn
  have hbf : b = f := Nat.eq_of_mul_eq_mul_left (by omega : 0 < d) hm
  subst c
  subst f
  rfl

/-- Exact finite change of coordinates. No term is discarded and no factor
of two is introduced: the two quotient orderings remain separate summands. -/
theorem sum_orderedPairs_eq_gcdCoordinates (N : ℕ) (f : ℕ → ℕ → ℝ) :
    (∑ p ∈ orderedPairs N, f p.1 p.2) =
      ∑ t ∈ gcdCoordinates N, f (t.1 * t.2.1) (t.1 * t.2.2) := by
  symm
  refine Finset.sum_bij
    (fun t _ => (t.1 * t.2.1, t.1 * t.2.2)) ?_ ?_ ?_ ?_
  · intro t ht
    exact decode_mem ht
  · intro t ht s hs heq
    exact decode_injective_on N ht hs heq
  · intro p hp
    rcases p with ⟨n, m⟩
    refine ⟨(Nat.gcd n m, n / Nat.gcd n m, m / Nat.gcd n m), encode_mem hp, ?_⟩
    exact Prod.ext
      (Nat.mul_div_cancel_left' (Nat.gcd_dvd_left n m))
      (Nat.mul_div_cancel_left' (Nat.gcd_dvd_right n m))
  · intro t _ht
    rfl

/-- Consumer form with an explicit outer common-divisor sum and both original
product cutoffs. The squarefree/Mobius support belongs to the supplied summand. -/
theorem sum_orderedPairs_eq_gcd_sum (N : ℕ) (f : ℕ → ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
      if n ≠ m then f n m else 0) =
      ∑ d ∈ Finset.Icc 1 N, ∑ a ∈ Finset.Icc 1 N, ∑ b ∈ Finset.Icc 1 N,
        if Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N then
          f (d * a) (d * b) else 0 := by
  have hleft : (∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
      if n ≠ m then f n m else 0) = ∑ p ∈ orderedPairs N, f p.1 p.2 := by
    simp only [orderedPairs, Finset.sum_filter, Finset.sum_product]
  rw [hleft, sum_orderedPairs_eq_gcdCoordinates]
  simp only [gcdCoordinates, Finset.sum_filter, Finset.sum_product]

end GRWTSK.NumberTheory.Moebius.PickupGcdReindex
