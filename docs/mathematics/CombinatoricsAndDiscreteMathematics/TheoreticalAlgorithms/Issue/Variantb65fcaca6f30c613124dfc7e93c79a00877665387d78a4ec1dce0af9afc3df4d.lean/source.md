# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Issue.Variantb65fcaca6f30c613124dfc7e93c79a00877665387d78a4ec1dce0af9afc3df4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6396d313ff3fe8c26c600eda6ccffa35e10496e8` · SHA-256 `b65fcaca6f30c613124dfc7e93c79a00877665387d78a4ec1dce0af9afc3df4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ingestion.Source

/-! # Issue and discussion records -/

namespace Mathematics.Ingestion

structure IssueRecord where
  issueId : StableId
  project : ProjectId
  externalNumber : String
  state : String
  titleDigest : Digest
  bodyDigest : Digest
  eventHistoryDigest : Digest
  sourceArtifactIds : List Ecosystem.ArtifactId
  deriving DecidableEq, Repr

end Mathematics.Ingestion
```
