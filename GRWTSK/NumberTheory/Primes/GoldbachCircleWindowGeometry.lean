/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
import Mathlib.Analysis.Normed.Group.AddCircle
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Circle geometry of the periodized Goldbach rational arcs

The inherited real rational arc is the union of the central interval and its
two adjacent integral lifts before clipping to `(0,1]`. This module identifies
that clipped three-lift construction with the preimage of one metric closed
ball on `AddCircle 1` under the exact local offset map.

The result is geometric. It does not estimate a prime sum, evaluate an
integral, construct an infinite singular series, bound a minor arc, or prove a
Goldbach statement.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachCircleWindowGeometry

open scoped Real
open Set Metric AddCircle
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcSeparation

noncomputable section

local instance unitPeriodPositive : Fact (0 < (1 : ℝ)) := ⟨zero_lt_one⟩

/-- The local offset, regarded on the unit additive circle. -/
def goldbachOffsetCircle (a q : ℕ) (x : ℝ) : AddCircle (1 : ℝ) :=
  (goldbachRationalArcOffset a q x : AddCircle (1 : ℝ))

/-- The circle window having the inherited rational-arc radius. -/
def goldbachCircleWindow (Q N q : ℕ) : Set (AddCircle (1 : ℝ)) :=
  Metric.closedBall 0 (goldbachRationalArcRadius Q N q)

/-- The pullback of the circle window to the exact integration domain. -/
def goldbachCircleWindowPreimage
    (Q N a q : ℕ) : Set ℝ :=
  Set.Ioc 0 1 ∩
    goldbachOffsetCircle a q ⁻¹'
      goldbachCircleWindow Q N q

/-- The offset-to-circle map is continuous. -/
@[continuity, fun_prop]
theorem continuous_goldbachOffsetCircle (a q : ℕ) :
    Continuous (goldbachOffsetCircle a q) := by
  unfold goldbachOffsetCircle goldbachRationalArcOffset
  fun_prop

/-- Every circle window is measurable. -/
theorem measurable_goldbachCircleWindow (Q N q : ℕ) :
    MeasurableSet (goldbachCircleWindow Q N q) := by
  exact measurableSet_closedBall

/-- The clipped pullback of every circle window is measurable. -/
theorem measurable_goldbachCircleWindowPreimage
    (Q N a q : ℕ) :
    MeasurableSet (goldbachCircleWindowPreimage Q N a q) := by
  exact measurableSet_Ioc.inter
    ((measurable_goldbachCircleWindow Q N q).preimage
      (continuous_goldbachOffsetCircle a q).measurable)

/-- The norm of the offset class is the nearest-integer distance. -/
theorem norm_goldbachOffsetCircle
    (a q : ℕ) (x : ℝ) :
    ‖goldbachOffsetCircle a q x‖ =
      |goldbachRationalArcOffset a q x -
        round (goldbachRationalArcOffset a q x)| := by
  simpa [goldbachOffsetCircle] using
    (UnitAddCircle.norm_eq
      (x := goldbachRationalArcOffset a q x))

/-- On the selected fundamental domain, the nearest integer to the local
offset is one of `-1`, `0`, or `1`. -/
theorem round_goldbachRationalArcOffset_cases
    {Q a q : ℕ} {x : ℝ}
    (hindex : (a, q) ∈ goldbachRationalArcIndices Q)
    (hx : x ∈ Set.Ioc (0 : ℝ) 1) :
    round (goldbachRationalArcOffset a q x) = (-1 : ℤ) ∨
      round (goldbachRationalArcOffset a q x) = 0 ∨
      round (goldbachRationalArcOffset a q x) = 1 := by
  have hc :=
    goldbachRationalArcCenter_mem_Ico hindex
  let β := goldbachRationalArcOffset a q x
  have hβlower : (-1 : ℝ) < β := by
    dsimp [β, goldbachRationalArcOffset]
    linarith [hx.1, hc.2]
  have hβupper : β ≤ (1 : ℝ) := by
    dsimp [β, goldbachRationalArcOffset]
    linarith [hx.2, hc.1]
  have hnearest :
      |β - (round β : ℝ)| ≤ (1 / 2 : ℝ) := by
    simpa using abs_sub_round β
  have hlowerR : (-2 : ℝ) < (round β : ℝ) := by
    rcases abs_le.mp hnearest with ⟨_, hright⟩
    linarith
  have hupperR : (round β : ℝ) < (2 : ℝ) := by
    rcases abs_le.mp hnearest with ⟨hleft, _⟩
    linarith
  have hlowerZ : (-2 : ℤ) < round β := by
    exact_mod_cast hlowerR
  have hupperZ : round β < (2 : ℤ) := by
    exact_mod_cast hupperR
  change round β = (-1 : ℤ) ∨ round β = 0 ∨ round β = 1
  omega

