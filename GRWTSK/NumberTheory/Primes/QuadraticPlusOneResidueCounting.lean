/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots
import Mathlib.Data.Int.CardIntervalMod
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact finite residue counts for `n^2 + 1`

For positive `d`, the count of indices `1 <= n <= X` with
`d ∣ n^2 + 1` is decomposed into complete residue blocks plus a literal
endpoint correction.  The correction is a finite sum of zero-or-one terms,
one for each local root, and is at most the root count.

The corresponding rational discrepancy from `X * r(d) / d` is bounded by
`r(d)`.  Modulus one is included; no division by zero is permitted.

This is a finite periodicity statement, not a sieve lower bound.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.QuadraticPlusOneResidueCounting

open scoped BigOperators
open Finset
open GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots

noncomputable section

/-- Number of indices `1 <= n <= X` for which `d` divides `n^2 + 1`. -/
def quadraticPlusOneDivisorCount
    (d X : ℕ) : ℕ :=
  ((Finset.Icc 1 X).filter fun n => d ∣ n ^ 2 + 1).card

/-- Number of indices in `(0,X]` occupying one fixed residue class. -/
def quadraticPlusOneResidueClassCount
    (d X a : ℕ) : ℕ :=
  ((Finset.Ioc 0 X).filter fun n => n ≡ a [MOD d]).card

/-- The zero-or-one contribution made by one local root in the final partial
block. -/
def quadraticPlusOneRootEndpointTerm
    (d X a : ℕ) : ℕ :=
  if 0 < a ∧ a ≤ X % d then 1 else 0

/-- Complete endpoint correction after all full residue blocks. -/
def quadraticPlusOneCutoffError
    (d X : ℕ) : ℕ :=
  ∑ a ∈ quadraticPlusOneResidues d,
    quadraticPlusOneRootEndpointTerm d X a

/-- The endpoint correction is bounded by the number of local roots. -/
theorem quadraticPlusOneCutoffError_le_rootCount
    (d X : ℕ) :
    quadraticPlusOneCutoffError d X ≤
      quadraticPlusOneRootCount d := by
  unfold quadraticPlusOneCutoffError
    quadraticPlusOneRootCount
  calc
    (∑ a ∈ quadraticPlusOneResidues d,
      quadraticPlusOneRootEndpointTerm d X a) ≤
        ∑ _a ∈ quadraticPlusOneResidues d, 1 := by
          apply Finset.sum_le_sum
          intro a ha
          unfold quadraticPlusOneRootEndpointTerm
          split_ifs <;> omega
    _ = (quadraticPlusOneResidues d).card := by simp

