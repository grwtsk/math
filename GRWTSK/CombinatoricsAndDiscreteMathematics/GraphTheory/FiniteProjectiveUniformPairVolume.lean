/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Mathlib and existing GRWTSK work retain original author/license duties. -/
import GRWTSK.Analysis.Geometry.FiniteProjectiveTubeBallVolume
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeProjectiveDirections
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeProjectivePhysicalPair

set_option autoImplicit false
noncomputable section

/-!
# Uniform physical overlap of projectively separated straight cylinders

For positive ambient dimension d, positive projective direction gap
sigma and original cylinder radii at most delta, the previously
derived source frame bound gamma=sigma²/4 gives a common enclosing
radius at most 8 delta/sigma for every nonempty tube pair.
Mathlib's Euclidean closed-ball volume formula is independent of
the chosen common point; thus the ORIGINAL indexed shading pair
has a common real Lebesgue volume upper bound

   B = vol_real(closedBall 0 (8 delta/sigma)).

This is an elementary nonsharp estimate scaling as
(delta/sigma)^d, far weaker than sharp multiscale Kakeya.
It assumes NO arbitrary positive frame, pair-volume or cell mark.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} [NeZero d]
variable {Index : Type u} [Fintype Index]

namespace Family

variable (S : Family d Index)

def uniformProjectiveRadius (delta sigma : ℝ) : ℝ :=
  8 * delta / sigma

def uniformProjectivePairVolume (delta sigma : ℝ) : ℝ :=
  (volume : Measure (Space d)).real
    (Metric.closedBall (0 : Space d)
      (S.uniformProjectiveRadius delta sigma))

theorem uniformProjectiveRadius_nonneg
    (delta sigma : ℝ) (hdelta : 0 ≤ delta) (hsigma : 0 < sigma) :
    0 ≤ S.uniformProjectiveRadius delta sigma := by
  unfold uniformProjectiveRadius
  exact div_nonneg (by positivity) hsigma.le

/-- True pair radius 4(ri+rj)/sigma is bounded above
by the uniform radius 8delta/sigma when ri,rj≤delta. -/
theorem projectiveIntersectionRadius_le_uniform
    (i j : Index) (delta sigma : ℝ) (hsigma : 0 < sigma)
    (hradius : ∀ k : Index, (S.tube k).radius ≤ delta) :
    (S.tube i).projectiveIntersectionRadius
      (S.tube j) sigma ≤ S.uniformProjectiveRadius delta sigma := by
  have hn :
      4 * ((S.tube i).radius + (S.tube j).radius) ≤
        8 * delta := by
    have hi := hradius i
    have hj := hradius j
    linarith
  unfold Tube.projectiveIntersectionRadius uniformProjectiveRadius
  exact div_le_div_of_nonneg_right hn hsigma.le

theorem uniformProjectiveBall_volume_center
    (delta sigma : ℝ) (center : Space d) :
    volume (Metric.closedBall center
        (S.uniformProjectiveRadius delta sigma)) =
      volume (Metric.closedBall (0 : Space d)
        (S.uniformProjectiveRadius delta sigma)) := by
  rw [EuclideanSpace.volume_closedBall (Fin d) center,
    EuclideanSpace.volume_closedBall (Fin d) (0 : Space d)]

/-- Empty actual physical pairs have zero intersection volume.
Nonempty pairs lie in a translated uniform-radius real ball.
Hence ONE scalar B controls all projectively separated distinct
source-index pairs without an independent geometric pair bound. -/
theorem real_pair_volume_le_uniform_projective
    (i j : Index) (hij : i ≠ j)
    (delta sigma : ℝ) (hdelta : 0 < delta) (hsigma : 0 < sigma)
    (hradius : ∀ k : Index, (S.tube k).radius ≤ delta)
    (hsep : S.ProjectivelySeparated sigma) :
    (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j) ≤
      S.uniformProjectivePairVolume delta sigma := by
  classical
  by_cases hnonempty :
      ((S.tube i).region ∩ (S.tube j).region).Nonempty
  · obtain ⟨x₀, ⟨hx₀i, hx₀j⟩⟩ := hnonempty
    have hsmall :=
      S.physical_pair_subset_projective_ball i j
        hsigma (hsep i j hij) x₀ hx₀i hx₀j
    have hR :=
      S.projectiveIntersectionRadius_le_uniform
        i j delta sigma hsigma hradius
    have hlarge :
        S.shading i ∩ S.shading j ⊆
          Metric.closedBall x₀
            (S.uniformProjectiveRadius delta sigma) := by
      intro x hx
      have hb := hsmall hx
      apply Metric.mem_closedBall.mpr
      exact (Metric.mem_closedBall.mp hb).trans hR
    have hfinite :
        volume (Metric.closedBall x₀
          (S.uniformProjectiveRadius delta sigma)) ≠ ∞ :=
      (measure_closedBall_lt_top).ne
    have hbound :
        (volume : Measure (Space d)).real
            (S.shading i ∩ S.shading j) ≤
        (volume : Measure (Space d)).real
            (Metric.closedBall x₀
              (S.uniformProjectiveRadius delta sigma)) :=
      measureReal_mono hlarge hfinite
    rw [S.uniformProjectiveBall_volume_center
      delta sigma x₀] at hbound
    exact hbound
  · have hdisj :
        Disjoint (S.shading i) (S.shading j) := by
      apply Set.disjoint_left.mpr
      intro x hi hj
      apply hnonempty
      exact ⟨x, S.shading_subtube i hi,
        S.shading_subtube j hj⟩
    have heq : S.shading i ∩ S.shading j = ∅ :=
      Set.disjoint_iff_inter_eq_empty.mp hdisj
    rw [heq]
    simp [uniformProjectivePairVolume]

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
