/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream Mathlib and GRWTSK work retain authorship/license duties. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubePhysicalPairBudget

set_option autoImplicit false
noncomputable section

/-!
# Strict positivity of physical overlap from positive shaded mass

The earlier physical union-volume lower bound included an explicit
positive denominator assumption. It is not independent once the
physically measured indexed first shading mass is strictly positive
and the canonical atom realization is faithful.

Finite weighted Cauchy directly implies:
  atomFirstMoment > 0 => atomSecondMoment > 0.
With actual measurable finite source shadings, the same implication
holds for the ORIGINAL weighted real shading volume and physical
pairwise intersection moments.

Therefore any proven upper bound on all actual physical pairs must
have a positive total budget whenever the physical source mass is
nonzero. The volume lower estimate may be used without an artificial
separately postulated denominator-positivity hypothesis.

This is an elementary but structurally important theorem: the
Kakeya-quality OFF-DIAGONAL pair bound is still not derived, and
positive first shading volume may not be assumed without density.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u}
variable [Fintype Index] [DecidableEq Index]

namespace Family

variable (S : Family d Index)

/-- Genuine finite quadratic-form nondegeneracy, derived rather
than stored as an independent positivity field. -/
theorem atomSecondMoment_pos_of_first_pos
    (hfirst : 0 < S.atomFirstMoment) :
    0 < S.atomSecondMoment := by
  have hQnonneg := S.atomSecondMoment_nonneg
  by_contra hnot
  have hQzero : S.atomSecondMoment = 0 := by
    exact le_antisymm (le_of_not_gt hnot) hQnonneg
  have hCS := S.atom_moment_cauchy
  rw [hQzero] at hCS
  have hfirst_sq : 0 < S.atomFirstMoment ^ 2 := by
    positivity
  nlinarith

/-- The true weighted physical pair-overlap moment is necessarily
positive when the original indexed real shading-volume sum is. -/
theorem physicalSecondMoment_pos_of_first_pos
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (hfirst : 0 < S.physicalFirstMoment) :
    0 < S.physicalSecondMoment := by
  have hAtomFirst : 0 < S.atomFirstMoment := by
    rw [S.atomFirstMoment_eq_physicalFirstMoment hmeas hfinite]
    exact hfirst
  have hAtomSecond := S.atomSecondMoment_pos_of_first_pos hAtomFirst
  rw [← S.atomSecondMoment_eq_physicalSecondMoment hmeas hfinite]
  exact hAtomSecond

/-- The physical Cauchy volume bound with positivity of Q derived
from the strictly positive actual first-incidence mass. -/
theorem physical_volume_lower_of_positive_first
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (hfirst : 0 < S.physicalFirstMoment) :
    S.physicalFirstMoment ^ 2 / S.physicalSecondMoment ≤
      (volume : Measure (Space d)).real S.shadingUnion := by
  have hQ := S.physicalSecondMoment_pos_of_first_pos
    hmeas hfinite hfirst
  apply (div_le_iff₀ hQ).2
  exact S.physicalFirstMoment_sq_le_union_mul_second
    hmeas hfinite

/-- A positive actual lower incidence mass I>0 forces every
legitimate total physical pair upper budget to be positive.
This removes the independent denominator-positivity premise
from the realistic overlap-to-volume consumer. -/
theorem physicalPairBoundSum_pos_of_positive_incidence
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (I : ℝ) (hIpos : 0 < I)
    (hfirst : I ≤ S.physicalFirstMoment)
    (bound : Index → Index → ℝ)
    (hbound : ∀ i j,
      (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j) ≤ bound i j) :
    0 < S.physicalPairBoundSum bound := by
  have hPpos : 0 < S.physicalFirstMoment :=
    lt_of_lt_of_le hIpos hfirst
  have hQ := S.physicalSecondMoment_pos_of_first_pos
    hmeas hfinite hPpos
  exact hQ.trans_le (S.physicalSecondMoment_le_pairBoundSum bound hbound)

/-- A more convenient positive-incidence consumer: Q>0 follows
mathematically, and no invalid zero-denominator convention enters. -/
theorem physical_volume_lower_of_positive_incidence_and_pair_bounds
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (I : ℝ) (hIpos : 0 < I)
    (hfirst : I ≤ S.physicalFirstMoment)
    (bound : Index → Index → ℝ)
    (hbound : ∀ i j,
      (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j) ≤ bound i j) :
    I ^ 2 / S.physicalPairBoundSum bound ≤
      (volume : Measure (Space d)).real S.shadingUnion := by
  have hQ :=
    S.physicalPairBoundSum_pos_of_positive_incidence
      hmeas hfinite I hIpos hfirst bound hbound
  exact S.physical_volume_lower_of_pair_bounds
    hmeas hfinite I bound hIpos.le hfirst hQ hbound

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
