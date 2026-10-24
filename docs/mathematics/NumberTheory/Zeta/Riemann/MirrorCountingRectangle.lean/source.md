# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.MirrorCountingRectangle

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3b6d30ef143df89911644364df10c075b7387e1` · SHA-256 `885384aabd89d46aaa61a8d54e44f32e64b46f3964fcb7545f02c7c202c950a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleContour
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointCountNormalization

set_option autoImplicit false

/-!
# A mirror-complete counting rectangle entirely inside the sourced half-plane

For the closed target height T, count inside 1/4<Re(s)<5/4 and 0<Im(s)<T+1/4.
Every positive-height target point has an ACTUAL reflected representative in this
rectangle. Regional uniqueness at the already isolated line point then recovers
the original point, rather than multiplying an unproved count by two.
The regional upper count remains a genuine independent analytic obligation.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.MirrorCountingRectangle

open Set
open scoped BigOperators
open CanonicalZeroDivisor LocalZeroSymmetry CriticalStripHeightDescent
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure

/-- The top lies STRICTLY beyond the consumed closed-height cutoff. -/
def interior (T : ℝ) : Set ℂ :=
  {s | (1 / 4 : ℝ) < s.re ∧ s.re < 5 / 4 ∧ 0 < s.im ∧ s.im < T + 1 / 4}

/-- Counterclockwise rectangular boundary when T+1/4>0, without claiming that
its analytic image has already been evaluated or assigned a winding number. -/
def vertices (T : ℚ) : List Coordinates :=
  [(1 / 4, 0), (5 / 4, 0), (5 / 4, T + 1 / 4),
    (1 / 4, T + 1 / 4), (1 / 4, 0)]

theorem vertices_closed (T : ℚ) :
    (vertices T).length = 5 ∧ RationalPoleContour.pointAt (vertices T) 4 =
      RationalPoleContour.pointAt (vertices T) 0 := by simp [vertices, RationalPoleContour.pointAt]

noncomputable section

/-- A regional filter of the SAME canonical source and analytic multiplicities. -/
def head (T : ℝ) : Finset ZeroPoint := (heightHead (T + 1 / 4)).filter (fun z => z.1 ∈ interior T)

def count (T : ℝ) : ℕ := ∑ z ∈ head T, multiplicity z

theorem mem_head_iff (T : ℝ) (z : ZeroPoint) : z ∈ head T ↔ z.1 ∈ interior T := by
  classical
  simp only [head, Finset.mem_filter]
  constructor
  · exact fun h => h.2
  · intro hz
    refine ⟨(mem_heightHead _ z).mpr ?_, hz⟩
    change |z.1.im| ≤ T + 1 / 4
    rw [abs_of_pos hz.2.2.1]
    exact hz.2.2.2.le

theorem card_le_count (T : ℝ) : (head T).card ≤ count T := by
  calc
    _ = ∑ _z ∈ head T, (1 : ℕ) := by simp
    _ ≤ _ := Finset.sum_le_sum (fun z _ => multiplicity_pos z)

/-- This is exact symmetry of actual zeros, not a projection of numerical data. -/
def rightRepresentative (z : ZeroPoint) : ZeroPoint :=
  if (1 / 2 : ℝ) ≤ z.1.re then z else reflectedPoint z

@[simp] theorem representative_im (z : ZeroPoint) : (rightRepresentative z).1.im = z.1.im := by
  unfold rightRepresentative
  split_ifs <;> simp [reflectedPoint, criticalReflection]

theorem representative_re (z : ZeroPoint) :
    (1 / 2 : ℝ) ≤ (rightRepresentative z).1.re ∧ (rightRepresentative z).1.re < 1 := by
  have hs := point_mem_strip z
  unfold rightRepresentative
  split_ifs with h
  · exact ⟨h, hs.2⟩
  · change (1 / 2 : ℝ) ≤ 1 - z.1.re ∧ 1 - z.1.re < 1
    constructor <;> linarith

/-- Closed target-height atoms lie in the OPEN regional rectangle, including
at Im=T. The top buffer is not silently discarded. -/
theorem representative_in_head {z : ZeroPoint} {T : ℝ}
    (hp : 0 < z.1.im) (hT : z.1.im ≤ T) : rightRepresentative z ∈ head T := by
  apply (mem_head_iff _ _).mpr
  have hr := representative_re z
  refine ⟨by linarith [hr.1], by linarith [hr.2], ?_, ?_⟩
  · simpa only [representative_im] using hp
  · rw [representative_im]
    linarith

/-- The representative map need not be injective. Recovery is justified here
ONLY because the one regional point is fixed by critical-line reflection. -/
theorem eq_of_representative_eq {w z : ZeroPoint}
    (hz : z.1.re = (1 / 2 : ℝ)) (he : rightRepresentative w = z) : w = z := by
  unfold rightRepresentative at he
  split_ifs at he with hw
  · exact he
  · apply Subtype.ext
    have hv := congrArg (fun q : ZeroPoint => q.1) he
    change criticalReflection w.1 = z.1 at hv
    have hr := congrArg criticalReflection hv
    simpa only [critical_reflection_involutive, ReflectionDisks.fixed_iff.mpr hz] using hr

