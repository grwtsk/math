# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.CoverDepth

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4d2684bb60d5939f4521e4e3300743ecaf2bdda` · SHA-256 `f0a842dad8e410cbb69d96655b3bcf9c8099ef69817c4ca8a7ebba12ad20b466`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.SquaredCoverSearch
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCoverDepth

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.CoverDepth

open CriticalStripHeightDescent RationalPatchCover
open Filter
open scoped Topology

/-- Coordinate half-widths bound the distance by 17/24; no approximate square root. -/
lemma half_square_norm_margin {z : ℂ} {x y : ℝ}
    (hx : |z.re - x| ≤ 1 / 2) (hy : |z.im - y| ≤ 1 / 2) :
    ‖z - (⟨x, y⟩ : ℂ)‖ + (1 / 24 : ℝ) ≤ 3 / 4 := by
  have hx2 : (z.re - x) ^ 2 ≤ (1 / 2 : ℝ) ^ 2 := by
    have h := mul_le_mul hx hx (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 2)
    nlinarith [sq_abs (z.re - x)]
  have hy2 : (z.im - y) ^ 2 ≤ (1 / 2 : ℝ) ^ 2 := by
    have h := mul_le_mul hy hy (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 2)
    nlinarith [sq_abs (z.im - y)]
  have heq : ‖z - (⟨x, y⟩ : ℂ)‖ ^ 2 = (z.re - x) ^ 2 + (z.im - y) ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re, Complex.sub_im,
      pow_two]
  have hn : ‖z - (⟨x, y⟩ : ℂ)‖ ≤ (17 / 24 : ℝ) := by
    nlinarith [norm_nonneg (z - (⟨x, y⟩ : ℂ))]
  linarith

/-- All points of the actual square, not just the four centers, have clearance 1/24.
This fixture uses four disks; no one of them covers the entire root square. -/
theorem quarter_clearance : UniformDiskClearance SquaredCoverSearch.quarterDisks
    SquaredCoverSearch.unitBox (1 / 24) := by
  refine ⟨by norm_num, ?_⟩
  intro z hz
  have hxlo : (-1 : ℝ) ≤ z.re := hz.1
  have hxhi : z.re ≤ (1 : ℝ) := hz.2.1
  have hylo : (-1 : ℝ) ≤ z.im := hz.2.2.1
  have hyhi : z.im ≤ (1 : ℝ) := hz.2.2.2
  by_cases hx : z.re ≤ 0
  · have hx' : |z.re - (-1 / 2 : ℝ)| ≤ 1 / 2 := by
      apply abs_le.mpr
      constructor <;> linarith
    by_cases hy : z.im ≤ 0
    · have hy' : |z.im - (-1 / 2 : ℝ)| ≤ 1 / 2 := by
        apply abs_le.mpr
        constructor <;> linarith
      refine ⟨(0 : Fin 4), ?_⟩
      simpa [SquaredCoverSearch.quarterDisks, Disk.center] using half_square_norm_margin hx' hy'
    · have hy' : |z.im - (1 / 2 : ℝ)| ≤ 1 / 2 := by
        have hpos := lt_of_not_ge hy
        apply abs_le.mpr
        constructor <;> linarith
      refine ⟨(1 : Fin 4), ?_⟩
      simpa [SquaredCoverSearch.quarterDisks, Disk.center] using half_square_norm_margin hx' hy'
  · have hx' : |z.re - (1 / 2 : ℝ)| ≤ 1 / 2 := by
      have hpos := lt_of_not_ge hx
      apply abs_le.mpr
      constructor <;> linarith
    by_cases hy : z.im ≤ 0
    · have hy' : |z.im - (-1 / 2 : ℝ)| ≤ 1 / 2 := by
        apply abs_le.mpr
        constructor <;> linarith
      refine ⟨(2 : Fin 4), ?_⟩
      simpa [SquaredCoverSearch.quarterDisks, Disk.center] using half_square_norm_margin hx' hy'
    · have hy' : |z.im - (1 / 2 : ℝ)| ≤ 1 / 2 := by
        have hpos := lt_of_not_ge hy
        apply abs_le.mpr
        constructor <;> linarith
      refine ⟨(3 : Fin 4), ?_⟩
      simpa [SquaredCoverSearch.quarterDisks, Disk.center] using half_square_norm_margin hx' hy'

-- The general budget is conservative: this family was already found at depth 2.
example : (SquaredCover.search SquaredCoverSearch.quarterDisks 16
    SquaredCoverSearch.unitBox).isSome = true := by
  apply SquaredCover.search_complete_of_clearance _ _
    (by norm_num [SquaredCoverSearch.unitBox, Rectangle.WellFormed]) quarter_clearance
  norm_num [SquaredCoverSearch.unitBox, Rectangle.span]

example : ∀ᶠ fuel : ℕ in atTop, (SquaredCover.search SquaredCoverSearch.quarterDisks
    fuel SquaredCoverSearch.unitBox).isSome = true :=
  SquaredCover.search_eventually_succeeds_of_clearance _ _
    (by norm_num [SquaredCoverSearch.unitBox, Rectangle.WellFormed]) quarter_clearance

-- A requested epsilon that is too large can be disproved by a budgeted failure.
-- This does not disprove the smaller valid clearance established above.
example : ¬ UniformDiskClearance SquaredCoverSearch.quarterDisks
    SquaredCoverSearch.unitBox (3 : ℝ) := by
  apply SquaredCover.no_clearance_of_budgeted_failure _ _
    (by norm_num [SquaredCoverSearch.unitBox, Rectangle.WellFormed]) 1
    (by norm_num [SquaredCoverSearch.unitBox, Rectangle.span])
    SquaredCoverSearch.insufficient_depth

-- Positive clearance is sufficient but NOT necessary for successful closed covers.
def tangentPoint : Rectangle := ⟨1, 1, 0, 0⟩
def tangentDisks : Fin 1 → Disk := fun _ => ⟨0, 0, 1⟩

example : (SquaredCover.search tangentDisks 0 tangentPoint).isSome = true := by decide

theorem tangentPoint_no_positive_clearance :
    ¬ ∃ ε : ℝ, UniformDiskClearance tangentDisks tangentPoint ε := by
  rintro ⟨ε, hε, h⟩
  have hz : (1 : ℂ) ∈ tangentPoint.carrier := by
    norm_num [tangentPoint, Rectangle.carrier]
  obtain ⟨i, hi⟩ := h 1 hz
  have hnorm : ‖(1 : ℂ) - (tangentDisks i).center‖ = 1 := by
    norm_num [tangentDisks, Disk.center]
  rw [hnorm] at hi
  norm_num [tangentDisks] at hi
  linarith

-- Mere closed coverage can require a cut not produced by midpoint subdivision.
-- A manual rational split at 1/3 is valid, but the depth-six midpoint run fails.
-- The contact point is on BOTH disk boundaries, so it has no positive clearance.
def touchingBox : Rectangle := ⟨-1, 1, 0, 0⟩
def touchingDisks (i : Fin 2) : Disk :=
  if i.val = 0 then ⟨-1 / 3, 0, 2 / 3⟩ else ⟨2 / 3, 0, 1 / 3⟩
def touchingTree : Tree 2 := .splitReal (1 / 3) (.leaf 0) (.leaf 1)

example : SquaredCover.check touchingDisks touchingTree touchingBox = true := by decide
example : (SquaredCover.search touchingDisks 6 touchingBox).isSome = false := by decide

theorem touching_no_positive_clearance :
    ¬ ∃ ε : ℝ, UniformDiskClearance touchingDisks touchingBox ε := by
  rintro ⟨ε, hε, h⟩
  have hz : (1 / 3 : ℂ) ∈ touchingBox.carrier := by
    norm_num [touchingBox, Rectangle.carrier]
  obtain ⟨i, hi⟩ := h (1 / 3) hz
  fin_cases i <;> norm_num [touchingDisks, Disk.center] at hi <;> linarith

-- Both directions of the underlying child containment and rate are exposed.
example (b : Rectangle) (hb : b.WellFormed)
    (hlong : b.top - b.bottom ≤ b.right - b.left) :
    (b.west ((b.left + b.right) / 2)).span ≤ (3 / 4 : ℚ) * b.span :=
  (b.west_midpoint_properties hb hlong).2.2

example {n : ℕ} (disks : Fin n → Disk) (b : Rectangle) (hb : b.WellFormed)
    {ε : ℝ} (hc : UniformDiskClearance disks b ε) (fuel : ℕ)
    (hbudget : (3 / 4 : ℝ) ^ fuel * (b.span : ℝ) ≤ ε)
    {F : ℂ → ℂ} (patches : ∀ i, SampleVariationPatch F (disks i).carrier) :
    FiniteVariationCover F b.carrier :=
  SquaredCover.coverOfClearance disks b hb hc fuel hbudget patches

end GRWTSK.RiemannHypothesis.Checks.CoverDepth
```
