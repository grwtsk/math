# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionJetTower

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83b3401f9b8b8b7a77572a768ca1acf99db4387a` · SHA-256 `84f5074c922f17622c5502df8043330e8b6cca7493381330b1785e37c10f6d4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Origin-ideal jets of the SAME selected integer equation, not a substitute
plane curve or a claim about all global sections. Unit a4 supplies the
full finite-order algebra comparison; the old obstructed direction is
preserved on the complement. Cubic normalization retains its own B^2 cost.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassOriginJet
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionSecondJet

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionJetTower

open WeierstrassCurve Polynomial
open GRWTSK.AlgebraicGeometry.EllipticCurve
open FreyGlobalMinimalDiscriminant FreyTwoBranchDecision FreyOddReduction
open FreyCollisionOrder FreyCollisionSecondJet

local instance : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩

/-- Full polynomial from ALL FIVE actual coefficients, before any shape reduction. -/
def selectedEquation {R : Type*} [CommRing R] (t : PrimitiveAdditiveTriple)
    (f : ℤ →+* R) : MvPolynomial (Fin 2) R :=
  MvPolynomial.X 1^2+MvPolynomial.C (f (integerModel t).a₁)*MvPolynomial.X 0*MvPolynomial.X 1+
    MvPolynomial.C (f (integerModel t).a₃)*MvPolynomial.X 1-
    (MvPolynomial.X 0^3+MvPolynomial.C (f (integerModel t).a₂)*MvPolynomial.X 0^2+
      MvPolynomial.C (f (integerModel t).a₄)*MvPolynomial.X 0+
      MvPolynomial.C (f (integerModel t).a₆))

theorem selectedEquation_eq {R : Type*} [CommRing R] (t : PrimitiveAdditiveTriple)
    (hd : Descends t) (f : ℤ →+* R) :
    selectedEquation t f=WeierstrassOriginJet.equation
      (f (integerModel t).a₂) (f (integerModel t).a₄) := by
  obtain ⟨h1,h3,h6⟩ := selected_coefficients t hd
  simp only [selectedEquation,WeierstrassOriginJet.equation,h1,h3,h6,
    map_one,map_zero,one_mul,zero_mul,add_zero]
  ring

/-- The relation ideal is attached to the old selected equation and the full origin ideal. -/
abbrev SelectedJet {R : Type*} [CommRing R] (t : PrimitiveAdditiveTriple)
    (f : ℤ →+* R) (N : ℕ) := MvPolynomial (Fin 2) R ⧸
      (Ideal.span {selectedEquation t f} ⊔ WeierstrassOriginJet.origin^(N+1))

/-- Same-source finite structure-sheaf jets; this is not a line-bundle/global-section theorem. -/
def selectedJetEquiv {R : Type*} [CommRing R] (t : PrimitiveAdditiveTriple)
    (hd : Descends t) (f : ℤ →+* R) (j : R) (hj : f (integerModel t).a₄*j=1) (N : ℕ) :
    SelectedJet t f N ≃ₐ[R] FreyJetQuotient.Parameter R N := by
  unfold SelectedJet
  rw [selectedEquation_eq t hd f]
  exact WeierstrassOriginJet.algebraEquiv _ _ j hj N

/-- Same-source rank growth; no enlarged fixed Gram form is substituted. -/
theorem selected_finrank {R : Type*} [CommRing R] [Nontrivial R] [StrongRankCondition R]
    (t : PrimitiveAdditiveTriple) (hd : Descends t) (f : ℤ →+* R)
    (j : R) (hj : f (integerModel t).a₄*j=1) (N : ℕ) :
    Module.finrank R (SelectedJet t f N)=N+1 := by
  unfold SelectedJet
  rw [selectedEquation_eq t hd f]
  exact WeierstrassOriginJet.jet_finrank _ _ j hj N

