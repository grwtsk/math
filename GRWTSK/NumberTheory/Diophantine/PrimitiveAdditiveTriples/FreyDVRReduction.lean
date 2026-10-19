/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's Weierstrass, DVR, residue-field and valuation API (Apache-2.0).
Formalization assistance: OpenAI.

Minimality and reduction for the SAME displayed Frey model over a DVR.
No conductor exponent, splitness, Kodaira symbol or height/radical inequality
is asserted. The fraction field and residue characteristic are explicit. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyLocalInvariants
import Mathlib.AlgebraicGeometry.EllipticCurve.Reduction

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

namespace FreyDVR

variable (R : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
variable {K : Type*} [Field K] [Algebra R K] [IsFractionRing R K]

local notation "ν" =>
  IsDedekindDomain.HeightOneSpectrum.valuation K (IsDiscreteValuationRing.maximalIdeal R)

/-- An integral equation has integral c4. -/
lemma integral_c4_le_one (W : WeierstrassCurve K) [WeierstrassCurve.IsIntegral R W] :
    ν W.c₄ ≤ 1 := by
  rw [← WeierstrassCurve.integralModel_c₄_eq R W]
  exact IsDedekindDomain.HeightOneSpectrum.valuation_le_one _ _

/-- An integral equation has integral discriminant. -/
lemma integral_delta_le_one (W : WeierstrassCurve K) [WeierstrassCurve.IsIntegral R W] :
    ν W.Δ ≤ 1 := by
  rw [← WeierstrassCurve.integralModel_Δ_eq R W]
  exact IsDedekindDomain.HeightOneSpectrum.valuation_le_one _ _

/-- Unit c4 prevents any integral variable change from improving the
multiplicative discriminant valuation. Fourth powers are cubed, so no root
extraction or Archimedean interpretation of the valuation is used. -/
theorem changed_delta_le_of_c4_unit (W : WeierstrassCurve K)
    (hc4 : ν W.c₄ = 1) (C : WeierstrassCurve.VariableChange K)
    [WeierstrassCurve.IsIntegral R (C • W)] :
    ν (C • W).Δ ≤ ν W.Δ := by
  have h4 : ν (↑C.u⁻¹ : K) ^ 4 ≤ 1 := by
    simpa only [WeierstrassCurve.variableChange_c₄, map_mul, map_pow,
      hc4, mul_one] using integral_c4_le_one R (C • W)
  have h12 : ν (↑C.u⁻¹ : K) ^ 12 ≤ 1 := by
    calc
      ν (↑C.u⁻¹ : K) ^ 12 =
          (ν (↑C.u⁻¹ : K) ^ 4 * ν (↑C.u⁻¹ : K) ^ 4) *
            ν (↑C.u⁻¹ : K) ^ 4 := by rw [← pow_add, ← pow_add]
      _ ≤ (1 * 1) * 1 := mul_le_mul' (mul_le_mul' h4 h4) h4
      _ = 1 := by simp
  calc
    ν (C • W).Δ = ν (↑C.u⁻¹ : K) ^ 12 * ν W.Δ := by
      rw [WeierstrassCurve.variableChange_Δ, map_mul, map_pow]
    _ ≤ 1 * ν W.Δ := mul_le_mul_right' h12 _
    _ = ν W.Δ := one_mul _

/-- An integral equation with unit c4 is minimal in Mathlib's DVR sense. -/
theorem minimal_of_c4_unit (W : WeierstrassCurve K)
    [WeierstrassCurve.IsIntegral R W] (hc4 : ν W.c₄ = 1) :
    WeierstrassCurve.IsMinimal R W := by
  refine ⟨⟨by simpa using (inferInstance : WeierstrassCurve.IsIntegral R W), ?_⟩⟩
  intro C hC _hcompare
  letI : WeierstrassCurve.IsIntegral R (C • W) := hC
  simp only [one_smul]
  change (WeierstrassCurve.valuation_Δ_aux R (C • W)).val ≤
    (WeierstrassCurve.valuation_Δ_aux R W).val
  simpa only [WeierstrassCurve.valuation_Δ_aux_eq_of_isIntegral] using
    changed_delta_le_of_c4_unit R W hc4 C

