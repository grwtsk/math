/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and GRWTSK source retain upstream author/license obligations. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubePhysicalPairBudget

set_option autoImplicit false
noncomputable section

/-!
# Physical overlap monotonicity and the shading-density obstruction

If actual shadings shrink inside the same source-indexed straight
cylinders while keeping every independent source weight unchanged,
both physical first-incidence volume and true weighted physical
pair-intersection second moment can decrease.

Thus even a legitimate PDE/medium-induced shading-change model
cannot improve a volume lower bound by reducing Q alone: the first
moment I must be controlled quantitatively and simultaneously.

The adversarial empty-shading fixture keeps the original positive
radius, length, direction and indexed weights but sets all measurable
shadings to empty. Then I=Q=0; no positive union-volume estimate
can follow from unchanged tube geometry or arbitrarily costly
exterior medium alone.

This is physical Lebesgue measure, not pixel counting and not
the claimed Kakeya maximal function theorem.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u}
variable [Fintype Index]

namespace Family

/-- Source-indexed shading narrowing with the geometry and the
original independent weights fixed explicitly. -/
def SameSourceShadingSubfamily (S T : Family d Index) : Prop :=
  (∀ i, S.tube i = T.tube i) ∧
  (∀ i, S.weight i = T.weight i) ∧
  (∀ i, S.shading i ⊆ T.shading i)

theorem physicalFirstMoment_mono
    (S T : Family d Index)
    (hsame : SameSourceShadingSubfamily S T)
    (hfinite : ∀ i, volume (T.shading i) ≠ ∞) :
    S.physicalFirstMoment ≤ T.physicalFirstMoment := by
  obtain ⟨_, hweights, hsubset⟩ := hsame
  unfold physicalFirstMoment
  apply Finset.sum_le_sum
  intro i _
  have hmono :
      (volume : Measure (Space d)).real (S.shading i) ≤
        (volume : Measure (Space d)).real (T.shading i) :=
    measureReal_mono (hsubset i) (hfinite i)
  rw [hweights i]
  exact mul_le_mul_of_nonneg_left hmono (T.weight_nonneg i)

/-- Complete physical ordered overlap moment is also monotone
under simultaneous source-preserving shaving of every shading,
provided the target measures are finite. -/
theorem physicalSecondMoment_mono
    (S T : Family d Index)
    (hsame : SameSourceShadingSubfamily S T)
    (hfinite : ∀ i, volume (T.shading i) ≠ ∞) :
    S.physicalSecondMoment ≤ T.physicalSecondMoment := by
  obtain ⟨_, hweights, hsubset⟩ := hsame
  unfold physicalSecondMoment
  apply Finset.sum_le_sum
  intro i _
  apply Finset.sum_le_sum
  intro j _
  have hset :
      S.shading i ∩ S.shading j ⊆
        T.shading i ∩ T.shading j := by
    intro x hx
    exact ⟨hsubset i hx.1, hsubset j hx.2⟩
  have hmeasureFinite :
      volume (T.shading i ∩ T.shading j) ≠ ∞ :=
    measure_ne_top_of_subset Set.inter_subset_left (hfinite i)
  have hmono :
      (volume : Measure (Space d)).real
          (S.shading i ∩ S.shading j) ≤
        (volume : Measure (Space d)).real
          (T.shading i ∩ T.shading j) :=
    measureReal_mono hset hmeasureFinite
  rw [hweights i, hweights j]
  exact mul_le_mul_of_nonneg_left hmono
    (mul_nonneg (T.weight_nonneg i) (T.weight_nonneg j))

/-- The same actual Euclidean cylinder and weight family, but an
empty shading attached to each original source index. -/
def emptyShadingFamily (S : Family d Index) : Family d Index where
  tube := S.tube
  shading := fun _ => ∅
  shading_subtube := by
    intro i x hx
    exact False.elim hx
  weight := S.weight
  weight_nonneg := S.weight_nonneg

theorem emptyShadingFamily_same_source (S : Family d Index) :
    SameSourceShadingSubfamily (S.emptyShadingFamily) S := by
  refine ⟨?_, ?_, ?_⟩
  · intro i
    rfl
  · intro i
    rfl
  · intro i
    exact Set.empty_subset _

/-- Even strictly positive tube lengths/radii cannot prevent both
shading moments from vanishing when the physical shaded sets
are empty. The preserved source tube geometry is not the source
of any false positive Kakeya incidence bound. -/
theorem emptyShadingFamily_moments_zero (S : Family d Index) :
    S.emptyShadingFamily.physicalFirstMoment = 0 ∧
      S.emptyShadingFamily.physicalSecondMoment = 0 := by
  constructor
  · simp [physicalFirstMoment, emptyShadingFamily]
  · simp [physicalSecondMoment, emptyShadingFamily]

theorem emptyShadingFamily_union_empty (S : Family d Index) :
    S.emptyShadingFamily.shadingUnion = ∅ := by
  ext x
  simp [shadingUnion, emptyShadingFamily]

/-- Explicit no-go fixture: changing to empty shading decreases Q,
but simultaneously removes every source-volume incidence I. No
positive Kakeya volume can be deduced from Q alone. -/
theorem zero_overlap_no_shading_mass (S : Family d Index) :
    S.emptyShadingFamily.physicalFirstMoment = 0 ∧
      S.emptyShadingFamily.physicalSecondMoment = 0 ∧
      volume S.emptyShadingFamily.shadingUnion = 0 := by
  refine ⟨(S.emptyShadingFamily_moments_zero).1,
    (S.emptyShadingFamily_moments_zero).2, ?_⟩
  rw [S.emptyShadingFamily_union_empty]
  exact measure_empty

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
