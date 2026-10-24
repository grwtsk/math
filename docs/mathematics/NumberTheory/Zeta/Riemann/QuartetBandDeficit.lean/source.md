# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuartetBandDeficit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2ca8b344529aa6398e414541ca2243059bfcb4e` · SHA-256 `b34d527efbc41dba035583f7309ac109411b61bffbd2bb072f9cfa74016c47bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Combinatorics.WeightedInventoryQuartet
import GRWTSK.NumberTheory.Zeta.Riemann.ContourCountDeficit

set_option autoImplicit false

/-!
# Four-point reflection deficit on a complete two-sign height band

The band is lower < |Im(z)| <= upper, with lower >= 0. Conjugation and
critical reflection give FOUR distinct actual points for an off-line band
zero. This uses two commuting involutions, not an order-four rotation. Their
positive multiplicities need not be proved equal. A complete band count upper
U and known on-line lower credit C therefore exclude off-line zeros when
U < C+4. This is NOT valid for a positive-height-only count or at height zero.

The band is a region filter of the EXISTING canonical head. Its mass is the
EXISTING regional count. Exact additive partition retains the closed lower
head and open-lower/closed-upper band. An upper endpoint count and LOWER count
at the lower endpoint can supply a band upper bound; two upper estimates
cannot simply be subtracted. No such analytic count estimate is supplied.

A bounded-height consumer retains RHThrough at the lower endpoint. Thus it
does not silently assume the real axis settled or assert nonrealness of all
zeros. No complete known inventory, equality of orbit multiplicities, global
root selection, source acceptance or all-height theorem is constructed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Classical dependencies unaudited.
-/

namespace GRWTSK.RiemannHypothesis.QuartetBandDeficit

open Set Metric
open CanonicalZeroDivisor ContourCountDeficit
open GRWTSK.Combinatorics.WeightedPairBudget
open GRWTSK.Combinatorics.WeightedInventoryDeficit
open GRWTSK.Combinatorics.WeightedInventoryQuartet
open GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget
open scoped BigOperators ComplexConjugate

noncomputable section

/-- Reuse actual source conjugation, retaining both nontrivial-zero exclusions. -/
def conjugated (z : ZeroPoint) : ZeroPoint := ⟨zeroConjugate z.1, z.2.conjugate⟩

@[simp] theorem height_conjugated (z : ZeroPoint) : height (conjugated z) = height z := by
  simp [height, conjugated, zeroConjugate]

/-- An alias for the existing regional inventory, not another zero enumerator. -/
abbrev bandHead (lower upper : ℝ) : Finset ZeroPoint :=
  regionHead upper {s : ℂ | lower < |s.im|}

/-- The count is the unchanged canonical regional mass with both height signs. -/
def bandCount (lower upper : ℝ) : ℕ :=
  regionCount upper {s : ℂ | lower < |s.im|}

@[simp] theorem mem_bandHead (lower upper : ℝ) (z : ZeroPoint) :
    z ∈ bandHead lower upper ↔ lower < height z ∧ height z ≤ upper := by
  simp [bandHead, height, and_comm]

/-- The seam is included in the lower head and excluded from the next band. -/
theorem bandHead_eq_sdiff (lower upper : ℝ) :
    bandHead lower upper = heightHead upper \ heightHead lower := by
  classical
  ext z
  rw [mem_bandHead, Finset.mem_sdiff, mem_heightHead, mem_heightHead]
  exact ⟨fun h => ⟨h.2, not_le.mpr h.1⟩, fun h => ⟨lt_of_not_ge h.2, h.1⟩⟩

/-- No truncated natural subtraction or loss of cutoff equality is needed. -/
theorem heightCount_partition (lower upper : ℝ) (ordered : lower ≤ upper) :
    heightCount lower + bandCount lower upper = heightCount upper := by
  classical
  change mass (heightHead lower) multiplicity + mass (bandHead lower upper) multiplicity =
    mass (heightHead upper) multiplicity
  rw [bandHead_eq_sdiff]
  exact mass_partition (heightHead upper) (heightHead lower) multiplicity (heightHead_mono ordered)

