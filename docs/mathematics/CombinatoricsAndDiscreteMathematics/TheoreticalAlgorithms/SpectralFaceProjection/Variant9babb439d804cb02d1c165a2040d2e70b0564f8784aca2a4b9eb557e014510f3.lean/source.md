# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SpectralFaceProjection.Variant9babb439d804cb02d1c165a2040d2e70b0564f8784aca2a4b9eb557e014510f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce643ffa6a34759a25dc2916a8f8529a33ed53b2` · SHA-256 `9babb439d804cb02d1c165a2040d2e70b0564f8784aca2a4b9eb557e014510f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Presentation.SelfAnnealedProjectionNetwork

/-!
# Presentation-indexed request-time spectral face projection

What is formalized:
Every visible input on the request-time spectral face projection page is treated
as part of one Presentation-indexed finite projection certificate.  Each
projection step carries a network node, its full node fiber, a witness, a loss
record, and an authority boundary.

What is certificate-gated:
The network is produced by the compile-time self-annealed Presentation process,
but that origin is finite metadata.  Authority remains routed through explicit
certificates and boundary calculus.

What is not claimed:
The URL query, spectral descriptor, node label, fiber label, hash, cache entry,
matrix canvas, reducer event, self-annealed network, or DOM node proves spectral
geometry or an analytic theorem.
-/

namespace Presentation

/-- URL-side spectral triple descriptor metadata. -/
structure SpectralTripleUrlDescriptor where
  algebraId : String
  hilbertId : String
  diracId : String
  gradingId : Option String
  realStructureId : Option String
  scaleId : Option String
  descriptorHash : Nat

/-- Parsed URL request for one spectral face projection. -/
structure SpectralFaceUrlRequest where
  requestHash : Nat
  descriptor : SpectralTripleUrlDescriptor
  pipelineId : String
  faceId : Nat
  target : String
  networkId : String
  stream : Bool

/-- Stable Presentation index for one request-time projection certificate. -/
structure SpectralProjectionPresentationIndex where
  presentationHash : Nat
  requestHash : Nat
  sourceTreeHash : Nat
  theoremResolutionHash : Nat
  authorityBoundaryHash : Nat
  cacheKeyHash : Nat
  reducerNetworkHash : Nat
  domProjectionHash : Nat

/-- Full node fiber projected at each step. -/
structure NodeFiber where
  nodeId : Nat
  sourceIdentityHash : Nat
  theoremResolutionHash : Nat
  authorityBoundaryHash : Nat
  binaryShadowHash : Nat
  matrixHash : Nat
  meshFaceHash : Nat
  reducerWitnessHash : Nat
  cacheKeyHash : Nat
  domProjectionHash : Nat
  lossRecordHash : Nat
  heat : Int

/-- Product decomposition certificate for a node fiber. -/
structure NodeFiberDecomposition where
  fiber : NodeFiber
  sourceFiberSound : Prop
  sourceFiberProof : sourceFiberSound
  theoremFiberSound : Prop
  theoremFiberProof : theoremFiberSound
  authorityFiberSound : Prop
  authorityFiberProof : authorityFiberSound
  binaryFiberSound : Prop
  binaryFiberProof : binaryFiberSound
  matrixFiberSound : Prop
  matrixFiberProof : matrixFiberSound
  meshFiberSound : Prop
  meshFiberProof : meshFiberSound
  reducerFiberSound : Prop
  reducerFiberProof : reducerFiberSound
  cacheFiberSound : Prop
  cacheFiberProof : cacheFiberSound
  domFiberSound : Prop
  domFiberProof : domFiberSound
  lossFiberSound : Prop
  lossFiberProof : lossFiberSound

/-- Witness that one node-fiber projection preserves identity and creates no authority. -/
structure NodeFiberProjectionWitness where
  witnessId : Nat
  identityPreserved : Prop
  identityPreservedProof : identityPreserved
  theoremResolutionPreserved : Prop
  theoremResolutionPreservedProof : theoremResolutionPreserved
  authorityBoundaryPreserved : Prop
  authorityBoundaryPreservedProof : authorityBoundaryPreserved
  cacheKeyPreserved : Prop
  cacheKeyPreservedProof : cacheKeyPreserved
  lossRecorded : Prop
  lossRecordedProof : lossRecorded
  noAuthorityCreated : Prop
  noAuthorityCreatedProof : noAuthorityCreated

