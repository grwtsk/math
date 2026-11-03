/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FiniteStraightTubeProjectivePhysicalPair
import GRWTSK.MeasureAndIntegration.FiniteProjectiveTubeBallVolume
import Mathlib

set_option autoImplicit false
noncomputable section
open MeasureTheory

/-!
# Pairwise projective angular collars and saturated physical intersection caps

The prior full-family ProjectivelySeparated sigma hypothesis is unnecessary
when the selected source relation already tests the actual pairwise gap.
The projective chord gap is symmetric for unoriented straight-line axes.

For ONE pair with gap at least sigma>0, the actual Euclidean shading
intersection volume is bounded by the minimum of three source-derived
costs: its first shading volume, its second shading volume, and the
original projective intersection-ball volume. This saturates the
nonsharp sigma^(-d) enclosure for almost-parallel pairs.

This statement is dimension-indexed and uses the original straight
tube and shading geometry, not a coarse pixel/grid co-hit. Ball
finiteness and actual shading finiteness are explicit in the REAL
measure comparison. No family-wide direction packing is assumed.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

variable {d : ℕ}

/-- Exact symmetry of the true unoriented projective chord gap.
Opposite orientations represent the same line, and the gap is zero. -/
theorem projectiveGap_comm (ω ν : Direction d) :
    projectiveDirectionGap ω ν = projectiveDirectionGap ν ω := by
  unfold projectiveDirectionGap
  have hplus :
      dist (ω : Space d) (-(ν : Space d)) =
        dist (ν : Space d) (-(ω : Space d)) := by
    rw [dist_eq_norm, dist_eq_norm]
    congr 1
    abel
  rw [dist_comm (ω : Space d) (ν : Space d), hplus]

variable [NeZero d]
universe u
variable {Index : Type u} [Fintype Index]

namespace Family

variable (S : Family d Index)

/-- True Lebesgue measure of the source-shading pair enclosed in
a projective-angular ball centered at the FIRST original tube. -/
def projectivePairBallCap (σ : ℝ) (i j : Index) : ℝ :=
  (volume : Measure (Space d)).real
    (Metric.closedBall (S.tube i).center
      ((S.tube i).projectiveIntersectionRadius (S.tube j) σ))

/-- The pair cap is saturated by each actual original shading. A
projective ball of enormous radius is not allowed to claim a better
upper bound than either physical shading's own finite volume. -/
def saturatedProjectivePairCap (σ : ℝ) (i j : Index) : ℝ :=
  min ((volume : Measure (Space d)).real (S.shading i))
    (min ((volume : Measure (Space d)).real (S.shading j))
      (S.projectivePairBallCap σ i j))

