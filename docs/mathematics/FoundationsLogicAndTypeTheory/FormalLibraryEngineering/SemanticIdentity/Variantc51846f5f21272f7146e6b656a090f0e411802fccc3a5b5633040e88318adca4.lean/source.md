# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SemanticIdentity.Variantc51846f5f21272f7146e6b656a090f0e411802fccc3a5b5633040e88318adca4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00448e23fab94444edd9fdb162d3bef55ca1ee34` · SHA-256 `c51846f5f21272f7146e6b656a090f0e411802fccc3a5b5633040e88318adca4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

end Mathematics
```
