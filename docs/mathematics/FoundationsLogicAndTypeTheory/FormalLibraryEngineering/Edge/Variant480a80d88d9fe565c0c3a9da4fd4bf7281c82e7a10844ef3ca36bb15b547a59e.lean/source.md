# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Edge.Variant480a80d88d9fe565c0c3a9da4fd4bf7281c82e7a10844ef3ca36bb15b547a59e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ea901a59dd5459ac9650f40e2e6a92e03b9614c` · SHA-256 `480a80d88d9fe565c0c3a9da4fd4bf7281c82e7a10844ef3ca36bb15b547a59e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Element.State

/-! # Typed source-support edges -/

namespace Mathematics.Element

open Mathematics

inductive SourceEdgeKind
  | kernelDependency
  | earlierSourceDeclaration
  | syntaxProvider
  | macroProvider
  | notationProvider
  | namespaceContext
  | sectionVariableContext
  | optionProvider
  | attributeProvider
  | localInstanceProvider
  | scopedInstanceProvider
  | commandElaborator
  | privateClusterCoupling
  | sourceGeneration
  | generatedCompanion
  deriving DecidableEq, Repr, Inhabited

structure SourceEdge where
  id : SourceEdgeId
  provider : SourceCommandId
  consumer : SourceCommandId
  kind : SourceEdgeKind
  evidenceDigest : Digest
  mandatory : Bool
  deriving DecidableEq, Repr

end Mathematics.Element
```
