# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceOverlapResidualDirect.Variant41cbce023869dbb0117211eae5bc2ee7b37b27b067168a24c5876c1f2fbb23bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c0e12507d17ae736e1929a5223facef74656fe1` · SHA-256 `41cbce023869dbb0117211eae5bc2ee7b37b27b067168a24c5876c1f2fbb23bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceLowTimeRadius
import SourceResidualBudget

/-!
Directly apply the genuine physical-overlap balance to the source residual and
the original finite prefix. The quotient endpoint is already in the independent
balance; it is not charged again. The full signed balance witness remains open.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceOverlapResidualDirect
open SourceRestrictedLowTimeWork SourceLowTimeRadius SourceSamplingLedger SourcePairing
open RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization
noncomputable section

theorem residual_upper_of_overlap_upper (D R A C_F : ℝ) (hR : 1 ≤ R) (hRA : R ≤ A)
    (hbal : remainingOverlapBalance A ≤ D)
    (hF : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ D + lowTimeStripBudget R + C_F := by
  have ht := actual_surplus_le_remainingOverlap_add_radius hR hRA
  have hr := actual_residual_decomposition A (hR.trans hRA)
  have hf := (abs_le.mp hF).2
  linarith

theorem residual_tail_of_overlap_tail (D R : ℝ) (hR : 1 ≤ R)
    (hbal : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + lowTimeStripBudget R + C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  exact residual_upper_of_overlap_upper D R A C_F hR hA
    (hbal A hA) (hF A (hR.trans hA))

theorem all_real_lower_of_overlap_tail (D R : ℝ) (hR : 1 ≤ R)
    (hbal : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (D + lowTimeStripBudget R + C_F)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_overlap_tail D R hR hbal
  exact ⟨C_F, hF0, all_real_source_lower_of_residual_tail _ R hR hF⟩

theorem estimate_of_overlap_tail (D R : ℝ) (hR : 1 ≤ R)
    (hbal : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨C_F, _hF0, hF⟩ := residual_tail_of_overlap_tail D R hR hbal
  exact estimate_of_residual_tail_direct _ R hR hF

end
end FormalResearch.RiemannHypothesis.SourceOverlapResidualDirect
```
