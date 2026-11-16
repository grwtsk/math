/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletStageChain

/-!
# Real two-shift formula for the original primitive arithmetic value
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation CharacterWindow OddRootProjection LowSchur

private theorem energy_liftReal_eq_integral_sq (f : ℝ → ℝ) :
    energy (liftReal f) = ∫ t : ℝ, f t ^ 2 := by
  simp only [energy, liftReal, Complex.norm_real, Real.norm_eq_abs, sq_abs]

private theorem correlation_liftReal_eq_ofReal (f : ℝ → ℝ) (r : ℝ) :
    correlation (liftReal f) r = Complex.ofReal (∫ t : ℝ, f t * f (t + r)) := by
  simp only [correlation, liftReal, Complex.conj_ofReal, ← Complex.ofReal_mul,
    integral_complex_ofReal]

/-- On real tests the two whole-line prime translations agree, and their
sum gives the factor two in the original complex-lifted prime term. -/
theorem primitiveArithmeticValue_liftReal_eq_real_two_shift
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (T : ℝ) (f : ℝ → ℝ) :
    primitiveArithmeticValue χ hp hn T (liftReal f) =
      gammaConstant q (gammaParity χ) * (∫ t : ℝ, f t ^ 2) +
        (∫ r in Set.Ioi (0 : ℝ), parityKernel (gammaParity χ) r *
          (∫ t : ℝ, (f (t + r) - f t) ^ 2)) -
        (∑ n ∈ activePrimePowers T, (primeWeight n * (χ (n : ZMod q)).re) *
          ((∫ t : ℝ, f t * f (t + Real.log (n : ℝ))) +
           (∫ t : ℝ, f t * f (t - Real.log (n : ℝ))))) := by
  have hgamma (r : ℝ) :
      gammaCorrectionDensity (gammaParity χ) (liftReal f) r =
        parityKernel (gammaParity χ) r * (∫ t : ℝ, (f (t + r) - f t) ^ 2) := by
    have hshift : (fun t => liftReal f (t + r) - liftReal f t) =
        liftReal (fun t => f (t + r) - f t) := by
      funext t
      simp [liftReal]
    rw [gammaCorrectionDensity, hshift, energy_liftReal_eq_integral_sq]
  have hprime :
      twistedPrime T χ (fun n => correlation (liftReal f) (Real.log (n : ℝ))) =
        ∑ n ∈ activePrimePowers T, (primeWeight n * (χ (n : ZMod q)).re) *
          ((∫ t : ℝ, f t * f (t + Real.log (n : ℝ))) +
           (∫ t : ℝ, f t * f (t - Real.log (n : ℝ)))) := by
    unfold twistedPrime
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    let r := Real.log (n : ℝ)
    have hreverse : (∫ t : ℝ, f t * f (t + r)) = ∫ t : ℝ, f t * f (t - r) := by
      simpa only [add_sub_cancel_right, mul_comm] using
        (integral_add_right_eq_self (fun t : ℝ => f t * f (t - r)) r)
    change 2 * (primeWeight n * (conj (χ n) * correlation (liftReal f) r).re) =
      (primeWeight n * (χ (n : ZMod q)).re) *
        ((∫ t : ℝ, f t * f (t + r)) + (∫ t : ℝ, f t * f (t - r)))
    simp only [correlation_liftReal_eq_ofReal, Complex.mul_re, Complex.ofReal_re,
      Complex.ofReal_im, Complex.conj_re, mul_zero, sub_zero, ← hreverse]
    ring
  simp only [primitiveArithmeticValue,
    energy_liftReal_eq_integral_sq, hgamma, hprime]

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
