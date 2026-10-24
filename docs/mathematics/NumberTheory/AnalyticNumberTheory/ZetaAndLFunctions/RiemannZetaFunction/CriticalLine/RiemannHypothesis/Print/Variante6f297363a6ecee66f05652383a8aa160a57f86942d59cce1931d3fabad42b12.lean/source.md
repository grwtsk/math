# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Print.Variante6f297363a6ecee66f05652383a8aa160a57f86942d59cce1931d3fabad42b12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `595318a94fb7cbfac6846f8c933dee2ec9de80bc` · SHA-256 `1e96096950dd612bdf4a6f0c3d2203f01727f3c09f89f7a5c7e82010316f62e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimeSquareTailWork.Variantef05078005ce257f0e55e0a1acd6634dcdc00108d076a180da4a8add040e2b5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef05078005ce257f0e55e0a1acd6634dcdc00108d076a180da4a8add040e2b5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePrimeSquareTailWork.Variantef05078005ce257f0e55e0a1acd6634dcdc00108d076a180da4a8add040e2b5a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ef05078005ce257f0e55e0a1acd6634dcdc00108d076a180da4a8add040e2b5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle12/regent-square-tail-work/Print.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimeSquareTailWork.Variantef05078005ce257f0e55e0a1acd6634dcdc00108d076a180da4a8add040e2b5a

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork

#print squarePrefixCoefficient
#print squarePrefixCoefficient_eq_slice
#print squarePrefixCoefficient_summable
#print squarePrefixCoefficient_pos
#print squarePrefixBaseline
#print squarePrefix
#print squareTail
#print squareTailWork
#print squareTailNegativeMean
#print squareTailPairedWork
#print squarePrefixBaseline_nonneg
#print squarePrefixBaseline_pos
#print squarePrefixBaseline_le_higherBaseline
#print squarePrefix_nonneg
#print squarePrefix_le_baseline
#print squareTail_nonneg
#print squareTail_le_baseline
#print squareTail_below_first_square
#print squareTail_at_zero
#print squarePrefix_eq_steps
#print squarePrefix_mul_deriv_intervalIntegrable
#print squareTail_mul_deriv_intervalIntegrable
#print squarePrefix_source_work
#print squareTailWork_eq
#print squareTail_intervalIntegrable
#print squareTailPairedWork_eq_work_add_mean
#print squareTailNegativeMean_nonneg
#print squareTailNegativeMean_le_baseline
#print squareRemovedPairedWork
#print squareRemovedRemainder
#print squareRemovedPairedWork_eq
#print mertensResidual_eq_squareRemoved
#print squareRemovedRemainder_uniformly_bounded
#print SquareRemovedPairedTailLowerBound
#print squareRemoved_tail_iff_residual_tail
```
