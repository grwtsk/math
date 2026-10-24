# Complete source: GRWTSK.NumberTheory.Primes.TwinShiftTwoCRT

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b6287ffb38838f8d9b2e7eeadd2de64ad4542d1` · SHA-256 `47f9abe6fbd65efb595422f0eb181b8f8c8d202ed142cc24df5770db16501b3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.ConfigurationCounts
import Mathlib.Data.Int.CardIntervalMod
import Mathlib.Data.Int.GCD
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact shift-two congruence geometry for twin-prime correlations

For positive divisors `d` and `e`, the simultaneous divisibility conditions

`d ∣ n` and `e ∣ n + 2`

have a natural-number solution exactly when `gcd d e ∣ 2`.  All solutions are
one residue class modulo `lcm d e`.  The finite count through a cutoff is then
an exact quotient plus a zero-or-one endpoint correction.

This is finite congruence arithmetic.  It supplies no prime-distribution,
sieve-parity, bilinear, or twin-prime estimate.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.TwinShiftTwoCRT

open scoped BigOperators
open Finset

noncomputable section

/-- A natural solution of the exact shift-two divisor constraints. -/
def TwinShiftTwoNaturalSolution (d e : ℕ) : Prop :=
  ∃ n : ℕ, d ∣ n ∧ e ∣ n + 2

/-- The corresponding integer solution, used for the Bézout construction. -/
def TwinShiftTwoIntegerSolution (d e : ℕ) : Prop :=
  ∃ z : ℤ, (d : ℤ) ∣ z ∧ (e : ℤ) ∣ z + 2

/-- The exact CRT compatibility predicate for the fixed translation by two. -/
def TwinShiftTwoCompatible (d e : ℕ) : Prop :=
  Nat.gcd d e ∣ 2

/-- Every natural shift-two solution forces the exact gcd compatibility. -/
theorem naturalSolution_implies_compatible
    {d e : ℕ} :
    TwinShiftTwoNaturalSolution d e →
      TwinShiftTwoCompatible d e := by
  rintro ⟨n, hdn, hen⟩
  have hgn : Nat.gcd d e ∣ n :=
    (Nat.gcd_dvd_left d e).trans hdn
  have hgn2 : Nat.gcd d e ∣ n + 2 :=
    (Nat.gcd_dvd_right d e).trans hen
  exact (Nat.dvd_add_iff_right hgn).mpr hgn2

/-- Integer solutions have the same compatibility obstruction. -/
theorem integerSolution_implies_compatible
    {d e : ℕ} :
    TwinShiftTwoIntegerSolution d e →
      TwinShiftTwoCompatible d e := by
  rintro ⟨z, hdz, hez⟩
  have hgd : (Nat.gcd d e : ℤ) ∣ (d : ℤ) := by
    exact_mod_cast Nat.gcd_dvd_left d e
  have hge : (Nat.gcd d e : ℤ) ∣ (e : ℤ) := by
    exact_mod_cast Nat.gcd_dvd_right d e
  have hgz : (Nat.gcd d e : ℤ) ∣ z := hgd.trans hdz
  have hgz2 : (Nat.gcd d e : ℤ) ∣ z + 2 := hge.trans hez
  have htwoZ : (Nat.gcd d e : ℤ) ∣ (2 : ℤ) := by
    simpa using dvd_sub hgz2 hgz
  exact_mod_cast htwoZ

