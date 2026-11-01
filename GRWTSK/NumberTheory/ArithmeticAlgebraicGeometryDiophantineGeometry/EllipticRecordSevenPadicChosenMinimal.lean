/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticRecordSevenPadicPointCount
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Unit scale for Mathlib's chosen seven-adic minimal model

Minimality and the unit discriminant force the scale of Mathlib's selected
minimal-model change to have valuation one.  The DVR valuation kernel theorem
then produces an actual unit of `PadicInt 7`, so the published residue-field
transport applies without a free scale premise.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.RecordSevenPadicMinimalBridge

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerPowerSeries
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ResidueFieldVariableChangePort
open IsDedekindDomain.HeightOneSpectrum
open IsDiscreteValuationRing
open WeierstrassCurve

/-- Mathlib's noncomputably selected variable change defining `minimal`. -/
noncomputable def chosenMinimalChange
    (R : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
    {K : Type*} [Field K] [Algebra R K] [IsFractionRing R K]
    (W : WeierstrassCurve K) :
    WeierstrassCurve.VariableChange K :=
  (W.exists_isMinimal R).choose

@[simp]
theorem chosenMinimalChange_smul
    (R : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
    {K : Type*} [Field K] [Algebra R K] [IsFractionRing R K]
    (W : WeierstrassCurve K) :
    chosenMinimalChange R W • W = W.minimal R := rfl

/-- A positive power can equal one in a linearly ordered group with zero only
at one. -/
theorem eq_one_of_pow_eq_one
    {Γ₀ : Type*} [LinearOrderedCommGroupWithZero Γ₀]
    {x : Γ₀} {n : ℕ} (hn : n ≠ 0) (hpow : x ^ n = 1) :
    x = 1 := by
  apply le_antisymm
  · by_contra h
    have hgt : 1 < x := lt_of_not_ge h
    have hpgt : 1 < x ^ n :=
      (one_lt_pow_iff_of_nonneg (zero_le x) hn).2 hgt
    rw [hpow] at hpgt
    exact (lt_irrefl 1 hpgt)
  · by_contra h
    have hlt : x < 1 := lt_of_not_ge h
    have hplt : x ^ n < 1 :=
      (pow_lt_one_iff_of_nonneg (zero_le x) hn).2 hlt
    rw [hpow] at hplt
    exact (lt_irrefl 1 hplt)

/-- If an already-good minimal model is compared with Mathlib's chosen minimal
model, the chosen change has valuation-one scale. -/
theorem chosenMinimalChange_scale_valuation_one
    (R : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
    {K : Type*} [Field K] [Algebra R K] [IsFractionRing R K]
    (W : WeierstrassCurve K) [W.HasGoodReduction R] :
    ((IsDiscreteValuationRing.maximalIdeal R).valuation K)
        ((chosenMinimalChange R W).u : K) = 1 := by
  let C := chosenMinimalChange R W
  let Wmin := W.minimal R
  let v := (IsDiscreteValuationRing.maximalIdeal R).valuation K
  have hWval : v W.Δ = 1 :=
    WeierstrassCurve.HasGoodReduction.goodReduction
  have hWaux :
      WeierstrassCurve.valuation_Δ_aux R W = 1 := by
    apply Subtype.ext
    simpa [WeierstrassCurve.valuation_Δ_aux_eq_of_isIntegral] using hWval
  have hback : C⁻¹ • Wmin = W := by
    dsimp [C, Wmin]
    rw [← chosenMinimalChange_smul]
    simp
  have hbackIntegral :
      WeierstrassCurve.IsIntegral R (C⁻¹ • Wmin) := by
    rw [hback]
    infer_instance
  have hbackAux :
      WeierstrassCurve.valuation_Δ_aux R (C⁻¹ • Wmin) = 1 := by
    rw [hback, hWaux]
  have hmax :=
    WeierstrassCurve.IsMinimal.val_Δ_maximal
      (R := R) (W := Wmin)
  have hle :
      WeierstrassCurve.valuation_Δ_aux R
          ((1 : WeierstrassCurve.VariableChange K) • Wmin) ≤
        WeierstrassCurve.valuation_Δ_aux R (C⁻¹ • Wmin) := by
    simp only [one_smul]
    rw [hbackAux]
    exact (WeierstrassCurve.valuation_Δ_aux R Wmin).property
  have hreverse := hmax.2 hbackIntegral hle
  have hone_le :
      (1 : {z : ℤᵐ⁰ // z ≤ 1}) ≤
        WeierstrassCurve.valuation_Δ_aux R Wmin := by
    simpa [hbackAux] using hreverse
  have hauxMin :
      WeierstrassCurve.valuation_Δ_aux R Wmin = 1 :=
    le_antisymm
      (WeierstrassCurve.valuation_Δ_aux R Wmin).property hone_le
  have hWminVal : v Wmin.Δ = 1 := by
    have h := congrArg Subtype.val hauxMin
    simpa [v, WeierstrassCurve.valuation_Δ_aux_eq_of_isIntegral]
      using h
  have hdisc :
      Wmin.Δ = (C.u⁻¹ : K) ^ 12 * W.Δ := by
    dsimp [C, Wmin]
    simpa [chosenMinimalChange, WeierstrassCurve.minimal] using
      (WeierstrassCurve.variableChange_Δ
        (chosenMinimalChange R W) W)
  have hpowInv : (v (C.u⁻¹ : K)) ^ 12 = 1 := by
    have h := congrArg v hdisc
    simpa [map_mul, map_pow, hWminVal, hWval] using h
  have hInv : v (C.u⁻¹ : K) = 1 :=
    eq_one_of_pow_eq_one (n := 12) (by norm_num) hpowInv
  have hmapInv :
      v (C.u⁻¹ : K) = (v (C.u : K))⁻¹ := by
    simp [v]
  rw [hmapInv] at hInv
  have h := congrArg Inv.inv hInv
  simpa [C, v] using h

/-- Valuation one is precisely the missing witness that the chosen scale comes
from a DVR unit. -/
theorem exists_unit_scale_for_chosenMinimalChange
    (R : Type*) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
    {K : Type*} [Field K] [Algebra R K] [IsFractionRing R K]
    (W : WeierstrassCurve K) [W.HasGoodReduction R] :
    ∃ u : Rˣ,
      algebraMap R K u = (chosenMinimalChange R W).u := by
  let C := chosenMinimalChange R W
  let v := (IsDiscreteValuationRing.maximalIdeal R).valuation K
  have hval : v (C.u : K) = 1 := by
    simpa [C, v] using
      chosenMinimalChange_scale_valuation_one R W
  obtain ⟨u, hu⟩ :=
    IsDiscreteValuationRing.associated_of_valuation_eq
      (A := R) (K := K) (1 : K) (C.u : K) (by simpa [v, hval])
  refine ⟨u, ?_⟩
  simpa [Units.smul_def, Algebra.smul_def, C] using hu

theorem recordSevenPadic_chosenMinimal_unitScale :
    ∃ u : SevenRˣ,
      algebraMap SevenR SevenK u =
        (chosenMinimalChange SevenR recordSevenPadic).u :=
  exists_unit_scale_for_chosenMinimalChange SevenR recordSevenPadic

/-- Mathlib's chosen minimal model has good reduction, with no free `hgood`
premise left. -/
theorem recordSevenPadic_minimal_hasGoodReduction :
    (recordSevenPadic.minimal SevenR).HasGoodReduction SevenR := by
  obtain ⟨u, hu⟩ := recordSevenPadic_chosenMinimal_unitScale
  exact
    hasGoodReduction_of_unit_scale SevenR
      (chosenMinimalChange SevenR recordSevenPadic)
      (chosenMinimalChange_smul SevenR recordSevenPadic)
      u hu recordSevenPadic_hasGoodReduction

/-- Mathlib's chosen minimal reduction has the original source point count. -/
theorem recordSevenPadic_minimal_reduction_point_natCard :
    Nat.card
        ((recordSevenPadic.minimal SevenR).reduction SevenR).toAffine.Point =
      Record4239.reducedPointCount 7 := by
  obtain ⟨u, hu⟩ := recordSevenPadic_chosenMinimal_unitScale
  have htransport :=
    reductionPoint_natCard_eq_of_unit_scale SevenR
      (chosenMinimalChange SevenR recordSevenPadic)
      (chosenMinimalChange_smul SevenR recordSevenPadic)
      u hu recordSevenPadic_hasGoodReduction
  calc
    Nat.card
        ((recordSevenPadic.minimal SevenR).reduction SevenR).toAffine.Point =
      Nat.card (recordSevenPadic.reduction SevenR).toAffine.Point :=
        htransport.symm
    _ = Record4239.reducedPointCount 7 :=
      recordSevenPadic_reduction_point_natCard

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.RecordSevenPadicMinimalBridge
