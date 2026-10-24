# Complete source: GRWTSK.Analysis.Integration.CompactPolynomialMoments

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4605d9acb3c48b032ad7d0b444edab2dff01b4f` · SHA-256 `5a232b80122e62468b50ba7f0c29508cfec51933efafaa96218503782a996dba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.InnerProductSpace.CompactResidualNormalization
import GRWTSK.NumberTheory.Chebyshev.CorrelationPairing
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Exact rational evaluation of the literal squared residual integral

The integral is evaluated before identifying it with SourcePairing's separately
defined rational expression. Endpoint matching is supplied by SourceResidual.
No arithmetic growth estimate or source-realization witness is assumed.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceClosedNormalization

open MeasureTheory Set
open ArithmeticSupplier SourceResidual

noncomputable section

def squareCoefficient (B : ℝ) : ℕ → ℝ
  | 0 => 64 * B ^ 2 + 4 * B + 1 / 16
  | 1 => -1152 * B ^ 2 - 52 * B - 1 / 2
  | 2 => 7104 * B ^ 2 + 228 * B + 7 / 4
  | 3 => -18176 * B ^ 2 - 500 * B - 7 / 2
  | 4 => 22464 * B ^ 2 + 620 * B + 35 / 8
  | 5 => -13440 * B ^ 2 - 444 * B - 7 / 2
  | 6 => 3136 * B ^ 2 + 172 * B + 7 / 4
  | 7 => -28 * B - 1 / 2
  | 8 => 1 / 16
  | _ => 0

def squarePrimitive (B x : ℝ) : ℝ :=
  ∑ n ∈ Finset.range 9, squareCoefficient B n * x ^ (2 * n + 1) / (2 * n + 1)

theorem monomial_primitive_hasDerivAt (c x : ℝ) (n : ℕ) :
    HasDerivAt (fun y : ℝ ↦ c * y ^ (2 * n + 1) / (2 * n + 1))
      (c * x ^ (2 * n)) x := by
  have derivative := (((hasDerivAt_id x).pow (2 * n + 1)).const_mul c).div_const
    (2 * n + 1)
  convert derivative using 1 <;> first | rfl | (simp; field_simp)

theorem square_primitive_hasDerivAt (B x : ℝ) :
    HasDerivAt (squarePrimitive B)
      ((bumpSecondPolynomial x * B - bumpPolynomial x / 4) ^ 2) x := by
  have derivative : HasDerivAt (squarePrimitive B)
      (∑ n ∈ Finset.range 9, squareCoefficient B n * x ^ (2 * n)) x :=
    HasDerivAt.fun_sum (u := Finset.range 9)
      (fun n _ ↦ monomial_primitive_hasDerivAt (squareCoefficient B n) x n)
  have formula : (∑ n ∈ Finset.range 9, squareCoefficient B n * x ^ (2 * n)) =
      (bumpSecondPolynomial x * B - bumpPolynomial x / 4) ^ 2 := by
    norm_num [Finset.sum_range_succ, squareCoefficient, bumpSecondPolynomial, bumpPolynomial]
    ring
  rwa [formula] at derivative

theorem unscaled_square_integral (B : ℝ) :
    (∫ x : ℝ in (-1)..1, (bumpSecondPolynomial x * B - bumpPolynomial x / 4) ^ 2) =
      (196608 / 5005 : ℝ) * B ^ 2 + (65536 / 45045 : ℝ) * B +
        (4096 / 109395 : ℝ) := by
  have continuousSquare : Continuous (fun x : ℝ ↦
      (bumpSecondPolynomial x * B - bumpPolynomial x / 4) ^ 2) := by
    unfold bumpSecondPolynomial bumpPolynomial
    fun_prop
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ ↦ square_primitive_hasDerivAt B x) (continuousSquare.intervalIntegrable _ _)]
  norm_num [squarePrimitive, squareCoefficient, Finset.sum_range_succ]
  ring

