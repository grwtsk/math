/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDualPhaseContrast
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimePhaseReadout
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaPhysicalReturn

/-!
# Dual-sector first-prime contrast on the original zero sums
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory
open GRWTSK.NumberTheory.WeilNegativeWitness

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur SourcePrimeCorrelation

/-- Subtract the original primitive zero sums at the same test and recover the
one-prime imaginary-phase contribution. The conductor, gamma and pole terms
cancel in the contrast. -/
theorem onePrime_tsum_sub_dual_eq_phase {q : ℕ} [NeZero q] {A : ℝ}
    (χ : DirichletCharacter ℂ q) (hprim : χ.IsPrimitive)
    (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3) (f : WindowTest A) :
    let W := fun z : ℂ => ∫ r : ℝ, correlation f.1 r * Complex.exp ((z - 1 / 2) * (r : ℂ))
    (∑' ρ : CriticalStripZero χ, (zeroMultiplicity χ ρ : ℂ) * W ρ.1) -
        (∑' ρ : CriticalStripZero χ⁻¹, (zeroMultiplicity χ⁻¹ ρ : ℂ) * W ρ.1) =
      ((4 * primeWeight 2 * (χ (2 : ℕ)).im * (correlation f.1 (Real.log 2)).im : ℝ) : ℂ) := by
  intro W
  have hlog : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have hA : 0 ≤ A := by linarith
  have hprimInv : χ⁻¹.IsPrimitive := by
    simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv] using hprim
  have hcut : Real.exp (2 * A) ≤ (3 : ℝ) := calc
    _ ≤ Real.exp (Real.log 3) := Real.exp_le_exp.mpr hi
    _ = _ := Real.exp_log (by norm_num)
  have hLater : laterPowers A = ∅ :=
    (laterPowers_eq_empty_iff A).mpr (hcut.trans (by norm_num))
  have hf : Admissible f.1 := ⟨f.2.1, f.2.2.1⟩
  have hsource : HasSum (fun ρ : CriticalStripZero χ => (zeroMultiplicity χ ρ : ℂ) * W ρ.1)
      (physicalValue χ A f.1) :=
    primitive_hasSum_physical_arithmetic χ hprim f.1 A hA hf f.2.2.2
  have hdual : HasSum (fun ρ : CriticalStripZero χ⁻¹ => (zeroMultiplicity χ⁻¹ ρ : ℂ) * W ρ.1)
      (physicalValue χ⁻¹ A f.1) :=
    primitive_hasSum_physical_arithmetic χ⁻¹ hprimInv f.1 A hA hf f.2.2.2
  simpa [firstPowers_eq_singleton_two lo hi, hLater, dualPhasePart, mul_assoc] using
    tsum_sub_dual _ _ χ A f.1 hsource hdual

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
