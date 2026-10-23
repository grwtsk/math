/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Bind the determinant/index theorem to the SAME selected Frey source and compare
it with the previously proved coefficient clearing on one fixed primitive
source. Quotient cardinality, quotient exponent/clearing, source torsion,
minimal discriminant and source height remain noncoercible.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassImageIndex
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetImage

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetIndex

open GRWTSK.AlgebraicGeometry.EllipticCurve
open FreyGlobalMinimalDiscriminant FreyIntegralJetImage
open FreyCollisionJetDenominator
open GRWTSK.NumberTheory.Height.RationalVectorAffineHeight

abbrev Target (N : ℕ) := FreyIntegralJetImage.Target N

/-- The generic lattice from the index module is literally the OLD application lattice. -/
theorem imageLattice_eq (t : PrimitiveAdditiveTriple) (hd : Descends t) (N : ℕ) :
    WeierstrassImageIndex.imageLattice
      (integerModel t).a₂ (integerModel t).a₄ N =
      FreyIntegralJetImage.imageLattice t N := by
  apply le_antisymm
  · apply Submodule.span_le.mpr
    rintro z ⟨k,rfl⟩
    rw [← FreyIntegralJetImage.frame_represents t hd N k.val]
    exact (FreyIntegralJetImage.image_iff t hd N _).mp
      ⟨Ideal.Quotient.mk _ (MvPolynomial.X 0^(k.val/2)*MvPolynomial.X 1^(k.val%2)),
        by simp [FreyIntegralJetImage.toParameter,WeierstrassIntegralImage.term]⟩
  · rw [FreyIntegralJetImage.imageLattice,WeierstrassImageIndex.imageLattice]
    congr 1
    exact FreyIntegralJetImage.branch_eq_old_x_image t hd N

/-- Same-source quotient cardinality, now an exported Lean statement. -/
theorem image_quotient_cardinality (t : PrimitiveAdditiveTriple)
    (hd : Descends t) (N : ℕ) :
    Nat.card
      ((FreyIntegralJetImage.imageLattice t N).toAddSubgroup ⧸
        ((WeierstrassImageIndex.standardLattice N).toAddSubgroup.subgroupOf
          (FreyIntegralJetImage.imageLattice t N).toAddSubgroup)) =
      (integerModel t).a₄.natAbs ^
        WeierstrassImageFrame.weightSum N := by
  rw [← imageLattice_eq t hd N]
  exact WeierstrassImageIndex.quotient_cardinality
    (integerModel t).a₂ (integerModel t).a₄
    (FreyCollisionSecondJet.selected_a4_ne_zero t hd) N

/-- The product exponent is floor(N^2/4), stated in the prior product form. -/
theorem image_quotient_cardinality_formula (t : PrimitiveAdditiveTriple)
    (hd : Descends t) (N : ℕ) :
    Nat.card
      ((FreyIntegralJetImage.imageLattice t N).toAddSubgroup ⧸
        ((WeierstrassImageIndex.standardLattice N).toAddSubgroup.subgroupOf
          (FreyIntegralJetImage.imageLattice t N).toAddSubgroup)) =
      (integerModel t).a₄.natAbs ^ ((N/2)*((N+1)/2)) := by
  rw [image_quotient_cardinality t hd N,WeierstrassImageFrame.weightSum_formula]

/-- Complete p-depth of this quotient cardinality; support alone is insufficient. -/
theorem image_index_prime_depth (t : PrimitiveAdditiveTriple)
    (hd : Descends t) (N p : ℕ) :
    (((integerModel t).a₄.natAbs ^
        WeierstrassImageFrame.weightSum N).factorization p) =
      WeierstrassImageFrame.weightSum N *
        (integerModel t).a₄.natAbs.factorization p := by
  exact WeierstrassImageIndex.quotient_cardinality_prime_depth
    (integerModel t).a₂ (integerModel t).a₄
    (FreyCollisionSecondJet.selected_a4_ne_zero t hd) N p

/-- The same fixed source from v0.41: exact quotient cardinality at every order. -/
theorem fixed_source_index (N : ℕ) :
    Nat.card
      ((FreyIntegralJetImage.imageLattice
          (FreyCollisionJetDenominator.family 3 (by decide)) N).toAddSubgroup ⧸
        ((WeierstrassImageIndex.standardLattice N).toAddSubgroup.subgroupOf
          (FreyIntegralJetImage.imageLattice
            (FreyCollisionJetDenominator.family 3 (by decide)) N).toAddSubgroup)) =
      3 ^ ((N/2)*((N+1)/2)) := by
  rw [image_quotient_cardinality_formula
    (FreyCollisionJetDenominator.family 3 (by decide))
    (FreyCollisionJetDenominator.family_descends 3 (by decide)) N,
    (FreyCollisionJetDenominator.family_coefficients 3 (by decide)).2]
  norm_num

/-- Order four: cardinality 81 versus the OLD coefficient-vector clearing 27.
No cyclicity or equality of these invariants is asserted. -/
theorem fixed_source_order_four_index_vs_clearing :
    Nat.card
      ((FreyIntegralJetImage.imageLattice
          (FreyCollisionJetDenominator.family 3 (by decide)) 4).toAddSubgroup ⧸
        ((WeierstrassImageIndex.standardLattice 4).toAddSubgroup.subgroupOf
          (FreyIntegralJetImage.imageLattice
            (FreyCollisionJetDenominator.family 3 (by decide)) 4).toAddSubgroup)) = 81 ∧
      denominator
        (FreyCollisionJetDenominator.jetCoefficients
          (FreyCollisionJetDenominator.family 3 (by decide)) 4) = 27 := by
  constructor
  · rw [fixed_source_index 4]
    norm_num
  · exact (FreyIntegralJetImage.fixed_source_order_four).2

/-- Source height is still the previous value 48; the quotient index grows only
because the auxiliary order grows. -/
theorem fixed_source_height :
    height
      (FreyMarkedObservationHeight.observation
        (FreyCollisionJetDenominator.family 3 (by decide))) = 48 :=
  FreyCollisionJetDenominator.fixed_source_observation_height

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetIndex
