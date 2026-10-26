/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Upstream Mathlib and GRWTSK authorship/license obligations remain. -/
import GRWTSK.Analysis.Geometry.FiniteProjectiveTubeBallVolume
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeTransversePairVolume
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeProjectiveDirections

set_option autoImplicit false
noncomputable section

/-!
# Actual indexed physical shading-pair volume from projective gap

Every source index retains its original straight Euclidean cylinder,
shading and weight. For a pair of true tube directions with a positive
projective chord gap sigma, the previously free transverse coercivity
and pair-intersection radius are constructed, not postulated:

  gamma = sigma²/4;
  R(i,j,sigma) = 4 (radius_i + radius_j)/sigma.

Given one actual shared tube point x₀, every physical shading-pair
point lies inside its Euclidean closed ball of radius R. Hence both
the ENNReal Lebesgue intersection bound and its real-valued form
under an explicit finite-ball-volume premise follow.

This is an elementary but NONSHARP finite angular overlap result.
Deriving the useful Kakeya-scale delta/angle and weighted clustering
exponents remains a separate analytic obligation.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u}
variable [Fintype Index]

namespace Family

variable (S : Family d Index)

/-- A true indexed pair gap yields source-derived ball containment;
the full intersection and every independent shading remain original. -/
theorem physical_pair_subset_projective_ball
    (i j : Index) {sigma : ℝ}
    (hsigma : 0 < sigma)
    (hgap : sigma ≤ projectiveDirectionGap
      (S.tube i).direction (S.tube j).direction)
    (x₀ : Space d)
    (hx₀i : x₀ ∈ (S.tube i).region)
    (hx₀j : x₀ ∈ (S.tube j).region) :
    S.shading i ∩ S.shading j ⊆
      Metric.closedBall x₀
        ((S.tube i).projectiveIntersectionRadius (S.tube j) sigma) :=
  (S.pair_shading_subset_parent_tube_intersection i j).trans
    ((S.tube i).intersection_subset_projective_ball
      (S.tube j) hsigma hgap x₀ hx₀i hx₀j)

/-- Complete physical ENNReal pair bound with no guessed gamma,
no source-index deduplication and no finite-volume conversion. -/
theorem pair_volume_le_projective_ball
    (i j : Index) {sigma : ℝ}
    (hsigma : 0 < sigma)
    (hgap : sigma ≤ projectiveDirectionGap
      (S.tube i).direction (S.tube j).direction)
    (x₀ : Space d)
    (hx₀i : x₀ ∈ (S.tube i).region)
    (hx₀j : x₀ ∈ (S.tube j).region) :
    volume (S.shading i ∩ S.shading j) ≤
      volume (Metric.closedBall x₀
        ((S.tube i).projectiveIntersectionRadius (S.tube j) sigma)) :=
  measure_mono
    (S.physical_pair_subset_projective_ball
      i j hsigma hgap x₀ hx₀i hx₀j)

/-- Corresponding REAL physical-pair estimate, with the sole
measure-conversion premise explicit. This is a theorem usable by
the earlier source-weighted physical second-moment budget. -/
theorem real_pair_volume_le_projective_ball
    (i j : Index) {sigma : ℝ}
    (hsigma : 0 < sigma)
    (hgap : sigma ≤ projectiveDirectionGap
      (S.tube i).direction (S.tube j).direction)
    (x₀ : Space d)
    (hx₀i : x₀ ∈ (S.tube i).region)
    (hx₀j : x₀ ∈ (S.tube j).region)
    (hballFinite :
      volume (Metric.closedBall x₀
        ((S.tube i).projectiveIntersectionRadius (S.tube j) sigma)) ≠ ∞) :
    (volume : Measure (Space d)).real
      (S.shading i ∩ S.shading j) ≤
    (volume : Measure (Space d)).real
      (Metric.closedBall x₀
        ((S.tube i).projectiveIntersectionRadius (S.tube j) sigma)) :=
  measureReal_mono
    (S.physical_pair_subset_projective_ball
      i j hsigma hgap x₀ hx₀i hx₀j)
    hballFinite

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
