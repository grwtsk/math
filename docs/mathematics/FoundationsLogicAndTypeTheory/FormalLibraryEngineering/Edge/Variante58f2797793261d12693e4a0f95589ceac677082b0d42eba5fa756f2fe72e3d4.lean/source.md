# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Edge.Variante58f2797793261d12693e4a0f95589ceac677082b0d42eba5fa756f2fe72e3d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c6dc81ffe40a3a62499da1216b1489e5d95a0d3` · SHA-256 `e58f2797793261d12693e4a0f95589ceac677082b0d42eba5fa756f2fe72e3d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Atom.State

/-! # Typed source-support edges -/

namespace MathDiscovery.Atom

open MathDiscovery

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

end MathDiscovery.Atom
```
