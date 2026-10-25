# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Payload.Variant82ee17a8af2b48105926111c306dc55285e162b57842af68adfbf77ef9df2419

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9536453272be140b182563430f138eb9c738a887` · SHA-256 `82ee17a8af2b48105926111c306dc55285e162b57842af68adfbf77ef9df2419`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Transport.Bytes
public import Surface.Core.Transport.Revision

/-!
# Finite payload contracts

Executable codecs and semantics are separated from stable identifiers. Function
values are never hashed; a transport contract binds only the descriptor fields.
-/

public section

namespace Surface.Core.Transport

universe u v

@[surface_novel]
structure PayloadDescriptor where
  schemaId : String
  schemaVersion : Nat
  algorithmId : String
  algorithmVersion : Nat
  invariantId : String
  serializationVersion : Nat
  mergeSemanticsId : String
deriving DecidableEq, Repr

@[surface_novel]
structure PayloadCodec (ρ : Type u) (α : Type v) where
  decode? : ρ → Option α
  encode : α → CanonicalBytes
  rawMatches : ρ → α → Prop
  decodeSound : ∀ {raw payload}, decode? raw = some payload → rawMatches raw payload

@[surface_novel]
structure PayloadSemantics (α : Type u) where
  descriptor : PayloadDescriptor
  invariant : α → Prop
  expectedUpdate : Revisioned α → Revisioned α
  preservesRevision : ∀ input,
    (expectedUpdate input).revision = input.revision
  preservesInvariant : ∀ input,
    invariant input.value → invariant (expectedUpdate input).value

@[surface_novel, surface_published]
theorem expectedUpdate_preserves_revision
    {α : Type u} (semantics : PayloadSemantics α)
    (input : Revisioned α) :
    (semantics.expectedUpdate input).revision = input.revision :=
  semantics.preservesRevision input

@[surface_novel, surface_published]
theorem expectedUpdate_preserves_invariant
    {α : Type u} (semantics : PayloadSemantics α)
    (input : Revisioned α) (valid : semantics.invariant input.value) :
    semantics.invariant (semantics.expectedUpdate input).value :=
  semantics.preservesInvariant input valid

end Surface.Core.Transport
```
