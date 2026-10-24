# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Signature.Variant9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `099605dcd2909ab92c5e6f638ddba482a4a9c1ed` · SHA-256 `9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Mutation.Coverage

/-! # Canonical typed mutation signature -/

namespace Mathematics.Mutation

structure MutationCoordinate where
  semantic : Int
  authority : Int
  permission : Int
  provenance : Int
  execution : Int
  representation : Int
  accessibility : Int
  juris : Int
  temporal : Int
  deriving DecidableEq, Repr

structure BoundaryCrossing where
  boundary : BoundaryKind
  sequence : Nat
  eventId : StableId
  lawId : StableId
  receipt : ObjectAddress

def causalCone
    (events : List MutationEvent) :
    Finset StableId :=
  events.foldl
    (fun cone event => insert event.target (insert event.source cone))
    ∅

def mutationFrontier
    (support : Finset StableId)
    (firstChanged : StableId → Bool) :
    Finset StableId :=
  support.filter fun element => firstChanged element = true

structure MutationSignature where
  signatureId : StableId
  mutationProgramId : StableId
  cone : Finset StableId
  frontier : Finset StableId
  boundaries : List BoundaryCrossing
  affectedStrata : StratumSet
  coordinates : StableId → Option MutationCoordinate
  detectorResponses : StableId → Option Bool
  unresolvedResidue : Finset StableId
  coverageDigest : Digest

def mutationSignature
    (signature : MutationSignature) :
    MutationSignature :=
  signature

theorem boundary_crossing_declares_law
    (crossing : BoundaryCrossing) :
    ∃ lawId, crossing.lawId = lawId :=
  ⟨crossing.lawId, rfl⟩

end Mathematics.Mutation
```
