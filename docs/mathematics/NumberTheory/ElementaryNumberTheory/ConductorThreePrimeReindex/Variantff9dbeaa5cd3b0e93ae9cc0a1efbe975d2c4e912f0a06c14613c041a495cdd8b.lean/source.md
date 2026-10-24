# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ConductorThreePrimeReindex.Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42043ac76a121fff2bd2a7740d829b447afdfea0` · SHA-256 `ff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeCritical
public import Surface.Core.ConductorThreeCharacterArithmetic
public import Mathlib.NumberTheory.PrimeCounting
import Mathlib.Tactic

/-!
# Exact reindexing of the conductor-three prime race

The eligible sequence is not an abstract arithmetic stream: it is exactly the
sequence of all primes after `2` and `3`.  This module proves that fact, shifts
the `Nat.nth` index by two, and records the exact plateau between consecutive
eligible cutoffs.  These are the finite reindexing facts needed before any
two-sided asymptotic prime-number estimate can be applied.
-/

public section

namespace Surface.Core.ConductorThreePrimeReindex

noncomputable section

open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeCritical
open Surface.Core.ConductorThreeCharacterArithmetic

/-- The residue-six eligibility predicate is precisely primality above three. -/
@[surface_novel, surface_published]
theorem eligibleResidueSixPrime_iff_prime_and_three_lt (p : ℕ) :
    IsEligibleResidueSixPrime p ↔ p.Prime ∧ 3 < p := by
  change (p.Prime ∧ p % 6 = 1) ∨ (p.Prime ∧ p % 6 = 5) ↔
    p.Prime ∧ 3 < p
  constructor
  · rintro (⟨hp, hres⟩ | ⟨hp, hres⟩)
    · refine ⟨hp, ?_⟩
      by_contra hnot
      have hle : p ≤ 3 := Nat.le_of_not_gt hnot
      have hp6 : p < 6 := by omega
      rw [Nat.mod_eq_of_lt hp6] at hres
      exact (hp.ne_one hres).elim
    · exact ⟨hp, by omega⟩
  · rintro ⟨hp, hp3⟩
    have hp2ne : p ≠ 2 := by omega
    have hp3ne : p ≠ 3 := by omega
    have hp2 : p.Coprime 2 :=
      (Nat.coprime_primes hp Nat.prime_two).2 hp2ne
    have hp3' : p.Coprime 3 :=
      (Nat.coprime_primes hp Nat.prime_three).2 hp3ne
    have hp6 : p.Coprime 6 := by
      simpa only [show 6 = 2 * 3 by norm_num] using hp2.mul_right hp3'
    have hmodcop : (p % 6).Coprime 6 :=
      (ZMod.coprime_mod_iff_coprime p 6).2 hp6
    have hmodlt : p % 6 < 6 := Nat.mod_lt p (by norm_num)
    have hres : p % 6 = 1 ∨ p % 6 = 5 := by
      interval_cases h : p % 6
      all_goals norm_num [h] at hmodcop
      all_goals simp
    rcases hres with hres | hres
    · exact Or.inl ⟨hp, hres⟩
    · exact Or.inr ⟨hp, hres⟩