/-- Exact count of one residue class in `(0,X]`. -/
theorem quadraticPlusOneResidueClassCount_formula
    {d X a : ℕ} (hd : 0 < d) (ha : a < d) :
    quadraticPlusOneResidueClassCount d X a =
      X / d + quadraticPlusOneRootEndpointTerm d X a := by
  classical
  have hset :
      (Finset.Ioc 0 X).filter (fun n => n ≡ a [MOD d]) =
        ((Finset.range (X + 1)).filter
          (fun n => n ≡ a [MOD d])).erase 0 := by
    ext n
    simp only [Finset.mem_filter, Finset.mem_Ioc,
      Finset.mem_erase, Finset.mem_range, Nat.lt_succ_iff]
    constructor
    · rintro ⟨⟨hn0, hnX⟩, hmod⟩
      exact ⟨by omega, ⟨hnX, hmod⟩⟩
    · rintro ⟨hn0, hnX, hmod⟩
      exact ⟨⟨by omega, hnX⟩, hmod⟩
  have hsuccmod : (X + 1) % d = (X % d + 1) % d :=
    ((Nat.mod_modEq X d).add_right 1).symm
  unfold quadraticPlusOneResidueClassCount
  rw [hset]
  by_cases ha0 : a = 0
  · subst a
    have hmem :
        0 ∈ (Finset.range (X + 1)).filter
          (fun n => n ≡ 0 [MOD d]) := by
      exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by omega), rfl⟩
    rw [Finset.card_erase_of_mem hmem,
      ← Nat.count_eq_card_filter_range,
      Nat.count_modEq_card (b := X + 1) (r := d) hd]
    unfold quadraticPlusOneRootEndpointTerm
    simp only [lt_self_iff_false, false_and, if_false, Nat.zero_mod]
    have hdiv := Nat.div_add_mod X d
    have hmodlt := Nat.mod_lt X hd
    by_cases hlast : X % d + 1 = d
    · have hrem : (X + 1) % d = 0 := by
        rw [hsuccmod, hlast, Nat.mod_self]
      have hquot : (X + 1) / d = X / d + 1 :=
        Nat.succ_div_of_mod_eq_zero hrem
      simp [hquot, hrem]
    · have hrem : (X + 1) % d = X % d + 1 := by
        rw [hsuccmod, Nat.mod_eq_of_lt (by omega)]
      have hquot : (X + 1) / d = X / d :=
        Nat.succ_div_of_mod_ne_zero (by rw [hrem]; omega)
      simp [hquot, hrem]
  · have hnotmem :
        0 ∉ (Finset.range (X + 1)).filter
          (fun n => n ≡ a [MOD d]) := by
      simp [Nat.ModEq, Nat.mod_eq_of_lt ha, Ne.symm ha0]
    rw [Finset.erase_eq_self.mpr hnotmem,
      ← Nat.count_eq_card_filter_range,
      Nat.count_modEq_card (b := X + 1) (r := d) hd]
    have hdiv := Nat.div_add_mod X d
    have hmodlt := Nat.mod_lt X hd
    have haPos : 0 < a := Nat.pos_of_ne_zero ha0
    unfold quadraticPlusOneRootEndpointTerm
    by_cases hlast : X % d + 1 = d
    · have hrem : (X + 1) % d = 0 := by
        rw [hsuccmod, hlast, Nat.mod_self]
      have hquot : (X + 1) / d = X / d + 1 :=
        Nat.succ_div_of_mod_eq_zero hrem
      have haRem : a ≤ X % d := by omega
      simp [Nat.mod_eq_of_lt ha, hquot, hrem, haPos, haRem]
    · have hrem : (X + 1) % d = X % d + 1 := by
        rw [hsuccmod, Nat.mod_eq_of_lt (by omega)]
      have hquot : (X + 1) / d = X / d :=
        Nat.succ_div_of_mod_ne_zero (by rw [hrem]; omega)
      by_cases haRem : a ≤ X % d
      · have halt : a < X % d + 1 := by omega
        simp [Nat.mod_eq_of_lt ha, hquot, hrem,
          haPos, haRem, halt]
      · have hnlt : ¬ a < X % d + 1 := by omega
        simp [Nat.mod_eq_of_lt ha, hquot, hrem,
          haPos, haRem, hnlt]

/-- The divisor condition is the disjoint sum of its root residue classes. -/
theorem quadraticPlusOneDivisorCount_eq_residueSum
    {d X : ℕ} (hd : 0 < d) :
    quadraticPlusOneDivisorCount d X =
      ∑ a ∈ quadraticPlusOneResidues d,
        quadraticPlusOneResidueClassCount d X a := by
  classical
  let S := (Finset.Icc 1 X).filter
    (fun n => d ∣ n ^ 2 + 1)
  have hmaps :
      (S : Set ℕ).MapsTo (fun n => n % d)
        (quadraticPlusOneResidues d : Set ℕ) := by
    intro n hn
    rcases Finset.mem_filter.mp hn with ⟨hnIcc, hdiv⟩
    change n % d ∈ quadraticPlusOneResidues d
    rw [mem_quadraticPlusOneResidues]
    constructor
    · exact Nat.mod_lt n hd
    · have hmod : n % d ≡ n [MOD d] := Nat.mod_modEq n d
      have hsq : (n % d) ^ 2 + 1 ≡ n ^ 2 + 1 [MOD d] := by
        exact (hmod.pow 2).add_right 1
      exact (hsq.dvd_iff dvd_rfl).2 hdiv
  unfold quadraticPlusOneDivisorCount
  change S.card = _
  rw [Finset.card_eq_sum_card_fiberwise hmaps]
  apply Finset.sum_congr rfl
  intro a ha
  unfold quadraticPlusOneResidueClassCount S
  apply congrArg Finset.card
  ext n
  rcases mem_quadraticPlusOneResidues.mp ha with
    ⟨haD, haRoot⟩
  simp only [Finset.mem_filter, Finset.mem_Icc,
    Finset.mem_Ioc]
  constructor
  · rintro ⟨⟨⟨hn1, hnX⟩, hdiv⟩, hrem⟩
    refine ⟨⟨by omega, hnX⟩, ?_⟩
    rw [Nat.ModEq]
    rw [hrem, Nat.mod_eq_of_lt haD]
  · rintro ⟨⟨hn0, hnX⟩, hmod⟩
    have hn1 : 1 ≤ n := by omega
    have hsq : n ^ 2 + 1 ≡ a ^ 2 + 1 [MOD d] := by
      exact (hmod.pow 2).add_right 1
    have hdiv : d ∣ n ^ 2 + 1 :=
      (hsq.dvd_iff dvd_rfl).2 haRoot
    have hrem : n % d = a := by
      rw [Nat.ModEq] at hmod
      simpa [Nat.mod_eq_of_lt haD] using hmod
    exact ⟨⟨⟨hn1, hnX⟩, hdiv⟩, hrem⟩

