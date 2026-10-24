/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

All finite-order coefficient denominators of the OLD selected origin lift.
The fixed-source family is not a new section space or a counterexample to
ABC. Its source height stays fixed as the auxiliary jet order grows.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.NumberTheory.Height.WeierstrassJetDenominator
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionJetTower

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionJetDenominator

open Polynomial WeierstrassCurve
open GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve
open WeierstrassRescaledJet
open GRWTSK.NumberTheory.Height.RationalVectorAffineHeight
open GRWTSK.NumberTheory.Height.WeierstrassJetDenominator
open FreyGlobalMinimalDiscriminant FreyTwoBranchDecision FreyCollisionSecondJet

/-- The actual selected a2/a4, with no substitute Jacobian or fitted gap. -/
def jetCoefficients (t : PrimitiveAdditiveTriple) (N : ℕ) : Fin (N+1) → ℚ :=
  coefficients (integerModel t).a₂ (integerModel t).a₄ N

/-- Bind the old full five-coefficient source polynomial to the same origin equation. -/
theorem same_source_equation (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    FreyCollisionJetTower.selectedEquation t (Int.castRingHom ℚ)=
      WeierstrassOriginJet.equation ((integerModel t).a₂ : ℚ) ((integerModel t).a₄ : ℚ) :=
  FreyCollisionJetTower.selectedEquation_eq t hd (Int.castRingHom ℚ)

/-- This is the exact x image used by OLD toParameter_x, not an independent recurrence. -/
theorem same_selected_lift (t : PrimitiveAdditiveTriple) (hd : Descends t) (N : ℕ) :
    (rationalPolynomial (integerModel t).a₂ (integerModel t).a₄ (N+1)).eval₂
      (FreyJetQuotient.parameterScalar ℚ N) (FreyJetQuotient.parameter ℚ N)=
      WeierstrassMixedLift.lift
        (FreyJetQuotient.parameterScalar ℚ N ((integerModel t).a₂ : ℚ))
        (FreyJetQuotient.parameterScalar ℚ N (((integerModel t).a₄ : ℚ)⁻¹))
        (FreyJetQuotient.parameter ℚ N) (N+1) :=
  represents_old_lift _ _ (selected_a4_ne_zero t hd) N

/-- General source bound; it is not an assertion that no coefficients cancel. -/
theorem selected_common_den_dvd (t : PrimitiveAdditiveTriple) (hd : Descends t) (N : ℕ) :
    denominator (jetCoefficients t N) ∣ (integerModel t).a₄.natAbs^(N-1) :=
  common_den_dvd _ _ (selected_a4_ne_zero t hd) N

theorem selected_coefficient_stable (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (M N k : ℕ) (hMN : M≤N) (hk : k≤M) :
    (rationalPolynomial (integerModel t).a₂ (integerModel t).a₄ (N+1)).coeff k=
      (rationalPolynomial (integerModel t).a₂ (integerModel t).a₄ (M+1)).coeff k :=
  rational_stable _ _ (selected_a4_ne_zero t hd) M N k hMN hk

/-- Reuse the OLD native primitive source (1,16n-1,16n). -/
def family (n : ℕ) (hn : 0<n) : PrimitiveAdditiveTriple :=
  FreyMarkedObservationHeight.unitSource (16*n) (by omega)

theorem family_first (n : ℕ) (hn : 0<n) :
    (family n hn).a%4=1 ∧ 16 ∣ (family n hn).c := by
  constructor
  · norm_num [family,FreyMarkedObservationHeight.unitSource]
  · exact ⟨n,rfl⟩

theorem family_descends (n : ℕ) (hn : 0<n) : Descends (family n hn) :=
  Or.inl (family_first n hn)

/-- Compute the OLD selected coefficients, rather than merely choosing A=4n,B=n. -/
theorem family_coefficients (n : ℕ) (hn : 0<n) :
    (integerModel (family n hn)).a₂=4*(n : ℤ) ∧
      (integerModel (family n hn)).a₄=(n : ℤ) := by
  rw [integerModel,dif_pos (family_first n hn)]
  simp [FreyTwoSemistableChamber.integralModel,
    GRWTSK.Geometry.AlgebraicGeometry.EllipticCurve.IntegralHalfScale.model,
    firstWitness,family,FreyMarkedObservationHeight.unitSource]

/-- Every coefficient 2..N has its exact reduced rational denominator. -/
theorem family_coefficient_denominator (n : ℕ) (hn : 0<n)
    (N k : ℕ) (hk : 2≤k) (hN : k≤N) :
    ((rationalPolynomial (integerModel (family n hn)).a₂
      (integerModel (family n hn)).a₄ (N+1)).coeff k).den=n^(k-1) := by
  obtain ⟨hA,hB⟩ := family_coefficients n hn
  rw [hA,hB]
  exact sharp_coefficient_denominator _ n hn (by refine ⟨4,?_⟩; ring) (N+1) k hk (by omega)

/-- Exact COMMON denominator, using the inherited actual Rat.den LCM. -/
theorem family_common_denominator (n : ℕ) (hn : 0<n) (N : ℕ) (hN : 2≤N) :
    denominator (jetCoefficients (family n hn) N)=n^(N-1) := by
  obtain ⟨hA,hB⟩ := family_coefficients n hn
  change denominator (coefficients (integerModel (family n hn)).a₂
    (integerModel (family n hn)).a₄ N)=_
  rw [hA,hB]
  exact sharp_common_denominator _ n hn (by refine ⟨4,?_⟩; ring) N hN

/-- Complete prime depths follow from the same actual vector denominator. -/
theorem family_common_prime_depth (n : ℕ) (hn : 0<n) (N p : ℕ) (hN : 2≤N) :
    (denominator (jetCoefficients (family n hn) N)).factorization p=
      (N-1)*n.factorization p := by
  rw [family_common_denominator n hn N hN,Nat.factorization_pow]
  simp only [Finsupp.smul_apply,smul_eq_mul]

/-- Actual universal clearing of the entire named coefficient vector. -/
theorem family_clearing_iff (n : ℕ) (hn : 0<n) (N : ℕ) (hN : 2≤N) (d : ℕ) :
    (∀ i, ClearsValue d (jetCoefficients (family n hn) N i)) ↔ n^(N-1) ∣ d := by
  rw [← denominator_dvd_iff_clears,family_common_denominator n hn N hN]

/-- One fixed primitive source already prevents an order-independent clearing scalar. -/
theorem fixed_source_unbounded (D : ℕ) :
    ∃ N : ℕ, 2≤N ∧ D<denominator (jetCoefficients (family 3 (by decide)) N) := by
  refine ⟨D+2,by omega,?_⟩
  rw [family_common_denominator 3 (by decide) (D+2) (by omega)]
  simpa only [show D+2-1=D+1 by omega] using power_exceeds 3 D (by decide)

local instance : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩

/-- All old DYADIC finite orders exist for this same fixed source; odd costs remain. -/
def fixed_source_local_tower (N : ℕ) :
    FreyCollisionJetTower.SelectedJet (family 3 (by decide))
      (algebraMap ℤ (FreyOddReduction.LocalRing 2)) N ≃ₐ[FreyOddReduction.LocalRing 2]
      FreyJetQuotient.Parameter (FreyOddReduction.LocalRing 2) N :=
  FreyCollisionJetTower.localJetEquiv _ (family_descends 3 (by decide)) (by
    rw [(family_coefficients 3 (by decide)).2]
    norm_num) N

/-- Source height stays 48 in the previous affine convention; jet order is auxiliary. -/
theorem fixed_source_observation_height :
    height (FreyMarkedObservationHeight.observation (family 3 (by decide)))=48 := by
  rw [FreyMarkedObservationHeight.observation_height]
  norm_num [family,FreyMarkedObservationHeight.unitSource]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionJetDenominator
