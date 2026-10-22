/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #890. Parent: draft PR #887 at bbe0cd414a8b816dbac5c32fbbaa4fe58cd29dc3.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredAffineFourMobius

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Elementary collision predicate for the four symmetric affine arguments. -/
def centeredAffineFourMobiusDegenerate
    (ell h g : ℕ) : Prop :=
  h + g = ell ∨ h = ell + g ∨ g = ell + h

instance centeredAffineFourMobiusDegenerateDecidable
    (ell h g : ℕ) : Decidable (centeredAffineFourMobiusDegenerate ell h g) :=
  inferInstance

/-- Equivalent absolute-difference description of cross-pair collisions. -/
theorem centeredAffineFourMobiusDegenerate_iff_sum_or_absDiff
    {ell h g : ℕ} :
    centeredAffineFourMobiusDegenerate ell h g ↔
      h + g = ell ∨ h - g = ell ∨ g - h = ell := by
  unfold centeredAffineFourMobiusDegenerate
  omega

/-- With positive half-shifts, the two members of the first symmetric pair
are distinct. -/
theorem firstSymmetricPair_ne
    {c r h : ℕ} (hh : 0 < h) :
    c - h + r ≠ c + h + r := by
  omega

/-- With positive half-shifts, the two members of the second symmetric pair
are distinct. -/
theorem secondSymmetricPair_ne
    {c ell r g : ℕ} (hg : 0 < g) :
    c + ell - g + r ≠ c + ell + g + r := by
  omega

/-- For endpoint-admissible symmetric pairs, any cross-pair collision forces
one of the three elementary shift relations. -/
theorem crossPairCollision_implies_degenerate
    {c ell r h g : ℕ}
    (hhc : h ≤ c)
    (hgc : g ≤ c + ell)
    (hcoll :
      c - h + r = c + ell - g + r ∨
      c - h + r = c + ell + g + r ∨
      c + h + r = c + ell - g + r ∨
      c + h + r = c + ell + g + r) :
    centeredAffineFourMobiusDegenerate ell h g := by
  unfold centeredAffineFourMobiusDegenerate
  rcases hcoll with h1 | h2 | h3 | h4 <;> omega

/-- Conversely each elementary degeneracy relation produces a cross-pair
collision when the symmetric arguments are endpoint-admissible. -/
theorem degenerate_implies_crossPairCollision
    {c ell r h g : ℕ}
    (hhc : h ≤ c)
    (hgc : g ≤ c + ell)
    (hdeg : centeredAffineFourMobiusDegenerate ell h g) :
    c - h + r = c + ell - g + r ∨
    c - h + r = c + ell + g + r ∨
    c + h + r = c + ell - g + r ∨
    c + h + r = c + ell + g + r := by
  unfold centeredAffineFourMobiusDegenerate at hdeg
  rcases hdeg with hsum | hright | hleft
  · right; right; left; omega
  · left; omega
  · right; right; right; omega

/-- Degenerate admissible shift pairs at fixed center and lag. -/
def centeredAffineFourMobiusDegenerateShiftPairs
    (b r c ell : ℕ)
    (H : Finset ℕ) : Finset (ℕ × ℕ) :=
  (zeroWindingAdmissibleShiftSet b r c H ×ˢ
    zeroWindingAdmissibleShiftSet b r (c + ell) H).filter
      (fun p => centeredAffineFourMobiusDegenerate ell p.1 p.2)

/-- Genuinely four-distinct admissible shift pairs. -/
def centeredAffineFourMobiusDistinctShiftPairs
    (b r c ell : ℕ)
    (H : Finset ℕ) : Finset (ℕ × ℕ) :=
  (zeroWindingAdmissibleShiftSet b r c H ×ˢ
    zeroWindingAdmissibleShiftSet b r (c + ell) H).filter
      (fun p => ¬ centeredAffineFourMobiusDegenerate ell p.1 p.2)

/-- Degenerate part of the four-Möbius center/lag correlation. -/
def parityCenteredAffineFourMobiusDegenerateAtCenterLag
    (b r c ell : ℕ)
    (H : Finset ℕ) : ℝ :=
  ∑ p ∈ centeredAffineFourMobiusDegenerateShiftPairs b r c ell H,
    centeredAffineFourMobiusCoefficient r c ell p.1 p.2