/-- Exact complete-block plus endpoint-correction formula. -/
theorem quadraticPlusOneDivisorCount_formula
    {d X : ℕ} (hd : 0 < d) :
    quadraticPlusOneDivisorCount d X =
      (X / d) * quadraticPlusOneRootCount d +
        quadraticPlusOneCutoffError d X := by
  rw [quadraticPlusOneDivisorCount_eq_residueSum hd]
  unfold quadraticPlusOneCutoffError
    quadraticPlusOneRootCount
  calc
    (∑ a ∈ quadraticPlusOneResidues d,
      quadraticPlusOneResidueClassCount d X a) =
        ∑ a ∈ quadraticPlusOneResidues d,
          (X / d + quadraticPlusOneRootEndpointTerm d X a) := by
            apply Finset.sum_congr rfl
            intro a ha
            exact quadraticPlusOneResidueClassCount_formula
              hd (mem_quadraticPlusOneResidues.mp ha).1
    _ =
        (∑ _a ∈ quadraticPlusOneResidues d, X / d) +
          ∑ a ∈ quadraticPlusOneResidues d,
            quadraticPlusOneRootEndpointTerm d X a := by
              rw [Finset.sum_add_distrib]
    _ =
        (X / d) * (quadraticPlusOneResidues d).card +
          ∑ a ∈ quadraticPlusOneResidues d,
            quadraticPlusOneRootEndpointTerm d X a := by
              simp [mul_comm]

/-- Rational local main term in the normalization requested by the issue. -/
def quadraticPlusOneLocalMain
    (d X : ℕ) : ℚ :=
  (X : ℚ) * quadraticPlusOneRootCount d / d

/-- Signed rational discrepancy from the local main term. -/
def quadraticPlusOneLocalDiscrepancy
    (d X : ℕ) : ℚ :=
  quadraticPlusOneDivisorCount d X -
    quadraticPlusOneLocalMain d X

/-- The exact block formula yields the requested discrepancy bound. -/
theorem abs_quadraticPlusOneLocalDiscrepancy_le
    {d X : ℕ} (hd : 0 < d) :
    |quadraticPlusOneLocalDiscrepancy d X| ≤
      quadraticPlusOneRootCount d := by
  let q := X / d
  let s := X % d
  let r := quadraticPlusOneRootCount d
  let e := quadraticPlusOneCutoffError d X
  have hformula := quadraticPlusOneDivisorCount_formula (X := X) hd
  have he0 : (0 : ℚ) ≤ e := by positivity
  have her : (e : ℚ) ≤ r := by
    exact_mod_cast quadraticPlusOneCutoffError_le_rootCount d X
  have hs0 : (0 : ℚ) ≤ s := by positivity
  have hsd : (s : ℚ) < d := by
    exact_mod_cast Nat.mod_lt X hd
  have hdQ : (0 : ℚ) < d := by exact_mod_cast hd
  have hsr0 : (0 : ℚ) ≤ (s : ℚ) * r / d := by positivity
  have hsr : (s : ℚ) * r / d ≤ r := by
    by_cases hr0 : r = 0
    · simp [hr0]
    · have hrQ : (0 : ℚ) < r := by positivity
      rw [div_le_iff₀ hdQ]
      nlinarith
  have hX : (X : ℚ) = q * d + s := by
    have hnat : X = q * d + s := by
      simpa only [q, s, mul_comm] using (Nat.div_add_mod X d).symm
    exact_mod_cast hnat
  unfold quadraticPlusOneLocalDiscrepancy
    quadraticPlusOneLocalMain
  rw [hformula]
  push_cast
  change |(q : ℚ) * r + e - (X : ℚ) * r / d| ≤ r
  rw [hX]
  have heq : (q : ℚ) * r + e - ((q : ℚ) * d + s) * r / d =
      e - (s : ℚ) * r / d := by
    field_simp [hdQ.ne']
    ring
  rw [heq, abs_le]
  constructor <;> linarith

/-- Modulus one is handled explicitly: every index is a local survivor. -/
theorem quadraticPlusOneDivisorCount_one
    (X : ℕ) :
    quadraticPlusOneDivisorCount 1 X = X := by
  rw [quadraticPlusOneDivisorCount_formula (by omega)]
  simp [quadraticPlusOneRootCount_one,
    quadraticPlusOneCutoffError,
    quadraticPlusOneResidues,
    quadraticPlusOneRootEndpointTerm]

end
end GRWTSK.NumberTheory.Primes.QuadraticPlusOneResidueCounting
