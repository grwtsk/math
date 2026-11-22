/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalHyperbolic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSineInventoryPadding

/-!
# Signed pole moments and source sample enclosures

MSC2020: 11M06, 33B10, 65G20.
Consumer: the existing signed-energy and complete residual-Gram sample tables.
The ORIGINAL sinePoleCoefficient and polePort are retained. A signed finite
synthesis restores the literal integral; the pole output is -2*p(f)*sinh(t/2),
not a positive square. Both the moment and profile errors are paid.

SOURCE_PROOF_CANDIDATE. Lean parsing, elaboration, kernel replay, transitive
axiom audit and independent review NOT_RUN. See the adjacent provenance.
-/
set_option autoImplicit false
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PoleSampling

open OddRootProjection OddOutputTrace OddPoleMoment OddSineForm OddGammaOutput
open OddPrimePoleOutput FiniteSineOperator FiniteSineGammaQuadrature
open FiniteSineSpatialResidual GammaCutoffResidual SineInventoryPadding

/-- Endpoints of the positive magnitude; the alternating sign is added later. -/
def magnitudeLower (wl wu sl rl : ℚ) : ℚ :=
  2 * wl * sl * rl / (1 / 4 + wu ^ 2)

def magnitudeUpper (wl wu su ru : ℚ) : ℚ :=
  2 * wu * su * ru / (1 / 4 + wl ^ 2)

def coefficientCenter (n : ℕ) (wl wu sl su rl ru : ℚ) : ℚ :=
  (-1 : ℚ) ^ (n + 1) *
    (magnitudeLower wl wu sl rl + magnitudeUpper wl wu su ru) / 2

def coefficientRadius (wl wu sl su rl ru : ℚ) : ℚ :=
  (magnitudeUpper wl wu su ru - magnitudeLower wl wu sl rl) / 2

private theorem magnitude_bounds {w s r wl wu sl su rl ru : ℝ}
    (hwl : 0 ≤ wl) (hw : wl ≤ w ∧ w ≤ wu)
    (hsl : 0 ≤ sl) (hs : sl ≤ s ∧ s ≤ su)
    (hrl : 0 ≤ rl) (hr : rl ≤ r ∧ r ≤ ru) :
    2 * wl * sl * rl / (1 / 4 + wu ^ 2) ≤ 2 * w * s * r / (1 / 4 + w ^ 2) ∧
      2 * w * s * r / (1 / 4 + w ^ 2) ≤ 2 * wu * su * ru / (1 / 4 + wl ^ 2) := by
  have hw0 := hwl.trans hw.1
  have hs0 := hsl.trans hs.1
  have hr0 := hrl.trans hr.1
  have hwu0 := hw0.trans hw.2
  have hsu0 := hs0.trans hs.2
  have hru0 := hr0.trans hr.2
  have hnL : 2 * wl * sl * rl ≤ 2 * w * s * r := by
    have h := mul_le_mul (mul_le_mul hw.1 hs.1 hsl hw0) hr.1 hrl (mul_nonneg hw0 hs0)
    nlinarith
  have hnU : 2 * w * s * r ≤ 2 * wu * su * ru := by
    have h := mul_le_mul (mul_le_mul hw.2 hs.2 hs0 hwu0) hr.2 hr0 (mul_nonneg hwu0 hsu0)
    nlinarith
  have hdL : (1 : ℝ) / 4 + wl ^ 2 ≤ 1 / 4 + w ^ 2 := by
    nlinarith [pow_le_pow_left₀ hwl hw.1 2]
  have hdU : (1 : ℝ) / 4 + w ^ 2 ≤ 1 / 4 + wu ^ 2 := by
    nlinarith [pow_le_pow_left₀ hw0 hw.2 2]
  have hdLp : (0 : ℝ) < 1 / 4 + wl ^ 2 := by positivity
  have hdp : (0 : ℝ) < 1 / 4 + w ^ 2 := by positivity
  have hdUp : (0 : ℝ) < 1 / 4 + wu ^ 2 := by positivity
  have hn0 : 0 ≤ 2 * w * s * r := by positivity
  constructor
  · calc
      _ ≤ (2 * w * s * r) / (1 / 4 + wu ^ 2) := div_le_div_of_nonneg_right hnL hdUp.le
      _ ≤ _ := (div_le_div_iff₀ hdUp hdp).2 (mul_le_mul_of_nonneg_left hdU hn0)
  · calc
      _ ≤ (2 * w * s * r) / (1 / 4 + wl ^ 2) :=
        (div_le_div_iff₀ hdp hdLp).2 (mul_le_mul_of_nonneg_left hdL hn0)
      _ ≤ _ := div_le_div_of_nonneg_right hnU hdLp.le

