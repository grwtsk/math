# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.07SourceActualFullCriticalPartition.Variant8761e306855667df11eb933f7a4c203ca53073570f13a2030178725cd6ac5fa0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `642f273bf48db2eea0f55eec0801f739ca56a36c` · SHA-256 `eab75a4afd1f7f811fd35e92889d77f5a0cbe83deb328d040e431328f006f5b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ActualFullCriticalContribution.Variantc1eedf07b6abddb55fcb59f26174b2fe43995ff86125090e61f161cf837c8a38","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1eedf07b6abddb55fcb59f26174b2fe43995ff86125090e61f161cf837c8a38","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ActualFullCriticalContribution.Variantc1eedf07b6abddb55fcb59f26174b2fe43995ff86125090e61f161cf837c8a38","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"c1eedf07b6abddb55fcb59f26174b2fe43995ff86125090e61f161cf837c8a38","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-nonattained-moving-balance/source-copies/07-SourceActualFullCriticalPartition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCriticalZeroHead
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction

/-! Actual full-carrier critical positivity and the original #16 consumer.
Direction and conceptual origin: grwtsk contributors.
Native source adapter: OpenAI Codex xi_cancellation.
The actual carrier calculation was previously source-reviewed by Codex graph_review.
All zero multiplicities and the original ordinary complex square are retained. -/

namespace GRWTSK.Analysis.AsymptoticAnalysis.ActualFullCriticalContribution.Variantc1eedf07b6abddb55fcb59f26174b2fe43995ff86125090e61f161cf837c8a38

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
    if (ρ : ℂ).re = 1 / 2 then 0 else
      ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ

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
      if (ρ : ℂ).re = 1 / 2 then 0 else
        ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ) := by
  apply (actualFullZeroContribution_summable A hA).norm.of_norm_bounded
  intro ρ
  by_cases hρ : (ρ : ℂ).re = 1 / 2
  · simp only [hρ, if_true, norm_zero]
    exact norm_nonneg _
  · simp only [hρ, if_false, le_refl]

/-- Exact partition of the absolutely summable actual full source, at every A>=1. -/
theorem actual_full_eq_critical_add_offcritical (A : ℝ) (hA : 1 ≤ A) :
    actualFullZeroContribution A =
      actualFullCriticalContribution A + actualFullOffcriticalContribution A := by
  unfold actualFullCriticalContribution actualFullOffcriticalContribution
  rw [← (critical_summable A hA).tsum_add (offcritical_summable A hA)]
  unfold actualFullZeroContribution
  apply tsum_congr
  intro ρ
  by_cases hρ : (ρ : ℂ).re = 1 / 2 <;>
    simp only [hρ, if_true, if_false, add_zero, zero_add]

/-- Critical positivity is transferred to the COMPLETE actual series, without a gap. -/
theorem actual_full_critical_real_nonneg (A : ℝ) (hA : 1 ≤ A) :
    (actualFullCriticalContribution A).im = 0 ∧
      0 ≤ (actualFullCriticalContribution A).re := by
  constructor
  · unfold actualFullCriticalContribution
    rw [Complex.im_tsum (critical_summable A hA)]
    calc
      _ = ∑' _ρ : (zetaZeros zetaSeam).carrier, (0 : ℝ) := by
        apply tsum_congr
        intro ρ
        by_cases hρ : (ρ : ℂ).re = 1 / 2
        · simpa only [hρ, if_true] using
            (actualCriticalZeroWeight_real_nonneg A ρ hA hρ).1
        · simp only [hρ, if_false, Complex.zero_im]
      _ = 0 := tsum_zero
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
