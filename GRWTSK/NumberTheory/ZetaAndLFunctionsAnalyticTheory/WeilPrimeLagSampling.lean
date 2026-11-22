/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteSineSpatialResidual
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalLogarithms

/-!
# Certified logarithmic prime shifts in the original finite-sine source

The original active inventory and signed von Mangoldt weights are unchanged.
Both translation orientations are paid. Rational logarithm centers are NOT
identified with exact logarithms. Their finite series radii give a physical
row error and a whole-window pointwise sample surcharge. The latter returns
to the pre-existing `spatialColumn` used by the signed-energy/Gram theorems.

No sine, square-root, gamma-constant, pole-moment or prime-weight evaluator
is asserted here. The numerical inventory still needs its own exact admission.
SOURCE_PROOF_CANDIDATE. All Lean execution, certified numerical evaluation,
kernel replay, transitive axiom audit and independent review NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimeLagSampling

open LowSchur OddPrimePoleOutput OddSineForm OddRootProjection
open TranslationCutoffs TranslationEnergyDomain GammaCutoffResidual
open GammaGeometricQuadrature GammaBochnerRow FiniteSineOperator
open FiniteSineGammaQuadrature FiniteSineSpatialResidual

/-- Exact finite rational arithmetic once the finite inventory is supplied. -/
def budgetFor (S : Finset ℕ) (orders : ℕ → ℕ) : ℚ :=
  2 * ∑ q ∈ S, RationalLogarithms.upper (q : ℚ) (orders q) *
    RationalLogarithms.radius (q : ℚ) (orders q)

def lag (orders : ℕ → ℕ) (q : ℕ) : ℝ :=
  (RationalLogarithms.center (q : ℚ) (orders q) : ℝ)

theorem active_one_le {T : ℝ} {q : ℕ} (hq : q ∈ activePrimePowers T) : 1 ≤ q := by
  have h := (Finset.mem_filter.mp hq).2.1
  omega

/-- Conservative weight bound used ONLY for the lag-error allowance. -/
theorem primeWeight_le_log {q : ℕ} (hq : 1 ≤ q) : primeWeight q ≤ Real.log (q : ℝ) := by
  have hqR : (1 : ℝ) ≤ (q : ℝ) := by exact_mod_cast hq
  have hs : (1 : ℝ) ≤ Real.sqrt (q : ℝ) := by
    simpa only [Real.sqrt_one] using Real.sqrt_le_sqrt hqR
  exact (div_le_self ArithmeticFunction.vonMangoldt_nonneg hs).trans
    ArithmeticFunction.vonMangoldt_le_log

theorem lag_error {q : ℕ} (hq : 1 ≤ q) (orders : ℕ → ℕ) :
    |Real.log (q : ℝ) - lag orders q| ≤
      (RationalLogarithms.radius (q : ℚ) (orders q) : ℝ) := by
  simpa only [lag, Rat.cast_natCast] using
    RationalLogarithms.center_error (by exact_mod_cast hq : (1 : ℚ) ≤ (q : ℚ)) (orders q)

theorem budgetFor_nonneg {S : Finset ℕ} (hS : ∀ q ∈ S, 1 ≤ q) (orders : ℕ → ℕ) :
    0 ≤ budgetFor S orders := by
  unfold budgetFor
  apply mul_nonneg (by norm_num)
  apply Finset.sum_nonneg
  intro q hq
  have hqQ : (1 : ℚ) ≤ (q : ℚ) := by exact_mod_cast hS q hq
  have hqR : (1 : ℝ) ≤ (q : ℝ) := by exact_mod_cast hS q hq
  have huR : (0 : ℝ) ≤ (RationalLogarithms.upper (q : ℚ) (orders q) : ℝ) := by
    exact (Real.log_nonneg hqR).trans
      (by simpa only [Rat.cast_natCast] using (RationalLogarithms.log_enclosure hqQ (orders q)).2)
  have huQ : (0 : ℚ) ≤ RationalLogarithms.upper (q : ℚ) (orders q) := by exact_mod_cast huR
  exact mul_nonneg huQ (RationalLogarithms.radius_nonneg hqQ (orders q))

