# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePeanoSignedBudget.Variant69b77e28821f0e5899873dd43d33ede75fefbb251291f2ecc31efdddc702acda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c56d27f4141b7447aa9c4ba03541fcb832118509` · SHA-256 `4dfcf4e87ec8ae576228407e8b4b438df0a9f0b9225c5ca23fa1ebb1e023e6c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePeanoErrorPairing.Variant46fd7af6b0c93c8d5f33f2206c96eb35413ef9a95864bbe73531d839541057f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46fd7af6b0c93c8d5f33f2206c96eb35413ef9a95864bbe73531d839541057f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePeanoErrorPairing.Variant46fd7af6b0c93c8d5f33f2206c96eb35413ef9a95864bbe73531d839541057f3","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"46fd7af6b0c93c8d5f33f2206c96eb35413ef9a95864bbe73531d839541057f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/root/independent-SourcePeanoSignedBudget-1791346768196289000/SourcePeanoSignedBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFullPeanoEnergy
import SourceRationalExactBaseline

/-!
Concrete fixed-radius applications of the complete signed Peano error budget.
No signed bound witness is supplied. The continuous source value is exact.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePeanoErrorPairing.Variant46fd7af6b0c93c8d5f33f2206c96eb35413ef9a95864bbe73531d839541057f3

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourcePeanoSignedBudget
open MeasureTheory Set
open SourceFullPeanoEnergy SourceNativeReadout SourceNativeDirichlet
open SourceNativeDirichletMoments SourceRationalExactBaseline SourceRationalCompensation
open SourceLeadingCesaroPropagation SourceLeadingTailBudget RH16ResumeBudget SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization
noncomputable section

def sourcePeanoErrorPairing (A : ℝ) : ℝ :=
  ∫ u : ℝ in Ioi 0, fullPeanoError u * deriv (deriv (weightedCorrelation A)) u

/-- A single fixed signed upper witness, with the full physical complement retained. -/
def PeanoErrorTailUpperBound : Prop :=
  ∃ J R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → sourcePeanoErrorPairing A ≤ J

theorem residual_eq_exact_peano (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = rightLineMajorant 2 + (3 / 2) * dirichletMoment 1 - 5 / 2 -
      halfEnergyValue A + sourcePeanoErrorPairing A := by
  rw [fullPeanoError_pairing_Ioi A hA, continuousPoleHalf_eq_exact A hA]
  rfl

theorem residual_upper_of_peano (J R : ℝ) (hR : 1 ≤ R)
    (hJ : ∀ A : ℝ, R ≤ A → sourcePeanoErrorPairing A ≤ J)
    (A : ℝ) (hRA : R ≤ A) :
    mertensResidual A ≤ rightLineMajorant 2 + (3 / 2) * dirichletMoment 1 - 5 / 2 -
      halfEnergyValue R + J := by
  rw [residual_eq_exact_peano A (hR.trans hRA)]
  have hhalf := halfEnergyValue_mono hR hRA
  have hpair := hJ A hRA
  linarith

theorem all_real_lower_of_peano (J R : ℝ) (hR : 1 ≤ R)
    (hJ : ∀ A : ℝ, R ≤ A → sourcePeanoErrorPairing A ≤ J) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 *
          (rightLineMajorant 2 + (3 / 2) * dirichletMoment 1 - 5 / 2 -
            halfEnergyValue R + J)) ≤ sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail _ R hR
  exact residual_upper_of_peano J R hR hJ

theorem leading_upper_of_peano (J R : ℝ) (hR : 1 ≤ R)
    (hJ : ∀ A : ℝ, R ≤ A → sourcePeanoErrorPairing A ≤ J) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤
        rightLineMajorant 2 + (3 / 2) * dirichletMoment 1 - 5 / 2 -
          halfEnergyValue (max 25600 R) + J - (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  have hL : 1 ≤ max (25600 : ℝ) R := hR.trans (le_max_right _ _)
  apply residual_upper_of_peano J (max 25600 R) hL _ A hA
  intro B hB
  exact hJ B ((le_max_right _ _).trans hB)

theorem estimate_of_peano_error (h : PeanoErrorTailUpperBound) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨J, R, hR, hJ⟩ := h
  refine estimate_of_mertens_residual_tail
    ⟨max 0 (rightLineMajorant 2 + (3 / 2) * dirichletMoment 1 - 5 / 2 -
      halfEnergyValue R + J), le_max_left _ _, R, hR, ?_⟩
  intro A hA
  exact (residual_upper_of_peano J R hR hJ A hA).trans (le_max_right _ _)

theorem rational_tail_of_full_peano {K R : ℝ} (hR : 1 ≤ R)
    (hQ : ∀ A : ℝ, R ≤ A →
      (∫ u : ℝ in Ioi 0, fullPeanoKernel u *
        deriv (deriv (weightedCorrelation A)) u) ≤ K) : RationalRemainderTailUpperBound := by
  refine ⟨K, R, hR, ?_⟩
  intro A hA
  rw [← fullPeanoKernel_pairing_Ioi A (hR.trans hA)]
  exact hQ A hA

end
end FormalResearch.RiemannHypothesis.SourcePeanoSignedBudget
```
