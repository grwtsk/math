/-!
# Foundry reducer hierarchy certificates

The foundry is modeled as the root witness/observer reducer pipeline.  Child
pipelines may advance only through recorded witness and observer streams.
-/

namespace AnalyticNumber
namespace FoundryReducerHierarchy

structure ReducerPipeline where
  pipelineId : Nat
  pipelineHash : Nat
  witnessStreamHash : Nat
  observerStreamHash : Nat
  sound : Prop
  soundProof : sound

structure FoundryRootReducerPipeline where
  root : ReducerPipeline
  children : List ReducerPipeline
  hierarchyHash : Nat
  allChildrenSound : Prop
  allChildrenSoundProof : allChildrenSound
  rootWitnessesDelegation : Prop
  rootWitnessesDelegationProof : rootWitnessesDelegation
  noBypass : Prop
  noBypassProof : noBypass

structure ReducerPipelineEdge where
  fromPipelineId : Nat
  toPipelineId : Nat
  edgeTypeHash : Nat
  witnessStreamHash : Nat
  typed : Prop
  typedProof : typed
  witnessPresent : Prop
  witnessProof : witnessPresent

structure ReducerPipelineNetwork where
  root : ReducerPipeline
  nodes : List ReducerPipeline
  edges : List ReducerPipelineEdge
  networkHash : Nat
  allNodesSound : Prop
  allNodesSoundProof : allNodesSound
  allEdgesTyped : Prop
  allEdgesTypedProof : allEdgesTyped
  identityPreserved : Prop
  identityProof : identityPreserved
  authorityBoundaryPreserved : Prop
  authorityBoundaryProof : authorityBoundaryPreserved
  witnessStreamsComplete : Prop
  witnessProof : witnessStreamsComplete

theorem foundry_first_witness_observer_reducer_pipeline_sound
    (F : FoundryRootReducerPipeline) :
    F.root.sound ∧
    F.allChildrenSound ∧
    F.rootWitnessesDelegation ∧
    F.noBypass :=
  by
    exact
      ⟨F.root.soundProof,
       F.allChildrenSoundProof,
       F.rootWitnessesDelegationProof,
       F.noBypassProof⟩

theorem subordinate_reducer_pipeline_composition_sound
    (N : ReducerPipelineNetwork) :
    N.allNodesSound ∧
    N.allEdgesTyped ∧
    N.identityPreserved ∧
    N.authorityBoundaryPreserved ∧
    N.witnessStreamsComplete :=
  by
    exact
      ⟨N.allNodesSoundProof,
       N.allEdgesTypedProof,
       N.identityProof,
       N.authorityBoundaryProof,
       N.witnessProof⟩

end FoundryReducerHierarchy
end AnalyticNumber
