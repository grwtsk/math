# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ContourCountDeficit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0935c7c7a7fc5102dc5ed713b2e9103fa401b380` · SHA-256 `d637c2cd58f4a6cea201abee641c4c26a0d7dcdbb8ce98659cf31a7bd2733f96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Combinatorics.WeightedInventoryDeficit
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalLocalZeroContour

set_option autoImplicit false

/-!
# Bounded critical-line exclusion from an incomplete on-line inventory

The known finite set contains actual canonical zeros already proved on the
line. It need NOT exhaust the complete source head. A lower multiplicity
credit C for that set and an independently proved COMPLETE count upper U with
U < C+2 leave no room for an off-line zero and its actual reflected partner.
The two partners need not have equal multiplicities: positivity suffices.

Local, multiplicity-correct contour indices can supply the lower credits.
The same full zero identity is counted once, regardless of how many windows
certify it. Local isolation supplies line equality and local residue only;
it does not supply the global upper count. No total contour computation,
complete inventory, source acceptance, count bound or all-height supplier is
constructed. One unrecorded simple on-line zero may remain. This does not
replace the existing exact-saturation HeadBinding constructor.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Imported classical dependencies
remain unaudited; no choice-free closure claim is made.
-/

namespace GRWTSK.RiemannHypothesis.ContourCountDeficit

open Set Metric
open CanonicalZeroDivisor CanonicalLocalZeroContour
open GRWTSK.Combinatorics.WeightedPairBudget
open GRWTSK.Combinatorics.WeightedInventoryDeficit
open GRWTSK.NumberTheory.Zeta.Riemann
open GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget
open scoped BigOperators

noncomputable section

/-- An off-line point and its actual partner are both absent from an on-line inventory.
Zero transport alone is not used to assert equality of analytic multiplicities. -/
theorem off_line_pair_missing (known : Finset ZeroPoint) (z : ZeroPoint)
    (knownOnLine : ∀ w ∈ known, w.1.re = 1 / 2) (offLine : z.1.re ≠ 1 / 2) :
    z ∉ known ∧ reflected z ∉ known := by
  constructor
  · intro member
    exact offLine (knownOnLine z member)
  · intro member
    have onLine := knownOnLine (reflected z) member
    have realEquality : 1 - z.1.re = 1 / 2 := by
      simpa [reflected, criticalReflection] using onLine
    apply offLine
    linarith

/-- All zeros in the SAME reflection-stable region are on line when the complete
regional count leaves fewer than two units beyond the known on-line credit. -/
theorem all_on_line_of_region_credit (T : ℝ) (region : Set ℂ)
    (known : Finset ZeroPoint) (credit upper : ℕ)
    (knownSubset : known ⊆ regionHead T region)
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (stable : ∀ s ∈ region, criticalReflection s ∈ region)
    (creditLower : credit ≤ mass known multiplicity)
    (countUpper : regionCount T region ≤ upper) (strict : upper < credit + 2) :
    ∀ z ∈ regionHead T region, z.1.re = 1 / 2 := by
  classical
  intro z member
  by_contra offLine
  have missing := off_line_pair_missing known z knownOnLine offLine
  have reflectedMember := reflected_mem_regionHead T region z member stable
  have leftLower : 1 ≤ multiplicity z := multiplicity_pos z
  have rightLower : 1 ≤ multiplicity (reflected z) := multiplicity_pos (reflected z)
  exact no_room_for_unrecorded_pair (regionHead T region) known multiplicity knownSubset
    z (reflected z) member reflectedMember missing.1 missing.2 (distinct_of_off_line z offLine)
    credit 1 1 upper creditLower leftLower rightLower countUpper (by omega)

