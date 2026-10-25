# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reason.Variant158d7fb6bfab1ad4dc944fdb812601a4e4b86a6addc2bf12ff3f3f99ab336526

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ca9b70fea4e0c5750ac670c85fa7b17a41774a1` · SHA-256 `158d7fb6bfab1ad4dc944fdb812601a4e4b86a6addc2bf12ff3f3f99ab336526`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Element.Edge

/-! # Governed barriers and collapse reasons -/

namespace Mathematics.Element

open Mathematics

inductive BarrierState
  | movable
  | movableWithContext
  | mustCoLocate
  | immovableUnderProfile
  | unresolved
  deriving DecidableEq, Repr, Inhabited

inductive CollapseReasonKind
  | mutualBlock
  | generatedFamily
  | sectionVariable
  | localDeclaration
  | privateNameCluster
  | syntaxProvider
  | macroProvider
  | notationProvider
  | optionState
  | attributeState
  | localInstance
  | scopedInstance
  | commandElaborator
  | typeclassSearchDelta
  | publicApiDelta
  | proofTermDelta
  | trustClosureDelta
  | generatedNameDelta
  | importCycle
  | parserFailure
  | elaboratorFailure
  | unreconstructableExtensionState
  deriving DecidableEq, Repr, Inhabited

structure RefactorBarrier where
  commandId : SourceCommandId
  state : BarrierState
  reason : CollapseReasonKind
  provider : Option SourceCommandId
  evidenceDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Element
```