/-- An integral equation with unit discriminant is minimal. -/
theorem minimal_of_delta_unit (W : WeierstrassCurve K)
    [WeierstrassCurve.IsIntegral R W] (hΔ : ν W.Δ = 1) :
    WeierstrassCurve.IsMinimal R W := by
  refine ⟨⟨by simpa using (inferInstance : WeierstrassCurve.IsIntegral R W), ?_⟩⟩
  intro C hC _hcompare
  letI : WeierstrassCurve.IsIntegral R (C • W) := hC
  simp only [one_smul]
  change (WeierstrassCurve.valuation_Δ_aux R (C • W)).val ≤
    (WeierstrassCurve.valuation_Δ_aux R W).val
  simpa only [WeierstrassCurve.valuation_Δ_aux_eq_of_isIntegral, hΔ] using
    integral_delta_le_one R (C • W)

/-- Residue nonvanishing means valuation one, not additive valuation one. -/
lemma valuation_eq_one_of_residue_ne_zero (r : R)
    (hr : IsLocalRing.residue R r ≠ 0) : ν (algebraMap R K r) = 1 := by
  apply (IsDedekindDomain.HeightOneSpectrum.valuation_eq_one_iff_notMem
    (K := K) (IsDiscreteValuationRing.maximalIdeal R)).mpr
  intro hm
  exact hr ((IsLocalRing.residue_eq_zero_iff r).mpr hm)

/-- Residue vanishing means multiplicative valuation strictly below one. -/
lemma valuation_lt_one_of_residue_zero (r : R)
    (hr : IsLocalRing.residue R r = 0) : ν (algebraMap R K r) < 1 := by
  apply (IsDedekindDomain.HeightOneSpectrum.valuation_lt_one_iff_mem _ _).mpr
  exact (IsLocalRing.residue_eq_zero_iff r).mp hr

/-- Good reduction of an explicitly chosen integral equation, including its
minimality proof rather than assuming minimality as another premise. -/
theorem good_of_residue_delta (W : WeierstrassCurve R)
    (hΔ : IsLocalRing.residue R W.Δ ≠ 0) :
    WeierstrassCurve.HasGoodReduction R (W.baseChange K) := by
  letI : WeierstrassCurve.IsIntegral R (W.baseChange K) := ⟨⟨W, rfl⟩⟩
  have hv : ν (W.baseChange K).Δ = 1 := by
    simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_Δ] using
      valuation_eq_one_of_residue_ne_zero R (K := K) W.Δ hΔ
  exact { toIsMinimal := minimal_of_delta_unit R _ hv, goodReduction := hv }

/-- Multiplicative reduction from raw residue invariants and a derived
minimality theorem. This does not determine splitness or conductor exponent. -/
theorem multiplicative_of_residue_invariants (W : WeierstrassCurve R)
    (hΔ : IsLocalRing.residue R W.Δ = 0)
    (hc4 : IsLocalRing.residue R W.c₄ ≠ 0) :
    WeierstrassCurve.HasMultiplicativeReduction R (W.baseChange K) := by
  letI : WeierstrassCurve.IsIntegral R (W.baseChange K) := ⟨⟨W, rfl⟩⟩
  have hv4 : ν (W.baseChange K).c₄ = 1 := by
    simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_c₄] using
      valuation_eq_one_of_residue_ne_zero R (K := K) W.c₄ hc4
  have hvΔ : ν (W.baseChange K).Δ < 1 := by
    simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_Δ] using
      valuation_lt_one_of_residue_zero R (K := K) W.Δ hΔ
  exact { toIsMinimal := minimal_of_c4_unit R _ hv4,
    badReduction := hvΔ, multiplicativeReduction := hv4 }

end FreyDVR

/-- The displayed integral tuple transported along Z → R, not a newly chosen
minimal model or an abstract isomorphic curve. -/
def PrimitiveAdditiveTriple.freyModelOver (t : PrimitiveAdditiveTriple)
    (R : Type*) [CommRing R] : WeierstrassCurve R :=
  t.freyIntegralModel.map (Int.castRingHom R)

/-- Fraction-field base change of that same local equation. -/
def PrimitiveAdditiveTriple.freyFractionModel (t : PrimitiveAdditiveTriple)
    (R K : Type*) [CommRing R] [Field K] [Algebra R K] : WeierstrassCurve K :=
  (t.freyModelOver R).baseChange K

section LocalFrey

