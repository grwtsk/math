# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SquareCompensation.Variant1e21533c2405f6b0078326bf32b7b061cae8d774494c04a2e5e73bd16a0b95ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fe671147bc94f3d8692130c65aa7f5efa0749a7` · SHA-256 `1e21533c2405f6b0078326bf32b7b061cae8d774494c04a2e5e73bd16a0b95ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-! Scratch research: the literal signed square compensation has a quadratic
scale error relative to an independently supplied weighted Mertens moment.
The arithmetic moment witness is an explicit hypothesis, not proved here.
This is not an RH witness, maintained-source integration, or full verification.
Human research direction: grwtsk contributors. Developed with OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SquareCompensation

open MeasureTheory
open scoped Interval
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm
open FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel
open FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
open FormalResearch.RiemannHypothesis.WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

theorem correlation_deriv_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hp : 0 < A := by linarith
  have hd := ((sourceCorrelation_contDiff A hp).differentiable (by norm_num) 0).hasDerivAt
  have hdneg : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (- (0 : ℝ)) := by
    simpa using hd
  have hn := hdneg.comp 0 (hasDerivAt_neg (0 : ℝ))
  simp only [Function.comp_def] at hn
  have he : (fun x : ℝ => sourceCorrelation explicitSecondDerivative A (-x)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  rw [he] at hn
  have hh := hd.unique hn
  simp only [mul_neg, mul_one] at hh
  linarith

def squareCurvatureCoefficient : ℝ := 651304 / 7623

theorem diagonal_deriv_linear_bound {A t : ℝ} (hA : 1 ≤ A) (ht : 0 ≤ t) :
    |deriv (diagonalCorrelation A) t| ≤ squareCurvatureCoefficient / A ^ 2 * t := by
  have h := sourceCorrelation_deriv_increment_bound hA 0 (2 * t)
  rw [zero_add, correlation_deriv_zero hA, sub_zero,
    abs_of_nonneg (by positivity : 0 ≤ 2 * t)] at h
  rw [diagonalCorrelation_deriv A t (by linarith), abs_mul]
  rw [abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  refine (mul_le_mul_of_nonneg_left h (by norm_num)).trans_eq ?_
  unfold squareCurvatureCoefficient
  field_simp
  ring

theorem centered_square_error_eq {A : ℝ} (hA : 1 ≤ A) (B : ℝ) :
    primeSquareMoment A - diagonalMainCoefficient A * A - B =
      -(∫ t in 0..A, (primeLogError t - B) * deriv (diagonalCorrelation A) t) := by
  have hp : 0 < A := by linarith
  have hc := diagonalCorrelation_contDiff A hp
  have hi := hc.continuous_deriv_one.intervalIntegrable (μ := volume) 0 A
  have hf : (∫ t in 0..A, deriv (diagonalCorrelation A) t) = -1 := by
    rw [intervalIntegral.integral_deriv_eq_sub
      (fun t _ => (hc.differentiable (by norm_num)) t) hi,
      diagonalCorrelation_at_upper A hp, diagonalCorrelation_at_zero A hA]
    norm_num
  have he := primeLogError_mul_deriv_intervalIntegrable 0 A (by linarith)
    (diagonalCorrelation A) hc
  have hprod : (∫ t in 0..A, (primeLogError t - B) * deriv (diagonalCorrelation A) t) =
      (∫ t in 0..A, primeLogError t * deriv (diagonalCorrelation A) t) + B := by
    simp_rw [sub_mul]
    rw [intervalIntegral.integral_sub he (hi.const_mul B),
      intervalIntegral.integral_const_mul, hf]
    ring
  rw [hprod, primeSquareMoment_exact_signed_error A hA]
  ring

theorem square_error_le_weighted_moment {A : ℝ} (hA : 1 ≤ A) (B W : ℝ)
    (hW : (∫ t in 0..A, t * |primeLogError t - B|) ≤ W) :
    |primeSquareMoment A - diagonalMainCoefficient A * A - B| ≤
      squareCurvatureCoefficient * W / A ^ 2 := by
  have hp : 0 < A := by linarith
  have hc := diagonalCorrelation_contDiff A hp
  have he0 : IntervalIntegrable primeLogError volume 0 A := by
    simpa using primeLogError_mul_deriv_intervalIntegrable 0 A (by linarith)
      id (by fun_prop : ContDiff ℝ 1 (id : ℝ → ℝ))
  have he : IntervalIntegrable (fun t => primeLogError t - B) volume 0 A :=
    he0.sub (continuous_const.intervalIntegrable _ _)
  have hweight : IntervalIntegrable (fun t => t * |primeLogError t - B|) volume 0 A := by
    simpa only [id_eq, mul_comm] using he.abs.mul_continuousOn continuous_id.continuousOn
  have hprod : IntervalIntegrable
      (fun t => (primeLogError t - B) * deriv (diagonalCorrelation A) t) volume 0 A :=
    he.mul_continuousOn hc.continuous_deriv_one.continuousOn
  have hmono : (∫ t in 0..A, |(primeLogError t - B) * deriv (diagonalCorrelation A) t|) ≤
      ∫ t in 0..A, (squareCurvatureCoefficient / A ^ 2) * (t * |primeLogError t - B|) := by
    apply intervalIntegral.integral_mono_on (by linarith) hprod.abs
      (hweight.const_mul (squareCurvatureCoefficient / A ^ 2))
    intro t ht
    have ht0 : 0 ≤ t := ht.1
    rw [abs_mul]
    calc
      _ ≤ |primeLogError t - B| * (squareCurvatureCoefficient / A ^ 2 * t) :=
        mul_le_mul_of_nonneg_left (diagonal_deriv_linear_bound hA ht0) (abs_nonneg _)
      _ = _ := by ring
  rw [centered_square_error_eq hA B, abs_neg]
  calc
    _ ≤ ∫ t in 0..A, |(primeLogError t - B) * deriv (diagonalCorrelation A) t| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ _ := hmono
    _ = squareCurvatureCoefficient / A ^ 2 * (∫ t in 0..A, t * |primeLogError t - B|) :=
      intervalIntegral.integral_const_mul _ _
    _ ≤ squareCurvatureCoefficient / A ^ 2 * W :=
      mul_le_mul_of_nonneg_left hW (by unfold squareCurvatureCoefficient; positivity)
    _ = _ := by ring

theorem square_error_uniform_of_weighted_moment (B W : ℝ)
    (hW : ∀ A : ℝ, 1 ≤ A → (∫ t in 0..A, t * |primeLogError t - B|) ≤ W) :
    ∀ A : ℝ, 1 ≤ A →
      |primeSquareMoment A - diagonalMainCoefficient A * A - B| ≤
        squareCurvatureCoefficient * W / A ^ 2 := by
  intro A hA
  exact square_error_le_weighted_moment hA B W (hW A hA)

#print axioms correlation_deriv_zero
#print axioms diagonal_deriv_linear_bound
#print axioms centered_square_error_eq
#print axioms square_error_le_weighted_moment
#print axioms square_error_uniform_of_weighted_moment

#check correlation_deriv_zero
#check diagonal_deriv_linear_bound
#check centered_square_error_eq
#check square_error_le_weighted_moment
#check square_error_uniform_of_weighted_moment
#print correlation_deriv_zero
#print diagonal_deriv_linear_bound
#print centered_square_error_eq
#print square_error_le_weighted_moment
#print square_error_uniform_of_weighted_moment

end ContinuousResearch.SquareCompensation
```
