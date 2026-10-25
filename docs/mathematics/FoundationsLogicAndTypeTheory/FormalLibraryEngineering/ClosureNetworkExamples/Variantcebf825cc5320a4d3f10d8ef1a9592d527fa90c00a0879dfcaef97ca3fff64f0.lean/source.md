# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClosureNetworkExamples.Variantcebf825cc5320a4d3f10d8ef1a9592d527fa90c00a0879dfcaef97ca3fff64f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a63b4a7f670483851796d002291e67aa8e7c5bd0` · SHA-256 `cebf825cc5320a4d3f10d8ef1a9592d527fa90c00a0879dfcaef97ca3fff64f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