/-- General index shift: deleting the primes `2` and `3` advances the ordinary
prime index by exactly two. -/
@[surface_novel, surface_published]
theorem nth_eligibleResidueSixPrime_eq_nth_prime_add_two (n : ℕ) :
    Nat.nth IsEligibleResidueSixPrime n = Nat.nth Nat.Prime (n + 2) := by
  let f : ℕ → ℕ := fun m ↦ Nat.nth Nat.Prime (m + 2)
  have hf : StrictMono f := by
    exact (Nat.nth_strictMono Nat.infinite_setOf_prime).comp
      (strictMono_id.add_const 2)
  have hfEligible : ∀ m, IsEligibleResidueSixPrime (f m) := by
    intro m
    rw [eligibleResidueSixPrime_iff_prime_and_three_lt]
    refine ⟨Nat.prime_nth_prime (m + 2), ?_⟩
    have hmono : Nat.nth Nat.Prime 2 ≤ Nat.nth Nat.Prime (m + 2) :=
      Nat.nth_monotone Nat.infinite_setOf_prime (by omega)
    rw [Nat.nth_prime_two_eq_five] at hmono
    change 3 < Nat.nth Nat.Prime (m + 2)
    omega
  have hsurj : ∀ p, IsEligibleResidueSixPrime p → p ∈ Set.range f := by
    intro p hp
    have hp' : p.Prime ∧ 3 < p :=
      (eligibleResidueSixPrime_iff_prime_and_three_lt p).mp hp
    have hpRange : p ∈ Set.range (Nat.nth Nat.Prime) := by
      rw [Nat.range_nth_of_infinite Nat.infinite_setOf_prime]
      exact hp'.1
    rcases hpRange with ⟨i, hi⟩
    have hi2 : 2 ≤ i := by
      by_contra hnot
      have hilt : i < 2 := Nat.lt_of_not_ge hnot
      interval_cases i <;> simp at hi <;> omega
    refine ⟨i - 2, ?_⟩
    dsimp only [f]
    rw [Nat.sub_add_cancel hi2, hi]
  have hcomp := Nat.nth_comp_of_strictMono
    (p := IsEligibleResidueSixPrime) (n := n) hf hsurj
    (fun hfinite ↦ False.elim (infinite_eligibleResidueSixPrimes hfinite))
  have hnthTrue : Nat.nth (fun _ : ℕ ↦ True) n = n := by
    simpa only [Nat.count_true] using
      Nat.nth_count (p := fun _ : ℕ ↦ True) (n := n) trivial
  calc
    Nat.nth IsEligibleResidueSixPrime n =
        f (Nat.nth (fun m ↦ IsEligibleResidueSixPrime (f m)) n) := hcomp.symm
    _ = f (Nat.nth (fun _ : ℕ ↦ True) n) := by
      congr 2
      funext m
      exact propext ⟨fun _ ↦ True.intro, fun _ ↦ hfEligible m⟩
    _ = f n := by rw [hnthTrue]
    _ = Nat.nth Nat.Prime (n + 2) := rfl

/-- Requested closed form for the positive canonical cutoff. -/
@[surface_novel, surface_published]
theorem actualEligiblePrimeCutoff_eq_nthPrime
    (K : ℕ) (hK : 0 < K) :
    actualEligiblePrimeCutoff K = Nat.nth Nat.Prime (K + 1) := by
  rw [actualEligiblePrimeCutoff, dif_neg (Nat.ne_of_gt hK),
    nth_eligibleResidueSixPrime_eq_nth_prime_add_two]
  apply congrArg (Nat.nth Nat.Prime)
  omega

@[surface_novel, surface_published]
theorem actualEligiblePrimeCutoff_isEligible (K : ℕ) (hK : 0 < K) :
    IsEligibleResidueSixPrime (actualEligiblePrimeCutoff K) := by
  rw [actualEligiblePrimeCutoff, dif_neg (Nat.ne_of_gt hK)]
  exact Nat.nth_mem_of_infinite infinite_eligibleResidueSixPrimes (K - 1)

@[surface_novel, surface_published]
theorem count_eligible_below_actualCutoff (K : ℕ) (hK : 0 < K) :
    Nat.count IsEligibleResidueSixPrime (actualEligiblePrimeCutoff K) = K - 1 := by
  rw [actualEligiblePrimeCutoff, dif_neg (Nat.ne_of_gt hK)]
  exact Nat.count_nth_of_infinite infinite_eligibleResidueSixPrimes (K - 1)

@[surface_novel, surface_published]
theorem count_eligible_through_actualCutoff (K : ℕ) (hK : 0 < K) :
    Nat.count IsEligibleResidueSixPrime
        (actualEligiblePrimeCutoff K + 1) = K := by
  rw [Nat.count_succ, count_eligible_below_actualCutoff K hK,
    if_pos (actualEligiblePrimeCutoff_isEligible K hK)]
  omega

/-- Minimality of the `K`-th cutoff. -/
@[surface_novel, surface_published]
theorem actualEligiblePrimeCutoff_le_iff_count_succ
    (K : ℕ) (hK : 0 < K) (x : ℕ) :
    actualEligiblePrimeCutoff K ≤ x ↔
      K ≤ Nat.count IsEligibleResidueSixPrime (x + 1) := by
  rw [actualEligiblePrimeCutoff, dif_neg (Nat.ne_of_gt hK)]
  have hgc := Nat.lt_nth_iff_count_lt infinite_eligibleResidueSixPrimes
    (a := K - 1) (b := x + 1)
  constructor
  · intro hcutoff
    have hnthLt : Nat.nth IsEligibleResidueSixPrime (K - 1) < x + 1 := by
      omega
    have hcount : K - 1 < Nat.count IsEligibleResidueSixPrime (x + 1) :=
      hgc.mpr hnthLt
    omega
  · intro hcount
    have hcount' : K - 1 < Nat.count IsEligibleResidueSixPrime (x + 1) := by
      omega
    have hnthLt : Nat.nth IsEligibleResidueSixPrime (K - 1) < x + 1 :=
      hgc.mp hcount'
    omega

@[surface_adapter, surface_published]
theorem actualEligibleCount_eq_count (x : ℕ) :
    eligibleCount actualResidueSixCounts x =
      Nat.count IsEligibleResidueSixPrime (x + 1) := by
  change Nat.count IsResidueOnePrime (x + 1) +
      Nat.count IsResidueFivePrime (x + 1) = _
  exact (count_eligible_eq_residue_sum (x + 1)).symm

/-- Between consecutive eligible cutoffs, neither residue count changes. -/
@[surface_novel, surface_published]
theorem actualResidueSixCounts_plateau
    (K x : ℕ) (hK : 0 < K)
    (hLower : actualEligiblePrimeCutoff K ≤ x)
    (hUpper : x < actualEligiblePrimeCutoff (K + 1)) :
    actualResidueOneCount x =
        actualResidueOneCount (actualEligiblePrimeCutoff K) ∧
      actualResidueFiveCount x =
        actualResidueFiveCount (actualEligiblePrimeCutoff K) := by
  have hTotalLower :
      K ≤ Nat.count IsEligibleResidueSixPrime (x + 1) :=
    (actualEligiblePrimeCutoff_le_iff_count_succ K hK x).mp hLower
  have hTotalUpper :
      Nat.count IsEligibleResidueSixPrime (x + 1) < K + 1 := by
    by_contra hnot
    have hge : K + 1 ≤ Nat.count IsEligibleResidueSixPrime (x + 1) :=
      Nat.le_of_not_gt hnot
    have := (actualEligiblePrimeCutoff_le_iff_count_succ
      (K + 1) (by omega) x).mpr hge
    omega
  have hTotal :
      Nat.count IsEligibleResidueSixPrime (x + 1) = K := by
    omega
  have hOneMono :
      actualResidueOneCount (actualEligiblePrimeCutoff K) ≤
        actualResidueOneCount x := by
    exact Nat.count_monotone IsResidueOnePrime
      (Nat.add_le_add_right hLower 1)
  have hFiveMono :
      actualResidueFiveCount (actualEligiblePrimeCutoff K) ≤
        actualResidueFiveCount x := by
    exact Nat.count_monotone IsResidueFivePrime
      (Nat.add_le_add_right hLower 1)
  have hAtCutoff :
      actualResidueOneCount (actualEligiblePrimeCutoff K) +
          actualResidueFiveCount (actualEligiblePrimeCutoff K) = K := by
    simpa [eligibleCount, actualResidueSixCounts] using
      actualEligiblePrimeCutoff_indexes K
  have hAtX : actualResidueOneCount x + actualResidueFiveCount x = K := by
    have hEligibleX : eligibleCount actualResidueSixCounts x = K := by
      rw [actualEligibleCount_eq_count, hTotal]
    simpa [eligibleCount, actualResidueSixCounts] using hEligibleX
  omega