/-- The complete height count retains both signs and all horizontal coordinates.
Known points must satisfy the SAME closed absolute-height cutoff. -/
theorem rhThrough_of_height_credit (N : ℕ) (known : Finset ZeroPoint) (credit upper : ℕ)
    (knownHeight : ∀ z ∈ known, height z ≤ (N : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (creditLower : credit ≤ mass known multiplicity)
    (countUpper : heightCount (N : ℝ) ≤ upper) (strict : upper < credit + 2) : RHThrough N := by
  classical
  have subset : known ⊆ regionHead (N : ℝ) Set.univ := by
    intro z hz
    exact (mem_regionHead (N : ℝ) Set.univ z).mpr ⟨knownHeight z hz, Set.mem_univ _⟩
  have regional : regionCount (N : ℝ) Set.univ ≤ upper := by
    simpa only [regionCount_univ] using countUpper
  have onLine := all_on_line_of_region_credit (N : ℝ) Set.univ known credit upper subset
    knownOnLine (fun s _ => Set.mem_univ _) creditLower regional strict
  intro s zero heightBound
  let z : ZeroPoint := ⟨s, zero⟩
  have member : z ∈ regionHead (N : ℝ) Set.univ :=
    (mem_regionHead (N : ℝ) Set.univ z).mpr ⟨heightBound, Set.mem_univ _⟩
  exact onLine z member

/-- Natural per-root lower credits add only over DISTINCT full source identities. -/
theorem rhThrough_of_weighted_inventory (N : ℕ) (known : Finset ZeroPoint)
    (lower : ZeroPoint → ℕ) (upper : ℕ)
    (knownHeight : ∀ z ∈ known, height z ≤ (N : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (lowerBound : ∀ z ∈ known, lower z ≤ multiplicity z)
    (countUpper : heightCount (N : ℝ) ≤ upper)
    (strict : upper < (∑ z ∈ known, lower z) + 2) : RHThrough N := by
  apply rhThrough_of_height_credit N known (∑ z ∈ known, lower z) upper
    knownHeight knownOnLine ?_ countUpper strict
  exact Finset.sum_le_sum (fun z hz => lowerBound z hz)

/-- Convert a justified lower bound for the SAME local contour into an actual
multiplicity lower bound. The contour value is not treated as a numerical sample. -/
theorem contour_credit_le_multiplicity (root : ZeroPoint) (c : ℂ) (r : ℝ) (lower : ℕ)
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c r))
    (inside : root.1 ∈ ball c r)
    (isolated : ∀ w ∈ closedBall c r, riemannZeta w = 0 → w = root.1)
    (contourLower : (lower : ℝ) ≤
      ((2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
        (∮ w in C(c, r), deriv riemannZeta w / riemannZeta w)).re) :
    lower ≤ multiplicity root := by
  rw [normalized_index_eq_multiplicity root c r analytic inside isolated] at contourLower
  have realLower : (lower : ℝ) ≤ (multiplicity root : ℝ) := by
    simpa using contourLower
  exact_mod_cast realLower

/-- An incomplete family of isolated centered windows can suffice for bounded RH.
The complete upper count is independent of those windows; no global coverage
premise is assumed or derived. The finite set, not window labels, deduplicates roots. -/
theorem rhThrough_of_local_contour_credit (N : ℕ) (known : Finset ZeroPoint)
    (center : ZeroPoint → ℂ) (radius : ZeroPoint → ℝ)
    (lower : ZeroPoint → ℕ) (upper : ℕ)
    (knownHeight : ∀ z ∈ known, height z ≤ (N : ℝ))
    (centered : ∀ z ∈ known, (center z).re = 1 / 2)
    (analytic : ∀ z ∈ known, AnalyticOnNhd ℂ riemannZeta (closedBall (center z) (radius z)))
    (inside : ∀ z ∈ known, z.1 ∈ ball (center z) (radius z))
    (isolated : ∀ z ∈ known, ∀ w ∈ closedBall (center z) (radius z),
      riemannZeta w = 0 → w = z.1)
    (contourLower : ∀ z ∈ known, (lower z : ℝ) ≤
      ((2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
        (∮ w in C(center z, radius z), deriv riemannZeta w / riemannZeta w)).re)
    (countUpper : heightCount (N : ℝ) ≤ upper)
    (strict : upper < (∑ z ∈ known, lower z) + 2) : RHThrough N := by
  apply rhThrough_of_weighted_inventory N known lower upper knownHeight ?_ ?_ countUpper strict
  · intro z hz
    exact (centered_isolated_zero_geometry z (center z) (radius z) (centered z hz)
      (analytic z hz) (inside z hz) (isolated z hz)).1
  · intro z hz
    exact contour_credit_le_multiplicity z (center z) (radius z) (lower z)
      (analytic z hz) (inside z hz) (isolated z hz) (contourLower z hz)

/-- This continuation is still an all-height supplier problem. Existential data
are eliminated separately at each N; no global choice of inventories is made here. -/
theorem riemannHypothesis_of_all_height_credits
    (supplier : ∀ N : ℕ, ∃ (known : Finset ZeroPoint) (credit upper : ℕ),
      (∀ z ∈ known, height z ≤ (N : ℝ)) ∧
      (∀ z ∈ known, z.1.re = 1 / 2) ∧ credit ≤ mass known multiplicity ∧
      heightCount (N : ℝ) ≤ upper ∧ upper < credit + 2) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_iff_all_heights.mpr
  intro N
  obtain ⟨known, credit, upper, knownHeight, knownOnLine, creditLower, countUpper, strict⟩ := supplier N
  exact rhThrough_of_height_credit N known credit upper knownHeight knownOnLine
    creditLower countUpper strict

end

end GRWTSK.RiemannHypothesis.ContourCountDeficit
```
