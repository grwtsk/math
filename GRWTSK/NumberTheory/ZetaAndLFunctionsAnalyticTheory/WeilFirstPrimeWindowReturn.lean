/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorFrontier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWindowFilterLedger

/-!
# Filtered first-window return to the pole-inclusive Weil form

The `HasSum` input in `hasSum_filtered` is the arithmetic side of
`SourcePrimeCorrelation.primitive_hasSum_physical_arithmetic` in
`WeilGammaPhysicalReturn.lean`. In that use the summands are the original
`CriticalStripZero χ` terms with `zeroMultiplicity χ`. The same input covers
the conductor-one zeta specialization. This file composes algebraic equalities
with that exact source statement. The actual HS observation map must still
supply the signed window readout on the original compact smooth test domain.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped BigOperators ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur OddRootProjection CharacterWindow SourcePrimeCorrelation WindowFilterLedger

variable {q : ℕ}

/-- Both conductor-one Mellin weights in the canonical pole term. -/
def poleTerm (q : ℕ) (f : ℝ → ℂ) : ℂ :=
  let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
  if q = 1 then W 0 + W 1 else 0

/-- The whole arithmetic expression of the source, with its inverse-character
orientation and full physical gamma integral. -/
def physicalValue (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) : ℂ :=
  ((gammaConstant q (gammaParity χ) * energy f +
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) f r) -
    twistedPrime A χ⁻¹ (fun n => correlation f (Real.log (n : ℝ))) : ℝ) : ℂ) + poleTerm q f

/-- The signed window measurement is subtracted beside the exact later prime
term. The conductor, gamma and poles retain the same arguments. -/
def windowValue (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) (observed : ℝ) : ℂ :=
  ((gammaConstant q (gammaParity χ) * energy f +
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) f r) -
    (observed + primeReadout (laterPowers A)
      (primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ))))) : ℝ) : ℂ) + poleTerm q f

def signedWindowValue (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) : ℝ :=
  primeReadout (firstPowers A) (primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ))))

theorem physicalValue_eq_windowValue (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) :
    physicalValue χ A f = windowValue χ A f (signedWindowValue χ A f) := by
  unfold physicalValue windowValue signedWindowValue
  rw [twistedPrime_eq_window_add_later]

/-- Decoding the prescribed heat and unit phase on every retained complex
atom returns the original signed first-window measurement. -/
theorem signedWindowValue_eq_decoded (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ)
    (s rate : ℕ → ℝ) (phase : ℕ → ℂ) (hphase : ∀ n ∈ firstPowers A, ‖phase n‖ = 1) :
    let a := primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))
    signedWindowValue χ A f = primeReadout (firstPowers A) (fun n =>
      heatWaveDecode (s n) (rate n) (phase n) (heatWaveReadout (s n) (rate n) (phase n) (a n))) := by
  intro a
  unfold signedWindowValue primeReadout
  congr 1
  refine Finset.sum_congr rfl fun n hn => ?_
  change (a n).re = (heatWaveDecode (s n) (rate n) (phase n)
    (heatWaveReadout (s n) (rate n) (phase n) (a n))).re
  rw [heatWaveDecode_readout _ _ _ _ (hphase n hn)]

/-- Splice the exact decoded measurement into the original zero-sum identity.
The zero index, summand, convergence, and multiplicities come from `hsource`. -/
theorem hasSum_filtered {ι : Type*} (z : ι → ℂ) (χ : DirichletCharacter ℂ q)
    (A : ℝ) (f : ℝ → ℂ) (hsource : HasSum z (physicalValue χ A f))
    (s rate : ℕ → ℝ) (phase : ℕ → ℂ) (hphase : ∀ n ∈ firstPowers A, ‖phase n‖ = 1) :
    let a := primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))
    HasSum z (windowValue χ A f (primeReadout (firstPowers A) (fun n =>
      heatWaveDecode (s n) (rate n) (phase n) (heatWaveReadout (s n) (rate n) (phase n) (a n))))) := by
  intro a
  rw [physicalValue_eq_windowValue, signedWindowValue_eq_decoded χ A f s rate phase hphase] at hsource
  exact hsource

/-- The signed error when only the measured first window is returned. -/
theorem physicalValue_sub_firstOnly (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ)
    (observed : ℝ) :
    let a := primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))
    physicalValue χ A f - (windowValue χ A f observed + (primeReadout (laterPowers A) a : ℂ)) =
      ((observed - signedWindowValue χ A f - primeReadout (laterPowers A) a : ℝ) : ℂ) := by
  intro a
  rw [physicalValue_eq_windowValue]
  unfold windowValue
  dsimp only [a]
  push_cast
  ring

/-- Two-sided error allowance for approximate complex atoms in the first
window and complete omission of the later prime powers. -/
theorem abs_firstOnly_error_le (χ : DirichletCharacter ℂ q) (A : ℝ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) (observed : ℕ → ℂ) :
    let a := primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))
    |primeReadout (firstPowers A) observed - signedWindowValue χ A f -
      primeReadout (laterPowers A) a| ≤
      2 * (∑ n ∈ firstPowers A, ‖observed n - a n‖) +
      (2 * ∑ n ∈ laterPowers A, primeWeight n) * energy f := by
  intro a
  calc
    _ ≤ |primeReadout (firstPowers A) observed - signedWindowValue χ A f| +
        |primeReadout (laterPowers A) a| := abs_sub _ _
    _ ≤ _ := add_le_add (abs_primeReadout_sub_le _ _ _) (abs_later_readout_le A χ⁻¹ hf)

/-- The original smooth compactly supported tests in the selected window. -/
def WindowTest (A : ℝ) := {f : ℝ → ℂ //
  ContDiff ℝ ∞ f ∧ HasCompactSupport f ∧ tsupport f ⊆ Icc (-A) A}

/-- The exact observation obligation on the original test domain. -/
def DeterminesWindowReadout {Obs : Type*} (χ : DirichletCharacter ℂ q) (A : ℝ)
    (observe : WindowTest A → Obs) : Prop :=
  ∀ f g, observe f = observe g → signedWindowValue χ A f.1 = signedWindowValue χ A g.1

theorem determinesWindowReadout_iff {Obs : Type*} (χ : DirichletCharacter ℂ q) (A : ℝ)
    (observe : WindowTest A → Obs) : DeterminesWindowReadout χ A observe ↔
      ∃ decode : Obs → ℝ, ∀ f : WindowTest A, decode (observe f) = signedWindowValue χ A f.1 := by
  classical
  constructor
  · intro h
    let decode (o : Obs) : ℝ :=
      if ho : ∃ f, observe f = o then signedWindowValue χ A (Classical.choose ho).1 else 0
    refine ⟨decode, fun f => ?_⟩
    have hf : ∃ g, observe g = observe f := ⟨f, rfl⟩
    simp only [decode, dite_eq_left hf]
    exact h _ _ (Classical.choose_spec hf)
  · rintro ⟨decode, hdecode⟩ f g h
    rw [← hdecode f, ← hdecode g, h]

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
