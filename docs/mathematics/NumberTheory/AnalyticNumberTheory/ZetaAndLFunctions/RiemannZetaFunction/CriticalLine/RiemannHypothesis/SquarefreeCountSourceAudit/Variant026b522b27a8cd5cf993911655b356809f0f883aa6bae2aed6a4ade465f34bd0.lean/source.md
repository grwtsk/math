# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SquarefreeCountSourceAudit.Variant026b522b27a8cd5cf993911655b356809f0f883aa6bae2aed6a4ade465f34bd0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d910d52d26eb9499fc29fcccf5f0d34e3f54e32e` · SHA-256 `d124f8c2eb6fd4ee77d21e6401988034a18c8386a75d0aab0091f945825d49d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SquarefreeCount.Variant6f4446ab15780db0cafb4dba435a6fe5857d17334b183d530c08a8ab4a2700fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f4446ab15780db0cafb4dba435a6fe5857d17334b183d530c08a8ab4a2700fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SquarefreeCount.Variant6f4446ab15780db0cafb4dba435a6fe5857d17334b183d530c08a8ab4a2700fb","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6f4446ab15780db0cafb4dba435a6fe5857d17334b183d530c08a8ab4a2700fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/squarefree-count-source-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SquarefreeCount.Variant6f4446ab15780db0cafb4dba435a6fe5857d17334b183d530c08a8ab4a2700fb

#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.halfFactorization
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.squareDivisorRoot
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.halfFactorization_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.squareDivisorRoot_ne_zero
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.squareDivisorRoot_factorization
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.square_dvd_iff_dvd_root
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.root_eq_one_iff_squarefree
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.squareDivisors_eq_root_divisors
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.moebius_square_eq_sum_squareDivisors
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.squareDivisors_eq_Icc
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.moebius_square_eq_sum_Icc
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.coprime_multiples_card
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.squarefreeCoprimeCount
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.coprime_multiples_sum
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.squarefreeCoprimeCount_eq
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.coprimeCount_div_error
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.finiteSquarefreeDensity
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.squarefreeCoprimeCount_error_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.finiteSquarefreeDensity_difference_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount.fixedDensity_error_le
```
