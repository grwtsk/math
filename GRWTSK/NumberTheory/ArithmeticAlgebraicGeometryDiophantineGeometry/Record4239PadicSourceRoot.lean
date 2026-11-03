/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Hensel lifting retains upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239IntegralOrderReduction
import Mathlib.NumberTheory.Padics.Hensel

set_option autoImplicit false
noncomputable section

/-! Hensel root for the literal source cubic at every selected source prime.
The rational field embedding and integer-closure residue map remain separate.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

theorem exists_padic_source_root : ∃ z : ℤ_[primeLabel j],
    shortCubic.aeval z = 0 ∧
      ‖z-(rootLabel j : ℤ_[primeLabel j])‖ < 1 := by
  let a : ℤ_[primeLabel j] := (rootLabel j : ℤ)
  let v : ℤ := (rootLabel j : ℤ)^3+shortA*(rootLabel j : ℤ)+shortB
  let d : ℤ := 3*(rootLabel j : ℤ)^2+shortA
  have hv : (primeLabel j : ℤ) ∣ v :=
    Int.dvd_of_emod_eq_zero (rootLabels_valid j).1
  have hd : ¬ (primeLabel j : ℤ) ∣ d := by
    intro h
    exact (rootLabels_valid j).2 (Int.emod_eq_zero_of_dvd h)
  have he : shortCubic.aeval a = (v : ℤ_[primeLabel j]) := by
    norm_num [shortCubic, Polynomial.aeval_def, a, v] <;> push_cast <;> ring
  have hde : shortCubic.derivative.aeval a = (d : ℤ_[primeLabel j]) := by
    norm_num [shortCubic, Polynomial.aeval_def, a, d] <;> push_cast <;> ring
  have hvn : ‖shortCubic.aeval a‖ < 1 := by
    rw [he]
    exact (PadicInt.norm_int_lt_one_iff_dvd v).mpr hv
  have hdn : ‖shortCubic.derivative.aeval a‖ = 1 := by
    rw [hde]
    apply le_antisymm (PadicInt.norm_le_one _)
    apply le_of_not_gt
    intro h
    exact hd ((PadicInt.norm_int_lt_one_iff_dvd d).mp h)
  have hH : ‖shortCubic.aeval a‖ < ‖shortCubic.derivative.aeval a‖^2 := by
    simpa [hdn] using hvn
  obtain ⟨z,hz,hclose,_,_⟩ := hensels_lemma hH
  refine ⟨z,hz,?_⟩
  simpa [a,hdn] using hclose
end
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
