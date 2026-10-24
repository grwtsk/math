# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceContractedXiConsequences.Variant859a6b801ff7c757878073289faf4381de000e37ec770e296c53a64bec836839

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acf14c0c83610a7f5990f8bc8a5793b8b327ca5b` · SHA-256 `e4c431e770f848f9e2e31626b31768b22e561b2a1f6a16b0a5039d1c590b7dfa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperOfContractedXi.Varianted2a8703a94c4365e00a53793be0cdde28359bb5cf6c99084d237c46fab0e818","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed2a8703a94c4365e00a53793be0cdde28359bb5cf6c99084d237c46fab0e818","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ResidualUpperOfContractedXi.Varianted2a8703a94c4365e00a53793be0cdde28359bb5cf6c99084d237c46fab0e818","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ed2a8703a94c4365e00a53793be0cdde28359bb5cf6c99084d237c46fab0e818","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791325370072677000/SourceContractedXiConsequences.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFullXiOuterContraction
import SourceLeadingCesaroPropagation
import SourceResidualBudget

/-!
Propagate the exact complete finite Xi contraction to the original residual,
an explicit original all-real lower constant, and the sharp leading readout.
The joint signed arithmetic lower witness remains an explicit input.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperOfContractedXi.Varianted2a8703a94c4365e00a53793be0cdde28359bb5cf6c99084d237c46fab0e818

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceContractedXiConsequences
open MeasureTheory
open SourceFullXiOuterContraction SourceLeadingCesaroPropagation
open SourceActualPsiInverseSquare SourcePositiveSampling SourcePairing
open SourceFirstAtomSignedWork RH16ResumeBudget
open RH16ResumeApplication SourceLeadingTailBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization
noncomputable section

theorem residual_upper_of_contracted_Xi (J A : ℝ) (hA : 91 ≤ A)
    (hJ : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    mertensResidual A ≤ J - 3 / 8 + criticalBaselineCorrection 91 := by
  exact residual_upper_of_remaining_signed_lower J 91 A (by norm_num) hA
    (remaining_lower_of_contracted_pairing J A hA hJ)

theorem all_real_lower_of_contracted_Xi (J : ℝ)
    (hJ : ∀ A : ℝ, 91 ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower 91)
        (archimedeanMultiplier 0 - 2 * (J - 3 / 8 + criticalBaselineCorrection 91)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail
    (J - 3 / 8 + criticalBaselineCorrection 91) 91 (by norm_num)
  intro A hA
  exact residual_upper_of_contracted_Xi J A hA (hJ A hA)

theorem actual_leading_upper_of_contracted_Xi (J A : ℝ) (hA : 25600 ≤ A)
    (hJ : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    actualLeadingRenormalizedTail A ≤ J - 3 / 8 + criticalBaselineCorrection 91 -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ hA
  exact residual_upper_of_contracted_Xi J A (by linarith) hJ

end
end FormalResearch.RiemannHypothesis.SourceContractedXiConsequences
```
