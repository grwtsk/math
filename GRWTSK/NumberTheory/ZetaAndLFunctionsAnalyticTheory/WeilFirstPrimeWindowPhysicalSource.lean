/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindowReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaPhysicalReturn

/-!
# Pole-inclusive zero sums with a decoded first prime window

The primitive and conductor-one explicit formulas supply the source sum for
`FirstPrimeWindow.hasSum_filtered`. The decoded first window is used alongside
the exact later prime-power term, with the original gamma, conductor, and pole
terms.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open GRWTSK.NumberTheory.WeilNegativeWitness

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur OddRootProjection SourcePrimeCorrelation WindowFilterLedger

/-- Return the original multiplicity-weighted zero sum via the decoded first
prime window, with the prime atoms in the inverse-character orientation. -/
theorem primitive_hasSum_filtered_source
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hprim : χ.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A)
    (s rate : ℕ → ℝ) (phase : ℕ → ℂ)
    (hphase : ∀ n ∈ firstPowers A, ‖phase n‖ = 1) :
    let W := fun z : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((z - 1 / 2) * (r : ℂ))
    let a := primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))
    HasSum (fun ρ : CriticalStripZero χ => (zeroMultiplicity χ ρ : ℂ) * W ρ.1)
      (windowValue χ A f (primeReadout (firstPowers A) (fun n =>
        heatWaveDecode (s n) (rate n) (phase n)
          (heatWaveReadout (s n) (rate n) (phase n) (a n))))) :=
  hasSum_filtered _ χ A f
    (primitive_hasSum_physical_arithmetic χ hprim f A hA hf hs) s rate phase hphase

/-- Return the literal conductor-one zeta explicit formula with the decoded
window, parity zero, and both Mellin pole weights. -/
theorem zeta_hasSum_filtered_source
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A)
    (s rate : ℕ → ℝ) (phase : ℕ → ℂ)
    (hphase : ∀ n ∈ firstPowers A, ‖phase n‖ = 1) :
    let χ : DirichletCharacter ℂ 1 := 1
    let W := fun z : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((z - 1 / 2) * (r : ℂ))
    let a := primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))
    HasSum (fun ρ : CriticalStripZero χ => (zeroMultiplicity χ ρ : ℂ) * W ρ.1)
      (windowValue χ A f (primeReadout (firstPowers A) (fun n =>
        heatWaveDecode (s n) (rate n) (phase n)
          (heatWaveReadout (s n) (rate n) (phase n) (a n))))) := by
  intro χ W a
  have hp : gammaParity (1 : DirichletCharacter ℂ 1) = 0 := by
    simp [gammaParity, MulChar.one_apply (isUnit_of_subsingleton _)]
  have hsource : HasSum (fun ρ : CriticalStripZero χ => (zeroMultiplicity χ ρ : ℂ) * W ρ.1)
      (physicalValue χ A f) := by
    simpa [χ, W, physicalValue, poleTerm, hp, CharacterWindow.twistedPrime,
      MulChar.one_apply (isUnit_of_subsingleton _), add_assoc] using
        zeta_hasSum_physical_arithmetic f A hA hf hs
  exact hasSum_filtered _ χ A f hsource s rate phase hphase

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
