# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTwoBoundary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f67ed54be863129d202285ddf6cda797d0cda29` · SHA-256 `600786b0f5b195c9764047f138352d184ccf1fb77e0338c424acd21ee846e05f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicUnitSupport
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Endpoint-aware predecessor formula for the cyclic arithmetic representative.
If the representative is one, subtracting one wraps to the endpoint 4X;
otherwise it decrements by one. -/
theorem octaveRepresentative_sub_one
    {X : ℕ}
    (hX : 0 < X)
    (z : ZMod (fejerOctavePeriod X)) :
    octaveRepresentative X
        (z - (1 : ZMod (fejerOctavePeriod X))) =
      if octaveRepresentative X z = 1
      then fejerOctavePeriod X
      else octaveRepresentative X z - 1 := by
  have hzcast :=
    natCast_octaveRepresentative hX z
  by_cases hz1 : octaveRepresentative X z = 1
  · rw [if_pos hz1]
    have hz : z = (1 : ZMod (fejerOctavePeriod X)) := by
      rw [← hzcast, hz1]
    rw [hz]
    simp [octaveRepresentative, fejerOctavePeriod]
  · rw [if_neg hz1]
    have hmem := octaveRepresentative_mem hX z
    have hrep2 : 2 ≤ octaveRepresentative X z := by
      omega
    have hsubPos : 1 ≤ octaveRepresentative X z - 1 := by
      omega
    have hsubLe :
        octaveRepresentative X z - 1 ≤ fejerOctavePeriod X := by
      omega
    have hzsub :
        z - (1 : ZMod (fejerOctavePeriod X)) =
          ((octaveRepresentative X z - 1 : ℕ) :
            ZMod (fejerOctavePeriod X)) := by
      rw [← hzcast]
      rw [← Nat.cast_one, ← Nat.cast_sub hrep2.le]
    rw [hzsub]
    exact octaveRepresentative_natCast hX hsubPos hsubLe

/-- Every unit-shift change lies at one of the two cyclic interval boundaries:
the first point inside the interval or the first point after it. -/
theorem cyclicSharpUnitChangeSupport_subset_boundaries
    {X m : ℕ}
    (hX : 0 < X)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    cyclicSharpUnitChangeSupport X m ⊆
      {(2 * X + 1 : ZMod (fejerOctavePeriod X)),
       (m + 1 : ZMod (fejerOctavePeriod X))} := by
  intro z hz
  rw [cyclicSharpUnitChangeSupport, Finset.mem_filter] at hz
  rcases hz with ⟨hzuniv, hchange⟩
  simp only [Finset.mem_insert, Finset.mem_singleton]
  by_cases hzin : cyclicSharpPrefixMem X m z
  · have hprev :
        ¬ cyclicSharpPrefixMem X m
          (z - (1 : ZMod (fejerOctavePeriod X))) := by
      exact fun hp => hchange (propext ⟨fun _ => hp, fun _ => hzin⟩)
    left
    have hzi := hzin
    unfold cyclicSharpPrefixMem at hzi hprev
    have hrep1 : octaveRepresentative X z ≠ 1 := by
      omega
    have hpred :=
      octaveRepresentative_sub_one hX z
    rw [if_neg hrep1] at hpred
    have hpreLeM :
        octaveRepresentative X z - 1 ≤ m := by
      omega
    have hpreNotLower :
        ¬ 2 * X <
          octaveRepresentative X z - 1 := by
      intro hlo
      apply hprev
      constructor
      · simpa [hpred] using hlo
      · simpa [hpred] using hpreLeM
    have hrepEq :
        octaveRepresentative X z = 2 * X + 1 := by
      omega
    rw [← natCast_octaveRepresentative hX z, hrepEq]
  · have hprevin :
        cyclicSharpPrefixMem X m
          (z - (1 : ZMod (fejerOctavePeriod X))) := by
      by_contra hp
      exact hchange (propext ⟨fun h => (hzin h).elim, fun h => (hp h).elim⟩)
    right
    unfold cyclicSharpPrefixMem at hzin hprevin
    by_cases hrep1 : octaveRepresentative X z = 1
    · have hpred :=
        octaveRepresentative_sub_one hX z
      rw [if_pos hrep1] at hpred
      have hmEq : m = fejerOctavePeriod X := by
        have hle := hprevin.2
        rw [hpred] at hle
        have hm1' : m ≤ fejerOctavePeriod X := by
          simpa [fejerOctavePeriod] using hm1
        omega
      have hzEq :
          z = (1 : ZMod (fejerOctavePeriod X)) := by
        rw [← natCast_octaveRepresentative hX z, hrep1]
      rw [hzEq, hmEq]
      simp [fejerOctavePeriod]
    · have hpred :=
        octaveRepresentative_sub_one hX z
      rw [if_neg hrep1] at hpred
      have hrepLower :
          2 * X < octaveRepresentative X z := by
        omega
      have hrepGtM :
          m < octaveRepresentative X z := by
        by_contra hle
        apply hzin
        exact ⟨hrepLower, Nat.le_of_not_gt hle⟩
      have hrepEq :
          octaveRepresentative X z = m + 1 := by
        have hpreLe := hprevin.2
        rw [hpred] at hpreLe
        omega
      rw [← natCast_octaveRepresentative hX z, hrepEq]

/-- The one-step change support has at most two residues. -/
theorem cyclicSharpUnitBoundarySupportCard :
    CyclicSharpUnitBoundarySupportCardClaim := by
  intro X m hX hm0 hm1
  apply le_trans
    (Finset.card_le_card
      (cyclicSharpUnitChangeSupport_subset_boundaries
        hX hm0 hm1))
  simp

/-- Final unit-translation bound. -/
theorem cyclicSharpUnitTranslationBound :
    CyclicSharpUnitTranslationBoundClaim :=
  boundarySupportCard_to_unitTranslationBound
    cyclicSharpUnitBoundarySupportCard

/-- Final cyclic translation-cardinality theorem. -/
theorem cyclicSharpTranslationCardinality :
    CyclicSharpTranslationCardinalityClaim :=
  boundarySupportCard_to_translationCardinality
    cyclicSharpUnitBoundarySupportCard

end GRWTSK.RiemannHypothesis
```
