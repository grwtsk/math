# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ConductorThreePrimePowerRemoval.Variant3abafa5e32a92a1ebb1c72376bad00489a7fa8a342d5f4b53ab7de9dd550e3c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a367895522ce2e56082377c312e2024fb55800c9` · SHA-256 `406618173495aa54b99ccfec89236b12c0f879f81232efd1f5a08ef19c21e04a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ActualResidueDifferenceInt.Variantbf4d5ddfe314b2f0086fc23451850b4bb3b68252afa3fe0a23a5c175e68dcae4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf4d5ddfe314b2f0086fc23451850b4bb3b68252afa3fe0a23a5c175e68dcae4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ActualResidueDifferenceInt.Variantbf4d5ddfe314b2f0086fc23451850b4bb3b68252afa3fe0a23a5c175e68dcae4","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"bf4d5ddfe314b2f0086fc23451850b4bb3b68252afa3fe0a23a5c175e68dcae4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:d0e6bf40dced7564e727c277/workspace/lib/Surface/Core/ConductorThreePrimePowerRemoval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVonMangoldt
public import Surface.Core.ConductorThreePrimeReindex
import Mathlib.Tactic

/-!
# Prime-side conductor-three sums and the exact prime-two correction

The primitive character has level three, while the prime race is presented in
the reduced residue classes `1` and `5` modulo six.  Consequently prime `2`
must be retained explicitly: `χ₃(2) = -1`.  Prime `3` contributes zero.

This module proves both the unweighted and logarithmically weighted correction
identities by finite sums.  It does not hide the correction in a changed-level
character, which would alter the Euler factor at two.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ActualResidueDifferenceInt.Variantbf4d5ddfe314b2f0086fc23451850b4bb3b68252afa3fe0a23a5c175e68dcae4

public section

namespace Surface.Core.ConductorThreePrimePowerRemoval

noncomputable section

open scoped BigOperators
open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeCritical
open Surface.Core.ConductorThreePrimeReindex

/-- Integer residue-six count difference. -/
@[expose]
def actualResidueDifferenceInt (x : ℕ) : ℤ :=
  (actualResidueOneCount x : ℤ) - (actualResidueFiveCount x : ℤ)

/-- Unweighted prime sum of the primitive conductor-three character. -/
@[expose]
def conductorThreePrimeCharacterSum (x : ℕ) : ℤ :=
  ∑ p ∈ Nat.primesLE x, conductorThreeIntegerValue p

/-- Logarithmically weighted prime sum `∑_{p ≤ x} χ₃(p) log p`. -/
@[expose]
def conductorThreeTheta (x : ℕ) : ℝ :=
  ∑ p ∈ Nat.primesLE x,
    (conductorThreeIntegerValue p : ℝ) * Real.log p

/-- Weighted residue-one prime mass modulo six. -/
@[expose]
def residueOneThetaSix (x : ℕ) : ℝ :=
  ∑ p ∈ Nat.primesLE x,
    if IsResidueOnePrime p then Real.log p else 0

/-- Weighted residue-five prime mass modulo six. -/
@[expose]
def residueFiveThetaSix (x : ℕ) : ℝ :=
  ∑ p ∈ Nat.primesLE x,
    if IsResidueFivePrime p then Real.log p else 0

/-- Pointwise prime classification, including the exceptional prime `2`. -/
@[surface_novel, surface_published]
theorem conductorThreeIntegerValue_prime_decomposition
    {p : ℕ} (hp : p.Prime) :
    conductorThreeIntegerValue p =
      (if IsResidueOnePrime p then 1 else 0) -
      (if IsResidueFivePrime p then 1 else 0) -
      (if p = 2 then 1 else 0) := by
  by_cases hp3 : 3 < p
  · have helig : IsEligibleResidueSixPrime p :=
      (eligibleResidueSixPrime_iff_prime_and_three_lt p).2 ⟨hp, hp3⟩
    rcases helig with hOne | hFive
    · have hval : conductorThreeIntegerValue p = 1 :=
        (conductorThreeIntegerValue_eq_one_iff_residueOne hp hp3).2 hOne.2
      have hnotFive : ¬ IsResidueFivePrime p :=
        fun h ↦ residuePrime_disjoint p ⟨hOne, h⟩
      have hpne2 : p ≠ 2 := by omega
      simp [hOne, hnotFive, hpne2, hval]
    · have hval : conductorThreeIntegerValue p = -1 :=
        (conductorThreeIntegerValue_eq_neg_one_iff_residueFive hp hp3).2 hFive.2
      have hnotOne : ¬ IsResidueOnePrime p :=
        fun h ↦ residuePrime_disjoint p ⟨h, hFive⟩
      have hpne2 : p ≠ 2 := by omega
      simp [hFive, hnotOne, hpne2, hval]
  · have hpCases : p = 2 ∨ p = 3 := by
      have hp2 := hp.two_le
      omega
    rcases hpCases with rfl | rfl
    · norm_num [conductorThreeIntegerValue_mod_two,
        IsResidueOnePrime, IsResidueFivePrime, Nat.ModEq]
    · norm_num [conductorThreeIntegerValue_mod_zero,
        IsResidueOnePrime, IsResidueFivePrime, Nat.ModEq]

