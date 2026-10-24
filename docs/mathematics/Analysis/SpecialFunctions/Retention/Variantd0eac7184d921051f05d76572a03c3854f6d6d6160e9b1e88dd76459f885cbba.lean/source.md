# Complete source: GRWTSK.Analysis.SpecialFunctions.Retention.Variantd0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8faf7827ff30ef20b64a8b710248e01db740bdf3` · SHA-256 `d0eac7184d921051f05d76572a03c3854f6d6d6160e9b1e88dd76459f885cbba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Attention.SequenceAffine
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Lower-bounded retention

The certificate records the exact per-channel tile product together with its
dynamic-range enclosure.  This is numerical evidence only.
-/

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
