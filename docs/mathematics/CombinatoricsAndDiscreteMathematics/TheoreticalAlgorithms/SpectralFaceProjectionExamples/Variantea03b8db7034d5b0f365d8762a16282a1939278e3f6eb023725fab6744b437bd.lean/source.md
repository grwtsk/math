# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SpectralFaceProjectionExamples.Variantea03b8db7034d5b0f365d8762a16282a1939278e3f6eb023725fab6744b437bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8a6237ef473b64102cc41670340f5ed31d44fb2` · SHA-256 `ea03b8db7034d5b0f365d8762a16282a1939278e3f6eb023725fab6744b437bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Presentation.SpectralFaceProjection

/-!
# Toy Presentation-indexed spectral face projection examples

This file uses toy propositions to exercise Presentation-indexed request-time
projection, node-fiber projection steps, self-annealed network origin, and
page-visible input integration. It does not construct a spectral triple, prove
spectral geometry, prove analytic theorems, or give proof authority to URL
parameters, cache entries, node labels, fibers, reducer witnesses, canvas cells,
or DOM nodes.
-/

namespace Presentation

def toySpectralTripleUrlDescriptor : SpectralTripleUrlDescriptor where
  algebraId := "toy-algebra"
  hilbertId := "toy-hilbert"
  diracId := "toy-dirac"
  gradingId := some "toy-grading"
  realStructureId := some "toy-real"
  scaleId := none
  descriptorHash := 101

def toySpectralFaceUrlRequest : SpectralFaceUrlRequest where
  requestHash := 201
  descriptor := toySpectralTripleUrlDescriptor
  pipelineId := "default"
  faceId := 7
  target := "html"
  networkId := "self-annealed-default"
  stream := false

def toyPresentationIndex : SpectralProjectionPresentationIndex where
  presentationHash := 301
  requestHash := toySpectralFaceUrlRequest.requestHash
  sourceTreeHash := 401
  theoremResolutionHash := 501
  authorityBoundaryHash := 601
  cacheKeyHash := 701
  reducerNetworkHash := 801
  domProjectionHash := 901

def toySelfAnnealedNetworkOrigin : SelfAnnealedProjectionNetworkOrigin where
  ast := {
    snapshotHash := 1001
    moduleCount := 3
    declarationCount := 17
  }
  energy := {
    energyHash := 1101
    finiteEnergySound := True
    finiteEnergySoundProof := trivial
  }
  trace := {
    traceHash := 1201
    terminated := True
    terminatedProof := trivial
    everyStepWitnessed := True
    everyStepWitnessedProof := trivial
    authorityBoundaryPreserved := True
    authorityBoundaryProof := trivial
  }
  networkHash := 1301
  producedBySelfAnnealing := True
  producedBySelfAnnealingProof := trivial

def toyProjectionNode (nodeId : Nat) (kind : ProjectionNodeKind) (label : String) :
    ProjectionNode where
  nodeId := nodeId
  kind := kind
  nodeHash := 2000 + nodeId
  label := label

def toySourceNode : ProjectionNode :=
  toyProjectionNode 1 ProjectionNodeKind.sourceTree "source tree"

def toyTheoremNode : ProjectionNode :=
  toyProjectionNode 2 ProjectionNodeKind.theoremResolution "theorem resolution"

def toyDescriptorNode : ProjectionNode :=
  toyProjectionNode 3 ProjectionNodeKind.spectralDescriptor "spectral descriptor"

def toyBinaryNode : ProjectionNode :=
  toyProjectionNode 4 ProjectionNodeKind.binaryProjection "binary projection"

def toyMatrixNode : ProjectionNode :=
  toyProjectionNode 5 ProjectionNodeKind.matrixProjection "matrix projection"

def toyMeshNode : ProjectionNode :=
  toyProjectionNode 6 ProjectionNodeKind.meshFace "mesh face"

def toyReducerNode : ProjectionNode :=
  toyProjectionNode 7 ProjectionNodeKind.reducer "reducer"

