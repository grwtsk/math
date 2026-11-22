/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstOmittedPrimeCorrection

/-!
# Joint signed readout error at the first omitted prime

The first-window measurement and the correction at 503 can both be inexact.
Their signed errors add in the original physical value, with the gamma and
pole terms evaluated on the same test.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur OddRootProjection CharacterWindow SourcePrimeCorrelation

variable {q : ℕ}

/-- Use the measured first-window sum and measured correlation at 503,
without consulting the exact later-prime sum. -/
def observed503Value (χ : DirichletCharacter ℂ q) (f : ℝ → ℂ)
    (observed : ℝ) (sample : ℂ) : ℝ :=
  gammaConstant q (gammaParity χ) * energy f +
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) f r) -
    observed - 2 * (((primeWeight 503 : ℂ) * conj ((χ⁻¹) 503)) * sample).re +
    (poleTerm q f).re

theorem observed503_signed_error (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ)
    (observed : ℝ) (sample : ℂ) (lo : 503 < Real.exp (2 * A)) (hi : Real.exp (2 * A) ≤ 509) :
    (physicalValue χ A f).re - observed503Value χ f observed sample =
      (observed - signedWindowValue χ A f) +
      2 * (((primeWeight 503 : ℂ) * conj ((χ⁻¹) 503)) *
        (sample - correlation f (Real.log 503))).re := by
  have h := corrected503_signed_error χ A f sample lo hi
  dsimp only at h
  simp only [firstOnlyValue, windowValue, Complex.add_re, Complex.ofReal_re] at h
  unfold observed503Value
  linarith

/-- Signed interval certificates compose without losing known cancellation. -/
theorem observed503_enclosure (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ)
    (observed : ℝ) (sample : ℂ) (lo : 503 < Real.exp (2 * A)) (hi : Real.exp (2 * A) ≤ 509)
    {l₁ u₁ l₂ u₂ : ℝ}
    (first : l₁ ≤ observed - signedWindowValue χ A f ∧
      observed - signedWindowValue χ A f ≤ u₁)
    (later :
      let e := 2 * (((primeWeight 503 : ℂ) * conj ((χ⁻¹) 503)) *
        (sample - correlation f (Real.log 503))).re
      l₂ ≤ e ∧ e ≤ u₂) :
    observed503Value χ f observed sample + (l₁ + l₂) ≤ (physicalValue χ A f).re ∧
      (physicalValue χ A f).re ≤ observed503Value χ f observed sample + (u₁ + u₂) := by
  have h := observed503_signed_error χ A f observed sample lo hi
  exact ⟨by linarith [first.1, later.1], by linarith [first.2, later.2]⟩

/-- An exact correlation correction at 503 leaves the full signed
first-window error, even if that error is nonzero. -/
theorem exact503_sample_leaves_first_error (χ : DirichletCharacter ℂ q) (A : ℝ)
    (f : ℝ → ℂ) (observed : ℝ) (lo : 503 < Real.exp (2 * A)) (hi : Real.exp (2 * A) ≤ 509) :
    (physicalValue χ A f).re -
        observed503Value χ f observed (correlation f (Real.log 503)) =
      observed - signedWindowValue χ A f := by
  rw [observed503_signed_error χ A f observed _ lo hi]
  simp

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
