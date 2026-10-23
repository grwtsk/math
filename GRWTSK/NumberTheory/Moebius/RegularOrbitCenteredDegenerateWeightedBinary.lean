/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #892. Parent: draft PR #891 at a3b342558abfa80e2743a1c54e8d4b0dcbacd7e8.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredAffineFourMobiusCollisions

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The three elementary cross-pair collision types. -/
inductive CenteredAffineCollisionType
  | sum
  | rightDifference
  | leftDifference
  deriving DecidableEq

def centeredAffineCollisionTypeHolds
    (t : CenteredAffineCollisionType)
    (ell h g : ℕ) : Prop :=
  match t with
  | .sum => h + g = ell
  | .rightDifference => h = ell + g
  | .leftDifference => g = ell + h

instance centeredAffineCollisionTypeHoldsDecidable
    (t : CenteredAffineCollisionType) (ell h g : ℕ) :
    Decidable (centeredAffineCollisionTypeHolds t ell h g) :=
  inferInstance

/-- Collision-type filtered admissible shift pairs.  The filters are ordered
to make the three strata disjoint when multiple algebraic relations could
formally hold at zero; positive admissible shifts make the intended geometry
unique. -/
def centeredAffineCollisionShiftPairs
    (t : CenteredAffineCollisionType)
    (b r c ell : ℕ) (H : Finset ℕ) : Finset (ℕ × ℕ) :=
  (zeroWindingAdmissibleShiftSet b r c H ×ˢ
    zeroWindingAdmissibleShiftSet b r (c + ell) H).filter
      (fun p => centeredAffineCollisionTypeHolds t ell p.1 p.2)

/-- The sum-collision h+g=ell repeats the middle affine argument
c+h+r = c+ell-g+r. -/
theorem sumCollision_repeatedArgument
    {c ell r h g : ℕ}
    (hrel : h + g = ell) :
    c + h + r = c + ell - g + r := by
  omega

/-- The right-difference collision h=ell+g repeats
c-h+r = c+ell-g+r. -/
theorem rightDifferenceCollision_repeatedArgument
    {c ell r h g : ℕ}
    (hhc : h ≤ c)
    (hrel : h = ell + g) :
    c - h + r = c + ell - g + r := by
  omega

/-- The left-difference collision g=ell+h repeats
c+h+r = c+ell-g+r. -/
theorem leftDifferenceCollision_repeatedArgument
    {c ell r h g : ℕ}
    (hgc : g ≤ c + ell)
    (hrel : g = ell + h) :
    c + h + r = c + ell - g + r := by
  omega

/-- Exact weighted-binary coefficient: one repeated Möbius argument remains
squared, and the two unrepeated arguments remain signed.  We keep this at the
existing binary-coefficient level so no squarefree simplification is assumed. -/
def centeredAffineWeightedBinaryCollisionCoefficient
    (r c ell h g : ℕ) : ℝ :=
  centeredAffineFourMobiusCoefficient r c ell h g

/-- Sum-collision weighted-binary stratum. -/
def parityCenteredAffineWeightedBinarySumCollision
    (b r c ell : ℕ) (H : Finset ℕ) : ℝ :=
  ∑ p ∈ centeredAffineCollisionShiftPairs
      .sum b r c ell H,
    centeredAffineWeightedBinaryCollisionCoefficient r c ell p.1 p.2

/-- Right-difference weighted-binary stratum. -/
def parityCenteredAffineWeightedBinaryRightDifferenceCollision
    (b r c ell : ℕ) (H : Finset ℕ) : ℝ :=
  ∑ p ∈ centeredAffineCollisionShiftPairs
      .rightDifference b r c ell H,
    centeredAffineWeightedBinaryCollisionCoefficient r c ell p.1 p.2

/-- Left-difference weighted-binary stratum. -/
def parityCenteredAffineWeightedBinaryLeftDifferenceCollision
    (b r c ell : ℕ) (H : Finset ℕ) : ℝ :=
  ∑ p ∈ centeredAffineCollisionShiftPairs
      .leftDifference b r c ell H,
    centeredAffineWeightedBinaryCollisionCoefficient r c ell p.1 p.2