/-- Membership in the raw three-lift arc is exactly membership of the local
offset in the corresponding circle window, once the real point is restricted
to `(0,1]`. No small-radius assumption is needed: the three lifts contain a
nearest representative for every offset in the selected fundamental domain. -/
theorem mem_goldbachPeriodizedRationalArc_iff_offsetCircle
    {Q N a q : ℕ} {x : ℝ}
    (hindex : (a, q) ∈ goldbachRationalArcIndices Q)
    (hxunit : x ∈ Set.Ioc (0 : ℝ) 1) :
    x ∈ goldbachPeriodizedRationalArc Q N a q ↔
      goldbachOffsetCircle a q x ∈
        goldbachCircleWindow Q N q := by
  let c := goldbachRationalArcCenter a q
  let r := goldbachRationalArcRadius Q N q
  let β := goldbachRationalArcOffset a q x
  have hround :=
    round_goldbachRationalArcOffset_cases hindex hxunit
  have hnorm :
      ‖goldbachOffsetCircle a q x‖ =
        |β - (round β : ℝ)| := by
    simpa [β] using norm_goldbachOffsetCircle a q x
  change
    x ∈
        Set.Icc (c - r) (c + r) ∪
          (Set.Icc (c + 1 - r) (c + 1 + r) ∪
            Set.Icc (c - 1 - r) (c - 1 + r)) ↔
      dist (goldbachOffsetCircle a q x) 0 ≤ r
  rw [dist_zero_right, hnorm]
  constructor
  · intro hx
    have hβ :
        |β - (round β : ℝ)| ≤ r := by
      rcases hx with hcentral | hrest
      · have hzero :
            |β - (0 : ℝ)| ≤ r := by
          rw [abs_le]
          dsimp [β, c, goldbachRationalArcOffset]
          constructor <;> linarith [hcentral.1, hcentral.2]
        exact (round_le β (0 : ℤ)).trans (by simpa only [Int.cast_zero] using hzero)
      · rcases hrest with hplus | hminus
        · have hone :
              |β - (1 : ℝ)| ≤ r := by
            rw [abs_le]
            dsimp [β, c, goldbachRationalArcOffset]
            constructor <;> linarith [hplus.1, hplus.2]
          exact (round_le β (1 : ℤ)).trans (by simpa only [Int.cast_one] using hone)
        · have hneg :
              |β - ((-1 : ℤ) : ℝ)| ≤ r := by
            rw [Int.cast_neg, Int.cast_one, abs_le]
            dsimp [β, c, goldbachRationalArcOffset]
            constructor <;> linarith [hminus.1, hminus.2]
          exact (round_le β (-1 : ℤ)).trans hneg
    exact hβ
  · intro hβ
    rcases hround with hneg | hzero | hone
    · rw [hneg, Int.cast_neg, Int.cast_one] at hβ
      have hb := abs_le.mp hβ
      refine Or.inr (Or.inr ?_)
      dsimp [β, c, goldbachRationalArcOffset] at hb
      constructor <;> linarith
    · rw [hzero, Int.cast_zero, sub_zero] at hβ
      have hb := abs_le.mp hβ
      refine Or.inl ?_
      dsimp [β, c, goldbachRationalArcOffset] at hb
      constructor <;> linarith
    · rw [hone, Int.cast_one] at hβ
      have hb := abs_le.mp hβ
      refine Or.inr (Or.inl ?_)
      dsimp [β, c, goldbachRationalArcOffset] at hb
      constructor <;> linarith

/-- The inherited clipped three-lift arc is exactly the clipped preimage of
one metric circle window. -/
theorem goldbachClippedRationalArc_eq_circleWindowPreimage
    {Q N a q : ℕ}
    (hindex : (a, q) ∈ goldbachRationalArcIndices Q) :
    goldbachClippedRationalArc Q N (a, q) =
      goldbachCircleWindowPreimage Q N a q := by
  ext x
  simp only [goldbachClippedRationalArc,
    goldbachCircleWindowPreimage, Set.mem_inter_iff,
    Set.mem_preimage]
  constructor
  · rintro ⟨hxunit, hxarc⟩
    exact ⟨hxunit,
      (mem_goldbachPeriodizedRationalArc_iff_offsetCircle
        hindex hxunit).1 hxarc⟩
  · rintro ⟨hxunit, hxwindow⟩
    exact ⟨hxunit,
      (mem_goldbachPeriodizedRationalArc_iff_offsetCircle
        hindex hxunit).2 hxwindow⟩

end
end GRWTSK.NumberTheory.Primes.GoldbachCircleWindowGeometry
