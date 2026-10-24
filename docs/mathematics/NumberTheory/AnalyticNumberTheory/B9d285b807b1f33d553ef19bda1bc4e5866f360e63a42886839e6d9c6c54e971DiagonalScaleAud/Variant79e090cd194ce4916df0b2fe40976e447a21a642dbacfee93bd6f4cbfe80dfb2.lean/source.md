# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.B9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971DiagonalScaleAud.Variant79e090cd194ce4916df0b2fe40976e447a21a642dbacfee93bd6f4cbfe80dfb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee5256e5603e21c4c4bd40958a419185153a2982` · SHA-256 `17edfc1fe84f2abc9626c36300deda642628732dd75f97da3cb1c72fd3de5abb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateDirichletDiagonalScale.Variantb9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.EstimateDirichletDiagonalScale.Variantb9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"b9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/b9/b9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971--diagonal-scale-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanDiagonalArithmetic
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateDirichletDiagonalScale.Variantb9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971

#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.mobiusDiagonal
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.mobiusDiagonal
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.mobiusDiagonal_one_le
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.mobiusDiagonal_one_le
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_nonneg
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_nonneg
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_harmonic_lower
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_harmonic_lower
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_log_lower
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_log_lower
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_source_lower
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.logDiagonal_source_lower
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.diagonal_budget_source_lower
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.diagonal_budget_source_lower
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.no_diagonal_budget_tail_upper_bound
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateDirichletDiagonalScale.no_diagonal_budget_tail_upper_bound

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanDiagonalArithmetic EstimateVaughanSource EstimatePlainKernel
example (A : ℝ) (hA : 1 ≤ A) (p : ℕ) (hp : p.Prime)
    (hUp : vaughanCutoff A < p) :
    shortVaughanCoefficient (vaughanCutoff A) (p ^ 2) * sourcePlainWeight A (p ^ 2) +
      (ArithmeticFunction.vonMangoldt p * EstimateVaughanIdentity.beta (vaughanCutoff A) p) *
        sourcePlainWeight A (p ^ 2) = Real.log (p : ℝ) * sourcePlainWeight A (p ^ 2) :=
  prime_square_short_diagonal_remainder _ _ (vaughanCutoff_pos A hA) hp hUp _
```
