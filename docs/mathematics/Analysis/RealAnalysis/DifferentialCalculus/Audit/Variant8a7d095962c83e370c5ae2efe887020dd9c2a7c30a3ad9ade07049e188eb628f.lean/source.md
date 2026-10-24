# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Audit.Variant8a7d095962c83e370c5ae2efe887020dd9c2a7c30a3ad9ade07049e188eb628f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c88600de09ebf210c97d283a31c99043bff0eded` · SHA-256 `3a1c42936aef21bc0bee26da4cc7661807f99bc6a19e6da1add94702908d713b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourcePrimeSquareTailWork.Variant2ff0c89536562f0c0b4bb57a3272a6e8413b783dd3c245f52341be4b054e187d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ff0c89536562f0c0b4bb57a3272a6e8413b783dd3c245f52341be4b054e187d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourcePrimeSquareTailWork.Variant2ff0c89536562f0c0b4bb57a3272a6e8413b783dd3c245f52341be4b054e187d","mathematical_subject":"Analysis.Calculus","original_sha256":"2ff0c89536562f0c0b4bb57a3272a6e8413b783dd3c245f52341be4b054e187d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle11/regent-private-square-tail-bounds/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourcePrimeSquareTailWork


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourcePrimeSquareTailWork.Variant2ff0c89536562f0c0b4bb57a3272a6e8413b783dd3c245f52341be4b054e187d

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