/-- Bézout's identity constructs an integer solution from `gcd d e ∣ 2`. -/
theorem compatible_implies_integerSolution
    {d e : ℕ} :
    TwinShiftTwoCompatible d e →
      TwinShiftTwoIntegerSolution d e := by
  rintro ⟨k, hk⟩
  let z : ℤ :=
    -((d : ℤ) * Nat.gcdA d e * (k : ℤ))
  refine ⟨z, ?_, ?_⟩
  · refine ⟨-(Nat.gcdA d e * (k : ℤ)), ?_⟩
    dsimp [z]
    ring
  · refine ⟨Nat.gcdB d e * (k : ℤ), ?_⟩
    have hkZ :
        (2 : ℤ) = (Nat.gcd d e : ℤ) * (k : ℤ) := by
      exact_mod_cast hk
    have hbez :
        (Nat.gcd d e : ℤ) =
          (d : ℤ) * Nat.gcdA d e +
            (e : ℤ) * Nat.gcdB d e :=
      Nat.gcd_eq_gcd_ab d e
    dsimp [z]
    rw [hkZ, hbez]
    ring

/-- A positive-modulus integer solution can be translated by a multiple of
`d*e` into the natural numbers without changing either congruence. -/
theorem integerSolution_to_naturalSolution
    {d e : ℕ} (hd : 0 < d) (he : 0 < e) :
    TwinShiftTwoIntegerSolution d e →
      TwinShiftTwoNaturalSolution d e := by
  rintro ⟨z, hdz, hez⟩
  let t : ℕ := z.natAbs + 1
  let w : ℤ :=
    z + (t : ℤ) * ((d : ℤ) * (e : ℤ))
  have hdepos :
      (0 : ℤ) < (d : ℤ) * (e : ℤ) := by
    exact mul_pos (by exact_mod_cast hd) (by exact_mod_cast he)
  have hdeone :
      (1 : ℤ) ≤ (d : ℤ) * (e : ℤ) := by
    omega
  have hzlower :
      -(z.natAbs : ℤ) ≤ z := by
    have h := Int.le_natAbs (a := -z)
    have hneg := neg_le_neg h
    simpa using hneg
  have htbound :
      (z.natAbs : ℤ) ≤
        (t : ℤ) * ((d : ℤ) * (e : ℤ)) := by
    have ht0 : (0 : ℤ) ≤ (t : ℤ) := by positivity
    dsimp [t]
    nlinarith
  have hw : 0 ≤ w := by
    dsimp [w]
    linarith
  let n : ℕ := w.toNat
  have hncast : (n : ℤ) = w := by
    dsimp [n]
    exact Int.toNat_of_nonneg hw
  refine ⟨n, ?_, ?_⟩
  · have hdperiod :
        (d : ℤ) ∣
          (t : ℤ) * ((d : ℤ) * (e : ℤ)) := by
      refine ⟨(t : ℤ) * (e : ℤ), ?_⟩
      ring
    have hdw : (d : ℤ) ∣ w := by
      dsimp [w]
      exact dvd_add hdz hdperiod
    have hdnZ : (d : ℤ) ∣ (n : ℤ) := by
      simpa [hncast] using hdw
    exact_mod_cast hdnZ
  · have heperiod :
        (e : ℤ) ∣
          (t : ℤ) * ((d : ℤ) * (e : ℤ)) := by
      refine ⟨(t : ℤ) * (d : ℤ), ?_⟩
      ring
    have hew : (e : ℤ) ∣ w + 2 := by
      have hadd := dvd_add hez heperiod
      dsimp [w] at ⊢
      simpa only [add_assoc, add_comm, add_left_comm] using hadd
    have henZ : (e : ℤ) ∣ ((n + 2 : ℕ) : ℤ) := by
      simpa [hncast] using hew
    exact_mod_cast henZ

/-- Exact positive-modulus CRT criterion for the shift-two system. -/
theorem naturalSolution_iff_compatible
    {d e : ℕ} (hd : 0 < d) (he : 0 < e) :
    TwinShiftTwoNaturalSolution d e ↔
      TwinShiftTwoCompatible d e := by
  constructor
  · exact naturalSolution_implies_compatible
  · intro hcompat
    exact integerSolution_to_naturalSolution hd he
      (compatible_implies_integerSolution hcompat)

