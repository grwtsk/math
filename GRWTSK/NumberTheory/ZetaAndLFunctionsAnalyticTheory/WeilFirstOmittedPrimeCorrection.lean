/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilLaterPrimeHalfEnergy

/-!
# Signed one-atom correction above the first prime window

When the cutoff lies in (503, 509], the sole later atom is 503.
An approximation to its actual complex correlation gives a signed error
with a character-sensitive bound. The gamma and pole terms are retained
in the original physical value.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur SourcePrimeCorrelation
open scoped ComplexConjugate

variable {q : ℕ}

/-- The first-window-only value formed by adding back the exact later
prime readout that the original value subtracts. -/
def firstOnlyValue (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) : ℂ :=
  windowValue χ A f (signedWindowValue χ A f) +
    (primeReadout (laterPowers A)
      (primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))) : ℂ)

theorem corrected503_signed_error (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ)
    (sample : ℂ) (lo : 503 < Real.exp (2 * A)) (hi : Real.exp (2 * A) ≤ 509) :
    let coefficient := (primeWeight 503 : ℂ) * conj ((χ⁻¹) 503)
    (physicalValue χ A f).re -
      ((firstOnlyValue χ A f).re - 2 * (coefficient * sample).re) =
      2 * (coefficient * (sample - correlation f (Real.log 503))).re := by
  intro coefficient
  have h : (physicalValue χ A f).re - (firstOnlyValue χ A f).re =
      -(2 * (primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ))) 503).re) := by
    simpa only [firstOnlyValue, laterPowers_eq_singleton_503 lo hi, primeReadout,
      Finset.sum_singleton, sub_self, zero_sub, Complex.sub_re, Complex.ofReal_re]
      using congrArg Complex.re (physicalValue_sub_firstOnly χ A f (signedWindowValue χ A f))
  have hatom : primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ))) 503 =
      coefficient * correlation f (Real.log 503) := by
    simp only [primeAtom, coefficient, Nat.cast_ofNat, mul_assoc]
  rw [hatom] at h
  rw [mul_sub, Complex.sub_re]
  linarith

/-- Two-sided readout error for the first later atom, retaining the actual
inverse-character norm, which can be zero. -/
theorem corrected503_abs_error_le (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ)
    (sample : ℂ) (lo : 503 < Real.exp (2 * A)) (hi : Real.exp (2 * A) ≤ 509)
    {ε : ℝ} (accurate : ‖sample - correlation f (Real.log 503)‖ ≤ ε) :
    let coefficient := (primeWeight 503 : ℂ) * conj ((χ⁻¹) 503)
    |(physicalValue χ A f).re -
      ((firstOnlyValue χ A f).re - 2 * (coefficient * sample).re)| ≤
      2 * (primeWeight 503 * ‖(χ⁻¹) 503‖) * ε := by
  intro coefficient
  rw [corrected503_signed_error χ A f sample lo hi, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * ‖coefficient * (sample - correlation f (Real.log 503))‖ :=
      mul_le_mul_of_nonneg_left (Complex.abs_re_le_norm _) (by norm_num)
    _ = (2 * (primeWeight 503 * ‖(χ⁻¹) 503‖)) * ‖sample - correlation f (Real.log 503)‖ := by
      rw [norm_mul]
      simp only [coefficient, norm_mul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (primeWeight_nonneg _), Complex.norm_conj]
      ring
    _ ≤ _ := mul_le_mul_of_nonneg_left accurate (by positivity [primeWeight_nonneg 503])

/-- A present prime index can give zero correction for every test.
At modulus 503 its character argument is the nonunit zero. -/
theorem modulus503_firstOnly_exact (χ : DirichletCharacter ℂ 503) (A : ℝ) (f : ℝ → ℂ)
    (lo : 503 < Real.exp (2 * A)) (hi : Real.exp (2 * A) ≤ 509) :
    (physicalValue χ A f).re = (firstOnlyValue χ A f).re := by
  let : Fact (1 < (503 : ℕ)) := ⟨by decide⟩
  have hz : (χ⁻¹) (503 : ZMod 503) = 0 := by
    rw [show (503 : ZMod 503) = 0 from ZMod.natCast_self 503, MulChar.map_zero]
  have h := corrected503_signed_error χ A f 0 lo hi
  simp [hz] at h
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
