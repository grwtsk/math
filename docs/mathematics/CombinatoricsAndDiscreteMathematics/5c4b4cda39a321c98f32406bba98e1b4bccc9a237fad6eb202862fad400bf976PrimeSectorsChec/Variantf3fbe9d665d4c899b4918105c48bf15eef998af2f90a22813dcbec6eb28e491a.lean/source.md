# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.5c4b4cda39a321c98f32406bba98e1b4bccc9a237fad6eb202862fad400bf976PrimeSectorsChec.Variantf3fbe9d665d4c899b4918105c48bf15eef998af2f90a22813dcbec6eb28e491a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b2591b6f3c0291b9c96255739f8b164d51f3fb5` · SHA-256 `cdb20e591cd5f2510fdf6bf4944da036ad5e07732f1a4f9fafb9246c271abd15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EstimatePrimePowerSectors.Variant5c4b4cda39a321c98f32406bba98e1b4bccc9a237fad6eb202862fad400bf976","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c4b4cda39a321c98f32406bba98e1b4bccc9a237fad6eb202862fad400bf976","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EstimatePrimePowerSectors.Variant5c4b4cda39a321c98f32406bba98e1b4bccc9a237fad6eb202862fad400bf976","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"5c4b4cda39a321c98f32406bba98e1b4bccc9a237fad6eb202862fad400bf976","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/5c/5c4b4cda39a321c98f32406bba98e1b4bccc9a237fad6eb202862fad400bf976--PrimeSectorsCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimePowerSectors

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EstimatePrimePowerSectors.Variant5c4b4cda39a321c98f32406bba98e1b4bccc9a237fad6eb202862fad400bf976

#check Nat.Prime.pow_inj'
#check Nat.prime_pow_iff
#check Nat.Prime.pow_iff
#check Nat.not_prime_pow
#check Nat.pow_left_injective
#check Nat.pow_right_injective
#check Nat.le_pow
#check Nat.lt_pow_self
#check Finset.sum_bij
#check Finset.sum_sigma'
#check Finset.sum_filter_add_sum_filter_not
#check Finset.sum_subset
#check Nat.even_iff
#check Nat.not_even_iff_odd
#check Nat.odd_iff
#check IsSquare.exists_sq
#check sq_le_sq₀
#check Nat.Prime.prime
#check IsPrimePow.two_le
```