/-- One projection step from node/fiber to the next node/fiber. -/
structure ProjectionStep where
  stepIndex : Nat
  inputNode : ProjectionNode
  outputNode : ProjectionNode
  inputFiber : NodeFiber
  outputFiber : NodeFiber
  witness : NodeFiberProjectionWitness
  projectsNodeAndFiber : Prop
  projectsNodeAndFiberProof : projectsNodeAndFiber

/-- Finite step trace for the page projection. -/
structure NodeFiberProjectionTrace where
  traceHash : Nat
  steps : List ProjectionStep
  everyStepProjectsNodeAndFiber : Prop
  everyStepProjectsNodeAndFiberProof : everyStepProjectsNodeAndFiber
  everyStepWitnessed : Prop
  everyStepWitnessedProof : everyStepWitnessed
  preservesPresentationIndex : Prop
  preservesPresentationIndexProof : preservesPresentationIndex
  preservesAuthorityBoundary : Prop
  preservesAuthorityBoundaryProof : preservesAuthorityBoundary
  createsNoAuthority : Prop
  createsNoAuthorityProof : createsNoAuthority

/-- Visible request and Presentation-index inputs on the page. -/
structure PageVisibleProjectionInputs where
  request : SpectralFaceUrlRequest
  presentationIndex : SpectralProjectionPresentationIndex
  algebraVisible : Prop
  algebraVisibleProof : algebraVisible
  hilbertVisible : Prop
  hilbertVisibleProof : hilbertVisible
  diracVisible : Prop
  diracVisibleProof : diracVisible
  faceVisible : Prop
  faceVisibleProof : faceVisible
  pipelineVisible : Prop
  pipelineVisibleProof : pipelineVisible
  networkVisible : Prop
  networkVisibleProof : networkVisible
  stepVisible : Prop
  stepVisibleProof : stepVisible
  stepSizeVisible : Prop
  stepSizeVisibleProof : stepSizeVisible
  cacheKeyVisible : Prop
  cacheKeyVisibleProof : cacheKeyVisible
  theoremResolutionVisible : Prop
  theoremResolutionVisibleProof : theoremResolutionVisible
  authorityBoundaryVisible : Prop
  authorityBoundaryVisibleProof : authorityBoundaryVisible
  reducerWitnessVisible : Prop
  reducerWitnessVisibleProof : reducerWitnessVisible
  heatDeltaVisible : Prop
  heatDeltaVisibleProof : heatDeltaVisible
  lossRecordVisible : Prop
  lossRecordVisibleProof : lossRecordVisible

/-- Visible finite matrix/canvas presentation. -/
structure FiniteShadowMatrixPageView where
  matrixHash : Nat
  rows : Nat
  cols : Nat
  alignedCount : Nat
  analyticResidueCount : Nat
  finiteResidueCount : Nat
  step : Nat
  stepSize : Nat
  greyscaleWeightHash : Nat
  debugColorEnabled : Bool
  matrixSummaryVisible : Prop
  matrixSummaryProof : matrixSummaryVisible
  greyscaleExplanationVisible : Prop
  greyscaleExplanationProof : greyscaleExplanationVisible
  colorNotSoleMeaning : Prop
  colorNotSoleMeaningProof : colorNotSoleMeaning

