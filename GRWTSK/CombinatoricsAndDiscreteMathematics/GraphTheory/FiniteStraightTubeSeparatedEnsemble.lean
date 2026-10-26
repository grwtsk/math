/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and existing GRWTSK imports retain original author/license terms. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeAxisPairVolume

set_option autoImplicit false
noncomputable section

/-!
# Exact volume and diagonal-only second moment for separated tube families

The previous source proves physically empty tube intersections from
a dimension-independent Euclidean center gap exceeding the two
half-lengths plus the two positive radii.

For a finite indexed family satisfying that criterion for every
DISTINCT pair of source indices, all original straight shadings are
pairwise disjoint. Consequently the *actual Euclidean real volume*
of their union is exactly the sum of their real source volumes,
and the physical weighted second moment reduces to its complete
diagonal (i=j) terms.

No duplicates or off-diagonal terms are silently discarded. The
hypothesis explicitly excludes coincident source tubes and does
not hold in the heavily overlapping Kakeya setting; this is one
genuine geometric, bounded finite test of the general moment bridge.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u}
variable [Fintype Index] [DecidableEq Index]

namespace Family

variable (S : Family d Index)

/-- Every pair of distinct indexed tubes is separated by the
true physical distance between their centers, with the entire
length/radius budget retained. -/
def WidelySeparatedCenters : Prop :=
  ∀ i j : Index, i ≠ j →
    (S.tube i).halfLength + (S.tube j).halfLength +
        (S.tube i).radius + (S.tube j).radius <
      ‖(S.tube i).center - (S.tube j).center‖

theorem shadings_pairwise_disjoint_of_widely_separated
    (hsep : S.WidelySeparatedCenters) :
    Pairwise (Disjoint on S.shading) := by
  intro i j hij
  have htube :
      Disjoint (S.tube i).region (S.tube j).region :=
    (S.tube i).disjoint_of_center_distance_large
      (S.tube j) (hsep i j hij)
  apply Set.disjoint_left.mpr
  intro x hi hj
  exact Set.disjoint_left.mp htube
    (S.shading_subtube i hi) (S.shading_subtube j hj)

/-- No approximate volumetric bound: this is the true equality
of the actual union's real Lebesgue volume with its source-indexed
diagonal volumes, under genuine physical disjointness. -/
theorem volume_union_eq_sum_of_widely_separated
    (hsep : S.WidelySeparatedCenters)
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞) :
    (volume : Measure (Space d)).real S.shadingUnion =
      ∑ i : Index, (volume : Measure (Space d)).real (S.shading i) := by
  change (volume : Measure (Space d)).real
      (⋃ i : Index, S.shading i) = _
  exact measureReal_iUnion_fintype
    (S.shadings_pairwise_disjoint_of_widely_separated hsep)
    hmeas hfinite

/-- All off-diagonal ordered *physical pair volumes* are zero,
without asserting that their coarse visited-cell counts vanish. -/
theorem physical_pair_real_zero_of_widely_separated
    (hsep : S.WidelySeparatedCenters)
    (i j : Index) (hij : i ≠ j) :
    (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j) = 0 :=
  S.physical_pair_real_zero_of_centers_far i j (hsep i j hij)

/-- Exact physical moment: for genuinely disjoint source tube
shadings Q consists of diagonal terms only. This specializes the
general moment identity, not an independently guessed Q. -/
theorem physicalSecondMoment_eq_diagonal_of_widely_separated
    (hsep : S.WidelySeparatedCenters) :
    S.physicalSecondMoment =
      ∑ i : Index,
        (S.weight i) ^ 2 *
          (volume : Measure (Space d)).real (S.shading i) := by
  unfold physicalSecondMoment
  apply Finset.sum_congr rfl
  intro i _
  calc
    (∑ j : Index,
        S.weight i * S.weight j *
          (volume : Measure (Space d)).real
            (S.shading i ∩ S.shading j)) =
        S.weight i * S.weight i *
          (volume : Measure (Space d)).real
            (S.shading i ∩ S.shading i) := by
      apply Finset.sum_eq_single i
      · intro j _ hij
        have hzero :=
          S.physical_pair_real_zero_of_widely_separated
            hsep i j hij.symm
        simp [hzero]
      · intro hi
        exact False.elim (hi (Finset.mem_univ i))
    _ = (S.weight i) ^ 2 *
        (volume : Measure (Space d)).real (S.shading i) := by
      simp [pow_two]

/-- Strong exact finite noncongestion certificate: the weighted
physical first/second moments are what their actual source-indexed
diagonal geometry says they are. No cross-dimensional Kakeya
measure or signed screw/Hermite consequence is inferred. -/
theorem widely_separated_moment_certificate
    (hsep : S.WidelySeparatedCenters)
    (hmeas : ∀ i, MeasurableSet (S.shading i))
    (hfinite : ∀ i, volume (S.shading i) ≠ ∞) :
    (volume : Measure (Space d)).real S.shadingUnion =
        ∑ i : Index,
          (volume : Measure (Space d)).real (S.shading i) ∧
      S.physicalSecondMoment =
        ∑ i : Index,
          (S.weight i) ^ 2 *
            (volume : Measure (Space d)).real (S.shading i) := by
  exact ⟨S.volume_union_eq_sum_of_widely_separated
    hsep hmeas hfinite,
    S.physicalSecondMoment_eq_diagonal_of_widely_separated hsep⟩

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
