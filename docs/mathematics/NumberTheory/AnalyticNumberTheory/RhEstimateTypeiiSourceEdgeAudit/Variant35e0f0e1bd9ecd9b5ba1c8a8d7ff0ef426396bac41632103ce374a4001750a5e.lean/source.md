# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.RhEstimateTypeiiSourceEdgeAudit.Variant35e0f0e1bd9ecd9b5ba1c8a8d7ff0ef426396bac41632103ce374a4001750a5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97693b83e2e412a2b2d13d786b86885f1b12d9ce` · SHA-256 `2216c2f9c75a5f82c7706f2458bbec51305f482a3aaba1fa6422dd4de7bf2c13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateTypeTwoBlockStrength.Variantd2f7da0d61df5d58f47d48e4e10323e165985c4cb17c26ba815840dcdf39433a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2f7da0d61df5d58f47d48e4e10323e165985c4cb17c26ba815840dcdf39433a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.EstimateTypeTwoBlockStrength.Variantd2f7da0d61df5d58f47d48e4e10323e165985c4cb17c26ba815840dcdf39433a","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"d2f7da0d61df5d58f47d48e4e10323e165985c4cb17c26ba815840dcdf39433a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh16-translation-gate/tests/rh_estimate_typeii_source_edge_audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTypeTwoBlockStrength


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateTypeTwoBlockStrength.Variantd2f7da0d61df5d58f47d48e4e10323e165985c4cb17c26ba815840dcdf39433a

set_option autoImplicit false

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateSourceEdgeProfile EstimateSourceEdgeCorrelation EstimateTypeTwoLogBlocks
open EstimateTypeTwoBlockStrength EstimateMertensResidual EstimateVaughanSource
open EstimateVaughanTranslationGate
open FormalResearch.RiemannHypothesis.SourcePairing

example (A z : ℝ) (hA : 1 ≤ A) (hz : 0 ≤ z) (hzA : z ≤ 2*A) :
    sourceCorrelation Realization.explicitSecondDerivative A (2*A-z) =
      1 / (A^9 * sourceNormalization A) *
        ∫ r in (0 : ℝ)..z, endpointPolynomial A r * endpointPolynomial A (z-r) :=
  sourceCorrelation_upper_edge A z hA hz hzA

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ r in (0 : ℝ)..2*A, endpointPolynomial A r * endpointPolynomial A (2*A-r)) =
      A^9 * sourceNormalization A := endpointPolynomial_full_overlap_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    typeTwoOffDiagonal A = ∑ c ∈ logCells A, logBlockSum A c :=
  typeTwoOffDiagonal_eq_logBlocks A hA

example (A : ℝ) (hA : 1 ≤ A) :
    32*A^2 ≤ edgeBlockBudget A ∧ edgeBlockBudget A ≤ 398721024*A^2 :=
  ⟨edgeBlockBudget_ge A hA, edgeBlockBudget_le A hA⟩

example (K R A : ℝ) (p : ℕ) (hR : 1 ≤ R)
    (hB : SquareRootLogBlockEstimate K p R) (hRA : R ≤ A) :
    mertensResidual A ≤ typeTwoDiagonal A + shortMangoldtSource A + shortLogSource A -
      shortPlainSource A + K * (1+2*A)^p * densityBlockBudget A :=
  mertensResidual_le_of_blocks K R A p hR hB hRA

example (K R A : ℝ) (p : ℕ) (hK : 0 ≤ K) (hR : 1 ≤ R)
    (hB : SquareRootLogBlockEstimate K p R) (hRA : R ≤ A) :
    mertensResidual A ≤ typeTwoDiagonal A + shortMangoldtSource A + shortLogSource A -
      shortPlainSource A + 398721024 * Real.exp 1 * K * 3^p * A^(p+2) :=
  mertensResidual_le_coarse_block_budget K R A p hK hR hB hRA
```