variable (t : PrimitiveAdditiveTriple)
variable (R K : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
variable [Field K] [hcharK : CharZero K] [Algebra R K] [IsFractionRing R K]

/-- The local fraction-field model has the same raw discriminant and is
elliptic in characteristic zero. -/
theorem PrimitiveAdditiveTriple.freyFractionModel_isElliptic :
    (t.freyFractionModel R K).IsElliptic := by
  rw [WeierstrassCurve.isElliptic_iff]
  apply isUnit_iff_ne_zero.mpr
  simpa [PrimitiveAdditiveTriple.freyFractionModel,
    PrimitiveAdditiveTriple.freyModelOver, WeierstrassCurve.baseChange] using
    (Int.cast_ne_zero.mpr t.freyIntegralModel_Δ_ne_zero :
      (t.freyIntegralModel.Δ : K) ≠ 0)

variable (p : ℕ) [Fact p.Prime] [CharP (IsLocalRing.ResidueField R) p]

/-- The actual DVR residue equation equals the ZMod-p equation after the
canonical prime-field embedding. All five coefficients, not just invariants,
are compared. -/
theorem PrimitiveAdditiveTriple.freyDVR_residue_comparison :
    (t.freyModelOver R).map (IsLocalRing.residue R) =
      (t.freyResidueModel p).map
        (ZMod.castHom (dvd_refl p) (IsLocalRing.ResidueField R)) := by
  ext <;> simp [PrimitiveAdditiveTriple.freyModelOver,
    PrimitiveAdditiveTriple.freyResidueModel, WeierstrassCurve.map]

include hcharK

/-- Away from 2abc, the displayed equation has actual good reduction over
this DVR. The claim is about the explicit R,K and residue-characteristic data. -/
theorem PrimitiveAdditiveTriple.freyFractionModel_good
    (hp2 : p ≠ 2) (hd : ¬ p ∣ t.a * t.b * t.c) :
    WeierstrassCurve.HasGoodReduction R (t.freyFractionModel R K) := by
  apply FreyDVR.good_of_residue_delta
  let f : ZMod p →+* IsLocalRing.ResidueField R := ZMod.castHom (dvd_refl p) _
  have heq : IsLocalRing.residue R (t.freyModelOver R).Δ =
      f ((t.freyResidueModel p).Δ) := by
    simpa only [WeierstrassCurve.map_Δ] using
      congrArg WeierstrassCurve.Δ (t.freyDVR_residue_comparison R p)
  rw [heq]
  intro hz
  have h0 : (t.freyResidueModel p).Δ = 0 := f.injective (by simpa using hz)
  rcases (t.freyResidueModel_delta_zero_iff p).mp h0 with h2 | hdiv
  · exact hp2 h2
  · exact hd hdiv

/-- At every odd residue prime dividing abc, the SAME equation has actual
multiplicative reduction. No conductor API theorem is used or claimed. -/
theorem PrimitiveAdditiveTriple.freyFractionModel_multiplicative
    (hp2 : p ≠ 2) (hd : p ∣ t.a * t.b * t.c) :
    WeierstrassCurve.HasMultiplicativeReduction R (t.freyFractionModel R K) := by
  apply FreyDVR.multiplicative_of_residue_invariants
  · have heq := congrArg WeierstrassCurve.Δ (t.freyDVR_residue_comparison R p)
    rw [WeierstrassCurve.map_Δ, WeierstrassCurve.map_Δ,
      (t.freyResidueModel_delta_zero_iff p).mpr (Or.inr hd), map_zero] at heq
    exact heq
  · let f : ZMod p →+* IsLocalRing.ResidueField R := ZMod.castHom (dvd_refl p) _
    have heq : IsLocalRing.residue R (t.freyModelOver R).c₄ =
        f ((t.freyResidueModel p).c₄) := by
      simpa only [WeierstrassCurve.map_c₄] using
        congrArg WeierstrassCurve.c₄ (t.freyDVR_residue_comparison R p)
    rw [heq]
    intro hz
    exact t.freyResidueModel_c4_ne_zero p hp2 hd (f.injective (by simpa using hz))

/-- Minimality is derived at all odd residue primes, not supplied in advance. -/
theorem PrimitiveAdditiveTriple.freyFractionModel_minimal (hp2 : p ≠ 2) :
    WeierstrassCurve.IsMinimal R (t.freyFractionModel R K) := by
  by_cases hd : p ∣ t.a * t.b * t.c
  · exact (t.freyFractionModel_multiplicative R K p hp2 hd).toIsMinimal
  · exact (t.freyFractionModel_good R K p hp2 hd).toIsMinimal

end LocalFrey

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
