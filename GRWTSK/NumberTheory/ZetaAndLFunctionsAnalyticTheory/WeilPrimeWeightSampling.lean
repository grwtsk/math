/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeLagSampling
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalPrimeWeights

/-!
# Paying prime-weight and prime-lag rounding in the original spatial source

MSC2020: 11M06, 42A38, 65G20. Consumers: the existing signed-energy lower
matrix and complete spatial residual Gram, via their exact-source samples.
Both orientations and every original inventory label remain. Weight rounding
is charged on the already lag-rounded input, so no mixed error is omitted.
The original negative pole, gamma output, physical shift and head are unchanged.

SOURCE_PROOF_CANDIDATE. Lean parsing, elaboration, kernel replay, axiom audit
and independent review NOT_RUN. No numerical stage sign is supplied.
-/
set_option autoImplicit false
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimeWeightSampling

open LowSchur OddPrimePoleOutput OddSineForm OddRootProjection
open GammaCutoffResidual GammaGeometricQuadrature FiniteSineOperator
open FiniteSineGammaQuadrature FiniteSineSpatialResidual

/-- Exact rational arithmetic on an admitted finite inventory. -/
def weightBudget (S : Finset ℕ) (orders : ℕ → ℕ) (D : ℕ) : ℚ :=
  2 * ∑ q ∈ S, RationalPrimeWeights.radius q (orders q) D

theorem weightBudget_nonneg {S : Finset ℕ} (hS : ∀ q ∈ S, 1 ≤ q)
    (orders : ℕ → ℕ) {D : ℕ} (hD : 0 < D) : 0 ≤ weightBudget S orders D := by
  unfold weightBudget
  exact mul_nonneg (by norm_num) (Finset.sum_nonneg (fun q hq =>
    RationalPrimeWeights.radius_nonneg (hS q hq) hD (orders q)))

/-- Also supplies a rational normalization bound for integer cofinal radii. -/
def rationalAmplitude {M : ℕ} (T D : ℕ) (c : Fin M → ℚ) : ℚ :=
  (∑ i, |c i|) * RationalPrimeWeights.reciprocalUpper T D

noncomputable section

/-- A global pointwise bound for the original finite-sine input. -/
def amplitude {M : ℕ} (T : ℝ) (c : Fin M → ℝ) : ℝ :=
  (∑ i, |c i|) / Real.sqrt T

theorem amplitude_nonneg {M : ℕ} (T : ℝ) (c : Fin M → ℝ) : 0 ≤ amplitude T c := by
  exact div_nonneg (Finset.sum_nonneg (fun _ _ => abs_nonneg _)) (Real.sqrt_nonneg _)

theorem finiteSine_abs_le {M : ℕ} (T : ℝ) (hT : 0 < T) (c : Fin M → ℝ) (t : ℝ) :
    |finiteSine T c t| ≤ amplitude T c := by
  have hs (n : ℕ) : |zeroExtendedSine T n t| ≤ 1 / Real.sqrt T := by
    by_cases ht : t ∈ Icc (-T) T
    · simp only [zeroExtendedSine, if_pos ht, abs_div,
        abs_of_nonneg (Real.sqrt_nonneg T)]
      exact div_le_div_of_nonneg_right (Real.abs_sin_le_one _) (Real.sqrt_nonneg T)
    · simp only [zeroExtendedSine, if_neg ht, abs_zero]
      positivity
  calc
    |finiteSine T c t| ≤ ∑ i, |c i * zeroExtendedSine T (i.val + 1) t| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ i, |c i| * (1 / Real.sqrt T) := by
      apply Finset.sum_le_sum
      intro i _
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_left (hs _) (abs_nonneg _)
    _ = amplitude T c := by
      rw [← Finset.sum_mul]
      unfold amplitude
      ring

/-- No exact real sqrt remains in the right-hand side. -/
theorem amplitude_le_rational {M T D : ℕ} (hT : 1 ≤ T) (hD : 0 < D)
    (c : Fin M → ℚ) :
    amplitude (T : ℝ) (fun i => (c i : ℝ)) ≤ (rationalAmplitude T D c : ℝ) := by
  have h := (RationalPrimeWeights.reciprocal_enclosure hT hD).2.2
  have hp := mul_le_mul_of_nonneg_left h
    (show 0 ≤ ∑ i, |(c i : ℝ)| from Finset.sum_nonneg (fun _ _ => abs_nonneg _))
  simpa [amplitude, rationalAmplitude, div_eq_mul_inv] using hp

