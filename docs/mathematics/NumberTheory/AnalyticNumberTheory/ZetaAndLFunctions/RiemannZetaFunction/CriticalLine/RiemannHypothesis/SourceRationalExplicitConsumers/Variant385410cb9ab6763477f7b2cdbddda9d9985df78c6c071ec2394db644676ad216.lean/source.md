# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceRationalExplicitConsumers.Variant385410cb9ab6763477f7b2cdbddda9d9985df78c6c071ec2394db644676ad216

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a277ac78dab285bc4821a69cc65f484485dc1bd0` · SHA-256 `7a940c781fb1e51f3891f10182473682ae17a9717ef8aedf17dbeec87d4748ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AllRealLowerOfRational.Variantea791759e14cadeb68b805099d384465e594bb52d5cd05501232ee0fd6e9aa38","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea791759e14cadeb68b805099d384465e594bb52d5cd05501232ee0fd6e9aa38","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.AllRealLowerOfRational.Variantea791759e14cadeb68b805099d384465e594bb52d5cd05501232ee0fd6e9aa38","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ea791759e14cadeb68b805099d384465e594bb52d5cd05501232ee0fd6e9aa38","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/root/independent-SourceRationalExplicitConsumers-1791329558172741000/SourceRationalExplicitConsumers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceRationalCompensation
import SourceResidualBudget
import SourceLeadingCesaroPropagation

/-!
Apply the exact rational source return directly at the receiving source/leading
radius. The signed arithmetic witness remains an ordinary explicit premise.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AllRealLowerOfRational.Variantea791759e14cadeb68b805099d384465e594bb52d5cd05501232ee0fd6e9aa38

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceRationalExplicitConsumers
open SourceRationalCompensation SourceNativeDirichlet SourceNativeDirichletMoments
open SourceLeadingCesaroPropagation SourceLeadingTailBudget RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization
noncomputable section

theorem all_real_lower_of_rational (K R : ℝ) (hR : 1 ≤ R)
    (hrem : ∀ A : ℝ, R ≤ A → (rationalRemainderContour A).re ≤ K) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (rightLineMajorant 2 + dirichletMoment 1 + K)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail _ R hR
  intro A hA
  exact mertensResidual_upper_of_rational hR hrem A hA

theorem leading_of_rational (K R : ℝ) (hR : 1 ≤ R)
    (hrem : ∀ A : ℝ, R ≤ A → (rationalRemainderContour A).re ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ rightLineMajorant 2 + dirichletMoment 1 + K -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  exact mertensResidual_upper_of_rational hR hrem A ((le_max_right _ _).trans hA)

end
end FormalResearch.RiemannHypothesis.SourceRationalExplicitConsumers
```
