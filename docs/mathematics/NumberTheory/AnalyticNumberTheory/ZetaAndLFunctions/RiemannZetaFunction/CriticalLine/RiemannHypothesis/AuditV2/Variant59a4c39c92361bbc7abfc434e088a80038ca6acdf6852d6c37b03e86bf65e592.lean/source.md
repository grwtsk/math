# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AuditV2.Variant59a4c39c92361bbc7abfc434e088a80038ca6acdf6852d6c37b03e86bf65e592

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05ca1bd62f2572150ce1ced53b3c5106d8b225b2` · SHA-256 `c9641817a2fd392d20d680e7fe37378787e7bad894443baa64acf126f0d4d4ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMangoldtStorage.Variant911cb0b080a8ef9d988af4a0246e485f50a1e1e3b0ad5b72e5d810dfb24d83d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"911cb0b080a8ef9d988af4a0246e485f50a1e1e3b0ad5b72e5d810dfb24d83d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceMangoldtStorage.Variant911cb0b080a8ef9d988af4a0246e485f50a1e1e3b0ad5b72e5d810dfb24d83d4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"911cb0b080a8ef9d988af4a0246e485f50a1e1e3b0ad5b72e5d810dfb24d83d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle8/mangoldt-storage/AuditV2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtStorage

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMangoldtStorage.Variant911cb0b080a8ef9d988af4a0246e485f50a1e1e3b0ad5b72e5d810dfb24d83d4

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceMangoldtStorage
#check translationStorage
#print axioms translationStorage
#check translationStorage_eq
#print axioms translationStorage_eq
#check translationStorage_nonneg
#print axioms translationStorage_nonneg
#check translationStorage_zero
#print axioms translationStorage_zero
#check translationStorage_neg
#print axioms translationStorage_neg
#check sourceSquareStorage
#print axioms sourceSquareStorage
#check sourceSquareStorage_eq
#print axioms sourceSquareStorage_eq
#check sourceSquareStorage_nonneg
#print axioms sourceSquareStorage_nonneg
#check sourceSquareStorage_zero
#print axioms sourceSquareStorage_zero
#check mangoldtCoefficient_nonneg
#print axioms mangoldtCoefficient_nonneg
#check finiteMangoldtBaseline
#print axioms finiteMangoldtBaseline
#check finiteMangoldtStorage
#print axioms finiteMangoldtStorage
#check finiteMangoldtBaseline_nonneg
#print axioms finiteMangoldtBaseline_nonneg
#check finiteMangoldtStorage_nonneg
#print axioms finiteMangoldtStorage_nonneg
#check finiteMangoldt_reconstruction
#print axioms finiteMangoldt_reconstruction
#check mangoldtBaseline
#print axioms mangoldtBaseline
#check mangoldtStorage
#print axioms mangoldtStorage
#check mangoldtBaseline_nonneg
#print axioms mangoldtBaseline_nonneg
#check mangoldtStorage_nonneg
#print axioms mangoldtStorage_nonneg
#check mangoldtInteraction_eq_baseline_norm_sub_storage
#print axioms mangoldtInteraction_eq_baseline_norm_sub_storage
#check closedPrimeMoment_eq_baseline_sub_storage
#print axioms closedPrimeMoment_eq_baseline_sub_storage
#check mertensResidual_eq_baseline_sub_storage
#print axioms mertensResidual_eq_baseline_sub_storage
#check firstPrimeBaseline
#print axioms firstPrimeBaseline
#check firstPrimeStorage
#print axioms firstPrimeStorage
#check firstPrimeBaseline_nonneg
#print axioms firstPrimeBaseline_nonneg
#check firstPrimeStorage_nonneg
#print axioms firstPrimeStorage_nonneg
#check firstPrimeMoment_eq_baseline_sub_storage
#print axioms firstPrimeMoment_eq_baseline_sub_storage
#check sourceSquareStorage_eq_one_of_support
#print axioms sourceSquareStorage_eq_one_of_support
#check sourceSquareStorage_at_boundary
#print axioms sourceSquareStorage_at_boundary
#check sourceSquareStorage_eq_one_above_cutoff
#print axioms sourceSquareStorage_eq_one_above_cutoff
#check finiteMangoldtBaseline_insert
#print axioms finiteMangoldtBaseline_insert
#check finiteMangoldtStorage_insert
#print axioms finiteMangoldtStorage_insert
#check invisible_insert_cancellation
#print axioms invisible_insert_cancellation
#check mangoldtBaselineFixed
#print axioms mangoldtBaselineFixed
#check mangoldtStorageFixed
#print axioms mangoldtStorageFixed
#check closedPrimeMomentFixed_eq_baseline_sub_storage
#print axioms closedPrimeMomentFixed_eq_baseline_sub_storage
#check mangoldtStorage_fixed_padding
#print axioms mangoldtStorage_fixed_padding
#check first_atom_birth_fixture
#print axioms first_atom_birth_fixture
#check firstPrimeStorageSurplus
#print axioms firstPrimeStorageSurplus
#check firstPrimeStorageSurplus_eq
#print axioms firstPrimeStorageSurplus_eq
#check FirstPrimeStorageTailLowerBound
#print axioms FirstPrimeStorageTailLowerBound
#check firstPrime_storage_tail_iff_firstPrime_tail
#print axioms firstPrime_storage_tail_iff_firstPrime_tail
#check firstPrime_storage_tail_iff_residual_tail
#print axioms firstPrime_storage_tail_iff_residual_tail
```