/-- Nonzero B is enough over Q; the same fact is NOT enough over Z_(2). -/
def rationalJetEquiv (t : PrimitiveAdditiveTriple) (hd : Descends t) (N : ℕ) :
    SelectedJet t (Int.castRingHom ℚ) N ≃ₐ[ℚ] FreyJetQuotient.Parameter ℚ N :=
  selectedJetEquiv t hd (Int.castRingHom ℚ) (1/((integerModel t).a₄ : ℚ)) (by
    have hb : ((integerModel t).a₄ : ℚ)≠0 := by exact_mod_cast selected_a4_ne_zero t hd
    change ((integerModel t).a₄ : ℚ)*(1/((integerModel t).a₄ : ℚ))=1
    field_simp [hb]) N

/-- Unit witness obtained from the OLD genuine localization, not assumed from nonzero B. -/
def localJetEquiv (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (hB : ¬ (2 : ℤ) ∣ (integerModel t).a₄) (N : ℕ) :
    SelectedJet t (algebraMap ℤ (LocalRing 2)) N ≃ₐ[LocalRing 2]
      FreyJetQuotient.Parameter (LocalRing 2) N := by
  have hu : IsUnit (algebraMap ℤ (LocalRing 2) (integerModel t).a₄) :=
    (int_unit_iff 2 _).mpr hB
  apply selectedJetEquiv t hd (algebraMap ℤ (LocalRing 2)) (↑hu.unit⁻¹) _ N
  rw [← hu.unit_spec]
  exact Units.mul_inv hu.unit

/-- Exactly the earlier local second-jet guard, now used for all orders. -/
theorem local_guard_iff_second_lift (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    IsUnit (algebraMap ℤ (LocalRing 2) (integerModel t).a₄) ↔
      WeierstrassSecondJet.HasVerticalLift (LocalRing 2)
        (FreyGlobalMinimalDiscriminant.localModel t 2) := by
  rw [int_unit_iff,local_lift_iff t hd]

/-- The old signed pair gap decides this LOCAL construction domain, not global integrality. -/
theorem local_guard_iff_gap (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (P : PairFrame t) :
    IsUnit (algebraMap ℤ (LocalRing 2) (integerModel t).a₄) ↔ ¬ (4 : ℤ) ∣ P.gap := by
  rw [int_unit_iff,jacobian_even_iff_gap_four t hd P]

/-- The new cubic residual still uses the OLD rational selectedCurve. -/
def rationalCubicResidual (t : PrimitiveAdditiveTriple) (a g : ℚ) : ℚ[X] :=
  ((selectedCurve t).map C).toAffine.polynomial.evalEval (C a*X^2+C g*X^3) X

theorem rational_cubic_iff (t : PrimitiveAdditiveTriple) (hd : Descends t) (a g : ℚ) :
    (X : ℚ[X])^4 ∣ rationalCubicResidual t a g ↔
      a=1/((integerModel t).a₄ : ℚ) ∧ g=1/((integerModel t).a₄ : ℚ)^2 := by
  rw [rationalCubicResidual,rational_model_shape t hd]
  exact WeierstrassMixedLift.cubic_field_coefficients _ _ _ _
    (by exact_mod_cast selected_a4_ne_zero t hd)

/-- Exact new third-coefficient clearing; it is NOT the pair gap or an elliptic discriminant. -/
theorem cubic_coefficient_clearing (t : PrimitiveAdditiveTriple) (hd : Descends t) (d : ℤ) :
    (∃ z : ℤ, (z : ℚ)=(d : ℚ)/((integerModel t).a₄ : ℚ)^2) ↔
      (integerModel t).a₄^2 ∣ d := by
  simpa only [Int.cast_pow] using WeierstrassSecondJet.reciprocal_clearing_iff
    ((integerModel t).a₄^2) d (pow_ne_zero 2 (selected_a4_ne_zero t hd))

/-- The singular first direction is still obstructed; the tower is not extended across it. -/
theorem singular_direction_still_obstructed (t : PrimitiveAdditiveTriple)
    (hd : Descends t) (P : PairFrame t) (h4 : (4 : ℤ) ∣ P.gap) :
    ¬ WeierstrassSecondJet.HasVerticalLift (ZMod 2)
      (FreySelectedSplitReduction.selectedResidueModel t 2) :=
  no_lift_on_deep_collision t hd P h4

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionJetTower
```
