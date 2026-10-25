# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reason.Variant8de8f9233a352ad24bba34ff1d4ea2c26a270da0455aa75878fc6e19da8bf7ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5618253ed5c36cb731ea394afa4a2c9c42f2f8cb` · SHA-256 `8de8f9233a352ad24bba34ff1d4ea2c26a270da0455aa75878fc6e19da8bf7ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Atom.Edge

/-! # Governed barriers and collapse reasons -/

namespace MathDiscovery.Atom

open MathDiscovery

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

end MathDiscovery.Atom
```
