/- Copyright (c) 2026 grwtsk contributors. MIT.
Local source attribution: grwtsk contributors.
Mathlib/GRWTSK original authors and licenses retained. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteProjectiveUniformPairVolume
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeProjectiveVolumeCorollary

set_option autoImplicit false
noncomputable section

/-!
# Explicit finite nonsharp projective Kakeya-style volume lower bound

Given actual straight cylinders in dimension d>0 with radii ≤delta,
positive projective direction gap ≥sigma, measurable finite-volume
source shadings, and strictly positive weighted physical first mass
I, the previous Euclidean frame and intersection-ball suppliers
derive, rather than assume, the uniform true pair-volume bound

  B(delta,sigma) = real volume of ball(0, 8 delta/sigma).

The indexed physical diagonal intersection volumes remain exact.
Cauchy yields union volume ≥ I² / source-weighted diagonal+B budget,
whose strict positivity also follows from I>0.

The bound is intentionally nonsharp, with poor sigma^(-d) scaling;
it is NOT a 3D Kakeya maximal, 4D Hausdorff or RH theorem.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} [NeZero d] {Index : Type u}
variable [Fintype Index] [DecidableEq Index]

namespace Family
variable (S : Family d Index)

/-- Derive EVERY physical off-diagonal Lebesgue pair-volume bound
from original projected unit directions, radii and geometry.
No independent transverse-coercivity or B hypothesis remains. -/
theorem uniform_physical_pair_bound_of_projective_separation
    (delta sigma : ℝ) (hdelta : 0 < delta) (hsigma : 0 < sigma)
    (hradius : ∀ i : Index, (S.tube i).radius ≤ delta)
    (hsep : S.ProjectivelySeparated sigma) :
    ∀ i j : Index, i ≠ j →
      sigma ≤ projectiveDirectionGap
        (S.tube i).direction (S.tube j).direction →
      (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j) ≤
          S.uniformProjectivePairVolume delta sigma := by
  intro i j hij _
  exact S.real_pair_volume_le_uniform_projective
    i j hij delta sigma hdelta hsigma hradius hsep

/-- The denominator is strictly positive as a CONSEQUENCE of
positive physical first shading mass and its actual upper pair
bounds, not a separately supplied premise. -/
theorem uniform_projective_pair_budget_pos
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (delta sigma I : ℝ)
    (hdelta : 0 < delta) (hsigma : 0 < sigma) (hI : 0 < I)
    (hradius : ∀ i : Index, (S.tube i).radius ≤ delta)
    (hfirst : I ≤ S.physicalFirstMoment)
    (hsep : S.ProjectivelySeparated sigma) :
    0 < S.physicalPairBoundSum
      (S.projectiveOffDiagonalPairBound
        (S.uniformProjectivePairVolume delta sigma)) := by
  exact S.projective_pair_budget_pos
    hmeas hfinite sigma (S.uniformProjectivePairVolume delta sigma)
    I hsigma hI hfirst hsep
    (S.uniform_physical_pair_bound_of_projective_separation
      delta sigma hdelta hsigma hradius hsep)

/-- Complete elementary finite physical Euclidean volume lower bound
for projectively separated original straight tubes. The remaining
hard Kakeya work is improving this very weak angular/scale bound,
not proving positivity or performing a virtual-cladding deformation. -/
theorem physical_volume_lower_of_uniform_projective_radius
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (delta sigma I : ℝ)
    (hdelta : 0 < delta) (hsigma : 0 < sigma) (hI : 0 < I)
    (hradius : ∀ i : Index, (S.tube i).radius ≤ delta)
    (hfirst : I ≤ S.physicalFirstMoment)
    (hsep : S.ProjectivelySeparated sigma) :
    I ^ 2 /
      S.physicalPairBoundSum
        (S.projectiveOffDiagonalPairBound
          (S.uniformProjectivePairVolume delta sigma)) ≤
      (volume : Measure (Space d)).real S.shadingUnion := by
  exact S.physical_volume_lower_of_positive_projective_pair_data
    hmeas hfinite sigma (S.uniformProjectivePairVolume delta sigma)
    I hsigma hI hfirst hsep
    (S.uniform_physical_pair_bound_of_projective_separation
      delta sigma hdelta hsigma hradius hsep)

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
