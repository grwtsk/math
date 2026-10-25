# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClosureNetworkExamples.Variant2866de397f59aa9439632829e211b696cc912e5421e75652de2332b7c9a63e30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03a71861fb16cd29227a7ae677c2cf082b36fcd1` · SHA-256 `0175e8d4309b3c2504c9eff25ef14deea56e503a48d5d47abb4ce70af02832e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExamplePresentation.Variantcebf825cc5320a4d3f10d8ef1a9592d527fa90c00a0879dfcaef97ca3fff64f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cebf825cc5320a4d3f10d8ef1a9592d527fa90c00a0879dfcaef97ca3fff64f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ExamplePresentation.Variantcebf825cc5320a4d3f10d8ef1a9592d527fa90c00a0879dfcaef97ca3fff64f0","mathematical_subject":"Foundations.Unclassified","original_sha256":"cebf825cc5320a4d3f10d8ef1a9592d527fa90c00a0879dfcaef97ca3fff64f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/ClosureNetworkExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Presentation.ClosureNetwork

/-!
Examples for the finite Presentation-indexed closure-network theorem.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExamplePresentation.Variantcebf825cc5320a4d3f10d8ef1a9592d527fa90c00a0879dfcaef97ca3fff64f0

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