/-- Mathematical evaluator with rational weights AND rational displacements.
The finite inventory is still the exact canonical source inventory. -/
def weightedPrimeFunction (T : ℝ) (orders : ℕ → ℕ) (D : ℕ) (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  ∑ q ∈ activePrimePowers T, (RationalPrimeWeights.center q (orders q) D : ℝ) *
    (f (t + PrimeLagSampling.lag orders q) + f (t - PrimeLagSampling.lag orders q))

/-- Uniform pointwise coefficient error, including zero-weight composite labels. -/
theorem coefficient_error (T : ℝ) (orders : ℕ → ℕ) {D : ℕ} (hD : 0 < D)
    {f : ℝ → ℝ} {A : ℝ} (hA : 0 ≤ A) (hf : ∀ t, |f t| ≤ A) (t : ℝ) :
    |PrimeLagSampling.roundedPrimeFunction T orders f t - weightedPrimeFunction T orders D f t| ≤
      A * (weightBudget (activePrimePowers T) orders D : ℝ) := by
  rw [PrimeLagSampling.roundedPrimeFunction, weightedPrimeFunction, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ q ∈ activePrimePowers T,
        |primeWeight q * (f (t + PrimeLagSampling.lag orders q) + f (t - PrimeLagSampling.lag orders q)) -
          (RationalPrimeWeights.center q (orders q) D : ℝ) *
            (f (t + PrimeLagSampling.lag orders q) + f (t - PrimeLagSampling.lag orders q))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ q ∈ activePrimePowers T, 2 * A * (RationalPrimeWeights.radius q (orders q) D : ℝ) := by
      apply Finset.sum_le_sum
      intro q hq
      have hc := RationalPrimeWeights.center_error (PrimeLagSampling.active_one_le hq) hD (orders q)
      have hr : (0 : ℝ) ≤ (RationalPrimeWeights.radius q (orders q) D : ℝ) := by
        exact_mod_cast RationalPrimeWeights.radius_nonneg (PrimeLagSampling.active_one_le hq) hD (orders q)
      have hv : |f (t + PrimeLagSampling.lag orders q) + f (t - PrimeLagSampling.lag orders q)| ≤ 2 * A :=
        (abs_add _ _).trans (by linarith [hf (t + PrimeLagSampling.lag orders q),
          hf (t - PrimeLagSampling.lag orders q)])
      rw [← sub_mul, abs_mul]
      have h := mul_le_mul hc hv (abs_nonneg _) hr
      nlinarith
    _ = _ := by
      simp [weightBudget, Finset.mul_sum, mul_assoc, mul_comm, mul_left_comm]

/-- Combined return to the original signed prime output, with no cross-error assumption. -/
theorem primeFunction_error (T : ℝ) (orders : ℕ → ℕ) {D : ℕ} (hD : 0 < D)
    {f : ℝ → ℝ} {K : ℝ≥0} (hK : LipschitzWith K f)
    {A : ℝ} (hA : 0 ≤ A) (hf : ∀ t, |f t| ≤ A) (t : ℝ) :
    |primeOutput T f t - weightedPrimeFunction T orders D f t| ≤
      (K : ℝ) * (PrimeLagSampling.budgetFor (activePrimePowers T) orders : ℝ) +
        A * (weightBudget (activePrimePowers T) orders D : ℝ) := by
  exact (abs_sub_le _ (PrimeLagSampling.roundedPrimeFunction T orders f t) _).trans
    (add_le_add (PrimeLagSampling.primeFunction_error T orders hK t)
      (coefficient_error T orders hD hA hf t))

/-- Only prime coefficients and prime lags change. Gamma, pole, shift and head do not. -/
def weightedSpatialColumn {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) (orders : ℕ → ℕ) (D : ℕ) (t : ℝ) : ℝ :=
  (Icc (-T) T).indicator (middleFunction T x N c) t +
    (2 * tailWeight (x N)) * finiteSine T c t +
    (Icc (-T) T).indicator (fun u =>
      (gammaConstant 1 0 - β) * finiteSine T c u -
      weightedPrimeFunction T orders D (finiteSine T c) u +
      polePort T c * Real.sinh (u / 2)) t - finiteSine T d t

theorem spatial_difference {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) (orders : ℕ → ℕ) (D : ℕ)
    {t : ℝ} (ht : t ∈ Icc (-T) T) :
    spatialColumn T β x N c d t - weightedSpatialColumn T β x N c d orders D t =
      weightedPrimeFunction T orders D (finiteSine T c) t - primeOutput T (finiteSine T c) t := by
  simp only [spatialColumn, spatialOutput, primePoleOutput, weightedSpatialColumn, indicator_of_mem ht]
  ring

/-- Exact-source sample enclosure, for the original normalized input and both prime shifts. -/
theorem source_sample_transfer {M K : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : Fin M → ℝ) (d : Fin K → ℝ)
    (orders : ℕ → ℕ) {D : ℕ} (hD : 0 < D) {t p e : ℝ}
    (ht : t ∈ Icc (-T) T)
    (hsample : |weightedSpatialColumn T β x N c d orders D t - p| ≤ e) :
    |spatialColumn T β x N c d t - p| ≤ e +
      amplitude T c * (weightBudget (activePrimePowers T) orders D : ℝ) +
      (sineLipschitz T c : ℝ) * (PrimeLagSampling.budgetFor (activePrimePowers T) orders : ℝ) := by
  have hp := primeFunction_error T orders hD (finiteSine_lipschitz T hT c)
    (amplitude_nonneg T c) (finiteSine_abs_le T hT c) t
  have hd : |spatialColumn T β x N c d t - weightedSpatialColumn T β x N c d orders D t| ≤
      (sineLipschitz T c : ℝ) * (PrimeLagSampling.budgetFor (activePrimePowers T) orders : ℝ) +
      amplitude T c * (weightBudget (activePrimePowers T) orders D : ℝ) := by
    rw [spatial_difference T β x N c d orders D ht, abs_sub_comm]
    exact hp
  have h := (abs_sub_le (spatialColumn T β x N c d t)
    (weightedSpatialColumn T β x N c d orders D t) p).trans (add_le_add hd hsample)
  linarith

/-- A fully rational surcharge can feed BOTH existing rational-sample consumers. -/
theorem rational_sample_transfer {M K : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : Fin M → ℝ) (d : Fin K → ℝ)
    (orders : ℕ → ℕ) {D : ℕ} (hD : 0 < D) (A B p e : ℚ) {t : ℝ}
    (hA : amplitude T c ≤ (A : ℝ)) (hB : (sineLipschitz T c : ℝ) ≤ (B : ℝ))
    (ht : t ∈ Icc (-T) T)
    (hsample : |weightedSpatialColumn T β x N c d orders D t - (p : ℝ)| ≤ (e : ℝ)) :
    |spatialColumn T β x N c d t - (p : ℝ)| ≤
      ((e + A * weightBudget (activePrimePowers T) orders D +
        B * PrimeLagSampling.budgetFor (activePrimePowers T) orders : ℚ) : ℝ) := by
  have h := source_sample_transfer T hT β x N c d orders hD ht hsample
  have hw : (0 : ℝ) ≤ (weightBudget (activePrimePowers T) orders D : ℝ) := by
    exact_mod_cast weightBudget_nonneg (fun _ hq => PrimeLagSampling.active_one_le hq) orders hD
  have hl : (0 : ℝ) ≤ (PrimeLagSampling.budgetFor (activePrimePowers T) orders : ℝ) := by
    exact_mod_cast PrimeLagSampling.budgetFor_nonneg
      (fun _ hq => PrimeLagSampling.active_one_le hq) orders
  have ha := mul_le_mul_of_nonneg_right hA hw
  have hb := mul_le_mul_of_nonneg_right hB hl
  simp only [Rat.cast_add, Rat.cast_mul]
  linarith

end

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimeWeightSampling
