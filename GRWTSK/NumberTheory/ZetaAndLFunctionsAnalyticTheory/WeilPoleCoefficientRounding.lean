/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalPoleCoefficients
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPoleSampling
import GRWTSK.FunctionalAnalysis.SpatialGramEnclosure
import Mathlib.Tactic

/-!
# Paid rounding of the original negative odd pole

Consume the rational coefficient bounds, without changing the retained
archimedean-minus-prime source. Every real signed coefficient combination
is covered, including cancellations. The scalar minimizing port, both
integral pole orientations, and the negative rank-one sign are preserved.

The pointwise output theorem rounds only the pole port. The gamma and
prime terms and the sinh profile are still exact, not evaluated samples.
No complete output table, signed matrix, or cofinal coverage is claimed.
SOURCE_PROOF_CANDIDATE. Lean parsing/elaboration, kernel replay, transitive
axiom audit and independent review: NOT_RUN. See adjacent provenance.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PoleCoefficientRounding

open OddRootProjection OddOutputTrace OddSchurAccounting OddPoleMoment
open OddSineForm OddPrimePoleOutput OddConcreteResidual FiniteSineOperator
open RationalPoleCoefficients
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

variable {M : ℕ}

/-- Coefficient centers preserve the signs of the original synthesis. -/
def roundedMoment (x : Fin M → ℝ) : ℝ :=
  ∑ i, x i * (center (i.val + 1) : ℝ)

/-- Absolute values are used for the allowance, not for the source moment. -/
def momentError (x : Fin M → ℝ) : ℝ :=
  ∑ i, |x i| * (radius (i.val + 1) : ℝ)

theorem momentError_nonneg (x : Fin M → ℝ) : 0 ≤ momentError x := by
  apply Finset.sum_nonneg
  intro i _
  exact mul_nonneg (abs_nonneg _) (by exact_mod_cast radius_nonneg (i.val + 1))

/-- The entire moment is enclosed for EVERY real coefficient vector. -/
theorem moment_error (x : Fin M → ℝ) :
    |sinhMomentRow 2 M ⬝ᵥ x - roundedMoment x| ≤ momentError x := by
  have hid : sinhMomentRow 2 M ⬝ᵥ x - roundedMoment x =
      ∑ i, x i * (sinhMomentRow 2 M i - (center (i.val + 1) : ℝ)) := by
    simp only [dotProduct, roundedMoment, mul_sub, Finset.sum_sub_distrib]
    congr 1
    apply Finset.sum_congr rfl
    intro i _
    ring
  rw [hid]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro i _
  rw [abs_mul]
  exact mul_le_mul_of_nonneg_left (sinhMomentRow_error i) (abs_nonneg _)

/-- Reuse the canonical finite integral theorem added concurrently. -/
theorem integral_finiteSine_sinh (x : Fin M → ℝ) :
    (∫ t : ℝ, finiteSine 2 x t * Real.sinh (t / 2)) = sinhMomentRow 2 M ⬝ᵥ x := by
  rw [PoleSampling.finiteMoment_eq_sum 2 (by norm_num)]
  simp only [dotProduct]
  apply Finset.sum_congr rfl
  intro i _
  rw [sinhMomentRow_eq_sinePoleCoefficient 2 (by norm_num)]
  ring

theorem polePort_eq_rowMoment (x : Fin M → ℝ) :
    polePort 2 x = -2 * (sinhMomentRow 2 M ⬝ᵥ x) := by
  rw [polePort, integral_finiteSine_sinh]

theorem polePort_error (x : Fin M → ℝ) :
    |polePort 2 x - (-2 * roundedMoment x)| ≤ 2 * momentError x := by
  rw [polePort_eq_rowMoment,
    show -2 * (sinhMomentRow 2 M ⬝ᵥ x) - (-2 * roundedMoment x) =
      (-2) * (sinhMomentRow 2 M ⬝ᵥ x - roundedMoment x) by ring, abs_mul]
  rw [show |(-2 : ℝ)| = 2 by norm_num]
  exact mul_le_mul_of_nonneg_left (moment_error x) (by norm_num)

