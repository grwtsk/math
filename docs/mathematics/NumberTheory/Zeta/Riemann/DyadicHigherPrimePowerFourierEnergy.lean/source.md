# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerFourierEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a30d045d6a25def5cbb21cd218a726c1b0469e6e` · SHA-256 `671beb3d035320fea6a8bb996908a5f044475a530e897738baa9deed6d2694ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerDFTRemainder
import Mathlib.Analysis.PSeries
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Complete higher-prime-power Fourier energy is square-root harmless

The higher-prime-power correction to one nonzero Fourier coordinate is bounded
by its total weighted octave mass divided by the Fourier frequency.

Consequently the squared mode energies are dominated by

  const * M_X^2 / k^2.

The integer p-series with p=2 is summable. Therefore the entire
higher-prime-power Fourier correction is summable, with total energy bounded by
a universal constant times M_X^2.

Since the previous module proves M_X = O(X^(-1/2)), the complete higher-power
Fourier energy is O(X^(-1)).

The difficult all-scale witness is therefore prime-only up to a source-derived
square-root remainder.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
HIGHER_PRIME_POWER_FULL_FOURIER_ENERGY_CONTROLLED.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Exact norm of the Fourier primitive denominator. -/
theorem fourierFrequencyDenominator_norm (k : ℤ) :
    ‖(-2 * Real.pi * Complex.I * k : ℂ)‖ =
      2 * Real.pi * |(k : ℝ)| := by
  simp only [norm_mul, norm_neg, Complex.norm_ofNat,
    Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg Real.pi_pos.le,
    Complex.norm_I, mul_one, Complex.norm_intCast]

/-- Coarse but universal lower bound on the denominator by the integer
frequency magnitude. -/
theorem frequency_abs_le_denominator_norm (k : ℤ) :
    |(k : ℝ)| ≤ ‖(-2 * Real.pi * Complex.I * k : ℂ)‖ := by
  rw [fourierFrequencyDenominator_norm]
  have hpi : (1 : ℝ) ≤ 2 * Real.pi := by
    nlinarith [Real.pi_gt_three]
  have hk0 : 0 ≤ |(k : ℝ)| := abs_nonneg _
  nlinarith

/-- Totalized higher-prime-power mode energy. -/
def higherPrimePowerFourierModeEnergy
    (X : ℕ) (k : ℤ) : ℝ :=
  if k = 0 then
    0
  else
    ‖greenHigherPrimePowerFourierPrimeCoordinate X k‖^2

theorem higherPrimePowerFourierModeEnergy_nonnegative
    (X : ℕ) (k : ℤ) :
    0 ≤ higherPrimePowerFourierModeEnergy X k := by
  unfold higherPrimePowerFourierModeEnergy
  split_ifs
  · exact le_rfl
  · positivity

/-- Universal p-series majorant for every mode. -/
theorem higherPrimePowerFourierModeEnergy_le_pSeries
    (X : ℕ) (k : ℤ) :
    higherPrimePowerFourierModeEnergy X k ≤
      4 * (higherPrimePowerWindowMass X)^2 /
        ((k : ℝ)^2) := by
  by_cases hk : k = 0
  · subst k
    simp [higherPrimePowerFourierModeEnergy]
  · rw [higherPrimePowerFourierModeEnergy, if_neg hk]
    have hkabs : 0 < |(k : ℝ)| := abs_pos.mpr (by exact_mod_cast hk)
    have hM : 0 ≤ higherPrimePowerWindowMass X :=
      higherPrimePowerWindowMass_nonnegative X
    have hcoord :=
      greenHigherPrimePowerFourierPrimeCoordinate_norm_le hk X
    have hden :
        |(k : ℝ)| ≤ ‖(-2 * Real.pi * Complex.I * k : ℂ)‖ :=
      frequency_abs_le_denominator_norm k
    have hcoarse :
        ‖greenHigherPrimePowerFourierPrimeCoordinate X k‖ ≤
          2 * higherPrimePowerWindowMass X / |(k : ℝ)| := by
      calc
        ‖greenHigherPrimePowerFourierPrimeCoordinate X k‖
            ≤ (2 * higherPrimePowerWindowMass X) /
                ‖(-2 * Real.pi * Complex.I * k : ℂ)‖ := hcoord
        _ ≤ (2 * higherPrimePowerWindowMass X) / |(k : ℝ)| := by
          exact div_le_div_of_nonneg_left
            (by positivity)
            hkabs
            hden
    have hsq :
        ‖greenHigherPrimePowerFourierPrimeCoordinate X k‖^2 ≤
          (2 * higherPrimePowerWindowMass X / |(k : ℝ)|)^2 := by
      exact (sq_le_sq₀ (norm_nonneg _)
        (by positivity : 0 ≤
          2 * higherPrimePowerWindowMass X / |(k : ℝ)|)).2 hcoarse
    calc
      ‖greenHigherPrimePowerFourierPrimeCoordinate X k‖^2
          ≤ (2 * higherPrimePowerWindowMass X / |(k : ℝ)|)^2 := hsq
      _ = 4 * (higherPrimePowerWindowMass X)^2 / ((k : ℝ)^2) := by
        rw [div_pow, sq_abs]
        ring

