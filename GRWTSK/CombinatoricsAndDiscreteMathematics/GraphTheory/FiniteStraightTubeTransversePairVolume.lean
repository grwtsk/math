/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Original Mathlib and GRWTSK authorship/license requirements preserved. -/
import GRWTSK.Analysis.Geometry.FiniteStraightTubeTransverseEnergy
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubePhysicalPairBudget

set_option autoImplicit false
noncomputable section

/-!
# An actual Euclidean intersection-ball pair-volume estimate

The source *geometrically fixed straight tubes* T_i and T_j carry
independent original shading sets. Given an explicitly certified
positive two-direction transverse-coercivity constant γ and one
actual point x₀ in the tube intersection, a real Euclidean ball of
radius R covers the entire physical pair intersection as soon as

  γ R² >= 4(r_i²+r_j²), R>=0.

Thus the physical shading intersection's real Lebesgue volume is
bounded by the true volume of that ball (with finite ball measure
stated explicitly before converting from ENNReal).

This is a source-correct **nonsharp** angular overlap supplier.
It is NOT an automatically available Kakeya transversality theorem:
deriving a uniform γ from PROJECTIVE separation, estimating the
Euclidean ball volume in dimension d and preserving the sharp
δ/angle exponents remain independent mathematical obligations.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u}
variable [Fintype Index]

namespace Family

variable (S : Family d Index)

/-- Actual original shadings, not bent substitute trajectories,
are contained in the intersection of their parent cylinders. -/
theorem pair_shading_subset_parent_tube_intersection
    (i j : Index) :
    S.shading i ∩ S.shading j ⊆
      (S.tube i).region ∩ (S.tube j).region := by
  intro x hx
  exact ⟨S.shading_subtube i hx.1,
    S.shading_subtube j hx.2⟩

/-- Bounded pair-intersection measure under an actual source
transverse-frame certificate. No coarse-cell marking occurs. -/
theorem real_pair_volume_le_transverse_ball
    (i j : Index)
    (F : TwoDirectionTransversality
      (S.tube i).direction (S.tube j).direction)
    (x₀ : Space d)
    (hx₀i : x₀ ∈ (S.tube i).region)
    (hx₀j : x₀ ∈ (S.tube j).region)
    (R : ℝ) (hR : 0 ≤ R)
    (hbudget :
      4 * ((S.tube i).radius ^ 2 + (S.tube j).radius ^ 2) ≤
        F.gamma * R ^ 2)
    (hballFinite : volume (Metric.closedBall x₀ R) ≠ ∞) :
    (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j) ≤
      (volume : Measure (Space d)).real
        (Metric.closedBall x₀ R) := by
  have hsubset :
      S.shading i ∩ S.shading j ⊆ Metric.closedBall x₀ R :=
    (S.pair_shading_subset_parent_tube_intersection i j).trans
      ((S.tube i).intersection_subset_ball_of_transverse_energy
        (S.tube j) F x₀ hx₀i hx₀j R hR hbudget)
  exact measureReal_mono hsubset hballFinite

/-- Identical geometric theorem at the level of ENNReal volume,
without any finiteness conversion requirement. -/
theorem pair_volume_le_transverse_ball
    (i j : Index)
    (F : TwoDirectionTransversality
      (S.tube i).direction (S.tube j).direction)
    (x₀ : Space d)
    (hx₀i : x₀ ∈ (S.tube i).region)
    (hx₀j : x₀ ∈ (S.tube j).region)
    (R : ℝ) (hR : 0 ≤ R)
    (hbudget :
      4 * ((S.tube i).radius ^ 2 + (S.tube j).radius ^ 2) ≤
        F.gamma * R ^ 2) :
    volume (S.shading i ∩ S.shading j) ≤
      volume (Metric.closedBall x₀ R) :=
  measure_mono
    ((S.pair_shading_subset_parent_tube_intersection i j).trans
      ((S.tube i).intersection_subset_ball_of_transverse_energy
        (S.tube j) F x₀ hx₀i hx₀j R hR hbudget))

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
