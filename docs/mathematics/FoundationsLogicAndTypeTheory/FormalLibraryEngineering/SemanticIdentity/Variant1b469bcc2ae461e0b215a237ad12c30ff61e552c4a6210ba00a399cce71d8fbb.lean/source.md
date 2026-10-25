# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticIdentity.Variant1b469bcc2ae461e0b215a237ad12c30ff61e552c4a6210ba00a399cce71d8fbb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `650c0e7146992671a6361f5acc3e0f2d2a48a614` · SHA-256 `1b469bcc2ae461e0b215a237ad12c30ff61e552c4a6210ba00a399cce71d8fbb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.Id

/-!
# Semantic identity

The framework distinguishes semantic objects from source elements, compiled
declarations, representations, runtime bindings, and storage locations.
-/

namespace Mathematics

abbrev ElementId := StableId
abbrev SystemId := StableId
abbrev WorkspaceId := StableId
abbrev TenantId := StableId
abbrev TransactionId := StableId
abbrev ProgressionId := StableId
abbrev ProgressionStateId := StableId
abbrev InterpretationProfileId := StableId
abbrev GammaBridgeId := StableId
abbrev TrajectoryId := StableId
abbrev SurgeryRequestId := StableId

/-- Canonical identity input. Presentation and runtime coordinates are absent. -/
structure SemanticIdentityInput where
  kind : String
  canonicalPayloadDigest : Digest
  profileDigest : Digest
  deriving DecidableEq, Repr

/-- A semantic reference carries identity only, never an object address. -/
structure ElementRef where
  id : ElementId
  deriving DecidableEq, Repr, Inhabited

/-!
The identities below deliberately have no coercions between them.  A semantic
element, a permanent external route, immutable stored bytes, and an exact
compiler invocation are different objects even when an implementation uses a
256-bit representation for more than one of them.
-/

/-- Permanent externally allocated position.  It is not a content digest. -/
structure RigidKey where
  bits : BitVec 256
  deriving DecidableEq, Repr

/-- Address of one immutable canonical object envelope. -/
structure ObjectAddress where
  bits : BitVec 256
  deriving DecidableEq, Repr

/--
Stable identity of one source module. It excludes source bytes and imported
interfaces, so it is distinct from a request to compile that module.
-/
structure ModuleKey where
  bits : BitVec 256
  deriving DecidableEq, Repr

/-- Exact key of one compiler request, including all imported interfaces. -/
structure CompileKey where
  bits : BitVec 256
  deriving DecidableEq, Repr

/-- Identity of a proposal-only neural observation. -/
structure ActivationKey where
  bits : BitVec 256
  deriving DecidableEq, Repr

end Mathematics
```