/-- Actual projective ball bound for a SINGLE pair, with no
whole-family separation assumption. A nonempty shading intersection
provides the original common point required by the imported theorem.
If physically disjoint, its original real intersection volume is 0. -/
theorem physical_pair_le_ball_cap_of_gap (σ : ℝ)
    (hσ : 0 < σ)
    (i j : Index)
    (hgap : σ ≤ projectiveDirectionGap
      (S.tube i).direction (S.tube j).direction)
    (hballFinite : ∀ x : Space d,
      volume (Metric.closedBall x
        ((S.tube i).projectiveIntersectionRadius
          (S.tube j) σ)) ≠ ∞) :
    (volume : Measure (Space d)).real (S.shading i ∩ S.shading j) ≤
      S.projectivePairBallCap σ i j := by
  by_cases hshared : ∃ x : Space d, x ∈ S.shading i ∩ S.shading j
  · obtain ⟨x, hx⟩ := hshared
    have hpair :
        (volume : Measure (Space d)).real
          (S.shading i ∩ S.shading j) ≤
        (volume : Measure (Space d)).real
          (Metric.closedBall x
            ((S.tube i).projectiveIntersectionRadius
              (S.tube j) σ)) :=
      S.real_pair_volume_le_projective_ball i j
        hσ hgap x (S.shading_subtube i hx.1)
        (S.shading_subtube j hx.2) (hballFinite x)
    have hball :
        volume (Metric.closedBall x
          ((S.tube i).projectiveIntersectionRadius (S.tube j) σ)) =
        volume (Metric.closedBall (S.tube i).center
          ((S.tube i).projectiveIntersectionRadius (S.tube j) σ)) := by
      calc
        _ = (ENNReal.ofReal
              ((S.tube i).projectiveIntersectionRadius (S.tube j) σ)) ^ d *
              ENNReal.ofReal
                (Real.sqrt Real.pi ^ d /
                  Real.Gamma ((d : ℝ) / 2 + 1)) :=
          (S.tube i).projectiveIntersection_ball_volume
            (S.tube j) σ x
        _ = _ :=
          ((S.tube i).projectiveIntersection_ball_volume
            (S.tube j) σ (S.tube i).center).symm
    have hreal :
        (volume : Measure (Space d)).real
          (Metric.closedBall x
            ((S.tube i).projectiveIntersectionRadius (S.tube j) σ)) =
        (volume : Measure (Space d)).real
          (Metric.closedBall (S.tube i).center
            ((S.tube i).projectiveIntersectionRadius (S.tube j) σ)) :=
      congrArg ENNReal.toReal hball
    exact hpair.trans_eq hreal
  · have hempty : S.shading i ∩ S.shading j = ∅ := by
      ext x
      constructor
      · intro hx
        exact False.elim (hshared ⟨x, hx⟩)
      · intro hx
        exact False.elim (Set.not_mem_empty x hx)
    have hzero :
        (volume : Measure (Space d)).real
          (S.shading i ∩ S.shading j) = 0 := by
      simp [hempty]
    rw [hzero]
    exact ENNReal.toReal_nonneg

/-- Genuine source-specific MIN of three bounds, not an assumed
Kakeya-optimal tube-intersection theorem. -/
theorem physical_pair_le_saturated_cap_of_gap (σ : ℝ)
    (hσ : 0 < σ)
    (i j : Index)
    (hgap : σ ≤ projectiveDirectionGap
      (S.tube i).direction (S.tube j).direction)
    (hfinite : ∀ i : Index, volume (S.shading i) ≠ ∞)
    (hballFinite : ∀ x : Space d,
      volume (Metric.closedBall x
        ((S.tube i).projectiveIntersectionRadius
          (S.tube j) σ)) ≠ ∞) :
    (volume : Measure (Space d)).real (S.shading i ∩ S.shading j) ≤
      S.saturatedProjectivePairCap σ i j := by
  unfold saturatedProjectivePairCap
  apply le_min
  · exact measureReal_mono Set.inter_subset_left (hfinite i)
  · apply le_min
    · exact measureReal_mono Set.inter_subset_right (hfinite j)
    · exact S.physical_pair_le_ball_cap_of_gap σ hσ i j hgap hballFinite

/-- The saturation is real: the improved bound never exceeds the
first source shading's finite real volume, whatever sigma is. -/
theorem saturated_cap_le_first (σ : ℝ) (i j : Index) :
    S.saturatedProjectivePairCap σ i j ≤
      (volume : Measure (Space d)).real (S.shading i) :=
  min_le_left _ _

/-- Nor can the capped projective bound exceed the second shading. -/
theorem saturated_cap_le_second (σ : ℝ) (i j : Index) :
    S.saturatedProjectivePairCap σ i j ≤
      (volume : Measure (Space d)).real (S.shading j) :=
  (min_le_right _ _).trans (min_le_left _ _)

/-- This improves (or equals) the previous projective ball bound
at EVERY pair, even when sigma becomes very small. -/
theorem saturated_cap_le_ball (σ : ℝ) (i j : Index) :
    S.saturatedProjectivePairCap σ i j ≤
      S.projectivePairBallCap σ i j :=
  (min_le_right _ _).trans (min_le_right _ _)

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
