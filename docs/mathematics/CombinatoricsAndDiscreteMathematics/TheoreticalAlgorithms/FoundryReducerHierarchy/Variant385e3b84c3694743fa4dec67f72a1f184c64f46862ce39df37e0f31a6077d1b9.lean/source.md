# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FoundryReducerHierarchy.Variant385e3b84c3694743fa4dec67f72a1f184c64f46862ce39df37e0f31a6077d1b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `666acd35005bb5c87aa666630b36f06c4093324b` · SHA-256 `09c2b3f0ffbbc8f19ff200967fd79a8b6108e95f9d58b316c024e2d23717e061`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReducerPipeline.Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ReducerPipeline.Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe","mathematical_subject":"Computation.DataStructures","original_sha256":"47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/FoundryReducerHierarchy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Foundry reducer hierarchy certificates

The foundry is modeled as the root witness/observer reducer pipeline.  Child
pipelines may advance only through recorded witness and observer streams.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReducerPipeline.Variant47612b6717926503f5fd5555fbb878495775bf533afa204d63aa650496e6e0fe

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
```
