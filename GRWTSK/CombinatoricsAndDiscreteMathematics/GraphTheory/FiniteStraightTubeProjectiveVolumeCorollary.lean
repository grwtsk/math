/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream Mathlib and existing GRWTSK license/authorship maintained. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeMomentNondegeneracy
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeProjectivePairBudget

set_option autoImplicit false
noncomputable section

/-!
# Physical finite Kakeya-style lower volume with no free Q positivity

Let a finite family of REAL, radius-positive, straight Euclidean tubes
have unit unoriented directions separated at a selected scale σ>0.
Let each source index retain its independent measurable finite-volume
shading and nonnegative weight.

If the true indexed physical first volume is at least I>0, and
an actual geometric analytic theorem supplies a uniform B bound
for every DISTINCT pair's real Euclidean shading intersection,
the physical pair budget consists of:
  exact diagonal shading volumes,
  B for every distinct ordered source pair.

Cauchy and the true shading atom measure identities give
  vol(union) >= I² / weightedPairBudget
and now even positivity of the weightedPairBudget is DERIVED from
I>0 and the pair bounds. The earlier free hQpos field is unnecessary.

Crucially the off-diagonal overlap bound B remains a mathematically
independent supplier requiring actual Kakeya angular/density,
convex clustering and scale hypotheses; projective separation by
itself does NOT prove this analytic estimate.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u}
variable [Fintype Index] [DecidableEq Index]

namespace Family

variable (S : Family d Index)

/-- Complete conditional finite physical volume consequence of a
genuine *positive* first-incidence estimate and a separately proved
projectively separated physical off-diagonal overlap bound. -/
theorem physical_volume_lower_of_positive_projective_pair_data
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (σ B I : ℝ) (hσ : 0 < σ) (hI : 0 < I)
    (hfirst : I ≤ S.physicalFirstMoment)
    (hsep : S.ProjectivelySeparated σ)
    (hoff : ∀ i j : Index, i ≠ j →
      σ ≤ projectiveDirectionGap
        (S.tube i).direction (S.tube j).direction →
      (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j) ≤ B) :
    I ^ 2 /
        S.physicalPairBoundSum
          (S.projectiveOffDiagonalPairBound B) ≤
      (volume : Measure (Space d)).real S.shadingUnion := by
  have hpair :=
    S.physical_pair_le_projective_bound σ B hsep hoff
  exact S.physical_volume_lower_of_positive_incidence_and_pair_bounds
    hmeas hfinite I hI hfirst
    (S.projectiveOffDiagonalPairBound B) hpair

/-- Nonzero source incidence itself forces strict positivity of the
same projectively separated diagonal-plus-off-diagonal budget.
This prevents accidental use of a zero-denominator convention. -/
theorem projective_pair_budget_pos
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (σ B I : ℝ) (hσ : 0 < σ) (hI : 0 < I)
    (hfirst : I ≤ S.physicalFirstMoment)
    (hsep : S.ProjectivelySeparated σ)
    (hoff : ∀ i j : Index, i ≠ j →
      σ ≤ projectiveDirectionGap
        (S.tube i).direction (S.tube j).direction →
      (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j) ≤ B) :
    0 < S.physicalPairBoundSum
      (S.projectiveOffDiagonalPairBound B) := by
  exact S.physicalPairBoundSum_pos_of_positive_incidence
    hmeas hfinite I hI hfirst
    (S.projectiveOffDiagonalPairBound B)
    (S.physical_pair_le_projective_bound σ B hsep hoff)

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