/-- The complete higher-prime-power mode-energy sequence is summable. -/
theorem higherPrimePowerFourierModeEnergy_summable
    (X : ℕ) :
    Summable (higherPrimePowerFourierModeEnergy X) := by
  have hp :
      Summable (fun k : ℤ => 1 / (k : ℝ)^2) :=
    (Real.summable_one_div_int_pow (p := 2)).mpr (by norm_num)
  have hmajor :
      Summable
        (fun k : ℤ =>
          4 * (higherPrimePowerWindowMass X)^2 /
            ((k : ℝ)^2)) := by
    simpa only [one_div, div_eq_mul_inv, one_mul] using
      hp.mul_left (4 * (higherPrimePowerWindowMass X)^2)
  exact Summable.of_nonneg_of_le
    (higherPrimePowerFourierModeEnergy_nonnegative X)
    (higherPrimePowerFourierModeEnergy_le_pSeries X)
    hmajor

/-- Universal p-series constant controlling the full higher-power channel. -/
def higherPrimePowerFrequencyConstant : ℝ :=
  ∑' k : ℤ, 4 / ((k : ℝ)^2)

theorem higherPrimePowerFrequencyConstant_nonnegative :
    0 ≤ higherPrimePowerFrequencyConstant := by
  unfold higherPrimePowerFrequencyConstant
  exact tsum_nonneg (fun k => by positivity)

/-- Total higher-prime-power Fourier energy is controlled by weighted
higher-prime-power mass squared. -/
theorem higherPrimePowerFourierEnergy_le_mass_sq
    (X : ℕ) :
    (∑' k : ℤ, higherPrimePowerFourierModeEnergy X k) ≤
      higherPrimePowerFrequencyConstant *
        (higherPrimePowerWindowMass X)^2 := by
  have hsum := higherPrimePowerFourierModeEnergy_summable X
  have hp :
      Summable (fun k : ℤ => 4 / ((k : ℝ)^2)) := by
    have h :=
      (Real.summable_one_div_int_pow (p := 2)).mpr (by norm_num)
    simpa only [one_div, div_eq_mul_inv, one_mul] using h.mul_left 4
  have hmajor :
      Summable
        (fun k : ℤ =>
          (4 / ((k : ℝ)^2)) *
            (higherPrimePowerWindowMass X)^2) :=
    hp.mul_right _
  calc
    (∑' k : ℤ, higherPrimePowerFourierModeEnergy X k)
        ≤ ∑' k : ℤ,
            (4 / ((k : ℝ)^2)) *
              (higherPrimePowerWindowMass X)^2 := by
      exact hsum.tsum_le_tsum
        (fun k => by
          have h := higherPrimePowerFourierModeEnergy_le_pSeries X k
          simpa [div_eq_mul_inv, mul_assoc, mul_left_comm, mul_comm] using h)
        hmajor
    _ = higherPrimePowerFrequencyConstant *
        (higherPrimePowerWindowMass X)^2 := by
      unfold higherPrimePowerFrequencyConstant
      exact hp.tsum_mul_right _

end GRWTSK.RiemannHypothesis
```