/-- Integrated finite Presentation-indexed projection certificate. -/
structure PresentationIndexedSpectralFaceProjection where
  request : SpectralFaceUrlRequest
  presentationIndex : SpectralProjectionPresentationIndex
  origin : SelfAnnealedProjectionNetworkOrigin
  network : SelfAnnealedProjectionNetwork
  visibleInputs : PageVisibleProjectionInputs
  trace : NodeFiberProjectionTrace
  matrixView : FiniteShadowMatrixPageView
  urlRequestSound : Prop
  urlRequestProof : urlRequestSound
  presentationIndexSound : Prop
  presentationIndexProof : presentationIndexSound
  selfAnnealedNetworkSound : Prop
  selfAnnealedNetworkProof : selfAnnealedNetworkSound
  allInputsVisible : Prop
  allInputsVisibleProof : allInputsVisible
  eachStepProjectsNodeAndFiber : Prop
  eachStepProjectsNodeAndFiberProof : eachStepProjectsNodeAndFiber
  projectionRecordSound : Prop
  projectionRecordProof : projectionRecordSound
  cacheKeySound : Prop
  cacheKeyProof : cacheKeySound
  projectedFaceSound : Prop
  projectedFaceProof : projectedFaceSound
  matrixCanvasSound : Prop
  matrixCanvasProof : matrixCanvasSound
  reducerWitnessStreamSound : Prop
  reducerWitnessStreamProof : reducerWitnessStreamSound
  domProjectionSound : Prop
  domProjectionProof : domProjectionSound
  authorityBoundarySound : Prop
  authorityBoundaryProof : authorityBoundarySound
  rejectedClaimsVisible : Prop
  rejectedClaimsProof : rejectedClaimsVisible
  validPresentationClaim : Prop
  validPresentationClaimProof : validPresentationClaim

def UrlQueryProvesSpectralTriple
    (_R : SpectralFaceUrlRequest) : Prop := False

def SpectralTripleDescriptorProvesSpectralGeometry
    (_D : SpectralTripleUrlDescriptor) : Prop := False

def ProjectionNodeCreatesTheoremAuthority
    (_N : ProjectionNode) : Prop := False

def NodeFiberOwnsAnalyticAuthority
    (_F : NodeFiber) : Prop := False

def ProjectionStepCreatesAuthority
    (_S : ProjectionStep) : Prop := False

def SelfAnnealedNetworkCreatesTheoremAuthority
    (_N : SelfAnnealedProjectionNetwork) : Prop := False

def MatrixCanvasProvesAnalyticTheorem
    (_M : FiniteShadowMatrixPageView) : Prop := False

def DomProjectionProvesMathematics
    (_hash : Nat) : Prop := False

theorem url_query_not_spectral_triple_authority
    (R : SpectralFaceUrlRequest) :
    ¬ UrlQueryProvesSpectralTriple R := by
  intro h
  exact h

theorem spectral_descriptor_not_geometry_authority
    (D : SpectralTripleUrlDescriptor) :
    ¬ SpectralTripleDescriptorProvesSpectralGeometry D := by
  intro h
  exact h

theorem projection_node_not_authority_creator
    (N : ProjectionNode) :
    ¬ ProjectionNodeCreatesTheoremAuthority N := by
  intro h
  exact h

theorem node_fiber_not_analytic_authority
    (F : NodeFiber) :
    ¬ NodeFiberOwnsAnalyticAuthority F := by
  intro h
  exact h

theorem projection_step_not_authority_creator
    (S : ProjectionStep) :
    ¬ ProjectionStepCreatesAuthority S := by
  intro h
  exact h

theorem self_annealed_network_not_authority_creator
    (N : SelfAnnealedProjectionNetwork) :
    ¬ SelfAnnealedNetworkCreatesTheoremAuthority N := by
  intro h
  exact h

theorem matrix_canvas_not_analytic_theorem
    (M : FiniteShadowMatrixPageView) :
    ¬ MatrixCanvasProvesAnalyticTheorem M := by
  intro h
  exact h

theorem dom_projection_not_mathematics_proof
    (hash : Nat) :
    ¬ DomProjectionProvesMathematics hash := by
  intro h
  exact h

