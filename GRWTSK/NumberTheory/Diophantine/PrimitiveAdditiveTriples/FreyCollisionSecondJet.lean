/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.

Lift the OLD collision's special first jet through the actual parameter
quotient R[T]/(T^3). The smooth branch has lifts; the singular branch's
vertical direction has none, even when the node is split. A rational lift
retains the exact selected a4 denominator. No coefficient or source label
is replaced. No intrinsic global jet bundle or uniform height claim.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassSecondJet
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionOrder

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionSecondJet

open WeierstrassCurve
open GRWTSK.Algebra.RingTheory.QuadraticCollisionOrder
open GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassSecondJet
open FreyTwoBranchDecision FreyGlobalMinimalDiscriminant FreyCollisionOrder
open FreySelectedProjectiveMarks FreySelectedSplitReduction FreyOddReduction

local instance : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩

/-- Reconcile all five coefficients of the OLD selected model over any coefficient ring. -/
theorem mapped_model_shape {R : Type*} [CommRing R] (t : PrimitiveAdditiveTriple)
    (hd : Descends t) (f : ℤ →+* R) :
    (integerModel t).map f = model R (f (integerModel t).a₂) (f (integerModel t).a₄) := by
  obtain ⟨h1,h3,h6⟩ := selected_coefficients t hd
  ext <;> simp [model,WeierstrassCurve.map,h1,h3,h6]

/-- The OLD specialFiber map chooses exactly this first jet; it is not fitted. -/
theorem old_collision_direction (t : PrimitiveAdditiveTriple) (P : PairFrame t) :
    binaryReduction P.gap P.gap_even (-2*generator P.gap)=0 ∧
      binaryReduction P.gap P.gap_even (generator P.gap)=generator (0 : ZMod 2) :=
  special_coordinates t P

