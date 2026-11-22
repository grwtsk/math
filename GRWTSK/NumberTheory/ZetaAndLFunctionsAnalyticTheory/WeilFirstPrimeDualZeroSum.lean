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

/-- Paired estimates of the two real zero sums recover the imaginary
first-prime correlation with error controlled by the difference of their
signed errors. A common additive error cancels. -/
theorem onePrime_imaginary_error_eq_dual_zeroSum_error_difference
    {q : ℕ} [NeZero q] {A : ℝ}
    (χ : DirichletCharacter ℂ q) (hprim : χ.IsPrimitive)
    (lo : Real.log 2 < 2 * A) (hi : 2 * A ≤ Real.log 3)
    (phase : (χ (2 : ℕ)).im ≠ 0) (f : WindowTest A)
    (estimate dualEstimate : ℝ) :
    let W := fun z : ℂ => ∫ r : ℝ, correlation f.1 r * Complex.exp ((z - 1 / 2) * (r : ℂ))
    let zeroSum := fun ψ : DirichletCharacter ℂ q =>
      ∑' ρ : CriticalStripZero ψ, (zeroMultiplicity ψ ρ : ℂ) * W ρ.1
    let coefficient := 4 * primeWeight 2 * (χ (2 : ℕ)).im
    |(estimate - dualEstimate) / coefficient - (correlation f.1 (Real.log 2)).im| =
      |(estimate - (zeroSum χ).re) - (dualEstimate - (zeroSum χ⁻¹).re)| / |coefficient| := by
  intro W zeroSum coefficient
  have weight : 0 < primeWeight 2 := by
    rw [primeWeight, ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
    exact div_pos (Real.log_pos (by norm_num)) (Real.sqrt_pos.2 (by norm_num))
  have hcoef : coefficient ≠ 0 :=
    mul_ne_zero (mul_ne_zero (by norm_num) weight.ne') phase
  have hgap : (zeroSum χ).re - (zeroSum χ⁻¹).re =
      coefficient * (correlation f.1 (Real.log 2)).im := by
    simpa only [zeroSum, W, coefficient, Complex.sub_re, Complex.ofReal_re] using
      congrArg Complex.re (onePrime_tsum_sub_dual_eq_phase χ hprim lo hi f)
  have hdev : (estimate - dualEstimate) / coefficient - (correlation f.1 (Real.log 2)).im =
      ((estimate - (zeroSum χ).re) - (dualEstimate - (zeroSum χ⁻¹).re)) / coefficient := by
    apply (eq_div_iff hcoef).2
    rw [sub_mul, div_mul_cancel₀ _ hcoef]
    linear_combination hgap
  rw [hdev, abs_div]

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