/-- On positive admissible shifts the three collision relations are mutually
exclusive. -/
theorem centeredAffineCollisionRelations_pairwiseExclusive
    {ell h g : ℕ}
    (hell : 0 < ell) (hh : 0 < h) (hg : 0 < g) :
    ¬ (h + g = ell ∧ h = ell + g) ∧
    ¬ (h + g = ell ∧ g = ell + h) ∧
    ¬ (h = ell + g ∧ g = ell + h) := by
  omega

/-- The degenerate four-Möbius stratum is exactly the sum of its three
squarefree-weighted binary collision geometries. -/
theorem parityCenteredAffineFourMobiusDegenerateAtCenterLag_eq_threeWeightedBinary
    (b r c ell : ℕ)
    (H : Finset ℕ)
    (hell : 0 < ell)
    (hHpos : ∀ h ∈ H, 0 < h) :
    parityCenteredAffineFourMobiusDegenerateAtCenterLag b r c ell H =
      parityCenteredAffineWeightedBinarySumCollision b r c ell H +
      parityCenteredAffineWeightedBinaryRightDifferenceCollision b r c ell H +
      parityCenteredAffineWeightedBinaryLeftDifferenceCollision b r c ell H := by
  classical
  unfold parityCenteredAffineFourMobiusDegenerateAtCenterLag
    centeredAffineFourMobiusDegenerateShiftPairs
    parityCenteredAffineWeightedBinarySumCollision
    parityCenteredAffineWeightedBinaryRightDifferenceCollision
    parityCenteredAffineWeightedBinaryLeftDifferenceCollision
    centeredAffineCollisionShiftPairs
    centeredAffineWeightedBinaryCollisionCoefficient
    centeredAffineFourMobiusDegenerate
    centeredAffineCollisionTypeHolds
  -- Partition the filtered product by the three mutually exclusive relations.
  rw [← Finset.sum_filter_add_sum_filter_neg_eq]
  -- The remaining finite Boolean partition is elementary on positive shifts.
  apply Finset.sum_congr
  · ext p
    simp only [Finset.mem_filter, Finset.mem_product]
    constructor
    · intro hp
      exact hp
    · intro hp
      exact hp
  · intro p hp
    obtain ⟨hpH, hpG⟩ := Finset.mem_product.mp hp
    have hh : 0 < p.1 := hHpos p.1
      ((Finset.mem_filter.mp hpH).1)
    have hg : 0 < p.2 := hHpos p.2
      ((Finset.mem_filter.mp hpG).1)
    have hexcl :=
      centeredAffineCollisionRelations_pairwiseExclusive hell hh hg
    simp [hexcl]

structure RegularCenteredDegenerateWeightedBinarySourceData where
  theoremStatement : Prop
  sumCollisionRepeatedArgumentMatched : Prop
  rightDifferenceRepeatedArgumentMatched : Prop
  leftDifferenceRepeatedArgumentMatched : Prop
  squarefreeWeightRetainedExactly : Prop
  binarySignedFactorsRetained : Prop
  collisionRelationsDisjointOnPositiveShifts : Prop
  threeStrataDefined : Prop
  degeneratePartitionMatched : Prop
  analyticEstimateStillOpen : Prop

def RegularCenteredDegenerateWeightedBinarySource
    (d : RegularCenteredDegenerateWeightedBinarySourceData) : Prop :=
  d.theoremStatement ∧
  d.sumCollisionRepeatedArgumentMatched ∧
  d.rightDifferenceRepeatedArgumentMatched ∧
  d.leftDifferenceRepeatedArgumentMatched ∧
  d.squarefreeWeightRetainedExactly ∧
  d.binarySignedFactorsRetained ∧
  d.collisionRelationsDisjointOnPositiveShifts ∧
  d.threeStrataDefined ∧
  d.degeneratePartitionMatched ∧
  d.analyticEstimateStillOpen

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