/-- Four-distinct part of the four-Möbius center/lag correlation. -/
def parityCenteredAffineFourMobiusDistinctAtCenterLag
    (b r c ell : ℕ)
    (H : Finset ℕ) : ℝ :=
  ∑ p ∈ centeredAffineFourMobiusDistinctShiftPairs b r c ell H,
    centeredAffineFourMobiusCoefficient r c ell p.1 p.2

/-- Exact collision/noncollision partition. -/
theorem parityCenteredAffineFourMobiusAtCenterLag_eq_degenerate_add_distinct
    (b r c ell : ℕ)
    (H : Finset ℕ) :
    parityCenteredAffineFourMobiusAtCenterLag b r c ell H =
      parityCenteredAffineFourMobiusDegenerateAtCenterLag b r c ell H +
        parityCenteredAffineFourMobiusDistinctAtCenterLag b r c ell H := by
  classical
  unfold parityCenteredAffineFourMobiusAtCenterLag
    parityCenteredAffineFourMobiusDegenerateAtCenterLag
    parityCenteredAffineFourMobiusDistinctAtCenterLag
    centeredAffineFourMobiusDegenerateShiftPairs
    centeredAffineFourMobiusDistinctShiftPairs
  rw [← Finset.sum_product]
  rw [← Finset.sum_filter_add_sum_filter_neg_eq]

/-- Center-summed degenerate stratum. -/
def parityCenteredAffineFourMobiusDegenerateLagCorrelation
    (b r ell : ℕ) (H : Finset ℕ) : ℝ :=
  ∑ c ∈ Finset.range (b + 1),
    if c + ell < b + 1 then
      parityCenteredAffineFourMobiusDegenerateAtCenterLag b r c ell H
    else 0

/-- Center-summed genuinely four-distinct stratum. -/
def parityCenteredAffineFourMobiusDistinctLagCorrelation
    (b r ell : ℕ) (H : Finset ℕ) : ℝ :=
  ∑ c ∈ Finset.range (b + 1),
    if c + ell < b + 1 then
      parityCenteredAffineFourMobiusDistinctAtCenterLag b r c ell H
    else 0

theorem parityCenteredAffineFourMobiusLagCorrelation_eq_degenerate_add_distinct
    (b r ell : ℕ) (H : Finset ℕ) :
    parityCenteredAffineFourMobiusLagCorrelation b r ell H =
      parityCenteredAffineFourMobiusDegenerateLagCorrelation b r ell H +
        parityCenteredAffineFourMobiusDistinctLagCorrelation b r ell H := by
  unfold parityCenteredAffineFourMobiusLagCorrelation
    parityCenteredAffineFourMobiusDegenerateLagCorrelation
    parityCenteredAffineFourMobiusDistinctLagCorrelation
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro c hc
  by_cases hinside : c + ell < b + 1
  · simp only [hinside, if_true]
    exact parityCenteredAffineFourMobiusAtCenterLag_eq_degenerate_add_distinct
      b r c ell H
  · simp [hinside]

structure RegularCenteredAffineFourMobiusCollisionSourceData where
  theoremStatement : Prop
  withinPairCollisionsExcluded : Prop
  crossPairCollisionClassificationMatched : Prop
  sumCollisionMatched : Prop
  differenceCollisionMatched : Prop
  degenerateShiftPairsDefined : Prop
  fourDistinctShiftPairsDefined : Prop
  exactPartitionMatched : Prop
  centerLagAggregationMatched : Prop
  separateAnalyticInterfacesRequired : Prop

def RegularCenteredAffineFourMobiusCollisionSource
    (d : RegularCenteredAffineFourMobiusCollisionSourceData) : Prop :=
  d.theoremStatement ∧
  d.withinPairCollisionsExcluded ∧
  d.crossPairCollisionClassificationMatched ∧
  d.sumCollisionMatched ∧
  d.differenceCollisionMatched ∧
  d.degenerateShiftPairsDefined ∧
  d.fourDistinctShiftPairsDefined ∧
  d.exactPartitionMatched ∧
  d.centerLagAggregationMatched ∧
  d.separateAnalyticInterfacesRequired

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.crossPairCollision_implies_degenerate
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityCenteredAffineFourMobiusAtCenterLag_eq_degenerate_add_distinct