def toyCacheNode : ProjectionNode :=
  toyProjectionNode 8 ProjectionNodeKind.cache "cache"

def toyCanvasNode : ProjectionNode :=
  toyProjectionNode 9 ProjectionNodeKind.canvas "canvas"

def toyDomNode : ProjectionNode :=
  toyProjectionNode 10 ProjectionNodeKind.domProjection "dom projection"

def toyNetworkNodes : List ProjectionNode := [
  toySourceNode,
  toyTheoremNode,
  toyDescriptorNode,
  toyBinaryNode,
  toyMatrixNode,
  toyMeshNode,
  toyReducerNode,
  toyCacheNode,
  toyCanvasNode,
  toyDomNode
]

def toyEdge (source target hash : Nat) : ProjectionEdge where
  sourceNodeId := source
  targetNodeId := target
  edgeHash := hash
  edgeSignature := "toy projection edge"
  preservesIdentity := True
  preservesIdentityProof := trivial
  preservesAuthorityBoundary := True
  preservesAuthorityBoundaryProof := trivial

def toySelfAnnealedProjectionNetwork : SelfAnnealedProjectionNetwork where
  networkHash := toySelfAnnealedNetworkOrigin.networkHash
  nodes := toyNetworkNodes
  edges := [
    toyEdge 1 2 3001,
    toyEdge 2 3 3002,
    toyEdge 3 4 3003,
    toyEdge 4 5 3004,
    toyEdge 5 6 3005,
    toyEdge 6 7 3006,
    toyEdge 7 8 3007,
    toyEdge 8 9 3008,
    toyEdge 9 10 3009
  ]
  wellTyped := True
  wellTypedProof := trivial
  producedByOrigin := True
  producedByOriginProof := trivial
  authorityBoundaryPreserved := True
  authorityBoundaryProof := trivial

def toyFiber (nodeId : Nat) (heat : Int) : NodeFiber where
  nodeId := nodeId
  sourceIdentityHash := toyPresentationIndex.sourceTreeHash
  theoremResolutionHash := toyPresentationIndex.theoremResolutionHash
  authorityBoundaryHash := toyPresentationIndex.authorityBoundaryHash
  binaryShadowHash := 4001
  matrixHash := 4002
  meshFaceHash := 4003
  reducerWitnessHash := 4004
  cacheKeyHash := toyPresentationIndex.cacheKeyHash
  domProjectionHash := toyPresentationIndex.domProjectionHash
  lossRecordHash := 4005
  heat := heat

def toyWitness (witnessId : Nat) : NodeFiberProjectionWitness where
  witnessId := witnessId
  identityPreserved := True
  identityPreservedProof := trivial
  theoremResolutionPreserved := True
  theoremResolutionPreservedProof := trivial
  authorityBoundaryPreserved := True
  authorityBoundaryPreservedProof := trivial
  cacheKeyPreserved := True
  cacheKeyPreservedProof := trivial
  lossRecorded := True
  lossRecordedProof := trivial
  noAuthorityCreated := True
  noAuthorityCreatedProof := trivial

def toyStep
    (stepIndex : Nat)
    (inputNode outputNode : ProjectionNode)
    (inputHeat outputHeat : Int) :
    ProjectionStep where
  stepIndex := stepIndex
  inputNode := inputNode
  outputNode := outputNode
  inputFiber := toyFiber inputNode.nodeId inputHeat
  outputFiber := toyFiber outputNode.nodeId outputHeat
  witness := toyWitness (5000 + stepIndex)
  projectsNodeAndFiber := True
  projectsNodeAndFiberProof := trivial

def toyStepOne : ProjectionStep :=
  toyStep 1 toySourceNode toyTheoremNode 0 0

def toyStepTwo : ProjectionStep :=
  toyStep 2 toyTheoremNode toyMatrixNode 0 1

def toyStepThree : ProjectionStep :=
  toyStep 3 toyMatrixNode toyDomNode 1 1