private theorem residueOne_indicator_sum (x : ℕ) :
    (∑ p ∈ Nat.primesLE x,
      if IsResidueOnePrime p then (1 : ℤ) else 0) =
      (actualResidueOneCount x : ℤ) := by
  rw [actualResidueOneCount, Nat.count_eq_card_filter_range,
    Finset.sum_boole]
  norm_cast
  apply congrArg Finset.card
  ext p
  simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.mem_range]
  constructor
  · rintro ⟨⟨hpx, _⟩, hres⟩
    exact ⟨by omega, hres⟩
  · rintro ⟨hpx, hres⟩
    exact ⟨⟨by omega, hres.1⟩, hres⟩

private theorem residueFive_indicator_sum (x : ℕ) :
    (∑ p ∈ Nat.primesLE x,
      if IsResidueFivePrime p then (1 : ℤ) else 0) =
      (actualResidueFiveCount x : ℤ) := by
  rw [actualResidueFiveCount, Nat.count_eq_card_filter_range,
    Finset.sum_boole]
  norm_cast
  apply congrArg Finset.card
  ext p
  simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.mem_range]
  constructor
  · rintro ⟨⟨hpx, _⟩, hres⟩
    exact ⟨by omega, hres⟩
  · rintro ⟨hpx, hres⟩
    exact ⟨⟨by omega, hres.1⟩, hres⟩

private theorem primeTwo_indicator_sum (x : ℕ) :
    (∑ p ∈ Nat.primesLE x, if p = 2 then (1 : ℤ) else 0) =
      if 2 ≤ x then 1 else 0 := by
  rw [Finset.sum_boole]
  by_cases hx : 2 ≤ x
  · have hfilter :
        (Nat.primesLE x).filter (fun p ↦ p = 2) = {2} := by
      ext p
      simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.mem_singleton]
      constructor
      · exact fun h ↦ h.2
      · rintro rfl
        exact ⟨⟨hx, Nat.prime_two⟩, rfl⟩
    rw [hfilter]
    simp [hx]
  · have hfilter :
        (Nat.primesLE x).filter (fun p ↦ p = 2) = ∅ := by
      ext p
      simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.notMem_empty,
        iff_false]
      rintro ⟨⟨hpLe, _⟩, rfl⟩
      exact hx hpLe
    rw [hfilter]
    simp [hx]

/-- Exact unweighted correction:
`∑_{p ≤ x} χ₃(p) = D(x) - 1_{2 ≤ x}`. -/
@[surface_novel, surface_published]
theorem conductorThreePrimeCharacterSum_eq_residueDifference (x : ℕ) :
    conductorThreePrimeCharacterSum x =
      actualResidueDifferenceInt x - (if 2 ≤ x then 1 else 0) := by
  unfold conductorThreePrimeCharacterSum actualResidueDifferenceInt
  calc
    (∑ p ∈ Nat.primesLE x, conductorThreeIntegerValue p) =
        ∑ p ∈ Nat.primesLE x,
          ((if IsResidueOnePrime p then (1 : ℤ) else 0) -
            (if IsResidueFivePrime p then 1 else 0) -
            (if p = 2 then 1 else 0)) := by
      apply Finset.sum_congr rfl
      intro p hpMem
      exact conductorThreeIntegerValue_prime_decomposition
        (Nat.prime_of_mem_primesLE hpMem)
    _ = ((∑ p ∈ Nat.primesLE x,
            if IsResidueOnePrime p then (1 : ℤ) else 0) -
          (∑ p ∈ Nat.primesLE x,
            if IsResidueFivePrime p then (1 : ℤ) else 0)) -
          (∑ p ∈ Nat.primesLE x,
            if p = 2 then (1 : ℤ) else 0) := by
      simp only [Finset.sum_sub_distrib]
    _ = _ := by
      rw [residueOne_indicator_sum, residueFive_indicator_sum,
        primeTwo_indicator_sum]

