/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and GRWTSK originals retain author/license obligations. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubePhysicalPairBudget
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeProjectiveDirections

set_option autoImplicit false
noncomputable section

/-!
# Dimension-indexed projective direction and off-diagonal pair-volume budget

The original line-cylinder witnesses are unoriented: ω and -ω
describe identical axes. Hence an angular pair bound useful for
Kakeya is stated with PROJECTIVE direction separation, never the
weaker oriented distance alone.

The diagonal physical pair-intersection measure is exactly each
source shading volume. The harder off-diagonal bounds are separate
data:

  for distinct i,j with projective gap >= σ,
    vol(shading_i ∩ shading_j) <= B.

Given an actually projectively separated finite family at σ>0,
this produces a physical second moment upper bound with the
diagonal kept exact, and hence a genuine conditional lower bound

  vol(union shadings) >= I² /
    Σ_i Σ_j w_i w_j (if i=j then vol(shading_i) else B).

The uniform B is a supplied analytic estimate, not proved by
projective separation alone. Convex clustering, longitudinal
shading density, δ-scale losses, and sharp exponents remain open.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u}
variable [Fintype Index] [DecidableEq Index]

namespace Family

variable (S : Family d Index)

/-- Preserve the exactly known diagonal pair source volume and
retain one scalar geometric supplier B only for *distinct* pairs. -/
def projectiveOffDiagonalPairBound (B : ℝ)
    (i j : Index) : ℝ :=
  if i = j then
    (volume : Measure (Space d)).real (S.shading i)
  else B

/-- A genuinely physical pair-upper theorem, with every source index
and its exact independent shading retained. No "direction
separation implies estimate" inference is made. -/
theorem physical_pair_le_projective_bound
    (σ B : ℝ)
    (hsep : S.ProjectivelySeparated σ)
    (hoff : ∀ i j : Index, i ≠ j →
      σ ≤ projectiveDirectionGap
        (S.tube i).direction (S.tube j).direction →
      (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j) ≤ B) :
    ∀ i j,
      (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j) ≤
      S.projectiveOffDiagonalPairBound B i j := by
  intro i j
  by_cases hij : i = j
  · subst j
    simp [projectiveOffDiagonalPairBound, Set.inter_self]
  · simp only [projectiveOffDiagonalPairBound, if_neg hij]
    exact hoff i j hij (hsep i j hij)

/-- Nonnegative source weights convert the actual projectively
separated physical off-diagonal overlap supplier into the
complete positive real indexed second-moment budget. -/
theorem physicalSecondMoment_le_projective_pair_budget
    (σ B : ℝ)
    (hsep : S.ProjectivelySeparated σ)
    (hoff : ∀ i j : Index, i ≠ j →
      σ ≤ projectiveDirectionGap
        (S.tube i).direction (S.tube j).direction →
      (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j) ≤ B) :
    S.physicalSecondMoment ≤
      S.physicalPairBoundSum
        (S.projectiveOffDiagonalPairBound B) := by
  exact S.physicalSecondMoment_le_pairBoundSum _
    (S.physical_pair_le_projective_bound σ B hsep hoff)

/-- This is the exact finite physical-volume consumer of a future
angular/convex Kakeya overlap theorem. The source must separately
prove its off-diagonal B bound at the selected projective separation
and furnish a first-moment lower bound I; neither is postulated
by the tube definition or by positive Hodge cladding energy. -/
theorem physical_volume_lower_of_projective_pair_budget
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (σ B I : ℝ)
    (hI : 0 ≤ I)
    (hfirst : I ≤ S.physicalFirstMoment)
    (hsep : S.ProjectivelySeparated σ)
    (hoff : ∀ i j : Index, i ≠ j →
      σ ≤ projectiveDirectionGap
        (S.tube i).direction (S.tube j).direction →
      (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j) ≤ B)
    (hQpos :
      0 < S.physicalPairBoundSum
        (S.projectiveOffDiagonalPairBound B)) :
    I ^ 2 /
        S.physicalPairBoundSum
          (S.projectiveOffDiagonalPairBound B) ≤
      (volume : Measure (Space d)).real S.shadingUnion := by
  exact S.physical_volume_lower_of_pair_bounds
    hmeas hfinite I
    (S.projectiveOffDiagonalPairBound B)
    hI hfirst hQpos
    (S.physical_pair_le_projective_bound σ B hsep hoff)

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
