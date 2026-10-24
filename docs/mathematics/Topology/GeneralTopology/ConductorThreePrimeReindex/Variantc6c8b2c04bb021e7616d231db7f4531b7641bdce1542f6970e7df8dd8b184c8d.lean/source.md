# Complete source: GRWTSK.Topology.GeneralTopology.ConductorThreePrimeReindex.Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db8181eba682ff15d4baf598fbcb3c8815994841` · SHA-256 `9cb99c247d3fd96243a69bc98f618311d459fc8e4782834bbdf81c7ff7fcb91d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.EligibleResidueSixPrimeIffPrimeAndThreeLt.Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.EligibleResidueSixPrimeIffPrimeAndThreeLt.Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5","mathematical_subject":"Topology.GeneralTopology","original_sha256":"4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ConductorThreePrimeReindex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeCritical
public import Surface.Core.ConductorThreeCharacterArithmetic
public import Mathlib.NumberTheory.PrimeCounting
public import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

/-!
# Exact reindexing of the conductor-three prime race

The eligible sequence is not an abstract arithmetic stream: it is exactly the
sequence of all primes after `2` and `3`.  This module proves that fact, shifts
the `Nat.nth` index by two, and records the exact plateau between consecutive
eligible cutoffs.  These are the finite reindexing facts needed before any
two-sided asymptotic prime-number estimate can be applied.
-/


namespace GRWTSK.Topology.GeneralTopology.EligibleResidueSixPrimeIffPrimeAndThreeLt.Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5

public section

namespace Surface.Core.ConductorThreePrimeReindex

noncomputable section

open Filter
open scoped Nat.Prime
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

/-! ## Two-sided Chebyshev-order reindexing -/

