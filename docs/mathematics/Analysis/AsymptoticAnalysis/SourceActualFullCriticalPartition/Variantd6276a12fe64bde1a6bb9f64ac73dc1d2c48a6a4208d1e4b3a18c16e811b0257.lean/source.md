# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.SourceActualFullCriticalPartition.Variantd6276a12fe64bde1a6bb9f64ac73dc1d2c48a6a4208d1e4b3a18c16e811b0257

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7aaa8ea652c1f5781d8b359a60b5faf5f3a64307` · SHA-256 `d6276a12fe64bde1a6bb9f64ac73dc1d2c48a6a4208d1e4b3a18c16e811b0257`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualCriticalZeroHead
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction

/-! Actual full-carrier critical positivity and the original #16 consumer.
Direction and conceptual origin: grwtsk contributors.
Native source adapter: OpenAI Codex xi_cancellation.
The actual carrier calculation was previously source-reviewed by Codex graph_review.
All zero multiplicities and the original ordinary complex square are retained. -/
set_option autoImplicit false
noncomputable section
namespace RH16ActualFullCriticalPartition
open Zeta23
open FormalResearch.RiemannHypothesis
open SourcePairing SourceActualInitialPrimeContour SourceActualFullZeroContour
open SourceActualZeroArithmeticDictionary SourceActualCriticalZeroHead
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationAssembly EstimateTailReduction

/-- Full actual critical slice, with the original analytic multiplicity. -/
def actualFullCriticalContribution (A : ℝ) : ℂ :=
  ∑' ρ : (zetaZeros zetaSeam).carrier,
    if (ρ : ℂ).re = 1 / 2 then
      ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0

/-- The complete complementary signed slice uses the same ordinary source weight. -/
def actualFullOffcriticalContribution (A : ℝ) : ℂ :=
  ∑' ρ : (zetaZeros zetaSeam).carrier,
    if (ρ : ℂ).re ≠ 1 / 2 then
      ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0

private theorem critical_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
      if (ρ : ℂ).re = 1 / 2 then
        ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0) := by
  apply (actualFullZeroContribution_summable A hA).norm.of_norm_bounded
  intro ρ
  by_cases hρ : (ρ : ℂ).re = 1 / 2
  · simp only [hρ, if_true, le_refl]
  · simp only [hρ, if_false, norm_zero]
    exact norm_nonneg _

private theorem offcritical_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
      if (ρ : ℂ).re ≠ 1 / 2 then
        ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0) := by
  apply (actualFullZeroContribution_summable A hA).norm.of_norm_bounded
  intro ρ
  by_cases hρ : (ρ : ℂ).re ≠ 1 / 2
  · simp only [hρ, if_true, le_refl]
  · simp only [hρ, if_false, norm_zero]
    exact norm_nonneg _

/-- Exact partition of the absolutely summable actual full source, at every A>=1. -/
theorem actual_full_eq_critical_add_offcritical (A : ℝ) (hA : 1 ≤ A) :
    actualFullZeroContribution A =
      actualFullCriticalContribution A + actualFullOffcriticalContribution A := by
  unfold actualFullCriticalContribution actualFullOffcriticalContribution
  rw [← (critical_summable A hA).tsum_add (offcritical_summable A hA)]
  unfold actualFullZeroContribution
  apply tsum_congr
  intro ρ
  by_cases hρ : (ρ : ℂ).re = 1 / 2 <;> simp [hρ]

/-- Critical positivity is transferred to the COMPLETE actual series, without a gap. -/
theorem actual_full_critical_real_nonneg (A : ℝ) (hA : 1 ≤ A) :
    (actualFullCriticalContribution A).im = 0 ∧
      0 ≤ (actualFullCriticalContribution A).re := by
  constructor
  · unfold actualFullCriticalContribution
    rw [Complex.im_tsum (critical_summable A hA)]
    apply tsum_eq_zero
    intro ρ
    by_cases hρ : (ρ : ℂ).re = 1 / 2
    · simpa only [hρ, if_true] using
        (actualCriticalZeroWeight_real_nonneg A ρ hA hρ).1
    · simp only [hρ, if_false, Complex.zero_im]
  · unfold actualFullCriticalContribution
    rw [Complex.re_tsum (critical_summable A hA)]
    apply tsum_nonneg
    intro ρ
    by_cases hρ : (ρ : ℂ).re = 1 / 2
    · simpa only [hρ, if_true] using
        (actualCriticalZeroWeight_real_nonneg A ρ hA hρ).2
    · simp only [hρ, if_false, Complex.zero_re, le_refl]

/-- Original full arithmetic source dominates its complete signed offcritical slice. -/
theorem original_quadratic_ge_offcritical (A : ℝ) (hA : 1 ≤ A) :
    (actualFullOffcriticalContribution A).re ≤
      sourceQuadraticValue explicitSecondDerivative A := by
  have he := congrArg Complex.re (actual_full_eq_critical_add_offcritical A hA)
  rw [actualFullZeroContribution_eq_original_sourceQuadraticValue A hA,
    Complex.ofReal_re, Complex.add_re] at he
  linarith [(actual_full_critical_real_nonneg A hA).2]

/-- A supplied actual all-real offcritical cap reaches the SAME original finite prefix. -/
theorem estimate_of_actual_full_offcritical_cap {Q D : ℝ} (hQ : 1 ≤ Q)
    (hcap : ∀ A : ℝ, Q ≤ A → -D ≤ (actualFullOffcriticalContribution A).re) :
    EstimateObligation := by
  apply estimate_of_quadratic_tail_lower_bound
  refine ⟨-D, Q, hQ, ?_⟩
  intro A hQA
  exact (hcap A hQA).trans (original_quadratic_ge_offcritical A (hQ.trans hQA))

end RH16ActualFullCriticalPartition
```
