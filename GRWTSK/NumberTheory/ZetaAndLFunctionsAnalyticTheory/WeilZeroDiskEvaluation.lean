/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.FourierDiskEnclosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPartialHeightEnclosure

/-!
# Zero-disk evaluation returned to the original primitive Weil form

MSC2020: 11M26, 11M41, 65G20. This supplies the aggregate finite-evaluation
premise of WeilPartialHeightEnclosure from individual full-complex zero
location bounds and separately validated transforms at reflected centers.
Actual zeros and analytic multiplicities are unchanged. No root existence,
uniqueness, numerical quadrature or universal certificate supply is inferred.
The final arithmetic consumers are primitive nonprincipal; zeta remains open.

SOURCE_PROOF_CANDIDATE. Elaboration, exact types, kernel replay, transitive
axioms and independent review NOT_RUN. Novelty UNASSESSED. The analytical
argument, declaration correspondence and hostile cases are in the adjacent md.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation OddRootProjection
open GRWTSK.NumberTheory.Conditional
open GRWTSK.NumberTheory.WeilNegativeWitness
  (CriticalStripZero zeroMultiplicity spectralCoordinate heightCount heightWindow)
open GRWTSK.MeasureAndIntegration.FourierDiskEnclosure

/-- Exact finite arithmetic on supplied center approximations, with true multiplicities.
Any rounding in computing this sum is charged separately at the final return. -/
def zeroDiskEstimate {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (S : Finset (CriticalStripZero χ)) (a b : CriticalStripZero χ → ℂ) : ℝ :=
  (∑ ρ ∈ S, (zeroMultiplicity χ ρ : ℂ) * (a ρ * conj (b ρ))).re

/-- Full finite evaluation error: location, both center errors, and their cross term. -/
def zeroDiskEvaluationBudget {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (f : ℝ → ℂ) (T : ℝ) (S : Finset (CriticalStripZero χ))
    (c a b : CriticalStripZero χ → ℂ) (δ e₊ e₋ : CriticalStripZero χ → ℝ) : ℝ :=
  ∑ ρ ∈ S, (zeroMultiplicity χ ρ : ℝ) * reflectedProductError (a ρ) (b ρ)
    (fourierDiskError f T (c ρ) (δ ρ) + e₊ ρ)
    (fourierDiskError f T (c ρ) (δ ρ) + e₋ ρ)

/-- Source-exact finite-head evaluation, allowing disks at nonreal spectral coordinates.
The disk centers need not be distinct, on-line, or themselves zeros. -/
theorem abs_partialHeightContribution_sub_zeroDiskEstimate_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (f : ℝ → ℂ) (T : ℝ) (hT : 0 ≤ T) (hi : Integrable f volume)
    (hs : ∀ t : ℝ, T < |t| → f t = 0)
    (S : Finset (CriticalStripZero χ))
    (c a b : CriticalStripZero χ → ℂ) (δ e₊ e₋ : CriticalStripZero χ → ℝ)
    (hδ : ∀ ρ ∈ S, 0 ≤ δ ρ)
    (hloc : ∀ ρ ∈ S, ‖spectralCoordinate ρ.1 - c ρ‖ ≤ δ ρ)
    (ha : ∀ ρ ∈ S,
      ‖(∫ t : ℝ, f t * Complex.exp (Complex.I * c ρ * (t : ℂ))) - a ρ‖ ≤ e₊ ρ)
    (hb : ∀ ρ ∈ S,
      ‖(∫ t : ℝ, f t * Complex.exp (Complex.I * conj (c ρ) * (t : ℂ))) - b ρ‖ ≤ e₋ ρ) :
    |partialHeightContribution χ f S - zeroDiskEstimate χ S a b| ≤
      zeroDiskEvaluationBudget χ f T S c a b δ e₊ e₋ := by
  let W (ρ : CriticalStripZero χ) : ℂ :=
    ∫ r : ℝ, correlation f r * Complex.exp ((ρ.1 - 1 / 2) * (r : ℂ))
  have hw (ρ : CriticalStripZero χ) (hρ : ρ ∈ S) :
      ‖W ρ - a ρ * conj (b ρ)‖ ≤ reflectedProductError (a ρ) (b ρ)
        (fourierDiskError f T (c ρ) (δ ρ) + e₊ ρ)
        (fourierDiskError f T (c ρ) (δ ρ) + e₋ ρ) := by
    dsimp only [W]
    rw [correlation_contour_weight_eq_fourier,
      fourier_correlation_eq_reflected_product f T hi hs]
    exact norm_reflected_fourier_product_sub_le_disk f T hT hi hs
      (spectralCoordinate ρ.1) (c ρ) (a ρ) (b ρ) (δ ρ) (e₊ ρ) (e₋ ρ)
      (hδ ρ hρ) (hloc ρ hρ) (ha ρ hρ) (hb ρ hρ)
  have he : partialHeightContribution χ f S - zeroDiskEstimate χ S a b =
      (∑ ρ ∈ S, (zeroMultiplicity χ ρ : ℂ) * (W ρ - a ρ * conj (b ρ))).re := by
    simp only [partialHeightContribution, zeroDiskEstimate, W, mul_sub,
      Finset.sum_sub_distrib, Complex.sub_re]
  rw [he]
  calc
    _ ≤ ‖∑ ρ ∈ S, (zeroMultiplicity χ ρ : ℂ) * (W ρ - a ρ * conj (b ρ))‖ :=
      Complex.abs_re_le_norm _
    _ ≤ ∑ ρ ∈ S, ‖(zeroMultiplicity χ ρ : ℂ) * (W ρ - a ρ * conj (b ρ))‖ :=
      norm_sum_le _ _
    _ ≤ zeroDiskEvaluationBudget χ f T S c a b δ e₊ e₋ := by
      apply Finset.sum_le_sum
      intro ρ hρ
      rw [norm_mul, Complex.norm_natCast]
      exact mul_le_mul_of_nonneg_left (hw ρ hρ) (Nat.cast_nonneg _)

private theorem disk_lift_integrable_supported {q : ℕ} [NeZero q]
    {χ : DirichletCharacter ℂ q} {T : ℝ} {f : ℝ → ℝ}
    (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f) :
    Integrable (liftReal f) volume ∧ (∀ t : ℝ, T < |t| → liftReal f t = 0) := by
  refine ⟨(Complex.ofRealCLM.contDiff.comp hsmooth).continuous.integrable_of_hasCompactSupport
    (hf.2.2.1.comp_left Complex.ofReal_zero), ?_⟩
  intro t ht
  apply hf.2.2.2.2.2.1 t
  intro hm
  exact (not_le_of_gt ht) (abs_le.mpr hm)

/-- Original arithmetic enclosure from local disk data, with every error charged:
infinite tail, unlisted head multiplicity, location/center evaluation, and final rounding. -/
theorem abs_primitiveArithmeticValue_sub_zeroDisk_estimate_le
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    {T H : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f)
    (J : ℕ) (hJ : (2 : ℝ) ^ J ≤ 1 + H)
    (S : Finset (CriticalStripZero χ)) (M : ℕ)
    (hS : S ⊆ heightWindow χ hp H) (hM : heightCount χ hp H ≤ M)
    (c a b : CriticalStripZero χ → ℂ) (δ e₊ e₋ : CriticalStripZero χ → ℝ)
    (hδ : ∀ ρ ∈ S, 0 ≤ δ ρ)
    (hloc : ∀ ρ ∈ S, ‖spectralCoordinate ρ.1 - c ρ‖ ≤ δ ρ)
    (ha : ∀ ρ ∈ S,
      ‖(∫ t : ℝ, liftReal f t * Complex.exp (Complex.I * c ρ * (t : ℂ))) - a ρ‖ ≤ e₊ ρ)
    (hb : ∀ ρ ∈ S,
      ‖(∫ t : ℝ, liftReal f t * Complex.exp (Complex.I * conj (c ρ) * (t : ℂ))) - b ρ‖ ≤ e₋ ρ)
    (v r : ℝ) (hround : |zeroDiskEstimate χ S a b - v| ≤ r) :
    |primitiveArithmeticValue χ hp hn T (liftReal f) - v| ≤
      primitiveHeightTailBudget D L (liftReal f) T J +
        partialHeightMissingBudget χ (liftReal f) T S M +
        (zeroDiskEvaluationBudget χ (liftReal f) T S c a b δ e₊ e₋ + r) := by
  obtain ⟨hi, hs⟩ := disk_lift_integrable_supported hf hsmooth
  have heval := abs_partialHeightContribution_sub_zeroDiskEstimate_le χ
    (liftReal f) T hf.1.le hi hs S c a b δ e₊ e₋ hδ hloc ha hb
  exact abs_primitiveArithmeticValue_sub_partial_estimate_le χ hp hn hD hL hcount
    hf hsmooth J hJ S M hS hM v _
    ((abs_sub_le _ (zeroDiskEstimate χ S a b) v).trans (add_le_add heval hround))

/-- One negative upper disk enclosure refutes the original same-character
critical-line condition. This theorem supplies no actual negative certificate. -/
theorem not_criticalLine_of_negative_zeroDisk_estimate
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {D L : ℝ} (hD : 0 ≤ D) (hL : 0 ≤ L)
    (hcount : ∀ U : ℝ, 2 ≤ U → (heightCount χ hp U : ℝ) ≤ D * U * (Real.log U + L))
    {T H : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) (hsmooth : ContDiff ℝ ∞ f)
    (J : ℕ) (hJ : (2 : ℝ) ^ J ≤ 1 + H)
    (S : Finset (CriticalStripZero χ)) (M : ℕ)
    (hS : S ⊆ heightWindow χ hp H) (hM : heightCount χ hp H ≤ M)
    (c a b : CriticalStripZero χ → ℂ) (δ e₊ e₋ : CriticalStripZero χ → ℝ)
    (hδ : ∀ ρ ∈ S, 0 ≤ δ ρ)
    (hloc : ∀ ρ ∈ S, ‖spectralCoordinate ρ.1 - c ρ‖ ≤ δ ρ)
    (ha : ∀ ρ ∈ S,
      ‖(∫ t : ℝ, liftReal f t * Complex.exp (Complex.I * c ρ * (t : ℂ))) - a ρ‖ ≤ e₊ ρ)
    (hb : ∀ ρ ∈ S,
      ‖(∫ t : ℝ, liftReal f t * Complex.exp (Complex.I * conj (c ρ) * (t : ℂ))) - b ρ‖ ≤ e₋ ρ)
    (v r : ℝ) (hround : |zeroDiskEstimate χ S a b - v| ≤ r)
    (hnegative : v + (primitiveHeightTailBudget D L (liftReal f) T J +
      partialHeightMissingBudget χ (liftReal f) T S M +
      (zeroDiskEvaluationBudget χ (liftReal f) T S c a b δ e₊ e₋ + r)) < 0) :
    ¬ DirichletCriticalLine χ := by
  intro hline
  have hnneg := primitiveArithmeticValue_nonneg_of_criticalLine_smooth χ hp hn hline hf hsmooth
  have herr := abs_primitiveArithmeticValue_sub_zeroDisk_estimate_le χ hp hn hD hL hcount
    hf hsmooth J hJ S M hS hM c a b δ e₊ e₋ hδ hloc ha hb v r hround
  linarith [(abs_le.mp herr).2]

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
