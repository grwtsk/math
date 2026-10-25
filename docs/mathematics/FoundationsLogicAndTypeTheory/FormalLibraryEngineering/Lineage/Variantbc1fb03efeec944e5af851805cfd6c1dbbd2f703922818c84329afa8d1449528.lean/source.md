# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lineage.Variantbc1fb03efeec944e5af851805cfd6c1dbbd2f703922818c84329afa8d1449528

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5c829e7a076f234efb5f42e3271815911860e19` · SHA-256 `bc1fb03efeec944e5af851805cfd6c1dbbd2f703922818c84329afa8d1449528`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Federation.GlobalId

/-! # Declaration lineage -/

namespace Mathematics.Federation

inductive LineageRelation
  | unchanged
  | renamed
  | moved
  | generalized
  | specialized
  | split
  | merged
  | deleted
  deriving DecidableEq, Repr

/-- Lineage records evolution without identifying different declarations. -/
structure DeclarationLineageEdge where
  source : GlobalDeclarationId
  target : GlobalDeclarationId
  relation : LineageRelation
  evidenceDigest : Digest
  authority : String
  deriving DecidableEq, Repr

end Mathematics.Federation
```
