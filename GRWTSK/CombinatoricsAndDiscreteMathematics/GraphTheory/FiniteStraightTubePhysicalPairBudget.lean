/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and existing GRWTSK imports retain upstream license duties. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubePhysicalMoments

set_option autoImplicit false
noncomputable section

/-!
# A genuine Kakeya-style physical pair-bound-to-volume transfer

Unlike coarse-cell Q, the *actual physical* pair moment here is the
sum of real Euclidean measures of every indexed pairwise shading
intersection, including diagonals and repeated identical traces.

Supply a separate upper bound B(i,j) on each true physical pair
intersection. Positivity of weights then gives:
  physicalSecondMoment <= Σ_i Σ_j w_i w_j B(i,j).

Combining this with the already established canonical-atom
Cauchy inequality yields the finite Lebesgue union lower bound

   I² / Σ_i Σ_j w_i w_j B(i,j) <= vol(union shadings),

under genuine measurability/finite-volume, first-incidence I≥0,
and a strictly positive total pair budget.

The theorem is unconditional GIVEN its explicit pairwise bounds,
not a proof that angularly separated Kakeya shadings satisfy those
bounds. A scale-uniform convex-clustering and density estimate must
still be proved or imported with every source hypothesis.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u}
variable [Fintype Index] [DecidableEq Index]

namespace Family

variable (S : Family d Index)

/-- Full weighted sum of original physical pair-volume upper bounds.
Every source index is retained even if two tubes coincide geometrically. -/
def physicalPairBoundSum (bound : Index → Index → ℝ) : ℝ :=
  ∑ i : Index, ∑ j : Index,
    S.weight i * S.weight j * bound i j

/-- Convert individually justified actual pair-volume inequalities
to the needed source-identified second-moment bound. -/
theorem physicalSecondMoment_le_pairBoundSum
    (bound : Index → Index → ℝ)
    (hbound : ∀ i j,
      (volume : Measure (Space d)).real
          (S.shading i ∩ S.shading j) ≤ bound i j) :
    S.physicalSecondMoment ≤ S.physicalPairBoundSum bound := by
  unfold physicalSecondMoment physicalPairBoundSum
  apply Finset.sum_le_sum
  intro i _
  apply Finset.sum_le_sum
  intro j _
  exact mul_le_mul_of_nonneg_left (hbound i j)
    (mul_nonneg (S.weight_nonneg i) (S.weight_nonneg j))

/-- Direct physical version of the atom Cauchy inequality, with
the actual first and second moments independently identified. -/
theorem physicalFirstMoment_sq_le_union_mul_second
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞) :
    S.physicalFirstMoment ^ 2 ≤
      (volume : Measure (Space d)).real S.shadingUnion *
        S.physicalSecondMoment := by
  rw [← S.atomFirstMoment_eq_physicalFirstMoment hmeas hfinite,
    ← S.atomSecondMoment_eq_physicalSecondMoment hmeas hfinite,
    S.real_volume_shadingUnion_eq_atomTotalVolume hmeas hfinite]
  exact S.atom_moment_cauchy

/-- Same original straight geometry, finite physical pair bounds:
a genuine measured union lower estimate. This theorem *also covers*
the case in which the actual second moment is zero, because it
uses Cauchy in multiplied form and requires only the supplied
positive total pair bound, not an artificial division by Qactual=0. -/
theorem physical_volume_lower_of_pair_bounds
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (I : ℝ) (bound : Index → Index → ℝ)
    (hI : 0 ≤ I)
    (hfirst : I ≤ S.physicalFirstMoment)
    (hQpos : 0 < S.physicalPairBoundSum bound)
    (hbound : ∀ i j,
      (volume : Measure (Space d)).real
          (S.shading i ∩ S.shading j) ≤ bound i j) :
    I ^ 2 / S.physicalPairBoundSum bound ≤
      (volume : Measure (Space d)).real S.shadingUnion := by
  have hfirst_nonneg : 0 ≤ S.physicalFirstMoment := by
    have h := S.physical_moments_nonneg hmeas hfinite
    exact h.1
  have hIsq : I ^ 2 ≤ S.physicalFirstMoment ^ 2 := by
    nlinarith
  have hcs := S.physicalFirstMoment_sq_le_union_mul_second
    hmeas hfinite
  have hsecond := S.physicalSecondMoment_le_pairBoundSum
    bound hbound
  have hvolume_nonneg :
      0 ≤ (volume : Measure (Space d)).real S.shadingUnion :=
    measureReal_nonneg
  have hQmul :
      (volume : Measure (Space d)).real S.shadingUnion *
          S.physicalSecondMoment ≤
        (volume : Measure (Space d)).real S.shadingUnion *
          S.physicalPairBoundSum bound :=
    mul_le_mul_of_nonneg_left hsecond hvolume_nonneg
  apply (div_le_iff₀ hQpos).2
  exact hIsq.trans (hcs.trans hQmul)

/-- Explicit link when source first incidence is EXACT rather
than merely bounded below. Requires a strictly positive actual
total pair bound; does not infer Kakeya volume exponent. -/
theorem physical_volume_lower_with_exact_first
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞)
    (bound : Index → Index → ℝ)
    (hQpos : 0 < S.physicalPairBoundSum bound)
    (hbound : ∀ i j,
      (volume : Measure (Space d)).real
          (S.shading i ∩ S.shading j) ≤ bound i j) :
    S.physicalFirstMoment ^ 2 / S.physicalPairBoundSum bound ≤
      (volume : Measure (Space d)).real S.shadingUnion := by
  exact S.physical_volume_lower_of_pair_bounds
    hmeas hfinite S.physicalFirstMoment bound
    (S.physical_moments_nonneg hmeas hfinite).1
    (le_refl _) hQpos hbound

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