/-- The weights and complete source inventory are exact; only their lags change. -/
def roundedPrimeFunction (T : ℝ) (orders : ℕ → ℕ) (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  ∑ q ∈ activePrimePowers T,
    primeWeight q * (f (t + lag orders q) + f (t - lag orders q))

private theorem paired_value_error {f : ℝ → ℝ} {K : ℝ≥0}
    (hf : LipschitzWith K f) (t r s : ℝ) :
    |(f (t + r) + f (t - r)) - (f (t + s) + f (t - s))| ≤
      2 * (K : ℝ) * |r - s| := by
  have hp := hf.norm_sub_le (t + r) (t + s)
  have hm := hf.norm_sub_le (t - r) (t - s)
  rw [show (t + r) - (t + s) = r - s by ring] at hp
  rw [show (t - r) - (t - s) = -(r - s) by ring, norm_neg] at hm
  simp only [Real.norm_eq_abs] at hp hm
  rw [show (f (t + r) + f (t - r)) - (f (t + s) + f (t - s)) =
    (f (t + r) - f (t + s)) + (f (t - r) - f (t - s)) by ring]
  linarith [abs_add (f (t + r) - f (t + s)) (f (t - r) - f (t - s))]

/-- A bound at EVERY spatial point, including the translated support corners. -/
theorem primeFunction_error (T : ℝ) (orders : ℕ → ℕ)
    {f : ℝ → ℝ} {K : ℝ≥0} (hf : LipschitzWith K f) (t : ℝ) :
    |primeOutput T f t - roundedPrimeFunction T orders f t| ≤
      (K : ℝ) * (budgetFor (activePrimePowers T) orders : ℝ) := by
  rw [primeOutput, roundedPrimeFunction, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ q ∈ activePrimePowers T, |primeWeight q *
        ((f (t + Real.log q) + f (t - Real.log q)) -
          (f (t + lag orders q) + f (t - lag orders q)))| := by
      simpa only [mul_sub] using Finset.abs_sum_le_sum_abs
        (fun q => primeWeight q * (f (t + Real.log q) + f (t - Real.log q)) -
          primeWeight q * (f (t + lag orders q) + f (t - lag orders q))) (activePrimePowers T)
    _ ≤ ∑ q ∈ activePrimePowers T, 2 * (K : ℝ) *
        (RationalLogarithms.upper (q : ℚ) (orders q) : ℝ) *
        (RationalLogarithms.radius (q : ℚ) (orders q) : ℝ) := by
      apply Finset.sum_le_sum
      intro q hq
      have hq1 := active_one_le hq
      have hr : (0 : ℝ) ≤ (RationalLogarithms.radius (q : ℚ) (orders q) : ℝ) := by
        exact_mod_cast RationalLogarithms.radius_nonneg
          (by exact_mod_cast hq1 : (1 : ℚ) ≤ (q : ℚ)) (orders q)
      have hw := (primeWeight_le_log hq1).trans
        (by simpa only [Rat.cast_natCast] using
          (RationalLogarithms.log_enclosure
            (by exact_mod_cast hq1 : (1 : ℚ) ≤ (q : ℚ)) (orders q)).2)
      rw [abs_mul, abs_of_nonneg (primeWeight_nonneg q)]
      have hp := (paired_value_error hf t (Real.log q) (lag orders q)).trans
        (mul_le_mul_of_nonneg_left (lag_error hq1 orders) (by positivity))
      calc
        _ ≤ primeWeight q * (2 * (K : ℝ) *
            (RationalLogarithms.radius (q : ℚ) (orders q) : ℝ)) :=
          mul_le_mul_of_nonneg_left hp (primeWeight_nonneg q)
        _ ≤ _ := by nlinarith [mul_le_mul_of_nonneg_right hw
          (show 0 ≤ 2 * (K : ℝ) * (RationalLogarithms.radius (q : ℚ) (orders q) : ℝ) by positivity)]
    _ = _ := by simp [budgetFor, Finset.mul_sum, mul_assoc, mul_left_comm, mul_comm]

/-- A finite expression with rational prime lags, not an altered source form. -/
def roundedSpatialColumn {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) (orders : ℕ → ℕ) (t : ℝ) : ℝ :=
  (Icc (-T) T).indicator (middleFunction T x N c) t +
    (2 * tailWeight (x N)) * finiteSine T c t +
    (Icc (-T) T).indicator (fun u =>
      (gammaConstant 1 0 - β) * finiteSine T c u -
      roundedPrimeFunction T orders (finiteSine T c) u +
      polePort T c * Real.sinh (u / 2)) t - finiteSine T d t

theorem spatial_difference {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) (orders : ℕ → ℕ)
    {t : ℝ} (ht : t ∈ Icc (-T) T) :
    spatialColumn T β x N c d t - roundedSpatialColumn T β x N c d orders t =
      roundedPrimeFunction T orders (finiteSine T c) t - primeOutput T (finiteSine T c) t := by
  simp only [spatialColumn, spatialOutput, primePoleOutput, roundedSpatialColumn,
    indicator_of_mem ht]
  ring

/-- Recover an EXACT-source sample radius from a rounded-prime-lag sample.
The original constant, gamma weights, pole port and input normalization remain. -/
theorem spatial_sample_transfer {M K : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : Fin M → ℝ) (d : Fin K → ℝ)
    (orders : ℕ → ℕ) {t p e : ℝ} (ht : t ∈ Icc (-T) T)
    (hsample : |roundedSpatialColumn T β x N c d orders t - p| ≤ e) :
    |spatialColumn T β x N c d t - p| ≤
      e + (sineLipschitz T c : ℝ) * (budgetFor (activePrimePowers T) orders : ℝ) := by
  have hp := primeFunction_error T orders (finiteSine_lipschitz T hT c) t
  have hd : |spatialColumn T β x N c d t -
      roundedSpatialColumn T β x N c d orders t| ≤
      (sineLipschitz T c : ℝ) * (budgetFor (activePrimePowers T) orders : ℝ) := by
    rw [spatial_difference T β x N c d orders ht, abs_sub_comm]
    exact hp
  linarith [abs_sub_le (spatialColumn T β x N c d t)
    (roundedSpatialColumn T β x N c d orders t) p]

/-- Whole-line L2 counterpart: both shifts are controlled by the physical slope. -/
theorem paired_translation_error {f : Physical} {D : ℝ}
    (hD : TranslationSlope f D) (r s : ℝ) :
    ‖(translate r f + translate (-r) f) - (translate s f + translate (-s) f)‖ ≤
      2 * |r - s| * D := by
  have hid : (translate r f + translate (-r) f) - (translate s f + translate (-s) f) =
      (translate r f - translate s f) + (translate (-r) f - translate (-s) f) := by abel
  rw [hid]
  have hp := translate_difference_norm_le hD r s
  have hm := translate_difference_norm_le hD (-r) (-s)
  rw [neg_sub_neg, abs_sub_comm s r] at hm
  exact (norm_add_le _ _).trans (by linarith)

/-- One actual arithmetic summand, not a whole-window positivity certificate. -/
theorem prime_two_rounding_example {f : ℝ → ℝ} {K : ℝ≥0}
    (hf : LipschitzWith K f) (t : ℝ) :
    |primeWeight 2 * ((f (t + Real.log 2) + f (t - Real.log 2)) -
      (f (t + (749 / 1080 : ℝ)) + f (t - (749 / 1080 : ℝ))))| ≤ (K : ℝ) / 1296 := by
  have hp := (paired_value_error hf t (Real.log 2) (749 / 1080)).trans
    (mul_le_mul_of_nonneg_left RationalLogarithms.log_two_center_error (by positivity))
  have hp' : |(f (t + Real.log 2) + f (t - Real.log 2)) -
      (f (t + (749 / 1080 : ℝ)) + f (t - (749 / 1080 : ℝ)))| ≤ (K : ℝ) / 972 := by
    linarith
  have hw0 := primeWeight_nonneg 2
  have hw : primeWeight 2 ≤ (3 / 4 : ℝ) := by
    have h := primeWeight_le_log (by norm_num : 1 ≤ (2 : ℕ))
    have hu := RationalLogarithms.log_two_rational_example.2
    norm_num at h
    linarith
  rw [abs_mul, abs_of_nonneg hw0]
  calc
    _ ≤ primeWeight 2 * ((K : ℝ) / 972) := mul_le_mul_of_nonneg_left hp' hw0
    _ ≤ (3 / 4 : ℝ) * ((K : ℝ) / 972) := mul_le_mul_of_nonneg_right hw (by positivity)
    _ = _ := by ring

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimeLagSampling
