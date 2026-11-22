/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalLogarithms
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilLowSchurEnclosure
import Mathlib.Data.Nat.Sqrt
import Mathlib.Tactic

/-!
# Rational enclosures of the original von Mangoldt weights

MSC2020: 11M06, 11A25, 65G20. Consumer: WeilPrimeWeightSampling.
Integer square comparisons generate reciprocal-square-root bounds; the existing
rational logarithm generator is applied to minFac, not to the prime power itself.
Non-prime-powers have exactly zero weight. No floating-point square root or
logarithm is an input. Positivity of q and of the resolution is explicit.

SOURCE_PROOF_CANDIDATE. Lean parsing, elaboration, kernel replay, axiom audit
and independent review NOT_RUN. See the adjacent individual provenance.
-/
set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RationalPrimeWeights

open LowSchur

/-- A computable integer square root, not the real square-root operation. -/
def rootIndex (q D : ℕ) : ℕ := Nat.sqrt (q * D ^ 2)

def reciprocalLower (q D : ℕ) : ℚ := (D : ℚ) / (rootIndex q D + 1)

def reciprocalUpper (q D : ℕ) : ℚ := (D : ℚ) / rootIndex q D

/-- Both checks are exact integer comparisons, including for very large D. -/
theorem rootIndex_bounds (q D : ℕ) :
    rootIndex q D ^ 2 ≤ q * D ^ 2 ∧ q * D ^ 2 < (rootIndex q D + 1) ^ 2 := by
  exact ⟨Nat.sqrt_le' _, by simpa [rootIndex] using Nat.lt_succ_sqrt' (q * D ^ 2)⟩

/-- Allows an evaluator's proposed integer root to be admitted by two squares. -/
theorem rootIndex_eq_of_checks (q D s : ℕ)
    (hl : s ^ 2 ≤ q * D ^ 2) (hu : q * D ^ 2 < (s + 1) ^ 2) :
    rootIndex q D = s :=
  ((Nat.eq_sqrt').2 ⟨hl, hu⟩).symm

theorem resolution_le_rootIndex {q : ℕ} (hq : 1 ≤ q) (D : ℕ) : D ≤ rootIndex q D := by
  apply Nat.le_sqrt'.2
  simpa only [one_mul] using Nat.mul_le_mul_right (D ^ 2) hq

/-- Return to the actual positive real square root; no numerical sqrt premise. -/
theorem reciprocal_enclosure {q D : ℕ} (hq : 1 ≤ q) (hD : 0 < D) :
    0 ≤ (reciprocalLower q D : ℝ) ∧
      (reciprocalLower q D : ℝ) ≤ 1 / Real.sqrt (q : ℝ) ∧
      1 / Real.sqrt (q : ℝ) ≤ (reciprocalUpper q D : ℝ) := by
  have hqR : (0 : ℝ) < (q : ℝ) := by exact_mod_cast (show 0 < q by omega)
  have hDR : (0 : ℝ) < (D : ℝ) := by exact_mod_cast hD
  have hsD := resolution_le_rootIndex hq D
  have hsR : (0 : ℝ) < (rootIndex q D : ℝ) := by exact_mod_cast hD.trans_le hsD
  have hroot := Real.sqrt_pos.2 hqR
  obtain ⟨hl, hu⟩ := rootIndex_bounds q D
  have hlR : (rootIndex q D : ℝ) ^ 2 ≤ (q : ℝ) * (D : ℝ) ^ 2 := by exact_mod_cast hl
  have huR : (q : ℝ) * (D : ℝ) ^ 2 < ((rootIndex q D : ℝ) + 1) ^ 2 := by exact_mod_cast hu
  have heq : (Real.sqrt (q : ℝ) * (D : ℝ)) ^ 2 = (q : ℝ) * (D : ℝ) ^ 2 := by
    rw [mul_pow, Real.sq_sqrt hqR.le]
  have hprod : 0 ≤ Real.sqrt (q : ℝ) * (D : ℝ) := by positivity
  have hlo : (rootIndex q D : ℝ) ≤ Real.sqrt (q : ℝ) * (D : ℝ) :=
    (sq_le_sq₀ hsR.le hprod).1 (by rw [heq]; exact hlR)
  have hup : Real.sqrt (q : ℝ) * (D : ℝ) ≤ (rootIndex q D : ℝ) + 1 :=
    (sq_le_sq₀ hprod (by positivity)).1 (by rw [heq]; exact huR.le)
  simp only [reciprocalLower, reciprocalUpper, Rat.cast_div, Rat.cast_natCast,
    Rat.cast_add, Rat.cast_one, Nat.cast_add, Nat.cast_one]
  refine ⟨by positivity, ?_, ?_⟩
  · apply (div_le_div_iff₀ (by positivity : (0 : ℝ) < (rootIndex q D : ℝ) + 1) hroot).2
    nlinarith
  · apply (div_le_div_iff₀ hroot hsR).2
    nlinarith

/-- Precision of the reciprocal generator is explicit and independent of q>=1. -/
theorem reciprocal_width_le {q D : ℕ} (hq : 1 ≤ q) (hD : 0 < D) :
    reciprocalUpper q D ≤ 1 ∧
      reciprocalUpper q D - reciprocalLower q D ≤ 1 / (D : ℚ) := by
  have hDQ : (0 : ℚ) < (D : ℚ) := by exact_mod_cast hD
  have hsD : (D : ℚ) ≤ (rootIndex q D : ℚ) := by exact_mod_cast resolution_le_rootIndex hq D
  have hsQ : (0 : ℚ) < (rootIndex q D : ℚ) := hDQ.trans_le hsD
  constructor
  · exact (div_le_one hsQ).2 hsD
  · have hid : reciprocalUpper q D - reciprocalLower q D =
        (D : ℚ) / ((rootIndex q D : ℚ) * ((rootIndex q D : ℚ) + 1)) := by
      unfold reciprocalUpper reciprocalLower
      field_simp [hsQ.ne', show (rootIndex q D : ℚ) + 1 ≠ 0 by positivity]
      <;> ring
    rw [hid]
    apply (div_le_div_iff₀ (by positivity) hDQ).2
    have hsq := pow_le_pow_left₀ hDQ.le hsD 2
    nlinarith

private theorem logLower_nonneg {p : ℚ} (hp : 1 ≤ p) (N : ℕ) :
    0 ≤ RationalLogarithms.lower p N := by
  unfold RationalLogarithms.lower
  apply mul_nonneg (by norm_num)
  apply Finset.sum_nonneg
  intro k _
  exact div_nonneg (pow_nonneg (RationalLogarithms.ratio_bounds hp).1 _)
    (by positivity)

/-- minFac gives log p for q=p^k, not k*log p. The branch is decidable over naturals. -/
def lower (q N D : ℕ) : ℚ :=
  if IsPrimePow q then
    RationalLogarithms.lower (Nat.minFac q : ℚ) N * reciprocalLower q D else 0

def upper (q N D : ℕ) : ℚ :=
  if IsPrimePow q then
    RationalLogarithms.upper (Nat.minFac q : ℚ) N * reciprocalUpper q D else 0

def center (q N D : ℕ) : ℚ := (lower q N D + upper q N D) / 2

def radius (q N D : ℕ) : ℚ := (upper q N D - lower q N D) / 2

/-- Zero-weight composites are kept in the inventory and evaluated exactly as zero. -/
theorem nonPrimePow_zero {q : ℕ} (hq : ¬IsPrimePow q) (N D : ℕ) :
    lower q N D = 0 ∧ upper q N D = 0 ∧ primeWeight q = 0 := by
  simp [lower, upper, primeWeight, ArithmeticFunction.vonMangoldt_apply, hq]

/-- Full coefficient enclosure for the original source weight on every q>=1. -/
theorem weight_enclosure {q D : ℕ} (hq : 1 ≤ q) (hD : 0 < D) (N : ℕ) :
    0 ≤ (lower q N D : ℝ) ∧
      (lower q N D : ℝ) ≤ primeWeight q ∧ primeWeight q ≤ (upper q N D : ℝ) := by
  by_cases hp : IsPrimePow q
  · have hmin : (1 : ℚ) ≤ (Nat.minFac q : ℚ) := by exact_mod_cast (show 1 ≤ Nat.minFac q from Nat.minFac_pos q)
    have hminR : (1 : ℝ) ≤ (Nat.minFac q : ℝ) := by exact_mod_cast (show 1 ≤ Nat.minFac q from Nat.minFac_pos q)
    obtain ⟨hl, hu⟩ := RationalLogarithms.log_enclosure hmin N
    simp only [Rat.cast_natCast] at hl hu
    obtain ⟨ha0, ha, hb⟩ := reciprocal_enclosure hq hD
    have hl0 : (0 : ℝ) ≤ (RationalLogarithms.lower (Nat.minFac q : ℚ) N : ℝ) := by
      exact_mod_cast logLower_nonneg hmin N
    have hlog0 := Real.log_nonneg hminR
    have hu0 := hlog0.trans hu
    have hsource : primeWeight q = Real.log (Nat.minFac q : ℝ) * (1 / Real.sqrt (q : ℝ)) := by
      simp [primeWeight, ArithmeticFunction.vonMangoldt_apply, hp, div_eq_mul_inv]
    simp only [hsource, lower, upper, if_pos hp, Rat.cast_mul]
    exact ⟨mul_nonneg hl0 ha0, mul_le_mul hl ha ha0 hlog0,
      mul_le_mul hu hb (by positivity) hu0⟩
  · obtain ⟨hl, hu, hw⟩ := nonPrimePow_zero hp N D
    simp [hl, hu, hw]

theorem radius_nonneg {q D : ℕ} (hq : 1 ≤ q) (hD : 0 < D) (N : ℕ) :
    0 ≤ radius q N D := by
  have h := weight_enclosure hq hD N
  have hle : lower q N D ≤ upper q N D := by exact_mod_cast h.2.1.trans h.2.2
  exact div_nonneg (sub_nonneg.mpr hle) (by norm_num)

/-- The finite center-radius pair encloses the genuine von Mangoldt/sqrt coefficient. -/
theorem center_error {q D : ℕ} (hq : 1 ≤ q) (hD : 0 < D) (N : ℕ) :
    |primeWeight q - (center q N D : ℝ)| ≤ (radius q N D : ℝ) := by
  have h := weight_enclosure hq hD N
  simp only [center, radius, Rat.cast_div, Rat.cast_add, Rat.cast_sub, Rat.cast_ofNat]
  exact abs_le.mpr ⟨by linarith [h.2.1, h.2.2], by linarith [h.2.1, h.2.2]⟩

/-- Accuracy for a fixed prime power; the log precision and sqrt resolution are separate. -/
theorem weight_width_le {q D : ℕ} (hq : 1 ≤ q) (hD : 0 < D)
    (hp : IsPrimePow q) (N : ℕ) :
    upper q N D - lower q N D ≤
      RationalLogarithms.width (Nat.minFac q : ℚ) N +
        RationalLogarithms.upper (Nat.minFac q : ℚ) N / (D : ℚ) := by
  have hmin : (1 : ℚ) ≤ (Nat.minFac q : ℚ) := by exact_mod_cast (show 1 ≤ Nat.minFac q from Nat.minFac_pos q)
  have hl0 := logLower_nonneg hmin N
  have hw0 : 0 ≤ RationalLogarithms.width (Nat.minFac q : ℚ) N := by
    have h := RationalLogarithms.radius_nonneg hmin N
    unfold RationalLogarithms.radius at h
    linarith
  have hLU : RationalLogarithms.lower (Nat.minFac q : ℚ) N ≤
      RationalLogarithms.upper (Nat.minFac q : ℚ) N := by
    unfold RationalLogarithms.upper
    linarith
  obtain ⟨hb, hgap⟩ := reciprocal_width_le hq hD
  have h1 := mul_le_mul_of_nonneg_left hb hw0
  have h2 := mul_le_mul_of_nonneg_left hgap hl0
  have h3 := div_le_div_of_nonneg_right hLU (by positivity : (0 : ℚ) ≤ (D : ℚ))
  have hid : upper q N D - lower q N D =
      RationalLogarithms.width (Nat.minFac q : ℚ) N * reciprocalUpper q D +
      RationalLogarithms.lower (Nat.minFac q : ℚ) N *
        (reciprocalUpper q D - reciprocalLower q D) := by
    simp only [lower, upper, if_pos hp, RationalLogarithms.upper]
    ring
  rw [hid]
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.RationalPrimeWeights