theorem primeCounting_nth_eq (n : ℕ) :
    Nat.primeCounting (Nat.nth Nat.Prime n) = n + 1 := by
  simpa [Nat.primeCounting, Nat.primeCounting'] using
    Nat.count_nth_succ_of_infinite Nat.infinite_setOf_prime n

theorem tendsto_nthPrime_nat :
    Tendsto (Nat.nth Nat.Prime) atTop atTop := by
  refine tendsto_atTop.2 fun b => ?_
  filter_upwards [eventually_ge_atTop b] with n hn
  exact hn.trans (by omega : n ≤ n + 2) |>.trans (Nat.add_two_le_nth_prime n)

theorem tendsto_nthPrime_real :
    Tendsto (fun n : ℕ ↦ (Nat.nth Nat.Prime n : ℝ)) atTop atTop :=
  tendsto_natCast_atTop_atTop.comp tendsto_nthPrime_nat

theorem eventually_nthPrime_lower_product :
    ∀ᶠ n : ℕ in atTop,
      (n : ℝ) * Real.log n ≤
        (Real.log 4 + 1) * (Nat.nth Nat.Prime n : ℝ) := by
  have hCheb := tendsto_nthPrime_real
    (Chebyshev.eventually_primeCounting_le (ε := (1 : ℝ)) zero_lt_one)
  filter_upwards [hCheb, eventually_ge_atTop 2] with n hCheb hn
  let p := Nat.nth Nat.Prime n
  have hp2 : 2 ≤ p := (Nat.add_two_le_nth_prime n).trans' (by omega)
  have hlogp : 0 < Real.log (p : ℝ) := Real.log_pos (by exact_mod_cast (show 1 < p by omega))
  have hnp : (n : ℝ) ≤ p := by exact_mod_cast (Nat.le_trans (by omega) (Nat.add_two_le_nth_prime n))
  have hlog : Real.log (n : ℝ) ≤ Real.log (p : ℝ) :=
    Real.log_le_log (by positivity) hnp
  have hpi : (n + 1 : ℕ) = Nat.primeCounting p := (primeCounting_nth_eq n).symm
  have hcount : (n + 1 : ℝ) ≤ (Real.log 4 + 1) * (p : ℝ) / Real.log (p : ℝ) := by
    calc
      (n + 1 : ℝ) = (Nat.primeCounting p : ℕ) := by exact_mod_cast hpi
      _ ≤ (Real.log 4 + 1) * (p : ℝ) / Real.log (p : ℝ) := by simpa [p] using hCheb
  have hmul : (n + 1 : ℝ) * Real.log (p : ℝ) ≤
      (Real.log 4 + 1) * (p : ℝ) := (le_div_iff₀ hlogp).mp hcount
  calc
    (n : ℝ) * Real.log n ≤ (n : ℝ) * Real.log p :=
      mul_le_mul_of_nonneg_left hlog (by positivity)
    _ ≤ (n + 1 : ℝ) * Real.log p := by
      gcongr
      · norm_num
    _ ≤ (Real.log 4 + 1) * (p : ℝ) := hmul

theorem eventually_primeCounting_lower :
    ∀ᶠ n : ℕ in atTop,
      (Real.log 2 / 2) * (n : ℝ) / Real.log n ≤ (Nat.primeCounting n : ℕ) := by
  have hlog2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hsmallReal := Real.isLittleO_log_id_atTop.bound (div_pos hlog2 (by norm_num : (0 : ℝ) < 4))
  have ht : Tendsto (fun n : ℕ ↦ (n : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right atTop 1 tendsto_natCast_atTop_atTop
  have hsmall := ht hsmallReal
  filter_upwards [hsmall, eventually_ge_atTop 2] with n hsmall hn
  have hnpos : (0 : ℝ) < n := by positivity
  have hn1pos : (0 : ℝ) < (n : ℝ) + 1 := by positivity
  have hn1one : (1 : ℝ) ≤ (n : ℝ) + 1 := by linarith [hnpos]
  have hlogn : 0 < Real.log (n : ℝ) := Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hsmall' : Real.log ((n : ℝ) + 1) ≤ (Real.log 2 / 4) * ((n : ℝ) + 1) := by
    simpa [Real.norm_eq_abs, abs_of_nonneg (Real.log_nonneg hn1one), abs_of_pos hn1pos] using hsmall
  have hn1_le : ((n : ℝ) + 1) ≤ 2 * n := by exact_mod_cast (show n + 1 ≤ 2 * n by omega)
  have herror : Real.log ((n : ℝ) + 1) ≤ (Real.log 2 / 2) * n := by
    calc
      Real.log ((n : ℝ) + 1) ≤ (Real.log 2 / 4) * ((n : ℝ) + 1) := hsmall'
      _ ≤ (Real.log 2 / 4) * (2 * n) := mul_le_mul_of_nonneg_left hn1_le (by positivity)
      _ = (Real.log 2 / 2) * n := by ring
  calc
    (Real.log 2 / 2) * (n : ℝ) / Real.log n ≤
        ((n : ℝ) * Real.log 2 - Real.log ((n : ℝ) + 1)) / Real.log n := by
      exact (div_le_div_iff_of_pos_right hlogn).2 (by linarith)
    _ ≤ (Nat.primeCounting n : ℕ) := Chebyshev.pi_ge n

noncomputable def primeUpperCandidate (n : ℕ) : ℕ :=
  40 * n * ⌈Real.log n⌉₊

theorem tendsto_primeUpperCandidate :
    Tendsto primeUpperCandidate atTop atTop := by
  refine tendsto_atTop.2 fun b => ?_
  filter_upwards [eventually_ge_atTop (max b 2)] with n hn
  have hn2 : 2 ≤ n := (le_max_right _ _).trans hn
  have hlog : 0 < Real.log (n : ℝ) := Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hceil : 1 ≤ ⌈Real.log n⌉₊ := (Nat.one_le_ceil_iff).2 hlog
  unfold primeUpperCandidate
  have : b ≤ n := (le_max_left _ _).trans hn
  calc
    b ≤ n := this
    _ = 1 * n * 1 := by omega
    _ ≤ 40 * n * ⌈Real.log n⌉₊ :=
      Nat.mul_le_mul (Nat.mul_le_mul (by norm_num) le_rfl) hceil

theorem eventually_nthPrime_upper_candidate :
    ∀ᶠ n : ℕ in atTop, Nat.nth Nat.Prime (n + 1) ≤ primeUpperCandidate n := by
  have hpi := tendsto_primeUpperCandidate eventually_primeCounting_lower
  filter_upwards [hpi, eventually_ge_atTop 40] with n hpi hn
  let q : ℕ := ⌈Real.log n⌉₊
  let x : ℕ := primeUpperCandidate n
  have hnpos : (0 : ℝ) < n := by positivity
  have hlogn : 0 < Real.log (n : ℝ) := Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hqpos : 0 < q := Nat.ceil_pos.2 hlogn
  have hxpos_nat : 0 < x := by unfold x primeUpperCandidate; positivity
  have hx40 : 40 ≤ x := by
    unfold x primeUpperCandidate
    calc
      40 = 40 * 1 * 1 := by norm_num
      _ ≤ 40 * n * q := Nat.mul_le_mul (Nat.mul_le_mul le_rfl (by omega)) (by omega)
  have hxpos : (0 : ℝ) < x := by exact_mod_cast hxpos_nat
  have hq_le : q ≤ n := Nat.ceil_le.2 <| by
    exact (Real.log_le_sub_one_of_pos hnpos).trans (by norm_num)
  have hx_le_pow_nat : x ≤ n ^ 4 := by
    unfold x primeUpperCandidate
    have h40nn : 40 ≤ n * n := hn.trans (Nat.le_mul_of_pos_right n (by omega))
    calc
      40 * n * q ≤ 40 * n * n := Nat.mul_le_mul_left (40 * n) hq_le
      _ = 40 * (n * n) := by ring
      _ ≤ (n * n) * (n * n) := Nat.mul_le_mul_right (n * n) h40nn
      _ = n ^ 4 := by ring
  have hx_le_pow : (x : ℝ) ≤ (n : ℝ) ^ 4 := by exact_mod_cast hx_le_pow_nat
  have hlogx : 0 < Real.log (x : ℝ) := Real.log_pos (by exact_mod_cast (show 1 < x by omega))
  have hlogx_le : Real.log (x : ℝ) ≤ 4 * Real.log (n : ℝ) := by
    calc
      Real.log (x : ℝ) ≤ Real.log ((n : ℝ) ^ 4) := Real.log_le_log hxpos hx_le_pow
      _ = 4 * Real.log (n : ℝ) := by rw [Real.log_pow]; norm_num
  have hx_lower : 40 * (n : ℝ) * Real.log n ≤ (x : ℝ) := by
    calc
      40 * (n : ℝ) * Real.log n ≤ 40 * (n : ℝ) * (q : ℝ) :=
        mul_le_mul_of_nonneg_left (Nat.le_ceil (Real.log (n : ℝ))) (by positivity)
      _ = (x : ℝ) := by simp [x, primeUpperCandidate, q]
  have hlog2half : (1 / 2 : ℝ) ≤ Real.log 2 := by
    have h := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 2)
    norm_num at h ⊢
    exact h
  have hfive : (n + 2 : ℝ) ≤ 5 * Real.log 2 * n := by
    have hnr : (40 : ℝ) ≤ n := by exact_mod_cast hn
    nlinarith
  have hcritical : 5 * Real.log 2 * n ≤
      (Real.log 2 / 2) * (x : ℝ) / Real.log x := by
    have hnum : (Real.log 2 / 2) * (40 * (n : ℝ) * Real.log n) ≤
        (Real.log 2 / 2) * (x : ℝ) :=
      mul_le_mul_of_nonneg_left hx_lower (by positivity)
    calc
      5 * Real.log 2 * n =
          (Real.log 2 / 2) * (40 * (n : ℝ) * Real.log n) /
            (4 * Real.log n) := by field_simp; ring
      _ ≤ (Real.log 2 / 2) * (x : ℝ) / (4 * Real.log n) :=
        (div_le_div_iff_of_pos_right (by positivity : (0 : ℝ) < 4 * Real.log n)).2 hnum
      _ ≤ (Real.log 2 / 2) * (x : ℝ) / Real.log x :=
        (div_le_div_iff_of_pos_left (by positivity) (by positivity) hlogx).2 hlogx_le
  have hcount_real : (n + 2 : ℝ) ≤ (Nat.primeCounting x : ℕ) :=
    hfive.trans (hcritical.trans hpi)
  have hcount : n + 2 ≤ Nat.primeCounting x := by exact_mod_cast hcount_real
  have hnlt' : n + 1 < Nat.primeCounting x := by omega
  have hnlt : n + 1 < Nat.count Nat.Prime (x + 1) := by
    simpa [Nat.primeCounting, Nat.primeCounting'] using hnlt'
  exact Nat.lt_succ_iff.mp (Nat.nth_lt_of_lt_count hnlt)

theorem eventually_nthPrime_upper_product :
    ∀ᶠ n : ℕ in atTop,
      (Nat.nth Nat.Prime (n + 1) : ℝ) ≤ 80 * (n : ℝ) * Real.log n := by
  filter_upwards [eventually_nthPrime_upper_candidate, eventually_ge_atTop 8] with n hnth hn
  let q : ℕ := ⌈Real.log n⌉₊
  have hnpos : (0 : ℝ) < n := by positivity
  have hlogn : 0 < Real.log (n : ℝ) := Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hlog2half : (1 / 2 : ℝ) ≤ Real.log 2 := by
    have h := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 2)
    norm_num at h ⊢
    exact h
  have hlog8 : (1 : ℝ) ≤ Real.log 8 := by
    rw [show (8 : ℝ) = 2 ^ 3 by norm_num, Real.log_pow]
    norm_num
    linarith
  have hlogn_one : (1 : ℝ) ≤ Real.log n := by
    refine hlog8.trans (Real.log_le_log (by norm_num) ?_)
    exact_mod_cast hn
  have hqcast : (q : ℝ) ≤ 2 * Real.log n := by
    have hceil := (Nat.ceil_lt_add_one hlogn.le).le
    dsimp only [q]
    exact hceil.trans (by linarith)
  calc
    (Nat.nth Nat.Prime (n + 1) : ℝ) ≤ (primeUpperCandidate n : ℕ) := by exact_mod_cast hnth
    _ = 40 * (n : ℝ) * (q : ℝ) := by simp [primeUpperCandidate, q]
    _ ≤ 40 * (n : ℝ) * (2 * Real.log n) :=
      mul_le_mul_of_nonneg_left hqcast (by positivity)
    _ = 80 * (n : ℝ) * Real.log n := by ring

theorem eventually_nthPrime_shifted_two_sided :
    ∀ᶠ n : ℕ in atTop,
      (n : ℝ) * Real.log n / (Real.log 4 + 1) ≤
          (Nat.nth Nat.Prime (n + 1) : ℝ) ∧
        (Nat.nth Nat.Prime (n + 1) : ℝ) ≤ 80 * (n : ℝ) * Real.log n := by
  filter_upwards [eventually_nthPrime_lower_product, eventually_nthPrime_upper_product]
    with n hlower hupper
  have hApos : (0 : ℝ) < Real.log 4 + 1 := by positivity
  refine ⟨?_, hupper⟩
  have hmono : Nat.nth Nat.Prime n ≤ Nat.nth Nat.Prime (n + 1) :=
    Nat.nth_monotone Nat.infinite_setOf_prime (by omega)
  rw [div_le_iff₀ hApos]
  calc
    (n : ℝ) * Real.log n ≤
        (Real.log 4 + 1) * (Nat.nth Nat.Prime n : ℝ) := hlower
    _ ≤ (Real.log 4 + 1) * (Nat.nth Nat.Prime (n + 1) : ℝ) := by
      gcongr
    _ = (Nat.nth Nat.Prime (n + 1) : ℝ) * (Real.log 4 + 1) := by ring

open Surface.Core.ConductorThreeCritical
open Surface.Core.ConductorThreePrimeReindex

@[surface_novel, surface_published]
theorem eventually_actualEligiblePrimeCutoff_two_sided :
    ∀ᶠ K : ℕ in atTop,
      (K : ℝ) * Real.log K / (Real.log 4 + 1) ≤
          (actualEligiblePrimeCutoff K : ℝ) ∧
        (actualEligiblePrimeCutoff K : ℝ) ≤ 80 * (K : ℝ) * Real.log K := by
  filter_upwards [eventually_nthPrime_shifted_two_sided, eventually_ge_atTop 1]
    with K hbounds hK
  rw [actualEligiblePrimeCutoff_eq_nthPrime K (by omega)]
  exact hbounds



end

end Surface.Core.ConductorThreePrimeReindex
```