/-- Rational scalar bounds enclose the ORIGINAL alternating source coefficient. -/
theorem coefficient_center_error (T : ℝ) (hT : 0 < T) (n : ℕ)
    (wl wu sl su rl ru : ℚ)
    (hwl : 0 ≤ wl) (hw : (wl : ℝ) ≤ frequency T n ∧ frequency T n ≤ (wu : ℝ))
    (hsl : 0 ≤ sl) (hs : (sl : ℝ) ≤ Real.sinh (T / 2) ∧ Real.sinh (T / 2) ≤ (su : ℝ))
    (hrl : 0 ≤ rl) (hr : (rl : ℝ) ≤ 1 / Real.sqrt T ∧ 1 / Real.sqrt T ≤ (ru : ℝ)) :
    |sinePoleCoefficient T n - (coefficientCenter n wl wu sl su rl ru : ℝ)| ≤
      (coefficientRadius wl wu sl su rl ru : ℝ) := by
  have hlR : (0 : ℝ) ≤ (wl : ℝ) := by exact_mod_cast hwl
  have hsR : (0 : ℝ) ≤ (sl : ℝ) := by exact_mod_cast hsl
  have hrR : (0 : ℝ) ≤ (rl : ℝ) := by exact_mod_cast hrl
  obtain ⟨hlo, hhi⟩ := magnitude_bounds hlR hw hsR hs hrR hr
  let z := 2 * frequency T n * Real.sinh (T / 2) * (1 / Real.sqrt T) /
    (1 / 4 + frequency T n ^ 2)
  have he : sinePoleCoefficient T n = (-1 : ℝ) ^ (n + 1) * z := by
    dsimp [sinePoleCoefficient, z]
    field_simp [(Real.sqrt_pos.mpr hT).ne',
      show (1 / 4 + frequency T n ^ 2 : ℝ) ≠ 0 by positivity]
    <;> ring
  have hm : |z - ((magnitudeLower wl wu sl rl + magnitudeUpper wl wu su ru : ℚ) : ℝ) / 2| ≤
      (coefficientRadius wl wu sl su rl ru : ℝ) := by
    dsimp [z, magnitudeLower, magnitudeUpper, coefficientRadius]
    push_cast
    exact abs_le.mpr ⟨by linarith, by linarith⟩
  rw [he]
  simp only [coefficientCenter, Rat.cast_div, Rat.cast_mul, Rat.cast_pow,
    Rat.cast_neg, Rat.cast_one, Rat.cast_ofNat]
  rw [show (-1 : ℝ) ^ (n + 1) * z -
      (-1 : ℝ) ^ (n + 1) * ((magnitudeLower wl wu sl rl + magnitudeUpper wl wu su ru : ℚ) : ℝ) / 2 =
      (-1 : ℝ) ^ (n + 1) *
        (z - ((magnitudeLower wl wu sl rl + magnitudeUpper wl wu su ru : ℚ) : ℝ) / 2) by ring,
    abs_mul]
  simpa only [abs_pow, abs_neg, abs_one, one_pow, one_mul] using hm

/-- Rational frequency endpoint at an integer radius. -/
def frequencyQ (T n : ℕ) (p : ℚ) : ℚ := p * n / T

def integerCenter (T n D : ℕ) (pl pu a b : ℚ) : ℚ :=
  coefficientCenter n (frequencyQ T n pl) (frequencyQ T n pu)
    (RationalHyperbolic.sinhEndpoint a) (RationalHyperbolic.sinhEndpoint b)
    (RationalPrimeWeights.reciprocalLower T D) (RationalPrimeWeights.reciprocalUpper T D)

def integerRadius (T n D : ℕ) (pl pu a b : ℚ) : ℚ :=
  coefficientRadius (frequencyQ T n pl) (frequencyQ T n pu)
    (RationalHyperbolic.sinhEndpoint a) (RationalHyperbolic.sinhEndpoint b)
    (RationalPrimeWeights.reciprocalLower T D) (RationalPrimeWeights.reciprocalUpper T D)

