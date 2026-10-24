/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Bind first-order source torsion to the SAME selected Frey equation. The fixed
primitive source (1,47,48) has selected B=3: its unsaturated integral source
contains a nonzero X-class killed by3 while the old rational image kills X.
This is not the torsion-free image quotient of v0.43.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.WeierstrassOrderOneTorsion
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetIndex

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralSourceTorsion

open GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve
open FreyGlobalMinimalDiscriminant FreyCollisionJetDenominator
open FreyCollisionJetTower FreyIntegralJetImage

abbrev fixedTriple :=
  FreyCollisionJetDenominator.family 3 (by decide)

theorem fixed_coefficients :
    (integerModel fixedTriple).a₂=12 ∧ (integerModel fixedTriple).a₄=3 := by
  simpa using FreyCollisionJetDenominator.family_coefficients 3 (by decide)

/-- The selected source quotient is definitionally the generic A=12,B=3
order-one origin quotient after the OLD five-coefficient reconciliation. -/
def fixedSourceEquiv :
    FreyCollisionJetTower.SelectedJet fixedTriple (RingHom.id ℤ) 1 ≃+*
      WeierstrassOrderOneTorsion.Source 12 3 := by
  unfold FreyCollisionJetTower.SelectedJet WeierstrassOrderOneTorsion.Source
  rw [FreyCollisionJetTower.selectedEquation_eq fixedTriple
    (FreyCollisionJetDenominator.family_descends 3 (by decide)) (RingHom.id ℤ),
    fixed_coefficients.1,fixed_coefficients.2]
  exact RingEquiv.refl _

/-- The OLD integral source has a genuine nonzero torsion class. -/
def fixedTorsionClass :
    FreyCollisionJetTower.SelectedJet fixedTriple (RingHom.id ℤ) 1 :=
  fixedSourceEquiv.symm (WeierstrassOrderOneTorsion.x 12 3)

theorem fixedTorsionClass_ne_zero : fixedTorsionClass ≠ 0 := by
  intro h
  apply WeierstrassOrderOneTorsion.x_ne_zero_of_prime_dvd 12 3 3
    (by decide) (by norm_num)
  have := congrArg fixedSourceEquiv h
  simpa [fixedTorsionClass] using this

/-- Three kills the selected X-class in the source quotient. -/
theorem three_nsmul_fixedTorsionClass : 3 • fixedTorsionClass=0 := by
  apply fixedSourceEquiv.injective
  change fixedSourceEquiv (3 • fixedTorsionClass)=fixedSourceEquiv 0
  simp only [map_nsmul,map_zero,fixedTorsionClass,fixedSourceEquiv.apply_symm_apply]
  change 3 • WeierstrassOrderOneTorsion.x 12 3=0
  simpa [nsmul_eq_mul,WeierstrassOrderOneTorsion.scalar] using
    WeierstrassOrderOneTorsion.B_mul_x_zero 12 3

/-- Its additive order is exactly3, not merely a divisor of the source
presentation coefficient. -/
theorem fixedTorsionClass_addOrder : addOrderOf fixedTorsionClass=3 := by
  apply addOrderOf_eq_prime
  · exact three_nsmul_fixedTorsionClass
  · exact fixedTorsionClass_ne_zero

/-- The OLD rational image kills the same first-order X coordinate. -/
theorem fixed_rational_branch_zero :
    FreyIntegralJetImage.branch fixedTriple 1=0 :=
  FreyIntegralJetImage.branch_order_one_zero fixedTriple

/-- Source torsion and the torsion-free image are therefore not interchangeable. -/
theorem fixed_source_map_not_injective :
    ¬ Function.Injective
      (FreyIntegralJetImage.toParameter fixedTriple
        (FreyCollisionJetDenominator.family_descends 3 (by decide)) 1) := by
  intro hinj
  apply fixedTorsionClass_ne_zero
  apply hinj
  change FreyIntegralJetImage.toParameter fixedTriple
    (FreyCollisionJetDenominator.family_descends 3 (by decide)) 1 fixedTorsionClass =
      FreyIntegralJetImage.toParameter fixedTriple
        (FreyCollisionJetDenominator.family_descends 3 (by decide)) 1 0
  rw [map_zero]
  change _=0
  simp [fixedTorsionClass,fixedSourceEquiv,FreyIntegralJetImage.toParameter,
    FreyIntegralJetImage.branch_order_one_zero]

/-- v0.43 quotient cardinality remains a different torsion-free image invariant. -/
theorem fixed_image_index_order_four :
    Nat.card
      ((FreyIntegralJetImage.imageLattice fixedTriple 4).toAddSubgroup ⧸
        ((WeierstrassImageIndex.standardLattice 4).toAddSubgroup.subgroupOf
          (FreyIntegralJetImage.imageLattice fixedTriple 4).toAddSubgroup))=81 :=
  FreyIntegralJetIndex.fixed_source_order_four_index_vs_clearing.1

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralSourceTorsion
