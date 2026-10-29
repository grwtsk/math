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
