# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Source.Variantb657ff9f78b939da2c2cc861f505bc086a19ae436f3793a7842257a6357ba905

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eaddffce5b0d31ca9e9a77ce1f1b1f7dfeac58e9` · SHA-256 `b657ff9f78b939da2c2cc861f505bc086a19ae436f3793a7842257a6357ba905`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Opaque

/-! # Source units -/

namespace Mathematics.Ingestion

inductive SourceLanguage
  | lean
  | markdown
  | yaml
  | json
  | toml
  | shell
  | rust
  | other (name : String)
  deriving DecidableEq, Repr

/-- Decoded text remains tied to the immutable raw artifact bytes. -/
structure SourceUnit where
  sourceId : StableId
  artifact : Ecosystem.RawArtifact
  language : SourceLanguage
  encoding : String
  lineCount : Nat
  decodedTextDigest : Digest
  decodingLossless : Bool
  deriving DecidableEq, Repr

end Mathematics.Ingestion
```