/-- Real-valued form matching `AnalyticPrimeWalk.countDifference`. -/
@[surface_adapter, surface_published]
theorem conductorThreePrimeCharacterSum_real_eq_countDifference (x : ℕ) :
    (conductorThreePrimeCharacterSum x : ℝ) =
      countDifference actualResidueSixCounts x -
        (if 2 ≤ x then 1 else 0) := by
  have h := congrArg (fun z : ℤ ↦ (z : ℝ))
    (conductorThreePrimeCharacterSum_eq_residueDifference x)
  simp only [Int.cast_sub] at h
  simpa [actualResidueDifferenceInt, countDifference,
    actualResidueSixCounts] using h

private theorem weighted_prime_decomposition {p : ℕ} (hp : p.Prime) :
    (conductorThreeIntegerValue p : ℝ) * Real.log p =
      (if IsResidueOnePrime p then Real.log p else 0) -
      (if IsResidueFivePrime p then Real.log p else 0) -
      (if p = 2 then Real.log p else 0) := by
  rw [conductorThreeIntegerValue_prime_decomposition hp]
  push_cast
  by_cases h2 : p = 2
  · subst p
    norm_num [IsResidueOnePrime, IsResidueFivePrime, Nat.ModEq]
  · by_cases hOne : IsResidueOnePrime p <;>
      by_cases hFive : IsResidueFivePrime p <;>
      simp [hOne, hFive, h2]

private theorem primeTwo_log_sum (x : ℕ) :
    (∑ p ∈ Nat.primesLE x,
      if p = 2 then Real.log (p : ℝ) else 0) =
      if 2 ≤ x then Real.log 2 else 0 := by
  rw [← Finset.sum_filter]
  by_cases hx : 2 ≤ x
  · have hfilter :
        (Nat.primesLE x).filter (fun p ↦ p = 2) = {2} := by
      ext p
      simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.mem_singleton]
      constructor
      · exact fun h ↦ h.2
      · rintro rfl
        exact ⟨⟨hx, Nat.prime_two⟩, rfl⟩
    rw [hfilter]
    simp [hx]
  · have hfilter :
        (Nat.primesLE x).filter (fun p ↦ p = 2) = ∅ := by
      ext p
      simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.notMem_empty,
        iff_false]
      rintro ⟨⟨hpLe, _⟩, rfl⟩
      exact hx hpLe
    rw [hfilter]
    simp [hx]

/-- Exact weighted correction:
`θχ₃(x) = θ(x;6,1) - θ(x;6,5) - 1_{2≤x} log 2`. -/
@[surface_novel, surface_published]
theorem conductorThreeTheta_eq_residueDifference (x : ℕ) :
    conductorThreeTheta x =
      residueOneThetaSix x - residueFiveThetaSix x -
        (if 2 ≤ x then Real.log 2 else 0) := by
  unfold conductorThreeTheta
  calc
    (∑ p ∈ Nat.primesLE x,
        (conductorThreeIntegerValue p : ℝ) * Real.log p) =
      ∑ p ∈ Nat.primesLE x,
        ((if IsResidueOnePrime p then Real.log p else 0) -
          (if IsResidueFivePrime p then Real.log p else 0) -
          (if p = 2 then Real.log p else 0)) := by
      apply Finset.sum_congr rfl
      intro p hpMem
      exact weighted_prime_decomposition (Nat.prime_of_mem_primesLE hpMem)
    _ = residueOneThetaSix x - residueFiveThetaSix x -
        (∑ p ∈ Nat.primesLE x,
          if p = 2 then Real.log p else 0) := by
      simp only [residueOneThetaSix, residueFiveThetaSix,
        Finset.sum_sub_distrib]
    _ = _ := by
      rw [primeTwo_log_sum]

end

end Surface.Core.ConductorThreePrimePowerRemoval
```
