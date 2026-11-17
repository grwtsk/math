/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveCompactOddSpectralReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveInverseOrbitStages
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilArchimedeanDomain
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroCounting
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimitiveDirichletRightCorridor

/-!
# Primitive negative witnesses from a source count and the exact formula

For the test constructed on the actual primitive spectrum, compact
smoothness supplies the original radius, L² and gamma-domain conditions.
The explicit formula pairs zeros of χ with the arithmetic value for χ⁻¹.
The existing real-inclusion identity returns that value to χ. Keeping the
identity as an explicit premise isolates its contour implementation.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open OddRootProjection SourcePrimeCorrelation
open GRWTSK.ComplexAnalysis.CompactOddFourierFilter
open GRWTSK.NumberTheory.WeilNegativeWitness

/-- The exact inverse-character arithmetic identity on compact smooth tests.
The zero divisor is that of the input character, with its analytic multiplicities. -/
def PrimitiveInverseCharacterFormula : Prop :=
  ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (f : ℝ → ℂ) (A : ℝ),
    0 ≤ A → WeilNegativeWitness.Admissible f → tsupport f ⊆ Icc (-A) A →
    HasSum (fun ρ : CriticalStripZero χ => (zeroMultiplicity χ ρ : ℂ) *
      ∫ r : ℝ, correlation f r * Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ)))
      (primitiveArithmeticValue χ⁻¹
        (by simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv] using hp)
        (by simpa only [ne_eq, inv_eq_one] using hn) A f : ℂ)

/-- All-height counts and the exact formula supply the original primitive
negative witness, with the arithmetic form and all admission conditions intact. -/
theorem primitiveNegativeWitness_of_inverseCharacterFormula_and_heightCount
    (formula : PrimitiveInverseCharacterFormula)
    (count : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive),
      ∃ D L : ℝ, 0 ≤ D ∧ 0 ≤ L ∧ ∀ H : ℝ, 2 ≤ H →
        (heightCount χ hp H : ℝ) ≤ D * H * (Real.log H + L)) :
    PrimitiveNegativeWitness := by
  intro q _ χ hp hn s h₀ h₁ hoff hzero
  obtain ⟨D, L, hD, hL, hcount⟩ := count q χ hp
  obtain ⟨A, f, hA, hodd, hf, hs, v, hv, hvneg⟩ :=
    exists_negative_primitive_correlation_of_heightCount χ hp hD hL hcount
      ⟨s, hzero, h₀, h₁⟩ hoff
  have hfd : ContDiff ℝ ∞ f := by
    have h := Complex.reCLM.contDiff.comp hf.1
    simpa only [Function.comp_def, Complex.reCLM_apply, realTest, Complex.ofReal_re] using h
  have hcompact : HasCompactSupport f := by
    have h := hf.2.comp_left (g := Complex.re) Complex.zero_re
    simpa only [Function.comp_def, realTest, Complex.ofReal_re] using h
  have hlp : MemLp (liftReal f) 2 volume := hf.1.continuous.memLp_of_hasCompactSupport hf.2
  have hsupport (t : ℝ) (ht : t ∉ Icc (-A) A) : liftReal f t = 0 := by
    by_contra hne
    exact ht (hs (subset_tsupport _ hne))
  have hgamma := gammaCorrectionDensity_integrable_of_contDiff_one (gammaParity χ)
    (hf.1.of_le (by norm_num : (1 : WithTop ℕ∞) ≤ ∞)) hf.2
  let hpInv : (χ⁻¹).IsPrimitive := by
    simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv] using hp
  let hnInv : χ⁻¹ ≠ 1 := by simpa only [ne_eq, inv_eq_one] using hn
  have hformula := formula q χ hp hn (realTest f) A hA.le hf hs
  have hv' : v = (primitiveArithmeticValue χ⁻¹ hpInv hnInv A (liftReal f) : ℂ) :=
    hv.unique hformula
  rw [hv', Complex.ofReal_re,
    primitiveArithmeticValue_inverse_liftReal χ hp hn hpInv hnInv A f hlp] at hvneg
  exact ⟨A, f, ⟨hA, hfd.of_le (by norm_num), hcompact, hodd, hlp, hsupport, hgamma⟩, hvneg⟩

/-- The native source count discharges the all-height premise. The exact
inverse-character explicit formula is the sole remaining analytic supplier. -/
theorem primitiveNegativeWitness_of_inverseCharacterFormula
    (formula : PrimitiveInverseCharacterFormula) : PrimitiveNegativeWitness :=
  primitiveNegativeWitness_of_inverseCharacterFormula_and_heightCount formula
    (fun _ _ χ hp => exists_heightCount_bound χ hp)

/-- The same source-bound witness serves each residual right corridor. -/
theorem primitiveRightCorridorNegativeWitness_of_inverseCharacterFormula {σ : ℝ}
    (formula : PrimitiveInverseCharacterFormula) : PrimitiveRightCorridorNegativeWitness σ := by
  intro q _ χ hp hn s hhalf _ hlt hz
  exact primitiveNegativeWitness_of_inverseCharacterFormula formula q χ hp hn s
    (by linarith) hlt (ne_of_gt hhalf) hz

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