/-- Integer-window coefficient enclosure: no sinh or sqrt observation is a premise.
The pi endpoints remain explicit so that arbitrary certified precisions can be used. -/
theorem integer_coefficient_error (T n D N : ℕ) (hT : 0 < T) (hD : 0 < D)
    (pl pu a b : ℚ) (hp0 : 0 ≤ pl)
    (hpl : (pl : ℝ) ≤ Real.pi) (hpu : Real.pi ≤ (pu : ℝ))
    (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hla : RationalLogarithms.upper a N ≤ (T : ℚ) / 2)
    (hlb : (T : ℚ) / 2 ≤ RationalLogarithms.lower b N) :
    |sinePoleCoefficient (T : ℝ) n - (integerCenter T n D pl pu a b : ℝ)| ≤
      (integerRadius T n D pl pu a b : ℝ) := by
  have hTR : (0 : ℝ) < (T : ℝ) := by exact_mod_cast hT
  have hs := RationalHyperbolic.sinh_bounds_of_log_checks ((T : ℚ) / 2) a b N ha hb hla hlb
  simp only [Rat.cast_div, Rat.cast_natCast, Rat.cast_ofNat] at hs
  obtain ⟨hr0, hrl, hru⟩ := RationalPrimeWeights.reciprocal_enclosure
    (show 1 ≤ T by omega) hD
  have hr0Q : 0 ≤ RationalPrimeWeights.reciprocalLower T D := by exact_mod_cast hr0
  have hwl : 0 ≤ frequencyQ T n pl := by unfold frequencyQ; positivity
  have hw : (frequencyQ T n pl : ℝ) ≤ frequency (T : ℝ) n ∧
      frequency (T : ℝ) n ≤ (frequencyQ T n pu : ℝ) := by
    simp only [frequencyQ, frequency, Rat.cast_div, Rat.cast_mul, Rat.cast_natCast]
    exact ⟨div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_right hpl (Nat.cast_nonneg n)) hTR.le,
      div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_right hpu (Nat.cast_nonneg n)) hTR.le⟩
  exact coefficient_center_error (T : ℝ) hTR n _ _ _ _ _ _ hwl hw
    (RationalHyperbolic.sinhEndpoint_nonneg ha) hs hr0Q ⟨hrl, hru⟩

private theorem integrable_sine_sinh (T : ℝ) (n : ℕ) :
    Integrable (fun t : ℝ => zeroExtendedSine T n t * Real.sinh (t / 2)) := by
  have he : (fun t : ℝ => zeroExtendedSine T n t * Real.sinh (t / 2)) =
      (Icc (-T) T).indicator (fun t : ℝ =>
        (Real.sin (Real.pi * (n : ℝ) * t / T) / Real.sqrt T) * Real.sinh (t / 2)) := by
    funext t
    by_cases ht : t ∈ Icc (-T) T <;> simp [zeroExtendedSine, ht]
  rw [he, integrable_indicator_iff measurableSet_Icc]
  exact (by fun_prop : Continuous (fun t : ℝ =>
    (Real.sin (Real.pi * (n : ℝ) * t / T) / Real.sqrt T) * Real.sinh (t / 2))).integrableOn_Icc

/-- The literal integral equals the signed finite coefficient sum. -/
theorem finiteMoment_eq_sum {M : ℕ} (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ) :
    (∫ t : ℝ, finiteSine T c t * Real.sinh (t / 2)) =
      ∑ i, c i * sinePoleCoefficient T (i.val + 1) := by
  have he : (fun t : ℝ => finiteSine T c t * Real.sinh (t / 2)) =
      fun t => ∑ i, c i * (zeroExtendedSine T (i.val + 1) t * Real.sinh (t / 2)) := by
    funext t
    simp only [finiteSine, Finset.sum_mul, mul_assoc]
  rw [he, integral_finsetSum _ (fun i _ => (integrable_sine_sinh T (i.val + 1)).const_mul (c i))]
  simp_rw [integral_const_mul, integral_sine_mul_sinh T hT]

/-- Signed synthesis, not a sum of magnitudes; magnitudes enter ONLY the error. -/
theorem moment_error {M : ℕ} (T : ℝ) (hT : 0 < T) (c p e : Fin M → ℝ)
    (he : ∀ i, |sinePoleCoefficient T (i.val + 1) - p i| ≤ e i) :
    |(∫ t : ℝ, finiteSine T c t * Real.sinh (t / 2)) - ∑ i, c i * p i| ≤
      ∑ i, |c i| * e i := by
  rw [finiteMoment_eq_sum T hT c, ← Finset.sum_sub_distrib]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
  rw [← mul_sub, abs_mul]
  exact mul_le_mul_of_nonneg_left (he i) (abs_nonneg (c i))

