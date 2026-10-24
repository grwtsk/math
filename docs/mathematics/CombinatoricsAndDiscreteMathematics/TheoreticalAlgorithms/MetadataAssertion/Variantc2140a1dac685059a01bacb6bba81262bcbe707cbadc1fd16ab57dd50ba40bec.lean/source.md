# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MetadataAssertion.Variantc2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5dbe0e607248a6749dac3bfaea50626b5275f0e` · SHA-256 `c2140a1dac685059a01bacb6bba81262bcbe707cbadc1fd16ab57dd50ba40bec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.MetadataType

/-! # Span-indexed typed metadata assertions -/

namespace Mathematics.SemanticTokenization

structure MetadataAssertion
    (text : TextCarrier)
    (kind : MetadataType) where
  assertionId : StableId
  span : Span text
  value : MetadataValue kind

structure SomeMetadataAssertion (text : TextCarrier) where
  kind : MetadataType
  assertion : MetadataAssertion text kind

structure MetadataProfile (text : TextCarrier) where
  assertions : List (SomeMetadataAssertion text)

end Mathematics.SemanticTokenization
```