/-- A high-end upper bound and a low-end LOWER bound give a safe band upper.
Replacing lowerCount by an upper estimate would invalidate this implication. -/
theorem bandCount_upper_of_endpoint_bounds (lower upper : ℝ) (ordered : lower ≤ upper)
    (lowerCount upperCount allowance : ℕ)
    (lowLower : lowerCount ≤ heightCount lower)
    (highUpper : heightCount upper ≤ upperCount)
    (budget : upperCount ≤ lowerCount + allowance) : bandCount lower upper ≤ allowance := by
  have partition := heightCount_partition lower upper ordered
  omega

/-- Positive band height is proved locally, not assumed for all zeta zeros. -/
theorem im_ne_zero_of_band (lower upper : ℝ) (nonnegative : 0 ≤ lower)
    (z : ZeroPoint) (member : z ∈ bandHead lower upper) : z.1.im ≠ 0 := by
  have positive := (mem_bandHead lower upper z).mp member
  intro zero
  have heightZero : height z = 0 := by simp [height, zero]
  rw [heightZero] at positive
  exact (not_lt_of_ge nonnegative) positive.1

/-- The four points have coordinates (b,t), (1-b,t), (b,-t), (1-b,-t).
Both b!=1/2 and t!=0 are essential to obtain all six distinctness facts. -/
theorem quartet_distinct (z : ZeroPoint) (offLine : z.1.re ≠ 1 / 2) (nonreal : z.1.im ≠ 0) :
    z ≠ reflected z ∧ z ≠ conjugated z ∧ z ≠ reflected (conjugated z) ∧
      reflected z ≠ conjugated z ∧ reflected z ≠ reflected (conjugated z) ∧
      conjugated z ≠ reflected (conjugated z) := by
  have conjugateOffLine : (conjugated z).1.re ≠ 1 / 2 := by
    simpa [conjugated, zeroConjugate] using offLine
  refine ⟨distinct_of_off_line z offLine, ?_, ?_, ?_, ?_,
    distinct_of_off_line (conjugated z) conjugateOffLine⟩
  all_goals
    intro same
    have imaginary := congrArg (fun w : ZeroPoint => w.1.im) same
    simp [reflected, conjugated, criticalReflection, zeroConjugate] at imaginary
    apply nonreal
    linarith

/-- A complete TWO-SIGN band has no room for an uncredited off-line quartet.
The known set need not be conjugation-closed, but its credit is counted only once. -/
theorem all_on_line_of_band_credit (lower upper : ℝ) (nonnegative : 0 ≤ lower)
    (known : Finset ZeroPoint) (credit allowance : ℕ)
    (knownSubset : known ⊆ bandHead lower upper)
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (creditLower : credit ≤ mass known multiplicity)
    (countUpper : bandCount lower upper ≤ allowance) (strict : allowance < credit + 4) :
    ∀ z ∈ bandHead lower upper, z.1.re = 1 / 2 := by
  classical
  intro z member
  by_contra offLine
  have nonreal := im_ne_zero_of_band lower upper nonnegative z member
  have conjugateOffLine : (conjugated z).1.re ≠ 1 / 2 := by
    simpa [conjugated, zeroConjugate] using offLine
  have reflectedMember : reflected z ∈ bandHead lower upper := by
    simpa only [mem_bandHead, height_reflected] using (mem_bandHead lower upper z).mp member
  have conjugateMember : conjugated z ∈ bandHead lower upper := by
    simpa only [mem_bandHead, height_conjugated] using (mem_bandHead lower upper z).mp member
  have fourthMember : reflected (conjugated z) ∈ bandHead lower upper := by
    simpa only [mem_bandHead, height_reflected, height_conjugated] using
      (mem_bandHead lower upper z).mp member
  have missing := off_line_pair_missing known z knownOnLine offLine
  have conjugateMissing := off_line_pair_missing known (conjugated z) knownOnLine conjugateOffLine
  obtain ⟨ab, ac, ad, bc, bd, cd⟩ := quartet_distinct z offLine nonreal
  have required := known_add_four_le_mass (bandHead lower upper) known multiplicity
    knownSubset z (reflected z) (conjugated z) (reflected (conjugated z))
    member reflectedMember conjugateMember fourthMember
    missing.1 missing.2 conjugateMissing.1 conjugateMissing.2 ab ac ad bc bd cd
  have p₁ := multiplicity_pos z
  have p₂ := multiplicity_pos (reflected z)
  have p₃ := multiplicity_pos (conjugated z)
  have p₄ := multiplicity_pos (reflected (conjugated z))
  change mass (bandHead lower upper) multiplicity ≤ allowance at countUpper
  omega