theorem source_amplitude_square {A : ℝ} (hA : 0 < A) :
    (A ^ (-(1 / 2 : ℝ))) ^ 2 = A⁻¹ := by
  rw [← Real.rpow_mul_natCast hA.le]
  norm_num [Real.rpow_neg_one]

theorem source_normalization_eq_interval {A : ℝ} (hA : 0 < A) :
    sourceNormalization A = ∫ x : ℝ in (-A)..A, residualPolynomial A x ^ 2 := by
  unfold sourceNormalization
  have actual : (fun x : ℝ ↦ |sourceResidual A x| ^ 2) =
      (Icc (-A) A).indicator (fun x ↦ residualPolynomial A x ^ 2) := by
    funext x
    by_cases hx : x ∈ Icc (-A) A <;>
      simp [sourceResidual_eq_ite hA, hx, sq_abs]
  rw [actual, integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -A ≤ A)]

/-- Equality is proved for the actual integral, rather than used as a normalization premise. -/
theorem source_normalization_eq_rational {A : ℝ} (hA : 0 < A) :
    sourceNormalization A =
      GRWTSK.RiemannHypothesis.SourcePairing.sourceNormalization A := by
  rw [source_normalization_eq_interval hA]
  have formula : (fun x : ℝ ↦ residualPolynomial A x ^ 2) =
      fun x ↦ A⁻¹ *
        (bumpSecondPolynomial (x / A) * (A ^ 2)⁻¹ - bumpPolynomial (x / A) / 4) ^ 2 := by
    funext x
    unfold residualPolynomial bumpSecondPolynomial bumpPolynomial
    rw [mul_pow, source_amplitude_square hA]
    congr 1
    ring
  rw [formula, intervalIntegral.integral_const_mul,
    intervalIntegral.integral_comp_div
      (fun x ↦ (bumpSecondPolynomial x * (A ^ 2)⁻¹ - bumpPolynomial x / 4) ^ 2) hA.ne']
  simp only [neg_div, div_self hA.ne', smul_eq_mul]
  rw [unscaled_square_integral]
  unfold GRWTSK.RiemannHypothesis.SourcePairing.sourceNormalization
  field_simp
  ring

theorem source_eq_scaled_bump {A : ℝ} (hA : 0 < A) :
    source A = GRWTSK.RiemannHypothesis.SourcePairing.scaledBump A := by
  funext x
  unfold source bump GRWTSK.RiemannHypothesis.SourcePairing.scaledBump
    GRWTSK.RiemannHypothesis.SourcePairing.sourceBump
  rw [Real.rpow_neg hA.le, ← Real.sqrt_eq_rpow]
  ring

theorem dilation_test_eq_residual {A : ℝ} (hA : 0 < A) :
    GRWTSK.RiemannHypothesis.SourcePairing.dilationTest sourceSecond A =
      sourceResidual A := by
  funext x
  rw [sourceResidual_eq]
  unfold GRWTSK.RiemannHypothesis.SourcePairing.dilationTest
  rw [← source_eq_scaled_bump hA]
  ring

theorem normalized_test_eq_source {A : ℝ} (hA : 0 < A) :
    GRWTSK.RiemannHypothesis.SourcePairing.normalizedTest sourceSecond A =
      normalizedSource A := by
  funext x
  unfold GRWTSK.RiemannHypothesis.SourcePairing.normalizedTest normalizedSource
  rw [dilation_test_eq_residual hA, ← source_normalization_eq_rational hA]

theorem source_pairing_correlation_eq {A : ℝ} (hA : 0 < A) :
    GRWTSK.RiemannHypothesis.SourcePairing.sourceCorrelation sourceSecond A =
      correlation A := by
  unfold GRWTSK.RiemannHypothesis.SourcePairing.sourceCorrelation correlation
  rw [normalized_test_eq_source hA]

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceClosedNormalization
```
