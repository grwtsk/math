# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Shard.Variantff201f968755c05467feb67a46186d347b00e0bf47df8785293f73701f4f5f9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70bba7b0070964a1586768ebb7c9e8190f5086c5` · SHA-256 `ff201f968755c05467feb67a46186d347b00e0bf47df8785293f73701f4f5f9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Extractor.Completeness

/-!
# Content-addressed per-module extraction shards
-/

namespace Mathematics.Extractor

open Mathematics

structure ModuleShard where
  module : ModuleRecord
  declarations : Array DeclarationRecord
  expressions : Array ExpressionRecord
  dependencies : Array DependencyEdge
  generationRelations : Array GenerationRelation
  attributes : Array AttributeRecord
  sources : Array DeclarationSource
  trustClosures : Array TrustClosure
  diagnostics : Array ExtractionDiagnostic
  oleanDigest : Digest
  sourceDigest : Option Digest
  adapterVersion : Version
  configurationDigest : Digest
  shardDigest : Digest
  deriving DecidableEq, Repr, Inhabited

/-- Shards are reusable only under exact content-address equality. -/
def ModuleShard.ReusableWith (left right : ModuleShard) : Prop :=
  left.shardDigest = right.shardDigest

end Mathematics.Extractor
```