/-- Positive analytic weights make an upper mass of one a distinct-point
uniqueness statement. No pointwise multiplicities are supplied as metadata. -/
theorem unique_of_count_le_one {T : ℝ} (hcount : count T ≤ 1)
    {z w : ZeroPoint} (hz : z ∈ head T) (hw : w ∈ head T) : w = z := by
  classical
  by_contra hne
  have hsub : ({w, z} : Finset ZeroPoint) ⊆ head T := by
    intro q hq
    simp only [Finset.mem_insert, Finset.mem_singleton] at hq
    rcases hq with rfl | rfl
    · exact hw
    · exact hz
  have hcard : 2 ≤ (head T).card := by
    calc
      2 = ({w, z} : Finset ZeroPoint).card := by simp [hne]
      _ ≤ _ := Finset.card_le_card hsub
  have hmass := card_le_count T
  omega

/-- The complete canonical count is NOT supplied. This theorem consumes a
regional upper mass <=1 and the old actual isolated point; it covers all signs
and all horizontal coordinates at the closed height fifteen by exact symmetries. -/
theorem complete_pair_of_regional_upper (hu : count (15 : ℝ) ≤ 1) :
    ∃ z : ZeroPoint, multiplicity z = 1 ∧ z.1.re = (1 / 2 : ℝ) ∧
      heightHead (15 : ℝ) = {z, conjugatePoint z} := by
  classical
  obtain ⟨z, hzdisk, hmult, hline, _⟩ := Checks.EndpointCriticalLine.unique_simple_critical_point
  have hp := Checks.EndpointCriticalLine.positive_height hzdisk
  have hzpos : 0 < z.1.im := by linarith [hp.1]
  have hzbox : z ∈ head (15 : ℝ) := (mem_head_iff _ _).mpr
    ⟨by linarith [hline], by linarith [hline], hzpos, by linarith [hp.2]⟩
  have positive_unique (w : ZeroPoint) (hwpos : 0 < w.1.im) (hwheight : w.1.im ≤ 15) : w = z :=
    eq_of_representative_eq hline
      (unique_of_count_le_one hu hzbox (representative_in_head hwpos hwheight))
  have hzheight : height z ≤ 15 := by
    change |z.1.im| ≤ 15
    rw [abs_of_pos hzpos]
    exact hp.2.le
  refine ⟨z, hmult, hline, ?_⟩
  ext w
  constructor
  · intro hw
    have hh := (mem_heightHead (15 : ℝ) w).mp hw
    have hnz := nontrivialZetaZero_im_ne_zero w.2
    simp only [Finset.mem_insert, Finset.mem_singleton]
    rcases lt_or_gt_of_ne hnz with hneg | hpos
    · right
      have hcpos : 0 < (conjugatePoint w).1.im := by change 0 < -w.1.im; linarith
      have hcheight : (conjugatePoint w).1.im ≤ 15 := by
        change -w.1.im ≤ 15
        simpa only [height, abs_of_neg hneg] using hh
      have he := congrArg conjugatePoint (positive_unique (conjugatePoint w) hcpos hcheight)
      simpa only [conjugatePoint_involutive] using he
    · left
      apply positive_unique w hpos
      simpa only [height, abs_of_pos hpos] using hh
  · intro hw
    simp only [Finset.mem_insert, Finset.mem_singleton] at hw
    rcases hw with rfl | rfl
    · exact (mem_heightHead _ _).mpr hzheight
    · exact (mem_heightHead _ _).mpr (by simpa only [conjugate_height] using hzheight)

/-- The bounded line statement still has its regional analytic-count premise. -/
theorem bounded_line_of_regional_upper (hu : count (15 : ℝ) ≤ 1) :
    ∀ z : ZeroPoint, height z ≤ 15 → z.1.re = (1 / 2 : ℝ) := by
  obtain ⟨w, _, hl, hh⟩ := complete_pair_of_regional_upper hu
  intro z hz
  have hm := (mem_heightHead (15 : ℝ) z).mpr hz
  rw [hh] at hm
  simp only [Finset.mem_insert, Finset.mem_singleton] at hm
  rcases hm with rfl | rfl
  · exact hl
  · change w.1.re = (1 / 2 : ℝ)
    exact hl

/-- The bottom edge is source-zero-free by the maintained real-axis exclusion,
including the corrected removable pole at one. -/
theorem positive_real_nonzero {s : ℂ} (hs : 0 < s.re) (hi : s.im = 0) :
    poleNormalizedZeta s ≠ 0 := by
  intro hz
  exact nontrivialZetaZero_im_ne_zero ((PoleNormalizedContourBounds.zero_iff_target hs).mp hz) hi

/-- The whole right edge Re=5/4 is source-zero-free by unconditional strip
exclusion, not by finitely sampled values. -/
theorem right_halfplane_nonzero {s : ℂ} (hs : 1 ≤ s.re) : poleNormalizedZeta s ≠ 0 := by
  intro hz
  have ht := (PoleNormalizedContourBounds.zero_iff_target (by linarith : 0 < s.re)).mp hz
  exact (not_lt_of_ge hs) ht.mem_critical_strip.2

end
end GRWTSK.RiemannHypothesis.MirrorCountingRectangle
```
