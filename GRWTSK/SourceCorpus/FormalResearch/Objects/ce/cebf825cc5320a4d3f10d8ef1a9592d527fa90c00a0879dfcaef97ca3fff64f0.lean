import Presentation.ClosureNetwork

/-!
Examples for the finite Presentation-indexed closure-network theorem.
-/

namespace Presentation
namespace ClosureNetworkExamples

open Presentation.ClosureNetwork

def examplePresentation : PresentationIndex where
  presentationHash := 11
  sourceTreeHash := 17
  authorityBoundaryHash := 23

def exampleEnvironment : ClosureEnvironment where
  presentation := examplePresentation
  theoremResolutionHash := 31
  spectralDescriptorHash := 37
  cacheKeyHash := 41
  projectionTargetHash := 43

def exampleClosure : PureNodeClosure where
  nodeId := 1
  env := exampleEnvironment
  run := fun input =>
    { outputHash := input.inputHash + 1
      faceHash := input.faceHash
      witnessHash := 53
      lossRecordHash := 59 }
  pure := True
  pureProof := True.intro
  noHiddenMutation := True
  noHiddenMutationProof := True.intro
  emitsEffectsAsData := True
  emitsEffectsAsDataProof := True.intro

def exampleFiberState (stateHash : Nat) (energy : Int) :
    PresentationFiberState where
  presentation := examplePresentation
  stateHash := stateHash
  energy := energy

def exampleWitness : ReducerFiberWitness where
  witnessId := 101
  identityPreserved := True
  identityPreservedProof := True.intro
  theoremResolutionPreserved := True
  theoremResolutionPreservedProof := True.intro
  authorityBoundaryPreserved := True
  authorityBoundaryPreservedProof := True.intro
  lossRecorded := True
  lossRecordedProof := True.intro
  noAuthorityCreated := True
  noAuthorityCreatedProof := True.intro

def exampleEdge : ReducerFiberEdge where
  source := exampleFiberState 61 0
  target := exampleFiberState 67 0
  witness := exampleWitness

def exampleNetwork : PresentationIndexedClosureNetwork where
  nodes := [exampleClosure]
  edges := [exampleEdge]
  allNodesPure := True
  allNodesPureProof := True.intro
  noHiddenMutation := True
  noHiddenMutationProof := True.intro
  effectsEmittedAsData := True
  effectsEmittedAsDataProof := True.intro
  reducerEdgesWitnessed := True
  reducerEdgesWitnessedProof := True.intro
  identityPreserved := True
  identityPreservedProof := True.intro
  theoremResolutionPreserved := True
  theoremResolutionPreservedProof := True.intro
  authorityBoundaryPreserved := True
  authorityBoundaryPreservedProof := True.intro
  lossRecorded := True
  lossRecordedProof := True.intro
  noAuthorityCreated := True
  noAuthorityCreatedProof := True.intro

example :
    exampleNetwork.allNodesPure ∧
    exampleNetwork.noHiddenMutation ∧
    exampleNetwork.effectsEmittedAsData ∧
    exampleNetwork.reducerEdgesWitnessed ∧
    exampleNetwork.identityPreserved ∧
    exampleNetwork.theoremResolutionPreserved ∧
    exampleNetwork.authorityBoundaryPreserved ∧
    exampleNetwork.lossRecorded ∧
    exampleNetwork.noAuthorityCreated :=
  presentation_indexed_closure_network_sound exampleNetwork

end ClosureNetworkExamples
end Presentation