def toyTrace : NodeFiberProjectionTrace where
  traceHash := 6001
  steps := [toyStepOne, toyStepTwo, toyStepThree]
  everyStepProjectsNodeAndFiber := True
  everyStepProjectsNodeAndFiberProof := trivial
  everyStepWitnessed := True
  everyStepWitnessedProof := trivial
  preservesPresentationIndex := True
  preservesPresentationIndexProof := trivial
  preservesAuthorityBoundary := True
  preservesAuthorityBoundaryProof := trivial
  createsNoAuthority := True
  createsNoAuthorityProof := trivial

def toyPageVisibleProjectionInputs : PageVisibleProjectionInputs where
  request := toySpectralFaceUrlRequest
  presentationIndex := toyPresentationIndex
  algebraVisible := True
  algebraVisibleProof := trivial
  hilbertVisible := True
  hilbertVisibleProof := trivial
  diracVisible := True
  diracVisibleProof := trivial
  faceVisible := True
  faceVisibleProof := trivial
  pipelineVisible := True
  pipelineVisibleProof := trivial
  networkVisible := True
  networkVisibleProof := trivial
  stepVisible := True
  stepVisibleProof := trivial
  stepSizeVisible := True
  stepSizeVisibleProof := trivial
  cacheKeyVisible := True
  cacheKeyVisibleProof := trivial
  theoremResolutionVisible := True
  theoremResolutionVisibleProof := trivial
  authorityBoundaryVisible := True
  authorityBoundaryVisibleProof := trivial
  reducerWitnessVisible := True
  reducerWitnessVisibleProof := trivial
  heatDeltaVisible := True
  heatDeltaVisibleProof := trivial
  lossRecordVisible := True
  lossRecordVisibleProof := trivial

def toyMatrixView : FiniteShadowMatrixPageView where
  matrixHash := 7001
  rows := 8
  cols := 8
  alignedCount := 64
  analyticResidueCount := 0
  finiteResidueCount := 0
  step := 0
  stepSize := 1
  greyscaleWeightHash := 7002
  debugColorEnabled := false
  matrixSummaryVisible := True
  matrixSummaryProof := trivial
  greyscaleExplanationVisible := True
  greyscaleExplanationProof := trivial
  colorNotSoleMeaning := True
  colorNotSoleMeaningProof := trivial

def toyPresentationIndexedSpectralFaceProjection :
    PresentationIndexedSpectralFaceProjection where
  request := toySpectralFaceUrlRequest
  presentationIndex := toyPresentationIndex
  origin := toySelfAnnealedNetworkOrigin
  network := toySelfAnnealedProjectionNetwork
  visibleInputs := toyPageVisibleProjectionInputs
  trace := toyTrace
  matrixView := toyMatrixView
  urlRequestSound := True
  urlRequestProof := trivial
  presentationIndexSound := True
  presentationIndexProof := trivial
  selfAnnealedNetworkSound := True
  selfAnnealedNetworkProof := trivial
  allInputsVisible := True
  allInputsVisibleProof := trivial
  eachStepProjectsNodeAndFiber := True
  eachStepProjectsNodeAndFiberProof := trivial
  projectionRecordSound := True
  projectionRecordProof := trivial
  cacheKeySound := True
  cacheKeyProof := trivial
  projectedFaceSound := True
  projectedFaceProof := trivial
  matrixCanvasSound := True
  matrixCanvasProof := trivial
  reducerWitnessStreamSound := True
  reducerWitnessStreamProof := trivial
  domProjectionSound := True
  domProjectionProof := trivial
  authorityBoundarySound := True
  authorityBoundaryProof := trivial
  rejectedClaimsVisible := True
  rejectedClaimsProof := trivial
  validPresentationClaim := True
  validPresentationClaimProof := trivial

theorem example_projection_step_node_fiber_sound :
    toyStepOne.projectsNodeAndFiber ∧
    toyStepOne.witness.identityPreserved ∧
    toyStepOne.witness.theoremResolutionPreserved ∧
    toyStepOne.witness.authorityBoundaryPreserved ∧
    toyStepOne.witness.cacheKeyPreserved ∧
    toyStepOne.witness.lossRecorded ∧
    toyStepOne.witness.noAuthorityCreated ∧
    ¬ ProjectionStepCreatesAuthority toyStepOne :=
  projection_step_node_fiber_sound toyStepOne

theorem example_node_fiber_projection_trace_sound :
    toyTrace.everyStepProjectsNodeAndFiber ∧
    toyTrace.everyStepWitnessed ∧
    toyTrace.preservesPresentationIndex ∧
    toyTrace.preservesAuthorityBoundary ∧
    toyTrace.createsNoAuthority :=
  node_fiber_projection_trace_sound toyTrace

theorem example_page_visible_projection_inputs_sound :
    toyPageVisibleProjectionInputs.algebraVisible ∧
    toyPageVisibleProjectionInputs.hilbertVisible ∧
    toyPageVisibleProjectionInputs.diracVisible ∧
    toyPageVisibleProjectionInputs.faceVisible ∧
    toyPageVisibleProjectionInputs.pipelineVisible ∧
    toyPageVisibleProjectionInputs.networkVisible ∧
    toyPageVisibleProjectionInputs.stepVisible ∧
    toyPageVisibleProjectionInputs.stepSizeVisible ∧
    toyPageVisibleProjectionInputs.cacheKeyVisible ∧
    toyPageVisibleProjectionInputs.theoremResolutionVisible ∧
    toyPageVisibleProjectionInputs.authorityBoundaryVisible ∧
    toyPageVisibleProjectionInputs.reducerWitnessVisible ∧
    toyPageVisibleProjectionInputs.heatDeltaVisible ∧
    toyPageVisibleProjectionInputs.lossRecordVisible :=
  page_visible_projection_inputs_sound toyPageVisibleProjectionInputs

theorem example_presentation_indexed_request_time_spectral_face_projection_sound :
    toyPresentationIndexedSpectralFaceProjection.urlRequestSound ∧
    toyPresentationIndexedSpectralFaceProjection.presentationIndexSound ∧
    toyPresentationIndexedSpectralFaceProjection.selfAnnealedNetworkSound ∧
    toyPresentationIndexedSpectralFaceProjection.allInputsVisible ∧
    toyPresentationIndexedSpectralFaceProjection.eachStepProjectsNodeAndFiber ∧
    toyPresentationIndexedSpectralFaceProjection.projectionRecordSound ∧
    toyPresentationIndexedSpectralFaceProjection.cacheKeySound ∧
    toyPresentationIndexedSpectralFaceProjection.projectedFaceSound ∧
    toyPresentationIndexedSpectralFaceProjection.matrixCanvasSound ∧
    toyPresentationIndexedSpectralFaceProjection.reducerWitnessStreamSound ∧
    toyPresentationIndexedSpectralFaceProjection.domProjectionSound ∧
    toyPresentationIndexedSpectralFaceProjection.authorityBoundarySound ∧
    toyPresentationIndexedSpectralFaceProjection.rejectedClaimsVisible ∧
    toyPresentationIndexedSpectralFaceProjection.validPresentationClaim ∧
    ¬ UrlQueryProvesSpectralTriple toyPresentationIndexedSpectralFaceProjection.request ∧
    ¬ SpectralTripleDescriptorProvesSpectralGeometry toyPresentationIndexedSpectralFaceProjection.request.descriptor ∧
    ¬ SelfAnnealedNetworkCreatesTheoremAuthority toyPresentationIndexedSpectralFaceProjection.network ∧
    ¬ MatrixCanvasProvesAnalyticTheorem toyPresentationIndexedSpectralFaceProjection.matrixView :=
  presentation_indexed_request_time_spectral_face_projection_sound
    toyPresentationIndexedSpectralFaceProjection

end Presentation
```