/-- Lift of that first jet in the ACTUAL selected special equation. -/
theorem residue_lift_iff (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    HasVerticalLift (ZMod 2) (selectedResidueModel t 2) ↔
      ((integerModel t).a₄ : ZMod 2) ≠ 0 := by
  rw [selectedResidueModel, mapped_model_shape t hd,
    vertical_lift_iff_unit, isUnit_iff_ne_zero]

/-- Exact comparison with the PREVIOUS field-level nonsingular predicate. -/
theorem lift_iff_nonsingular (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    HasVerticalLift (ZMod 2) (selectedResidueModel t 2) ↔
      (selectedResidueModel t 2).toProjective.Nonsingular ![0,0,1] := by
  rw [residue_lift_iff t hd, collision_point_nonsingular_iff]

/-- In the OLD localization, integrality of this normalized quadratic lift
is equivalent to the actual selected Jacobian coefficient being a unit. -/
theorem local_lift_iff (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    HasVerticalLift (LocalRing 2) (FreyGlobalMinimalDiscriminant.localModel t 2) ↔
      ¬ (2 : ℤ) ∣ (integerModel t).a₄ := by
  rw [FreyGlobalMinimalDiscriminant.localModel, mapped_model_shape t hd,
    vertical_lift_iff_unit, int_unit_iff]

theorem local_iff_residue (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    HasVerticalLift (LocalRing 2) (FreyGlobalMinimalDiscriminant.localModel t 2) ↔
      HasVerticalLift (ZMod 2) (selectedResidueModel t 2) := by
  rw [local_lift_iff t hd, residue_lift_iff t hd,
    ne_eq, ZMod.intCast_zmod_eq_zero_iff_dvd]

/-- The Jacobian factor is derived from the OLD right-mark equation and signed gap. -/
theorem gap_jacobian_factor (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (P : PairFrame t) :
    2*(integerModel t).a₄=P.gap*(1+4*(integerModel t).a₂-8*P.gap) := by
  have hg := gap_relation t hd P
  nlinarith

/-- The extra factor is an odd local unit, but is not discarded globally. -/
theorem gap_jacobian_factor_odd (t : PrimitiveAdditiveTriple) (P : PairFrame t) :
    ¬ (2 : ℤ) ∣ 1+4*(integerModel t).a₂-8*P.gap := by omega

/-- All signed gaps, including the negative even-a branch, are retained. -/
theorem jacobian_even_iff_gap_four (t : PrimitiveAdditiveTriple)
    (hd : Descends t) (P : PairFrame t) :
    (2 : ℤ) ∣ (integerModel t).a₄ ↔ (4 : ℤ) ∣ P.gap := by
  obtain ⟨n,hn⟩ := P.gap_even
  have he := gap_jacobian_factor t hd P
  rw [hn] at he
  have hb : (integerModel t).a₄=n+2*(2*(integerModel t).a₂*n-8*n^2) := by
    nlinarith
  rw [hb,hn,Int.dvd_iff_emod_eq_zero,Int.dvd_iff_emod_eq_zero]
  omega

theorem collision_lift_iff_gap (t : PrimitiveAdditiveTriple)
    (hd : Descends t) (P : PairFrame t) :
    HasVerticalLift (ZMod 2) (selectedResidueModel t 2) ↔ ¬ (4 : ℤ) ∣ P.gap := by
  rw [residue_lift_iff t hd, ne_eq, ZMod.intCast_zmod_eq_zero_iff_dvd,
    jacobian_even_iff_gap_four t hd P]

/-- No choice of quadratic corrections can repair the old vertical direction
on a singular collision. This is NOT an assertion that all directions fail. -/
theorem no_lift_on_deep_collision (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (P : PairFrame t) (h4 : (4 : ℤ) ∣ P.gap) :
    ¬ HasVerticalLift (ZMod 2) (selectedResidueModel t 2) := by
  rw [collision_lift_iff_gap t hd P]
  exact not_not_intro h4

/-- A nonzero selected a4 follows from the OLD nonsingular rational discriminant. -/
theorem selected_a4_ne_zero (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    (integerModel t).a₄ ≠ 0 := by
  obtain ⟨h1,h3,h6⟩ := selected_coefficients t hd
  intro hb
  have he : (integerModel t).Δ=0 := by
    simp [WeierstrassCurve.Δ,WeierstrassCurve.b₂,WeierstrassCurve.b₄,
      WeierstrassCurve.b₆,WeierstrassCurve.b₈,h3,h6,hb]
  exact (ne_of_gt (integer_delta_pos t)) he

theorem rational_model_shape (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    selectedCurve t = model ℚ ((integerModel t).a₂ : ℚ) ((integerModel t).a₄ : ℚ) := by
  rw [← integerModel_baseChange,WeierstrassCurve.baseChange]
  exact mapped_model_shape t hd (Int.castRingHom ℚ)

/-- Over Q there is a lift, with exactly the SAME selected model and fixed Y'=1. -/
theorem rational_lift (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    HasVerticalLift ℚ (selectedCurve t) := by
  rw [rational_model_shape t hd,vertical_lift_iff_unit,isUnit_iff_ne_zero]
  exact_mod_cast selected_a4_ne_zero t hd

/-- Every normalized rational lift has this second X-coefficient. The second
Y-coefficient remains free and is not confused with a unique full jet. -/
theorem rational_lift_coefficient (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (a b : ℚ) :
    ((selectedCurve t).map (scalar ℚ)).toAffine.Equation
      (jet ℚ 0 0 a) (jet ℚ 0 1 b) ↔ a=1/((integerModel t).a₄ : ℚ) := by
  rw [rational_model_shape t hd]
  exact vertical_field_coefficient _ _ _ _ (by exact_mod_cast selected_a4_ne_zero t hd)

/-- A new map-specific cost, NOT the old evaluation gap or a conductor/index surrogate. -/
theorem quadratic_coefficient_clearing (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (d : ℤ) :
    (∃ z : ℤ, (z : ℚ)=(d : ℚ)/((integerModel t).a₄ : ℚ)) ↔
      (integerModel t).a₄ ∣ d :=
  reciprocal_clearing_iff _ _ (selected_a4_ne_zero t hd)

/-- Nonvertical node directions CAN lift at a split binary node. No nonsplit
branch is relabelled as a rational residue-field direction. -/
theorem all_node_directions (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (hB : ((integerModel t).a₄ : ZMod 2)=0) (u v a b : ZMod 2) :
    ((u ≠ 0 ∨ v ≠ 0) ∧
      ((selectedResidueModel t 2).map (scalar (ZMod 2))).toAffine.Equation
        (jet (ZMod 2) 0 u a) (jet (ZMod 2) 0 v b)) ↔
      ((integerModel t).a₂ : ZMod 2)=0 ∧ u=1 := by
  rw [selectedResidueModel,mapped_model_shape t hd]
  change ((u ≠ 0 ∨ v ≠ 0) ∧
    ((model (ZMod 2) ((integerModel t).a₂ : ZMod 2)
      ((integerModel t).a₄ : ZMod 2)).map (scalar (ZMod 2))).toAffine.Equation
      (jet (ZMod 2) 0 u a) (jet (ZMod 2) 0 v b)) ↔ _
  rw [hB]
  exact binary_node_directions _ _ _ _ _

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionSecondJet
