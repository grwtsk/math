# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variant3c88e2a004534434bd20d7a6a1c743dab49b424dd997fe36ebc73d32503747f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f45b5afcd97d8cc331b144df1578fa07f2fe7be3` · SHA-256 `fc5b536470186754b4272e2dbf728e936e42e7dbc5c5f9abe8145d0a044199f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimeSquareTailWork.Variant35ab453ad05c1c2b6ace1ffeb24535fb0d5f4d2b08215e8b18483e902777b038","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"35ab453ad05c1c2b6ace1ffeb24535fb0d5f4d2b08215e8b18483e902777b038","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePrimeSquareTailWork.Variant35ab453ad05c1c2b6ace1ffeb24535fb0d5f4d2b08215e8b18483e902777b038","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"35ab453ad05c1c2b6ace1ffeb24535fb0d5f4d2b08215e8b18483e902777b038","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle12/regent-square-tail-work/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimeSquareTailWork.Variant35ab453ad05c1c2b6ace1ffeb24535fb0d5f4d2b08215e8b18483e902777b038

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork

#check squarePrefixCoefficient
#print axioms squarePrefixCoefficient
#check squarePrefixCoefficient_eq_slice
#print axioms squarePrefixCoefficient_eq_slice
#check squarePrefixCoefficient_summable
#print axioms squarePrefixCoefficient_summable
#check squarePrefixCoefficient_pos
#print axioms squarePrefixCoefficient_pos
#check squarePrefixBaseline
#print axioms squarePrefixBaseline
#check squarePrefix
#print axioms squarePrefix
#check squareTail
#print axioms squareTail
#check squareTailWork
#print axioms squareTailWork
#check squareTailNegativeMean
#print axioms squareTailNegativeMean
#check squareTailPairedWork
#print axioms squareTailPairedWork
#check squarePrefixBaseline_nonneg
#print axioms squarePrefixBaseline_nonneg
#check squarePrefixBaseline_pos
#print axioms squarePrefixBaseline_pos
#check squarePrefixBaseline_le_higherBaseline
#print axioms squarePrefixBaseline_le_higherBaseline
#check squarePrefix_nonneg
#print axioms squarePrefix_nonneg
#check squarePrefix_le_baseline
#print axioms squarePrefix_le_baseline
#check squareTail_nonneg
#print axioms squareTail_nonneg
#check squareTail_le_baseline
#print axioms squareTail_le_baseline
#check squareTail_below_first_square
#print axioms squareTail_below_first_square
#check squareTail_at_zero
#print axioms squareTail_at_zero
#check squarePrefix_eq_steps
#print axioms squarePrefix_eq_steps
#check squarePrefix_mul_deriv_intervalIntegrable
#print axioms squarePrefix_mul_deriv_intervalIntegrable
#check squareTail_mul_deriv_intervalIntegrable
#print axioms squareTail_mul_deriv_intervalIntegrable
#check squarePrefix_source_work
#print axioms squarePrefix_source_work
#check squareTailWork_eq
#print axioms squareTailWork_eq
#check squareTail_intervalIntegrable
#print axioms squareTail_intervalIntegrable
#check squareTailPairedWork_eq_work_add_mean
#print axioms squareTailPairedWork_eq_work_add_mean
#check squareTailNegativeMean_nonneg
#print axioms squareTailNegativeMean_nonneg
#check squareTailNegativeMean_le_baseline
#print axioms squareTailNegativeMean_le_baseline
#check squareRemovedPairedWork
#print axioms squareRemovedPairedWork
#check squareRemovedRemainder
#print axioms squareRemovedRemainder
#check squareRemovedPairedWork_eq
#print axioms squareRemovedPairedWork_eq
#check mertensResidual_eq_squareRemoved
#print axioms mertensResidual_eq_squareRemoved
#check squareRemovedRemainder_uniformly_bounded
#print axioms squareRemovedRemainder_uniformly_bounded
#check SquareRemovedPairedTailLowerBound
#print axioms SquareRemovedPairedTailLowerBound
#check squareRemoved_tail_iff_residual_tail
#print axioms squareRemoved_tail_iff_residual_tail
```