/-- The signed discrepancy is therefore exactly constant on each cutoff
plateau. -/
@[surface_novel, surface_published]
theorem countDifference_plateau
    (K x : ℕ) (hK : 0 < K)
    (hLower : actualEligiblePrimeCutoff K ≤ x)
    (hUpper : x < actualEligiblePrimeCutoff (K + 1)) :
    countDifference actualResidueSixCounts x =
      countDifference actualResidueSixCounts (actualEligiblePrimeCutoff K) := by
  rcases actualResidueSixCounts_plateau K x hK hLower hUpper with
    ⟨hOne, hFive⟩
  simp only [countDifference, actualResidueSixCounts]
  rw [hOne, hFive]

/-- On eligible primes, value `+1` is exactly residue one modulo six. -/
@[surface_novel, surface_published]
theorem conductorThreeIntegerValue_eq_one_iff_residueOne
    {p : ℕ} (hp : p.Prime) (hp3 : 3 < p) :
    conductorThreeIntegerValue p = 1 ↔ p ≡ 1 [MOD 6] := by
  have helig : IsEligibleResidueSixPrime p :=
    (eligibleResidueSixPrime_iff_prime_and_three_lt p).2 ⟨hp, hp3⟩
  rcases helig with hOne | hFive
  · have hmod3 : p ≡ 1 [MOD 3] := hOne.2.of_dvd (by norm_num)
    have hval : conductorThreeIntegerValue p = 1 :=
      conductorThreeIntegerValue_mod_one hmod3
    exact ⟨fun _ ↦ hOne.2, fun _ ↦ hval⟩
  · have hmod3 : p ≡ 2 [MOD 3] := by
      have := hFive.2.of_dvd (by norm_num : 3 ∣ 6)
      norm_num [Nat.ModEq] at this ⊢
      exact this
    have hval : conductorThreeIntegerValue p = -1 :=
      conductorThreeIntegerValue_mod_two hmod3
    constructor
    · intro hone
      omega
    · intro hOneMod
      exact False.elim (residuePrime_disjoint p ⟨⟨hp, hOneMod⟩, hFive⟩)

/-- On eligible primes, value `-1` is exactly residue five modulo six. -/
@[surface_novel, surface_published]
theorem conductorThreeIntegerValue_eq_neg_one_iff_residueFive
    {p : ℕ} (hp : p.Prime) (hp3 : 3 < p) :
    conductorThreeIntegerValue p = -1 ↔ p ≡ 5 [MOD 6] := by
  have helig : IsEligibleResidueSixPrime p :=
    (eligibleResidueSixPrime_iff_prime_and_three_lt p).2 ⟨hp, hp3⟩
  rcases helig with hOne | hFive
  · have hmod3 : p ≡ 1 [MOD 3] := hOne.2.of_dvd (by norm_num)
    have hval : conductorThreeIntegerValue p = 1 :=
      conductorThreeIntegerValue_mod_one hmod3
    constructor
    · intro hneg
      omega
    · intro hFiveMod
      exact False.elim (residuePrime_disjoint p ⟨hOne, ⟨hp, hFiveMod⟩⟩)
  · have hmod3 : p ≡ 2 [MOD 3] := by
      have := hFive.2.of_dvd (by norm_num : 3 ∣ 6)
      norm_num [Nat.ModEq] at this ⊢
      exact this
    have hval : conductorThreeIntegerValue p = -1 :=
      conductorThreeIntegerValue_mod_two hmod3
    exact ⟨fun _ ↦ hFive.2, fun _ ↦ hval⟩

end

end Surface.Core.ConductorThreePrimeReindex
```
