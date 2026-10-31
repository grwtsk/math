/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses the local continuous-kernel minorization adaptation; upstream mathematical
attribution and licensing remain in its source. -/
import GRWTSK.MeasureAndIntegration.ContinuousKernelMinorization
import GRWTSK.MeasureAndIntegration.ContinuousKernelPowers

/-!
# Iterating continuous-kernel minorization without losing normalization

On a compact probability space, a doubly normalized continuous real kernel K
with K >= a and a < 1 propagates a pointwise initial residual bound M to
(1-a)^n M after n additional convolutions. The maintained positivePower index
n means path length n+1: no continuous density for a zero-length identity is
assumed. Strict contraction additionally requires 0 < a.

The normalization needed for cancellation is proved for every power, rather
than silently assumed at each step. This is a finite-iteration statement;
uniformity in a regulator, continuum limits, derivative estimates, response
runtime refinement, SAT algorithms and ETH consequences are not supplied.
SOURCE_PROOF_CANDIDATE: compilation, fresh replay, transitive axiom audit and
expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.ContinuousKernelMinorizationIteration
open MeasureTheory
open GRWTSK.Analysis.Integration.ContinuousKernelComposition
open GRWTSK.Analysis.Integration.ContinuousKernelMinorization
open GRWTSK.Analysis.Integration.ContinuousKernelPowers

variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ] (K P : C(X × X, ℝ))

/-- Fubini preserves the column normalization used by minorization cancellation. -/
theorem convolution_column_normalized
    (hK : ∀ y, (∫ x, K (x,y) ∂μ) = 1)
    (hP : ∀ y, (∫ x, P (x,y) ∂μ) = 1) (y : X) :
    (∫ x, convolution μ K P (x,y) ∂μ) = 1 := by
  have hi : Integrable (fun p : X × X => K p * P (p.2,y)) (μ.prod μ) :=
    (K.continuous.mul
      (P.continuous.comp (continuous_snd.prodMk continuous_const))).integrable_of_hasCompactSupport
        (HasCompactSupport.of_compactSpace _)
  change (∫ x, ∫ z, K (x,z) * P (z,y) ∂μ ∂μ) = 1
  rw [integral_integral_swap hi]
  calc
    _ = ∫ z, (∫ x, K (x,z) ∂μ) * P (z,y) ∂μ := by
      simp only [integral_mul_const]
    _ = ∫ z, P (z,y) ∂μ := by
      apply integral_congr_ae
      exact ae_of_all _ (fun z => by rw [hK z, one_mul])
    _ = 1 := hP y

/-- Every positive-length convolution power retains the cancellation premise. -/
theorem positivePower_column_normalized
    (hcol : ∀ y, (∫ x, K (x,y) ∂μ) = 1) (n : ℕ) (y : X) :
    (∫ x, positivePower μ K n (x,y) ∂μ) = 1 := by
  induction n generalizing y with
  | zero => exact hcol y
  | succ n ih =>
    exact convolution_column_normalized μ K (positivePower μ K n) hcol
      ih y

/-- An actual finite convolution iteration with its normalization bridge proved.
The initial bound is on K itself; n counts additional convolutions. -/
theorem positivePower_residual_bound (a M : ℝ) (ha : a < 1)
    (hK : ∀ x y, a ≤ K (x,y))
    (hrow : ∀ x, (∫ z, K (x,z) ∂μ) = 1)
    (hcol : ∀ y, (∫ z, K (z,y) ∂μ) = 1)
    (hbase : ∀ x y, |K (x,y)-1| ≤ M) (n : ℕ) (x y : X) :
    |positivePower μ K n (x,y)-1| ≤ (1-a)^n * M := by
  induction n generalizing x y with
  | zero => simpa only [positivePower_zero, pow_zero, one_mul] using hbase x y
  | succ n ih =>
    have hbound := convolution_residual_bound μ K (positivePower μ K n)
      a ((1-a)^n * M) ha hK hrow
      (positivePower_column_normalized μ K hcol n)
      ih
      x y
    simpa only [positivePower_succ, pow_succ', mul_assoc] using hbound

end GRWTSK.Analysis.Integration.ContinuousKernelMinorizationIteration
