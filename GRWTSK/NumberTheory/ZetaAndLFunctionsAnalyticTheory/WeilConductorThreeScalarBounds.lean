/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoGammaPoleObservations
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeObservations

/-!
# Certified scalar gamma data for the actual conductor-three kernel

The conductor/parity identities transport the existing rational zeta gamma
enclosure to the unchanged odd conductor-three constant. The finite gamma
head at separation four is enclosed using a proved exponential bound and
exact rational endpoint arithmetic. These are scalar source observations;
the signed prime contribution and a matrix certificate remain separate.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen.ScalarBounds

open OddRootProjection
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

/-- The existing twenty-decimal enclosure of the actual circle constant. -/
def piBounds : Bounds := (3.14159265358979323846, 3.14159265358979323847)

theorem piBounds_sound : Encloses piBounds Real.pi :=
  ⟨Real.pi_gt_d20.le, Real.pi_lt_d20.le⟩

/-- Exact conductor and parity shifts of the maintained zeta constant. -/
theorem gammaConstant_three_one_eq :
    gammaConstant 3 1 = gammaConstant 1 0 + Real.log 3 + Real.pi := by
  rw [gammaConstant_odd_eq_even_add_pi, gammaConstant_even_eq_log_add 3 (by decide)]
  norm_num only [Nat.cast_ofNat]
  ring

/-- This enclosure reuses the actual Euler/digamma observation; no new
constant replaces the source gamma factor. -/
def gammaConstantBounds : Bounds :=
  add (add RadiusTwoGammaPoleObservations.gammaConstantBounds
    (RadiusTwoPrimeObservations.logBounds 3)) piBounds

theorem gammaConstantBounds_sound : Encloses gammaConstantBounds (gammaConstant 3 1) := by
  rw [gammaConstant_three_one_eq]
  exact add_sound (add_sound RadiusTwoGammaPoleObservations.gammaConstantBounds_sound
    (RadiusTwoPrimeObservations.logBounds_sound (by decide) (by decide))) piBounds_sound

/-- A small rational enclosure, checked against the complete reusable
endpoint construction rather than supplied as a numerical assumption. -/
theorem gammaConstant_three_one_bounds :
    -(1133 / 1000 : ℝ) ≤ gammaConstant 3 1 ∧
      gammaConstant 3 1 ≤ -(1131 / 1000 : ℝ) := by
  have hguard : -(1133 / 1000 : ℚ) ≤ gammaConstantBounds.1 ∧
      gammaConstantBounds.2 ≤ -(1131 / 1000 : ℚ) := by decide +kernel
  have h := gammaConstantBounds_sound
  have hLo : -(1133 / 1000 : ℝ) ≤ (gammaConstantBounds.1 : ℝ) := by
    simpa only [Rat.cast_neg, Rat.cast_div, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 hguard.1
  have hHi : (gammaConstantBounds.2 : ℝ) ≤ -(1131 / 1000 : ℝ) := by
    simpa only [Rat.cast_neg, Rat.cast_div, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 hguard.2
  exact ⟨hLo.trans h.1, h.2.trans hHi⟩

/-- Exact rational representation of the native odd gamma rate. -/
def gammaRateRat (m : ℕ) : ℚ := 2 * (m : ℚ) + 3 / 2

theorem gammaRateRat_cast (m : ℕ) : (gammaRateRat m : ℝ) = gammaRate m := by
  simp [gammaRateRat, gammaRate]

/-- At separation four every retained exponential is bounded by 1/256.
The proof uses the actual exponential and no floating computation. -/
theorem gammaDecay_four_le (m : ℕ) :
    Real.exp (-gammaRate m * 4) ≤ (1 / 256 : ℝ) := by
  have he : Real.exp (-1) ≤ (3 / 8 : ℝ) := by
    linarith [Real.exp_neg_one_lt_d9]
  have heq : Real.exp (-gammaRate m * 4) = Real.exp (-1) ^ (8 * m + 6) := by
    rw [← Real.exp_nat_mul]
    congr 1
    push_cast [gammaRate]
    ring
  rw [heq]
  calc
    _ ≤ (3 / 8 : ℝ) ^ (8 * m + 6) :=
      pow_le_pow_left₀ (Real.exp_pos _).le he _
    _ ≤ (3 / 8 : ℝ) ^ (6 : ℕ) :=
      pow_le_pow_of_le_one (by norm_num) (by norm_num) (by omega)
    _ ≤ _ := by norm_num

/-- Rational outward endpoints of one actual finite gamma term. -/
def gammaTermBounds (m : ℕ) : Bounds :=
  scale ((gammaRateRat m ^ 2)⁻¹) (255 / 256, 1)

theorem gammaTermBounds_sound (m : ℕ) :
    Encloses (gammaTermBounds m)
      ((1 - Real.exp (-gammaRate m * 4)) / gammaRate m ^ 2) := by
  have hnum : Encloses (255 / 256, 1) (1 - Real.exp (-gammaRate m * 4)) := by
    have he := gammaDecay_four_le m
    have hp := (Real.exp_pos (-gammaRate m * 4)).le
    norm_num only [Encloses, Rat.cast_div, Rat.cast_ofNat, Rat.cast_one]
    constructor <;> linarith
  have h := scale_sound ((gammaRateRat m ^ 2)⁻¹) hnum
  simpa only [gammaTermBounds, Rat.cast_inv, Rat.cast_pow, gammaRateRat_cast,
    div_eq_mul_inv, mul_comm] using h

/-- Finite gamma head enclosure at separation four; the source rate and
finite cutoff are the same as in `partialSourceKernel`. -/
def gammaHeadBounds (M : ℕ) : Bounds :=
  sum (Finset.range M) gammaTermBounds

theorem gammaHeadBounds_sound (M : ℕ) :
    Encloses (gammaHeadBounds M)
      (∑ m ∈ Finset.range M,
        (1 - Real.exp (-gammaRate m * 4)) / gammaRate m ^ 2) :=
  sum_sound (Finset.range M) (fun m _ => gammaTermBounds_sound m)

/-- The eight-term head has a rigorously checked rational enclosure. -/
theorem finiteGammaHead_eight_four_bounds :
    (3 / 5 : ℝ) ≤ (∑ m ∈ Finset.range 8,
      (1 - Real.exp (-gammaRate m * 4)) / gammaRate m ^ 2) ∧
    (∑ m ∈ Finset.range 8,
      (1 - Real.exp (-gammaRate m * 4)) / gammaRate m ^ 2) ≤ (61 / 100 : ℝ) := by
  have hguard : (3 / 5 : ℚ) ≤ (gammaHeadBounds 8).1 ∧
      (gammaHeadBounds 8).2 ≤ (61 / 100 : ℚ) := by decide +kernel
  have h := gammaHeadBounds_sound 8
  have hLo : (3 / 5 : ℝ) ≤ ((gammaHeadBounds 8).1 : ℝ) := by
    simpa only [Rat.cast_div, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 hguard.1
  have hHi : ((gammaHeadBounds 8).2 : ℝ) ≤ (61 / 100 : ℝ) := by
    simpa only [Rat.cast_div, Rat.cast_ofNat] using
      (Rat.cast_le (K := ℝ)).2 hguard.2
  exact ⟨hLo.trans h.1, h.2.trans hHi⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen.ScalarBounds