theorem projection_step_node_fiber_sound
    (S : ProjectionStep) :
    S.projectsNodeAndFiber ∧
    S.witness.identityPreserved ∧
    S.witness.theoremResolutionPreserved ∧
    S.witness.authorityBoundaryPreserved ∧
    S.witness.cacheKeyPreserved ∧
    S.witness.lossRecorded ∧
    S.witness.noAuthorityCreated ∧
    ¬ ProjectionStepCreatesAuthority S :=
  by
    exact
      ⟨S.projectsNodeAndFiberProof,
       S.witness.identityPreservedProof,
       S.witness.theoremResolutionPreservedProof,
       S.witness.authorityBoundaryPreservedProof,
       S.witness.cacheKeyPreservedProof,
       S.witness.lossRecordedProof,
       S.witness.noAuthorityCreatedProof,
       projection_step_not_authority_creator S⟩

theorem node_fiber_projection_trace_sound
    (T : NodeFiberProjectionTrace) :
    T.everyStepProjectsNodeAndFiber ∧
    T.everyStepWitnessed ∧
    T.preservesPresentationIndex ∧
    T.preservesAuthorityBoundary ∧
    T.createsNoAuthority :=
  by
    exact
      ⟨T.everyStepProjectsNodeAndFiberProof,
       T.everyStepWitnessedProof,
       T.preservesPresentationIndexProof,
       T.preservesAuthorityBoundaryProof,
       T.createsNoAuthorityProof⟩

theorem page_visible_projection_inputs_sound
    (I : PageVisibleProjectionInputs) :
    I.algebraVisible ∧
    I.hilbertVisible ∧
    I.diracVisible ∧
    I.faceVisible ∧
    I.pipelineVisible ∧
    I.networkVisible ∧
    I.stepVisible ∧
    I.stepSizeVisible ∧
    I.cacheKeyVisible ∧
    I.theoremResolutionVisible ∧
    I.authorityBoundaryVisible ∧
    I.reducerWitnessVisible ∧
    I.heatDeltaVisible ∧
    I.lossRecordVisible :=
  by
    exact
      ⟨I.algebraVisibleProof,
       I.hilbertVisibleProof,
       I.diracVisibleProof,
       I.faceVisibleProof,
       I.pipelineVisibleProof,
       I.networkVisibleProof,
       I.stepVisibleProof,
       I.stepSizeVisibleProof,
       I.cacheKeyVisibleProof,
       I.theoremResolutionVisibleProof,
       I.authorityBoundaryVisibleProof,
       I.reducerWitnessVisibleProof,
       I.heatDeltaVisibleProof,
       I.lossRecordVisibleProof⟩

theorem presentation_indexed_request_time_spectral_face_projection_sound
    (C : PresentationIndexedSpectralFaceProjection) :
    C.urlRequestSound ∧
    C.presentationIndexSound ∧
    C.selfAnnealedNetworkSound ∧
    C.allInputsVisible ∧
    C.eachStepProjectsNodeAndFiber ∧
    C.projectionRecordSound ∧
    C.cacheKeySound ∧
    C.projectedFaceSound ∧
    C.matrixCanvasSound ∧
    C.reducerWitnessStreamSound ∧
    C.domProjectionSound ∧
    C.authorityBoundarySound ∧
    C.rejectedClaimsVisible ∧
    C.validPresentationClaim ∧
    ¬ UrlQueryProvesSpectralTriple C.request ∧
    ¬ SpectralTripleDescriptorProvesSpectralGeometry C.request.descriptor ∧
    ¬ SelfAnnealedNetworkCreatesTheoremAuthority C.network ∧
    ¬ MatrixCanvasProvesAnalyticTheorem C.matrixView :=
  by
    exact
      ⟨C.urlRequestProof,
       C.presentationIndexProof,
       C.selfAnnealedNetworkProof,
       C.allInputsVisibleProof,
       C.eachStepProjectsNodeAndFiberProof,
       C.projectionRecordProof,
       C.cacheKeyProof,
       C.projectedFaceProof,
       C.matrixCanvasProof,
       C.reducerWitnessStreamProof,
       C.domProjectionProof,
       C.authorityBoundaryProof,
       C.rejectedClaimsProof,
       C.validPresentationClaimProof,
       url_query_not_spectral_triple_authority C.request,
       spectral_descriptor_not_geometry_authority C.request.descriptor,
       self_annealed_network_not_authority_creator C.network,
       matrix_canvas_not_analytic_theorem C.matrixView⟩

end Presentation
```
