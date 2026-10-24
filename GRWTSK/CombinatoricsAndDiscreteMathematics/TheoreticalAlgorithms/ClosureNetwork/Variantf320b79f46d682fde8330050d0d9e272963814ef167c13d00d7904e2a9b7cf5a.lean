/-!
# Presentation-indexed closure networks

This module records the finite proof shape for reducer networks whose nodes are
pure Presentation-indexed closures.  Runtime effects are valid only when they
are emitted as explicit output data and every reducer fiber edge carries a
witness preserving identity, theorem-resolution state, authority boundary, loss
records, and the no-authority-created firewall.
-/

namespace Presentation
namespace ClosureNetwork

/-- Stable finite index for the Presentation carried by a closure network. -/
structure PresentationIndex where
  presentationHash : Nat
  sourceTreeHash : Nat
  authorityBoundaryHash : Nat

/-- Environment captured by a pure node closure. -/
structure ClosureEnvironment where
  presentation : PresentationIndex
  theoremResolutionHash : Nat
  spectralDescriptorHash : Nat
  cacheKeyHash : Nat
  projectionTargetHash : Nat

/-- Input data for a closure node. -/
structure ClosureInput where
  inputHash : Nat
  faceHash : Nat

/-- Output data from a closure node, including witness and loss identities. -/
structure ClosureOutput where
  outputHash : Nat
  faceHash : Nat
  witnessHash : Nat
  lossRecordHash : Nat

/-- Pure reducer-network node represented as a finite closure descriptor. -/
structure PureNodeClosure where
  nodeId : Nat
  env : ClosureEnvironment
  run : ClosureInput → ClosureOutput
  pure : Prop
  pureProof : pure
  noHiddenMutation : Prop
  noHiddenMutationProof : noHiddenMutation
  emitsEffectsAsData : Prop
  emitsEffectsAsDataProof : emitsEffectsAsData

/-- Reducer state over a single Presentation index. -/
structure PresentationFiberState where
  presentation : PresentationIndex
  stateHash : Nat
  energy : Int

/-- Witness for one reducer fiber transition. -/
structure ReducerFiberWitness where
  witnessId : Nat
  identityPreserved : Prop
  identityPreservedProof : identityPreserved
  theoremResolutionPreserved : Prop
  theoremResolutionPreservedProof : theoremResolutionPreserved
  authorityBoundaryPreserved : Prop
  authorityBoundaryPreservedProof : authorityBoundaryPreserved
  lossRecorded : Prop
  lossRecordedProof : lossRecorded
  noAuthorityCreated : Prop
  noAuthorityCreatedProof : noAuthorityCreated

/-- Witnessed edge between Presentation-indexed reducer states. -/
structure ReducerFiberEdge where
  source : PresentationFiberState
  target : PresentationFiberState
  witness : ReducerFiberWitness

/-- A finite closure network plus the aggregate obligations it exposes. -/
structure PresentationIndexedClosureNetwork where
  nodes : List PureNodeClosure
  edges : List ReducerFiberEdge
  allNodesPure : Prop
  allNodesPureProof : allNodesPure
  noHiddenMutation : Prop
  noHiddenMutationProof : noHiddenMutation
  effectsEmittedAsData : Prop
  effectsEmittedAsDataProof : effectsEmittedAsData
  reducerEdgesWitnessed : Prop
  reducerEdgesWitnessedProof : reducerEdgesWitnessed
  identityPreserved : Prop
  identityPreservedProof : identityPreserved
  theoremResolutionPreserved : Prop
  theoremResolutionPreservedProof : theoremResolutionPreserved
  authorityBoundaryPreserved : Prop
  authorityBoundaryPreservedProof : authorityBoundaryPreserved
  lossRecorded : Prop
  lossRecordedProof : lossRecorded
  noAuthorityCreated : Prop
  noAuthorityCreatedProof : noAuthorityCreated

/--
Closure-network soundness is certificate projection: the theorem extracts the
explicit aggregate witnesses carried by the finite network.
-/
theorem presentation_indexed_closure_network_sound
    (N : PresentationIndexedClosureNetwork) :
    N.allNodesPure ∧
    N.noHiddenMutation ∧
    N.effectsEmittedAsData ∧
    N.reducerEdgesWitnessed ∧
    N.identityPreserved ∧
    N.theoremResolutionPreserved ∧
    N.authorityBoundaryPreserved ∧
    N.lossRecorded ∧
    N.noAuthorityCreated :=
  by
    exact
      ⟨N.allNodesPureProof,
       N.noHiddenMutationProof,
       N.effectsEmittedAsDataProof,
       N.reducerEdgesWitnessedProof,
       N.identityPreservedProof,
       N.theoremResolutionPreservedProof,
       N.authorityBoundaryPreservedProof,
       N.lossRecordedProof,
       N.noAuthorityCreatedProof⟩

end ClosureNetwork
end Presentation