/-- Any two natural solutions are congruent modulo the lcm. -/
theorem naturalSolutions_modEq_lcm
    {d e m n : ℕ}
    (hm : d ∣ m ∧ e ∣ m + 2)
    (hn : d ∣ n ∧ e ∣ n + 2) :
    m ≡ n [MOD Nat.lcm d e] := by
  have hdmod : m ≡ n [MOD d] :=
    hm.1.modEq_zero_nat.trans hn.1.modEq_zero_nat.symm
  have hemod_add : m + 2 ≡ n + 2 [MOD e] :=
    hm.2.modEq_zero_nat.trans hn.2.modEq_zero_nat.symm
  have hemod : m ≡ n [MOD e] :=
    Nat.ModEq.add_right_cancel' 2 hemod_add
  exact Nat.mod_lcm hdmod hemod

/-- Adding any multiple of the lcm preserves both shift-two divisibility
conditions. -/
theorem naturalSolution_add_lcm_mul
    {d e n k : ℕ}
    (hn : d ∣ n ∧ e ∣ n + 2) :
    d ∣ n + k * Nat.lcm d e ∧
      e ∣ (n + k * Nat.lcm d e) + 2 := by
  constructor
  · exact dvd_add hn.1
      (dvd_mul_of_dvd_right (Nat.dvd_lcm_left d e) k)
  · have hperiod : e ∣ k * Nat.lcm d e :=
      dvd_mul_of_dvd_right (Nat.dvd_lcm_right d e) k
    simpa only [add_assoc, add_comm, add_left_comm] using dvd_add hn.2 hperiod

/-- The canonical residue is the reduction modulo the lcm of one selected
natural solution. -/
noncomputable def twinShiftTwoResidue
    (d e : ℕ) (hd : 0 < d) (he : 0 < e)
    (hcompat : TwinShiftTwoCompatible d e) : ℕ :=
  Nat.find ((naturalSolution_iff_compatible hd he).2 hcompat) %
    Nat.lcm d e

/-- The selected canonical residue is itself a shift-two solution. -/
theorem twinShiftTwoResidue_isSolution
    {d e : ℕ} (hd : 0 < d) (he : 0 < e)
    (hcompat : TwinShiftTwoCompatible d e) :
    d ∣ twinShiftTwoResidue d e hd he hcompat ∧
      e ∣ twinShiftTwoResidue d e hd he hcompat + 2 := by
  let n := Nat.find ((naturalSolution_iff_compatible hd he).2 hcompat)
  have hn : d ∣ n ∧ e ∣ n + 2 :=
    Nat.find_spec ((naturalSolution_iff_compatible hd he).2 hcompat)
  let L := Nat.lcm d e
  have hmod : n % L ≡ n [MOD L] := Nat.mod_modEq n L
  have hdres : d ∣ n % L :=
    (hmod.dvd_iff (Nat.dvd_lcm_left d e)).2 hn.1
  have hemod : n % L + 2 ≡ n + 2 [MOD L] :=
    hmod.add_right 2
  have heres : e ∣ n % L + 2 :=
    (hemod.dvd_iff (Nat.dvd_lcm_right d e)).2 hn.2
  simpa [twinShiftTwoResidue, n, L] using ⟨hdres, heres⟩

/-- The canonical residue lies in one complete lcm period. -/
theorem twinShiftTwoResidue_lt_lcm
    {d e : ℕ} (hd : 0 < d) (he : 0 < e)
    (hcompat : TwinShiftTwoCompatible d e) :
    twinShiftTwoResidue d e hd he hcompat < Nat.lcm d e := by
  unfold twinShiftTwoResidue
  exact Nat.mod_lt _ (Nat.lcm_pos hd he)

