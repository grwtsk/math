# Complete source: GRWTSK.Analysis.SpecialFunctions.Retention.Variantc8903f8379bbc869a93c876e7cd6ae2eaad676d2250d1211de0d467cf67d75b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `361a53b253ce4f6e0dfbc75f3a6068bdce6db09b` · SHA-256 `fd4d1a46845861b7c5a70b220014ee1d940cc88d1d3c5e524a1234349acf0583`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.RetentionRangeCertificate.Variantd0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.RetentionRangeCertificate.Variantd0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"d0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Attention/Retention.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Attention.SequenceAffine
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Lower-bounded retention

The certificate records the exact per-channel tile product together with its
dynamic-range enclosure.  This is numerical evidence only.
-/


namespace GRWTSK.Analysis.SpecialFunctions.RetentionRangeCertificate.Variantd0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba

namespace Mathematics.Attention

open scoped BigOperators

structure RetentionRangeCertificate
    (tileLength channelCount : Nat) where
  minimum : ℝ
  retention : Fin tileLength → Fin channelCount → ℝ
  minimumPositive : 0 < minimum
  bounded :
    ∀ token channel,
      minimum ≤ retention token channel ∧
      retention token channel < 1
  tileProduct : Fin channelCount → ℝ
  productExact :
    ∀ channel,
      tileProduct channel =
        ∏ token : Fin tileLength, retention token channel
  lowerBound :
    ∀ channel,
      minimum ^ tileLength ≤ tileProduct channel
  upperBound :
    ∀ channel,
      tileProduct channel < 1

theorem retention_product_positive
    (certificate : RetentionRangeCertificate tileLength channelCount)
    (channel : Fin channelCount) :
    0 < certificate.tileProduct channel := by
  have minimumPowerPositive :
      0 < certificate.minimum ^ tileLength :=
    pow_pos certificate.minimumPositive _
  exact lt_of_lt_of_le minimumPowerPositive
    (certificate.lowerBound channel)

theorem reciprocal_retention_defined
    (certificate : RetentionRangeCertificate tileLength channelCount)
    (channel : Fin channelCount) :
    certificate.tileProduct channel ≠ 0 :=
  ne_of_gt (retention_product_positive certificate channel)

end Mathematics.Attention
```
