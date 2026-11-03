/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib integral closure and fraction fields retain upstream authorship and licenses. -/
import GRWTSK.CommutativeAlgebra.Record4239UnitSquareClassTransport
import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed

set_option autoImplicit false
noncomputable section

/-! Unit-square reflection under explicit normal-domain/fraction-field hypotheses.
These instances are NOT constructed for SourceLocalRing here.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
variable (R K : Type*) [CommRing R] [IsDomain R] [Field K] [Algebra R K]
  [IsFractionRing R K] [IsIntegrallyClosed R]

theorem unit_square_root_descends (u : Rˣ) (t : K)
    (ht : t ^ 2 = algebraMap R K (u : R)) :
    ∃ v : Rˣ, v ^ 2 = u ∧ algebraMap R K (v : R) = t := by
  have hi : IsIntegral R (t ^ 2) := by
    rw [ht]
    exact isIntegral_algebraMap
  obtain ⟨r, hr⟩ := IsIntegrallyClosed.exists_algebraMap_eq_of_isIntegral_pow
    (R := R) (K := K) (by norm_num : 0 < (2 : ℕ)) hi
  have hs : r ^ 2 = (u : R) := by
    apply IsFractionRing.injective R K
    rw [map_pow, hr, ht]
  have hinv : r * (r * (↑(u⁻¹) : R)) = 1 := by
    calc
      _ = r ^ 2 * (↑(u⁻¹) : R) := by ring
      _ = (u : R) * (↑(u⁻¹) : R) := by rw [hs]
      _ = 1 := u.mul_inv
  let v : Rˣ := ⟨r, r * (↑(u⁻¹) : R), hinv, by simpa [mul_comm] using hinv⟩
  refine ⟨v, ?_, hr⟩
  apply Units.ext
  exact hs

theorem normal_squareClassMap_reflects_one (a : UnitSquareClasses R)
    (h : unitSquareClassMap (algebraMap R K) a = 1) : a = 1 := by
  induction a using Quotient.inductionOn with
  | h u =>
    rw [unitSquareClassMap_mk] at h
    have hm := (QuotientGroup.eq_one_iff _).mp h
    obtain ⟨v, hv⟩ := hm
    have ht : (v : K) ^ 2 = algebraMap R K (u : R) := by
      simpa only [powMonoidHom_apply, Units.val_pow_eq_pow_val, Units.coe_map,
        MonoidHom.coe_coe] using congrArg (fun z : Kˣ => (z : K)) hv
    obtain ⟨w, hw, _⟩ := unit_square_root_descends R K u (v : K) ht
    apply (QuotientGroup.eq_one_iff _).mpr
    exact ⟨w, by simpa only [powMonoidHom_apply] using hw⟩

theorem normal_squareClassMap_injective :
    Function.Injective (unitSquareClassMap (algebraMap R K)) := by
  intro a b hab
  have hm : unitSquareClassMap (algebraMap R K) (a / b) = 1 := by
    rw [map_div, hab, div_self]
  exact div_eq_one.mp (normal_squareClassMap_reflects_one R K (a / b) hm)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