/-- A natural is a shift-two solution exactly when it occupies the canonical
residue class modulo the lcm. -/
theorem naturalSolution_iff_modEq_residue
    {d e n : ℕ} (hd : 0 < d) (he : 0 < e)
    (hcompat : TwinShiftTwoCompatible d e) :
    (d ∣ n ∧ e ∣ n + 2) ↔
      n ≡ twinShiftTwoResidue d e hd he hcompat
        [MOD Nat.lcm d e] := by
  let r := twinShiftTwoResidue d e hd he hcompat
  have hr : d ∣ r ∧ e ∣ r + 2 :=
    twinShiftTwoResidue_isSolution hd he hcompat
  constructor
  · intro hn
    exact naturalSolutions_modEq_lcm hn hr
  · intro hmod
    constructor
    · exact (hmod.dvd_iff (Nat.dvd_lcm_left d e)).2 hr.1
    · have hmod2 : n + 2 ≡ r + 2 [MOD Nat.lcm d e] :=
        hmod.add_right 2
      exact (hmod2.dvd_iff (Nat.dvd_lcm_right d e)).2 hr.2

/-- Number of exact shift-two divisor solutions in the inclusive interval
`0 ≤ n ≤ X`. -/
def twinShiftTwoResidueCount
    (d e X : ℕ) : ℕ :=
  ((Finset.range (X + 1)).filter
    (fun n => d ∣ n ∧ e ∣ n + 2)).card

/-- The endpoint correction in the exact residue-class count. -/
def twinShiftTwoCutoffError
    (d e X : ℕ) (hd : 0 < d) (he : 0 < e)
    (hcompat : TwinShiftTwoCompatible d e) : ℕ :=
  if twinShiftTwoResidue d e hd he hcompat % Nat.lcm d e <
      (X + 1) % Nat.lcm d e then 1 else 0

/-- Exact quotient-plus-endpoint-error formula for the finite residue count. -/
theorem twinShiftTwoResidueCount_formula
    {d e X : ℕ} (hd : 0 < d) (he : 0 < e)
    (hcompat : TwinShiftTwoCompatible d e) :
    twinShiftTwoResidueCount d e X =
      (X + 1) / Nat.lcm d e +
        twinShiftTwoCutoffError d e X hd he hcompat := by
  have hpred : ∀ n : ℕ,
      (d ∣ n ∧ e ∣ n + 2) ↔
        n ≡ twinShiftTwoResidue d e hd he hcompat
          [MOD Nat.lcm d e] :=
    fun n => naturalSolution_iff_modEq_residue hd he hcompat
  unfold twinShiftTwoResidueCount
  simp_rw [hpred]
  rw [← Nat.count_eq_card_filter_range]
  simpa [twinShiftTwoCutoffError] using
    (Nat.count_modEq_card
      (b := X + 1) (r := Nat.lcm d e)
      (Nat.lcm_pos hd he)
      (twinShiftTwoResidue d e hd he hcompat))

/-- The exact cutoff error is always zero or one. -/
theorem twinShiftTwoCutoffError_le_one
    {d e X : ℕ} (hd : 0 < d) (he : 0 < e)
    (hcompat : TwinShiftTwoCompatible d e) :
    twinShiftTwoCutoffError d e X hd he hcompat ≤ 1 := by
  unfold twinShiftTwoCutoffError
  split_ifs <;> omega

/-- Coarse lower and upper count bounds retaining the one-point endpoint
uncertainty explicitly. -/
theorem twinShiftTwoResidueCount_bounds
    {d e X : ℕ} (hd : 0 < d) (he : 0 < e)
    (hcompat : TwinShiftTwoCompatible d e) :
    (X + 1) / Nat.lcm d e ≤
        twinShiftTwoResidueCount d e X ∧
      twinShiftTwoResidueCount d e X ≤
        (X + 1) / Nat.lcm d e + 1 := by
  rw [twinShiftTwoResidueCount_formula hd he hcompat]
  constructor
  · omega
  · exact Nat.add_le_add_left
      (twinShiftTwoCutoffError_le_one hd he hcompat) _

end
end GRWTSK.NumberTheory.Primes.TwinShiftTwoCRT
```