/-- Both factors are uncertain; the cross allowance is retained. -/
theorem pole_product_error {p s p0 s0 ep es : ℝ}
    (hp : |p - p0| ≤ ep) (hs : |s - s0| ≤ es) :
    |(-2 * p * s) - (-2 * p0 * s0)| ≤
      2 * ((|s0| + es) * ep + |p0| * es) := by
  have hep : 0 ≤ ep := (abs_nonneg _).trans hp
  have hsa : |s| ≤ |s0| + es := by
    have h := abs_add (s - s0) s0
    rw [sub_add_cancel] at h
    linarith
  have hsplit : p * s - p0 * s0 = (p - p0) * s + p0 * (s - s0) := by ring
  have htri := abs_add ((p - p0) * s) (p0 * (s - s0))
  rw [← hsplit] at htri
  simp only [abs_mul] at htri
  have h1 := mul_le_mul hp hsa (abs_nonneg s) hep
  have h2 := mul_le_mul_of_nonneg_left hs (abs_nonneg p0)
  have hid : (-2 * p * s) - (-2 * p0 * s0) = (-2) * (p * s - p0 * s0) := by ring
  rw [hid, abs_mul]
  norm_num
  nlinarith

/-- Lower estimate of the negative pole square, with the sign unchanged. -/
theorem pole_square_lower {p p0 e : ℝ} (he : |p - p0| ≤ e) :
    -2 * p0 ^ 2 - 2 * e * (2 * |p0| + e) ≤ -2 * p ^ 2 := by
  have h := (abs_le.mp (pole_product_error he he)).1
  nlinarith

/-- The numerical value on the physical window, replacing only the pole factors. -/
noncomputable def poleSampleValue {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N B : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) (orders : ℕ → ℕ) (D : ℕ)
    (p0 s0 t : ℝ) : ℝ :=
  middleFunction T x N c t + (2 * tailWeight (x N)) * finiteSine T c t +
    (gammaConstant 1 0 - β) * finiteSine T c t -
    weightedIntegerOutput B orders D (finiteSine T c) t -
    2 * p0 * s0 - finiteSine T d t

/-- Return a pole-rounded observation to the existing integer-inventory column. -/
theorem integer_pole_sample_transfer {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N B : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) (orders : ℕ → ℕ) (D : ℕ)
    {p0 s0 ep es t v e : ℝ} (ht : t ∈ Icc (-T) T)
    (hp : |(∫ u : ℝ, finiteSine T c u * Real.sinh (u / 2)) - p0| ≤ ep)
    (hs : |Real.sinh (t / 2) - s0| ≤ es)
    (hsample : |poleSampleValue T β x N B c d orders D p0 s0 t - v| ≤ e) :
    |integerSpatialColumn T β x N B c d orders D t - v| ≤
      e + 2 * ((|s0| + es) * ep + |p0| * es) := by
  have hd : integerSpatialColumn T β x N B c d orders D t -
      poleSampleValue T β x N B c d orders D p0 s0 t =
      (-2 * (∫ u : ℝ, finiteSine T c u * Real.sinh (u / 2)) * Real.sinh (t / 2)) -
        (-2 * p0 * s0) := by
    simp only [integerSpatialColumn, poleSampleValue, indicator_of_mem ht, polePort]
    ring
  have htriangle := abs_sub_le (integerSpatialColumn T β x N B c d orders D t)
    (poleSampleValue T β x N B c d orders D p0 s0 t) v
  rw [hd] at htriangle
  linarith [pole_product_error hp hs]

/-- Complete return of the rounded pole AND prior prime rounding to spatialColumn.
Gamma quadrature, its row defect, and remaining scalar observations are separate. -/
theorem source_pole_sample_transfer {M K : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N B : ℕ) (hB : Real.exp (2 * T) ≤ (B : ℝ))
    (c : Fin M → ℝ) (d : Fin K → ℝ) (orders : ℕ → ℕ) {D : ℕ} (hD : 0 < D)
    {p0 s0 ep es t v e : ℝ} (ht : t ∈ Icc (-T) T)
    (hp : |(∫ u : ℝ, finiteSine T c u * Real.sinh (u / 2)) - p0| ≤ ep)
    (hs : |Real.sinh (t / 2) - s0| ≤ es)
    (hsample : |poleSampleValue T β x N B c d orders D p0 s0 t - v| ≤ e) :
    |spatialColumn T β x N c d t - v| ≤
      e + 2 * ((|s0| + es) * ep + |p0| * es) +
      (sineLipschitz T c : ℝ) * (PrimeLagSampling.budgetFor (Finset.Icc 2 B) orders : ℝ) +
      PrimeWeightSampling.amplitude T c *
        (PrimeWeightSampling.weightBudget (Finset.Icc 2 B) orders D : ℝ) :=
  integer_sample_transfer T hT β x N B hB c d orders hD ht
    (integer_pole_sample_transfer T β x N B c d orders D ht hp hs hsample)

end GRWTSK.NumberTheory.WeilQuadraticForm.PoleSampling
