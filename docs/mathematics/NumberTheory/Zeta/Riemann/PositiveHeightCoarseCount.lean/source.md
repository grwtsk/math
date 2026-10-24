# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCoarseCount

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91ceef34cfbd920994350b568fca10b220d69829` · SHA-256 `3127b57210671e56ad58c3a56c31096e5906c9006c2ceaf139e6fb452775a055`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCountDeficit
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalHighCounting

set_option autoImplicit false

/-!
# A coarse positive-height count supplier from the canonical Jensen bound

The preceding positive-height deficit theorem accepts an independently justified complete count
upper bound. This module supplies one such upper bound from the repository's existing canonical
high-zero count. It is deliberately coarse:

  positiveHeightCount N
    <= heightCount 2 + ceil(countingCoefficient * N * log N).

The low absolute-height head remains as an exact additive term. The argument only uses that the
positive-height head is a subset of the complete both-sign head; no unproved halving or equality of
conjugate multiplicities is inserted. The real analytic term is rounded UP before it is consumed as
a natural count.

Combining this upper bound with local multiplicity credits yields a bounded RH criterion and an
all-height supplier interface. The theorem does not construct enough credit, evaluate heightCount 2,
prove a sharp Turing count, or certify any concrete zero list. A failed strict margin has no converse.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Imported classical dependencies remain unaudited.
-/

namespace GRWTSK.RiemannHypothesis.PositiveHeightCoarseCount

open Set Metric
open scoped BigOperators
open CanonicalZeroDivisor
open CanonicalHighCounting
open PositiveHeightCountDeficit
open CanonicalLocalZeroContour
open ContourCountDeficit
open GRWTSK.Combinatorics.WeightedPairBudget
open GRWTSK.NumberTheory.Zeta.Riemann

noncomputable section

/-- Upward-rounded contribution of the existing coarse high-zero estimate. -/
def coarseHighAllowance (N : ℕ) : ℕ :=
  ⌈countingCoefficient * ((N : ℝ) * Real.log (N : ℝ))⌉₊

/-- Preserve the exact low head rather than asserting it empty or estimating it twice. -/
def coarsePositiveUpper (N : ℕ) : ℕ :=
  heightCount 2 + coarseHighAllowance N

/-- The real analytic allowance is never rounded downward. -/
theorem highTerm_le_coarseHighAllowance (N : ℕ) :
    countingCoefficient * ((N : ℝ) * Real.log (N : ℝ)) ≤
      (coarseHighAllowance N : ℝ) := by
  simpa only [coarseHighAllowance] using
    (Nat.le_ceil (countingCoefficient * ((N : ℝ) * Real.log (N : ℝ))))

/-- The coarse upper always retains the entire low absolute-height source. -/
theorem heightCount_two_le_coarsePositiveUpper (N : ℕ) :
    heightCount 2 ≤ coarsePositiveUpper N := by
  simp [coarsePositiveUpper]

/-- Compose the positive-head inclusion with the existing Jensen-derived complete-head bound.
No factor two is removed: this is a safe upper bound, not the standard asymptotic formula. -/
theorem positiveHeightCount_le_coarsePositiveUpper (N : ℕ) (hN : 2 ≤ N) :
    positiveHeightCount (N : ℝ) ≤ coarsePositiveUpper N := by
  have hNreal : (2 : ℝ) ≤ (N : ℝ) := by exact_mod_cast hN
  have hbound : (positiveHeightCount (N : ℝ) : ℝ) ≤
      (coarsePositiveUpper N : ℝ) := by
    calc
      (positiveHeightCount (N : ℝ) : ℝ) ≤ (heightCount (N : ℝ) : ℝ) := by
        exact_mod_cast positiveHeightCount_le_heightCount (N : ℝ)
      _ ≤ (heightCount 2 : ℝ) +
          countingCoefficient * ((N : ℝ) * Real.log (N : ℝ)) :=
        heightCount_le_low_add (N : ℝ) hNreal
      _ ≤ (heightCount 2 : ℝ) + (coarseHighAllowance N : ℝ) :=
        add_le_add_left (highTerm_le_coarseHighAllowance N) _
      _ = (coarsePositiveUpper N : ℝ) := by
        simp [coarsePositiveUpper]
  exact_mod_cast hbound

/-- A sufficiently large known on-line multiplicity credit beats the sourced coarse upper.
The known inventory need not be complete. -/
theorem rhThrough_of_coarse_positive_credit (N : ℕ) (hN : 2 ≤ N)
    (known : Finset ZeroPoint) (credit : ℕ)
    (knownSubset : known ⊆ positiveHeightHead (N : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (creditLower : credit ≤ mass known multiplicity)
    (strict : coarsePositiveUpper N < credit + 2) : RHThrough N := by
  exact rhThrough_of_positive_credit N known credit (coarsePositiveUpper N)
    knownSubset knownOnLine creditLower
    (positiveHeightCount_le_coarsePositiveUpper N hN) strict

/-- Per-root lower multiplicity credits specialize the same coarse criterion. -/
theorem rhThrough_of_coarse_positive_weighted_inventory (N : ℕ) (hN : 2 ≤ N)
    (known : Finset ZeroPoint) (lower : ZeroPoint → ℕ)
    (knownSubset : known ⊆ positiveHeightHead (N : ℝ))
    (knownOnLine : ∀ z ∈ known, z.1.re = 1 / 2)
    (lowerBound : ∀ z ∈ known, lower z ≤ multiplicity z)
    (strict : coarsePositiveUpper N < (∑ z ∈ known, lower z) + 2) : RHThrough N := by
  exact rhThrough_of_positive_weighted_inventory N known lower (coarsePositiveUpper N)
    knownSubset knownOnLine lowerBound
    (positiveHeightCount_le_coarsePositiveUpper N hN) strict

/-- Multiplicity-correct local contours can supply the credits consumed by the coarse count.
Every window remains tied to the same actual source root and disk; no coverage premise is inferred. -/
theorem rhThrough_of_coarse_positive_local_contours (N : ℕ) (hN : 2 ≤ N)
    (known : Finset ZeroPoint)
    (center : ZeroPoint → ℂ) (radius : ZeroPoint → ℝ)
    (lower : ZeroPoint → ℕ)
    (knownSubset : known ⊆ positiveHeightHead (N : ℝ))
    (centered : ∀ z ∈ known, (center z).re = 1 / 2)
    (analytic : ∀ z ∈ known,
      AnalyticOnNhd ℂ riemannZeta (closedBall (center z) (radius z)))
    (inside : ∀ z ∈ known, z.1 ∈ ball (center z) (radius z))
    (isolated : ∀ z ∈ known, ∀ w ∈ closedBall (center z) (radius z),
      riemannZeta w = 0 → w = z.1)
    (contourLower : ∀ z ∈ known, (lower z : ℝ) ≤
      ((2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
        (∮ w in C(center z, radius z), deriv riemannZeta w / riemannZeta w)).re)
    (strict : coarsePositiveUpper N < (∑ z ∈ known, lower z) + 2) : RHThrough N := by
  apply rhThrough_of_coarse_positive_weighted_inventory N hN known lower knownSubset ?_ ?_ strict
  · intro z hz
    exact (centered_isolated_zero_geometry z (center z) (radius z) (centered z hz)
      (analytic z hz) (inside z hz) (isolated z hz)).1
  · intro z hz
    exact contour_credit_le_multiplicity z (center z) (radius z) (lower z)
      (analytic z hz) (inside z hz) (isolated z hz) (contourLower z hz)

/-- A coarse-credit supplier at every height at least two would imply RH.
The larger height max(N,2) is eliminated separately for each target N; no global inventory is chosen. -/
theorem riemannHypothesis_of_coarse_positive_credits
    (supplier : ∀ M : ℕ, 2 ≤ M →
      ∃ (known : Finset ZeroPoint) (credit : ℕ),
        known ⊆ positiveHeightHead (M : ℝ) ∧
        (∀ z ∈ known, z.1.re = 1 / 2) ∧
        credit ≤ mass known multiplicity ∧
        coarsePositiveUpper M < credit + 2) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_iff_all_heights.mpr
  intro N
  let M := max N 2
  have hNM : N ≤ M := le_max_left N 2
  have hM2 : 2 ≤ M := le_max_right N 2
  obtain ⟨known, credit, subset, onLine, creditLower, strict⟩ := supplier M hM2
  have hM : RHThrough M := rhThrough_of_coarse_positive_credit M hM2
    known credit subset onLine creditLower strict
  exact hM.mono hNM

/-- Equality at the two-unit boundary is not a contradiction. -/
theorem nonstrict_margin_fixture (credit : ℕ) :
    ¬ credit + 2 < credit + 2 := by omega

end

end GRWTSK.RiemannHypothesis.PositiveHeightCoarseCount
```
