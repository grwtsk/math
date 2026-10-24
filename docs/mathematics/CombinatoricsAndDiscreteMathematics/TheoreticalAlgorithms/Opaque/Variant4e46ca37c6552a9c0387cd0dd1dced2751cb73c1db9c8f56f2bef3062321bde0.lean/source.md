# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Opaque.Variant4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87b9f71d45efcd5dbb5fb79311fa9141f462910f` · SHA-256 `4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Raw

/-! # Explicit opaque-artifact retention -/

namespace Mathematics.Ingestion

inductive OpacityReason
  | unsupportedMedia
  | parserUnavailable
  | toolchainUnavailable
  | encrypted
  | intentionallyOpaque
  deriving DecidableEq, Repr

/-- An unparsed artifact remains byte-addressed and queryable. -/
structure OpaqueArtifact where
  artifact : Ecosystem.RawArtifact
  reason : OpacityReason
  diagnosticArtifactIds : List StableId
  classificationDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Ingestion
```