/-- Includes the quadratic error even when the approximated moment vanishes. -/
theorem negative_square_error {p q e : ℝ} (he : 0 ≤ e) (hp : |p - q| ≤ e) :
    |(-2 * p ^ 2) - (-2 * q ^ 2)| ≤ 2 * e * (2 * |q| + e) := by
  have hsum : |p + q| ≤ e + 2 * |q| := by
    have hid : p + q = (p - q) + 2 * q := by ring
    rw [hid]
    have h := abs_add (p - q) (2 * q)
    rw [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at h
    linarith
  have hm := mul_le_mul hp hsum (abs_nonneg (p + q)) he
  have hid : (-2 * p ^ 2) - (-2 * q ^ 2) = (-2) * ((p - q) * (p + q)) := by ring
  rw [hid, abs_mul, abs_mul]
  rw [show |(-2 : ℝ)| = 2 by norm_num]
  nlinarith

/-- Return to the ORIGINAL zeta matrix, leaving its entire retained core exact. -/
theorem zeta_quadratic_error (x : Fin M → ℝ) :
    |quadratic (zetaSineMatrix 2 M) x -
      (quadratic (retainedCoreMatrix 2 M) x - 2 * (roundedMoment x) ^ 2)| ≤
        2 * momentError x * (2 * |roundedMoment x| + momentError x) := by
  rw [zetaSineMatrix_quadratic]
  have h := negative_square_error (momentError_nonneg x) (moment_error x)
  have hid : (quadratic (retainedCoreMatrix 2 M) x - 2 * (sinhMomentRow 2 M ⬝ᵥ x) ^ 2) -
      (quadratic (retainedCoreMatrix 2 M) x - 2 * (roundedMoment x) ^ 2) =
      (-2 * (sinhMomentRow 2 M ⬝ᵥ x) ^ 2) - (-2 * (roundedMoment x) ^ 2) := by ring
  rw [hid]
  exact h

/-- A source lower bound pays the pole error in the correct direction. -/
theorem zeta_quadratic_lower (x : Fin M → ℝ) :
    quadratic (retainedCoreMatrix 2 M) x - 2 * (roundedMoment x) ^ 2 -
      2 * momentError x * (2 * |roundedMoment x| + momentError x) ≤
        quadratic (zetaSineMatrix 2 M) x := by
  have h := (abs_le.mp (zeta_quadratic_error x)).1
  linarith

/-- Two original integral orientations are used before oddness removes the even moment. -/
theorem pole_entry_eq_negative_product (i j : Fin M) :
    sinePoleEntry 2 (i.val + 1) (j.val + 1) =
      -2 * sinePoleCoefficient 2 (i.val + 1) * sinePoleCoefficient 2 (j.val + 1) := by
  rw [literal_pole_entry 2 M i j, coshMomentRow_eq_zero 2 (by norm_num),
    coshMomentRow_eq_zero 2 (by norm_num),
    sinhMomentRow_eq_sinePoleCoefficient 2 (by norm_num),
    sinhMomentRow_eq_sinePoleCoefficient 2 (by norm_num)]
  ring

/-- All mixed signs are kept in the finite rational pole matrix. -/
def entryCenter (m n : ℕ) : ℚ := -2 * center m * center n

def entryRadius (m n : ℕ) : ℚ :=
  2 * (|center m| * radius n + |center n| * radius m + radius m * radius n)

theorem entryRadius_symmetric (m n : ℕ) : entryRadius m n = entryRadius n m := by
  unfold entryRadius
  ring

/-- Full mixed-entry enclosure; neither factor error nor their product is omitted. -/
theorem pole_entry_error (i j : Fin M) :
    |sinePoleEntry 2 (i.val + 1) (j.val + 1) -
      (entryCenter (i.val + 1) (j.val + 1) : ℝ)| ≤
        (entryRadius (i.val + 1) (j.val + 1) : ℝ) := by
  have hi : (0 : ℝ) ≤ (radius (i.val + 1) : ℝ) := by
    exact_mod_cast radius_nonneg (i.val + 1)
  have hj : (0 : ℝ) ≤ (radius (j.val + 1) : ℝ) := by
    exact_mod_cast radius_nonneg (j.val + 1)
  have h := GRWTSK.FunctionalAnalysis.SpatialGramEnclosure.abs_product_sub_le
    hi hj (coefficient_error (i.val + 1)) (coefficient_error (j.val + 1))
  rw [pole_entry_eq_negative_product]
  simp only [entryCenter, entryRadius, Rat.cast_mul, Rat.cast_neg, Rat.cast_ofNat,
    Rat.cast_add, Rat.cast_abs]
  have hid : -2 * sinePoleCoefficient 2 (i.val + 1) * sinePoleCoefficient 2 (j.val + 1) -
      (-2 * (center (i.val + 1) : ℝ) * (center (j.val + 1) : ℝ)) =
      (-2) * (sinePoleCoefficient 2 (i.val + 1) * sinePoleCoefficient 2 (j.val + 1) -
        (center (i.val + 1) : ℝ) * (center (j.val + 1) : ℝ)) := by ring
  rw [hid, abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  exact mul_le_mul_of_nonneg_left h (by norm_num)

/-- Only the minimizing scalar port is rounded; the other source terms remain exact. -/
def roundedPoleOutput (β : ℝ) (x : Fin M → ℝ) (t : ℝ) : ℝ :=
  borderedTrialOutput 2 β x (-2 * roundedMoment x) t

private theorem sinh_window_bound {t : ℝ} (ht : t ∈ Icc (-2 : ℝ) 2) :
    |Real.sinh (t / 2)| ≤ (sinhUpper : ℝ) := by
  have harg : |t / 2| ≤ 1 := abs_le.mpr ⟨by linarith [ht.1], by linarith [ht.2]⟩
  have hh : |Real.sinh (t / 2)| ≤ Real.sinh 1 := by
    rw [Real.abs_sinh]
    exact Real.sinh_le_sinh.mpr harg
  exact hh.trans sinh_one_bounds.2

/-- Uniform over the WHOLE physical line, with the original window indicator. -/
theorem literalOutput_pole_rounding_error (β : ℝ) (x : Fin M → ℝ) (t : ℝ) :
    |literalOutput 2 β x t - roundedPoleOutput β x t| ≤
      2 * momentError x * (sinhUpper : ℝ) := by
  have he := momentError_nonneg x
  have hs0 : (0 : ℝ) ≤ (sinhUpper : ℝ) := by
    norm_num [sinhUpper, expUpper]
  by_cases ht : t ∈ Icc (-2 : ℝ) 2
  · have hid : literalOutput 2 β x t - roundedPoleOutput β x t =
        (polePort 2 x - (-2 * roundedMoment x)) * Real.sinh (t / 2) := by
      simp only [literalOutput, roundedPoleOutput, borderedTrialOutput,
        primePoleOutput, indicator_of_mem ht]
      ring
    rw [hid, abs_mul]
    exact mul_le_mul (polePort_error x) (sinh_window_bound ht)
      (abs_nonneg _) (by positivity)
  · simp only [literalOutput, roundedPoleOutput, borderedTrialOutput,
      primePoleOutput, indicator_of_notMem ht, zero_add, sub_self, abs_zero]
    positivity

/-- Arithmetic falsification control, not a counterexample to the Weil source. -/
theorem zero_center_still_needs_square_charge :
    |(-2 : ℚ) * 1 ^ 2 - (-2) * 0 ^ 2| = 2 ∧ 4 * |(0 : ℚ)| * 1 = 0 := by
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.PoleCoefficientRounding