/-- Preserve the already established lower-height theorem. Real-axis cases belong
there; the new band proof is not extrapolated to height zero. -/
theorem rhThrough_of_band_credit (lower upper : ℕ) (ordered : lower ≤ upper)
    (baseline : RHThrough lower) (known : Finset ZeroPoint) (credit allowance : ℕ)
    (knownSubset : known ⊆ bandHead (lower : ℝ) (upper : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (creditLower : credit ≤ mass known multiplicity)
    (countUpper : bandCount (lower : ℝ) (upper : ℝ) ≤ allowance)
    (strict : allowance < credit + 4) : RHThrough upper := by
  have band := all_on_line_of_band_credit (lower : ℝ) (upper : ℝ) (Nat.cast_nonneg lower)
    known credit allowance knownSubset knownOnLine creditLower countUpper strict
  intro s zero heightBound
  by_cases low : |s.im| ≤ (lower : ℝ)
  · exact baseline s zero low
  · let z : ZeroPoint := ⟨s, zero⟩
    have member : z ∈ bandHead (lower : ℝ) (upper : ℝ) :=
      (mem_bandHead (lower : ℝ) (upper : ℝ) z).mpr ⟨lt_of_not_ge low, heightBound⟩
    exact band z member

/-- Credits from the previous multiplicity-correct local contour interface can
be passed unchanged as per-root lower weights; no window-count doubling is used. -/
theorem rhThrough_of_weighted_band (lower upper : ℕ) (ordered : lower ≤ upper)
    (baseline : RHThrough lower) (known : Finset ZeroPoint) (weight : ZeroPoint → ℕ)
    (allowance : ℕ) (knownSubset : known ⊆ bandHead (lower : ℝ) (upper : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (weightLower : ∀ z ∈ known, weight z ≤ multiplicity z)
    (countUpper : bandCount (lower : ℝ) (upper : ℝ) ≤ allowance)
    (strict : allowance < (∑ z ∈ known, weight z) + 4) : RHThrough upper := by
  exact rhThrough_of_band_credit lower upper ordered baseline known (∑ z ∈ known, weight z)
    allowance knownSubset knownOnLine (Finset.sum_le_sum (fun z hz => weightLower z hz))
    countUpper strict

/-- Compose independently bounded endpoint counts with the four-point band test.
The lower-end count credit is distinct from the new band's on-line credit. -/
theorem rhThrough_of_endpoint_count_bounds (lower upper : ℕ) (ordered : lower ≤ upper)
    (baseline : RHThrough lower) (known : Finset ZeroPoint)
    (credit lowCount highCount allowance : ℕ)
    (knownSubset : known ⊆ bandHead (lower : ℝ) (upper : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (creditLower : credit ≤ mass known multiplicity)
    (lowLower : lowCount ≤ heightCount (lower : ℝ))
    (highUpper : heightCount (upper : ℝ) ≤ highCount)
    (endpointBudget : highCount ≤ lowCount + allowance)
    (strict : allowance < credit + 4) : RHThrough upper := by
  apply rhThrough_of_band_credit lower upper ordered baseline known credit allowance
    knownSubset knownOnLine creditLower ?_ strict
  exact bandCount_upper_of_endpoint_bounds (lower : ℝ) (upper : ℝ)
    (by exact_mod_cast ordered) lowCount highCount allowance lowLower highUpper endpointBudget

/-- At zero imaginary height, the two involutions yield only two off-line points.
These are synthetic coordinates, not asserted zeta zeros. -/
theorem zero_height_collapse_fixture :
    zeroConjugate (1 / 4 : ℂ) = (1 / 4 : ℂ) ∧
      criticalReflection (1 / 4 : ℂ) = (3 / 4 : ℂ) ∧
      zeroConjugate (3 / 4 : ℂ) = (3 / 4 : ℂ) := by
  norm_num [zeroConjugate, criticalReflection]

/-- The wrong bound orientation can conceal a larger band. This is count data,
not a statement that either number is a certified zeta count. -/
theorem subtracting_two_upper_bounds_fixture :
    (2 : ℕ) ≤ 9 ∧ 10 ≤ 10 ∧ 10 - 9 < 4 ∧ ¬ 10 - 2 < 4 := by norm_num

end

end GRWTSK.RiemannHypothesis.QuartetBandDeficit
```
