/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticResidueFieldVariableChangePort
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticPowerSeriesLocalFactor
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# The explicit record curve is good and minimal at seven

This file constructs the published record model over `PadicInt 7`, identifies
its base change with the existing `recordSevenPadic`, proves its discriminant
is a unit, and derives genuine minimality and good reduction.  Compilation and
kernel acceptance are not claimed.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.RecordSevenPadicMinimalBridge

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalEulerPowerSeries
open IsDedekindDomain.HeightOneSpectrum
open IsDiscreteValuationRing
open IsLocalRing
open WeierstrassCurve

private instance : Fact (Nat.Prime (7 : ℕ)) := ⟨by norm_num⟩
private instance : NeZero (7 : ℕ) := ⟨by norm_num⟩

abbrev SevenR := PadicInt 7
abbrev SevenK := Padic 7
abbrev SevenResidue := IsLocalRing.ResidueField SevenR

/-- The original integral record model viewed over `PadicInt 7`. -/
def recordSevenIntegral : WeierstrassCurve SevenR :=
  recordModel.map (Int.castRingHom SevenR)

/-- The same original reduction viewed directly over `ZMod 7`. -/
def recordZModSeven : WeierstrassCurve (ZMod 7) :=
  recordModel.map (Int.castRingHom (ZMod 7))

theorem recordSevenIntegral_baseChange :
    recordSevenIntegral.map (algebraMap SevenR SevenK) =
      recordSevenPadic := by
  ext <;> simp [recordSevenIntegral, recordSevenPadic, recordModel]

noncomputable instance recordSevenPadic_isIntegral :
    WeierstrassCurve.IsIntegral SevenR recordSevenPadic where
  integral := ⟨recordSevenIntegral, recordSevenIntegral_baseChange.symm⟩

theorem recordSevenPadic_integralModel_eq :
    WeierstrassCurve.integralModel SevenR recordSevenPadic =
      recordSevenIntegral := by
  apply WeierstrassCurve.map_injective
    (IsFractionRing.injective SevenR SevenK)
  calc
    (WeierstrassCurve.integralModel SevenR recordSevenPadic).map
        (algebraMap SevenR SevenK) =
      recordSevenPadic :=
        WeierstrassCurve.baseChange_integralModel_eq SevenR recordSevenPadic
    _ = recordSevenIntegral.map (algebraMap SevenR SevenK) :=
      recordSevenIntegral_baseChange.symm

theorem recordModel_discriminant_mod_seven_ne :
    (recordModel.Δ : ZMod 7) ≠ 0 := by
  rw [recordModel_discriminant]
  norm_num [Record4239.recordDiscriminant, Record4239.A, Record4239.B]

theorem recordSevenIntegral_discriminant_toZMod_ne :
    PadicInt.toZMod (p := 7) recordSevenIntegral.Δ ≠ 0 := by
  simpa [recordSevenIntegral, WeierstrassCurve.map_Δ] using
    recordModel_discriminant_mod_seven_ne

theorem recordSevenIntegral_discriminant_isUnit :
    IsUnit recordSevenIntegral.Δ := by
  apply (IsLocalRing.residue_ne_zero_iff_isUnit _).mp
  intro hzero
  apply recordSevenIntegral_discriminant_toZMod_ne
  rw [PadicInt.toZMod_eq_residueField_comp_residue]
  simp [hzero]

theorem recordSevenPadic_discriminant_valuation :
    ((IsDiscreteValuationRing.maximalIdeal SevenR).valuation SevenK)
        recordSevenPadic.Δ = 1 := by
  have hnot :
      recordSevenIntegral.Δ ∉ IsLocalRing.maximalIdeal SevenR :=
    (IsLocalRing.notMem_maximalIdeal).2
      recordSevenIntegral_discriminant_isUnit
  have hval :
      ((IsDiscreteValuationRing.maximalIdeal SevenR).valuation SevenK)
          (algebraMap SevenR SevenK recordSevenIntegral.Δ) = 1 :=
    (IsDedekindDomain.HeightOneSpectrum.valuation_eq_one_iff_notMem).2 hnot
  have hΔ :
      algebraMap SevenR SevenK recordSevenIntegral.Δ =
        recordSevenPadic.Δ := by
    have h :=
      congrArg WeierstrassCurve.Δ recordSevenIntegral_baseChange
    simpa [WeierstrassCurve.map_Δ] using h
  simpa [hΔ] using hval

theorem recordSevenPadic_isMinimal_proof :
    WeierstrassCurve.IsMinimal SevenR recordSevenPadic := by
  refine ⟨?_⟩
  refine ⟨by simpa using
    (inferInstance :
      WeierstrassCurve.IsIntegral SevenR recordSevenPadic), ?_⟩
  intro C _hC _hle
  have hbound :=
    (WeierstrassCurve.valuation_Δ_aux SevenR
      (C • recordSevenPadic)).property
  have hsource :
      WeierstrassCurve.valuation_Δ_aux SevenR recordSevenPadic = 1 := by
    apply Subtype.ext
    simpa [WeierstrassCurve.valuation_Δ_aux_eq_of_isIntegral] using
      recordSevenPadic_discriminant_valuation
  simpa [hsource] using hbound

noncomputable instance recordSevenPadic_isMinimal :
    WeierstrassCurve.IsMinimal SevenR recordSevenPadic :=
  recordSevenPadic_isMinimal_proof

theorem recordSevenPadic_hasGoodReduction_proof :
    recordSevenPadic.HasGoodReduction SevenR where
  goodReduction := recordSevenPadic_discriminant_valuation

noncomputable instance recordSevenPadic_hasGoodReduction :
    recordSevenPadic.HasGoodReduction SevenR :=
  recordSevenPadic_hasGoodReduction_proof

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.RecordSevenPadicMinimalBridge
