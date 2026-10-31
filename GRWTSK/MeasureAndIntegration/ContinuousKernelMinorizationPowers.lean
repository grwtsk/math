/- Copyright (c) 2026 grwtsk contributors. MIT.
Method adapted from Jack Piazza and Hao Shen, arXiv:2610.35286v1, Lemma 2.1. -/
import GRWTSK.MeasureAndIntegration.ContinuousKernelMinorization
import GRWTSK.MeasureAndIntegration.ContinuousKernelPowers

/-!
# Minorization decay for actual positive kernel powers

The index n denotes n+1 transitions. Column normalization is propagated by
compact-space Fubini, rather than postulated for every power. The resulting
bound is M*(1-a)^n. Its constants may depend on the regulator; no uniform
physical gap, derivative estimate, LSI or continuum construction is asserted.
SOURCE_PROOF_CANDIDATE; all four verification facets NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.ContinuousKernelMinorizationPowers
open MeasureTheory
open GRWTSK.Analysis.Integration.ContinuousKernelComposition
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
open GRWTSK.Analysis.Integration.ContinuousKernelMinorization
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ] (K : C(X × X, ℝ))

private theorem compact_integrable (g : X → ℝ) (hg : Continuous g) : Integrable g μ :=
  hg.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)

theorem positivePower_column
    (hcol : ∀ y, (∫ x, K (x,y) ∂μ) = 1) (n : ℕ) (y : X) :
    (∫ x, positivePower μ K n (x,y) ∂μ) = 1 := by
  induction n with
  | zero => exact hcol y
  | succ n ih =>
    have hi : Integrable (fun p : X × X =>
        K (p.1,p.2)*positivePower μ K n (p.2,y)) (μ.prod μ) := by
      apply Continuous.integrable_of_hasCompactSupport _ (HasCompactSupport.of_compactSpace _)
      exact K.continuous.mul ((positivePower μ K n).continuous.comp
        (continuous_snd.prodMk continuous_const))
    simp only [positivePower_succ_apply]
    rw [integral_integral_swap hi]
    simp_rw [integral_mul_const, hcol, one_mul]
    exact ih

/-- Exact residual step for the literal (n+2)-transition kernel. -/
theorem positivePower_residual_step (a : ℝ) (ha : a < 1)
    (hcol : ∀ y, (∫ x, K (x,y) ∂μ) = 1) (n : ℕ) (x y : X) :
    positivePower μ K (n+1) (x,y)-1 =
      (1-a)*(convolution μ (remainder K a) (positivePower μ K n) (x,y)-1) := by
  exact convolution_residual_split μ K (positivePower μ K n) a ha
    (positivePower_column μ K hcol n) x y

/-- Each additional transition contributes the actual minorization factor. -/
theorem positivePower_residual_bound (a M : ℝ) (ha : a < 1)
    (hK : ∀ x y, a ≤ K (x,y))
    (hrow : ∀ x, (∫ y, K (x,y) ∂μ) = 1)
    (hcol : ∀ y, (∫ x, K (x,y) ∂μ) = 1)
    (hbase : ∀ x y, |K (x,y)-1| ≤ M) (n : ℕ) (x y : X) :
    |positivePower μ K n (x,y)-1| ≤ (1-a)^n*M := by
  induction n generalizing x y with
  | zero => simpa only [positivePower_zero, pow_zero, one_mul] using hbase x y
  | succ n ih =>
    have hb := convolution_residual_bound μ K (positivePower μ K n)
      a ((1-a)^n*M) ha hK hrow (positivePower_column μ K hcol n)
      (fun u v => ih u v) x y
    simpa only [positivePower_succ, pow_succ', mul_assoc] using hb

end GRWTSK.Analysis.Integration.ContinuousKernelMinorizationPowers
