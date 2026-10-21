/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RiemannWitnessBoundaryResolution
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Resolution of the historical finite-scale-filter witness label

The witness registry initially retained `finiteScaleFilterWitnessLabel` as an
unresolved historical name. A bounded cross-repository audit identifies both its
original research specification and its narrower accepted-main descendant in
`grwtsk/formal-research`.

Issue #324 proposed a finite dyadic filter with moment cancellation and a
source-bound sign-compression comparison. That complete discrete filter was not
constructed. The accepted source instead selects the independent critical mode

  `criticalDecay u = exp (-u / 2)`

and proves its exact main-term readout together with a uniformly bounded signed
correction. After removing that mode from the actual paired prime-error work, the
remaining open witness is

  `FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork.
    CriticalRemovedPairedTailLowerBound`.

The accepted source proves

  `CriticalRemovedPairedTailLowerBound ↔ MertensResidualTailUpperBound`

and separately proves that `MertensResidualTailUpperBound` supplies

  `CorrelationAssembly.EstimateObligation`.

The boundary-layer witness resolved in the preceding registry layer is also
equivalent to the same Mertens-residual frontier. This file records that exact
external comparison without importing either proof into `grwtsk/math`.

The original dyadic filter, the new signed tail witness, and the subsequent RH
bridge all remain unconstructed. A source identity is metadata, not a local
proof edge.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RiemannWitnessRegistry

noncomputable section

private def acceptedFormalResearchMain : String :=
  "dc96769a40980ba724fa248c00541f594ad00080"

/-- Original owner of the finite-scale filter proposal. This is a research
specification, not an accepted theorem declaration. -/
def finiteScaleFilterProgramSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 324
  pullRequest := none
  commit := acceptedFormalResearchMain
  path := "issues/324"
  declaration := "RH16-FINITE-SCALE-FILTER.01"
  evidenceNote :=
    "Original finite dyadic moment-cancellation and sign-compression program; the complete discrete filter was not constructed."

/-- Accepted independent critical mode used by the narrowed source reduction. -/
def finiteScaleCriticalDecaySource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 324
  pullRequest := some 289
  commit := acceptedFormalResearchMain
  path := "FormalResearch/RiemannHypothesis/SourceCriticalDecayWork.lean"
  declaration :=
    "FormalResearch.RiemannHypothesis.SourceCriticalDecayWork.criticalDecay"
  evidenceNote :=
    "Accepted source definition criticalDecay(u)=exp(-u/2); it is independent of the arithmetic residual."

/-- Exact main-term evaluation for the accepted critical mode. -/
def finiteScaleCriticalDecayMainSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 324
  pullRequest := some 289
  commit := acceptedFormalResearchMain
  path := "FormalResearch/RiemannHypothesis/SourceCriticalDecayWork.lean"
  declaration :=
    "FormalResearch.RiemannHypothesis.SourceCriticalDecayWork.criticalDecayWork_eq_main"
  evidenceNote :=
    "For every A>=1, the critical-decay work equals diagonalMainCoefficient(A)*A-1."

/-- Uniformly bounded independent correction after the critical mode is
separated from the square-tail work. -/
def finiteScaleBoundedCorrectionSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 324
  pullRequest := some 289
  commit := acceptedFormalResearchMain
  path := "FormalResearch/RiemannHypothesis/SourceCriticalDecayWork.lean"
  declaration :=
    "FormalResearch.RiemannHypothesis.SourceCriticalDecayWork.squareMinusDecayPairedWork_uniformly_bounded"
  evidenceNote :=
    "Accepted existential uniform absolute bound for the signed square-minus-decay correction."

/-- Exact open witness after critical-decay removal. No inhabitant is supplied. -/
def finiteScaleFilteredTailSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 324
  pullRequest := some 289
  commit := acceptedFormalResearchMain
  path := "FormalResearch/RiemannHypothesis/SourceCriticalRemovedPrimeWork.lean"
  declaration :=
    "FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork.CriticalRemovedPairedTailLowerBound"
  evidenceNote :=
    "Open eventual lower bound for the actual critical-removed paired prime-error work."

/-- Exact accepted equivalence from the filtered tail to the maintained
Mertens-residual frontier. -/
def finiteScaleResidualEquivalenceSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 324
  pullRequest := some 289
  commit := acceptedFormalResearchMain
  path := "FormalResearch/RiemannHypothesis/SourceCriticalRemovedPrimeWork.lean"
  declaration :=
    "FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork.criticalRemoved_tail_iff_residual_tail"
  evidenceNote :=
    "Accepted-main equivalence: CriticalRemovedPairedTailLowerBound iff MertensResidualTailUpperBound."

/-- Exact accepted consumer from the residual frontier to the maintained
all-scale estimate obligation. -/
def finiteScaleEstimateConsumerSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 16
  pullRequest := some 289
  commit := acceptedFormalResearchMain
  path :=
    "FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimateMertensResidual.lean"
  declaration :=
    "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.estimate_of_mertens_residual_tail"
  evidenceNote :=
    "Accepted theorem: MertensResidualTailUpperBound implies CorrelationAssembly.EstimateObligation."

/-- Exact accepted equivalence joining the already resolved boundary-layer
witness to the same residual frontier. -/
def finiteScaleBoundaryComparisonSource : ExternalRepositoryRef where
  repository := "grwtsk/formal-research"
  issue := some 16
  pullRequest := some 289
  commit := acceptedFormalResearchMain
  path := "FormalResearch/RiemannHypothesis/SourceFirstPrimeAbel.lean"
  declaration :=
    "FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel.mertens_residual_tail_iff_criticalAbel_tail"
  evidenceNote :=
    "Accepted-main equivalence: MertensResidualTailUpperBound iff CriticalAbelTailLowerBound."

/-- Auditable disposition of the historical filter label. Boolean fields record
scope boundaries and do not replace mathematical proofs. -/
structure FiniteScaleFilterResolution where
  sourceIssue : Nat
  acceptedMainCommit : String
  originalProgram : ExternalRepositoryRef
  criticalMode : ExternalRepositoryRef
  exactMainReadout : ExternalRepositoryRef
  boundedCorrection : ExternalRepositoryRef
  openFilteredTail : ExternalRepositoryRef
  residualEquivalence : ExternalRepositoryRef
  estimateConsumer : ExternalRepositoryRef
  boundaryComparison : ExternalRepositoryRef
  importedLocally : Bool
  originalDiscreteFilterConstructed : Bool
  filteredTailWitnessConstructed : Bool
  estimatePremiseDischarged : Bool
  rhBridgeDischarged : Bool
  deriving Repr

/-- Exact source-bound resolution packet. -/
def finiteScaleFilterResolution : FiniteScaleFilterResolution where
  sourceIssue := 324
  acceptedMainCommit := acceptedFormalResearchMain
  originalProgram := finiteScaleFilterProgramSource
  criticalMode := finiteScaleCriticalDecaySource
  exactMainReadout := finiteScaleCriticalDecayMainSource
  boundedCorrection := finiteScaleBoundedCorrectionSource
  openFilteredTail := finiteScaleFilteredTailSource
  residualEquivalence := finiteScaleResidualEquivalenceSource
  estimateConsumer := finiteScaleEstimateConsumerSource
  boundaryComparison := finiteScaleBoundaryComparisonSource
  importedLocally := false
  originalDiscreteFilterConstructed := false
  filteredTailWitnessConstructed := false
  estimatePremiseDischarged := false
  rhBridgeDischarged := false

/-- Replace the unresolved finite-scale-filter node with the exact accepted
critical-decay reduction and its still-open tail witness. -/
def finiteScaleFilterResolvedNode : WitnessNode where
  id := .finiteScaleFilterWitnessLabel
  kind := .witness
  scope := .globalRiemann
  availability := .externalBranch
  source := some finiteScaleFilteredTailSource.toSourceRef
  evidence := [.kernelChecked, .trustAudited]
  consumer := some
    { name := finiteScaleEstimateConsumerSource.declaration
      status :=
        "Accepted in the source repository; not imported or replayed in grwtsk/math. It supplies EstimateObligation only after the open filtered-tail premise." }
  summary :=
    "Historical finite-scale-filter program narrowed to the accepted critical-decay reduction; the resulting signed tail witness remains open."

private def replaceFiniteScaleFilterNode (node : WitnessNode) : WitnessNode :=
  if node.id = .finiteScaleFilterWitnessLabel then finiteScaleFilterResolvedNode else node

private def isFiniteScaleFilterOutgoing (edge : WitnessEdge) : Bool :=
  decide (edge.from = .finiteScaleFilterWitnessLabel)

private def finiteScaleNoConnection
    (target : WitnessId) (scopeNote : String) : WitnessEdge where
  from := .finiteScaleFilterWitnessLabel
  to := target
  kind := .noProvedConnection
  authority := .externalSourceBound
  source := some finiteScaleFilteredTailSource.toSourceRef
  scopeNote := scopeNote

/-- The accepted filtered tail does not construct the rectangle count witness. -/
def finiteScaleResolvedNoRectangleEdge : WitnessEdge :=
  finiteScaleNoConnection .canonicalRectangleEdge
    "The critical-removed tail supplies the external all-scale estimate interface, not a fixed-contour rational enclosure."

/-- The accepted filtered tail is not the finite Möbius endpoint obstruction. -/
def finiteScaleResolvedNoEndpointEdge : WitnessEdge :=
  finiteScaleNoConnection .mobiusTerminalEndpointLoss
    "No theorem identifies the all-scale signed filtered tail with terminal-prefix information loss."

/-- The accepted filtered tail is not the finite-height reflection-cover route. -/
def finiteScaleResolvedNoReflectionEdge : WitnessEdge :=
  finiteScaleNoConnection .criticalReflectionCover
    "No theorem transports the critical-removed all-scale tail into the local contraction-cover certificate."

/-- Both external witnesses meet at the same Mertens-residual frontier. This is
an exact source-bound comparison, not a locally imported implication. -/
def finiteScaleComparesBoundaryEdge : WitnessEdge where
  from := .finiteScaleFilterWitnessLabel
  to := .boundaryLayerWitnessLabel
  kind := .comparesTo
  authority := .externalSourceBound
  source := some finiteScaleResidualEquivalenceSource.toSourceRef
  scopeNote :=
    "External accepted source gives CriticalRemovedTail iff MertensResidualTail iff CriticalAbelTail; no proof term is imported here."

/-- Registry overlay replacing only the finite-scale-filter node and its old
unresolved outgoing barriers. -/
def registryWithFiniteScaleFilterResolution : WitnessRegistry where
  nodes := registryWithBoundaryResolution.nodes.map replaceFiniteScaleFilterNode
  edges :=
    registryWithBoundaryResolution.edges.filter
      (fun edge => !isFiniteScaleFilterOutgoing edge) ++
      [finiteScaleResolvedNoRectangleEdge,
        finiteScaleResolvedNoEndpointEdge,
        finiteScaleResolvedNoReflectionEdge,
        finiteScaleComparesBoundaryEdge]

@[simp] theorem finiteScaleFilter_source_is_resolved :
    finiteScaleFilterResolvedNode.source.isSome = true := rfl

@[simp] theorem finiteScaleFilter_source_is_external :
    finiteScaleFilterResolvedNode.availability = .externalBranch := rfl

@[simp] theorem original_discrete_filter_not_constructed :
    finiteScaleFilterResolution.originalDiscreteFilterConstructed = false := rfl

@[simp] theorem filtered_tail_witness_not_constructed :
    finiteScaleFilterResolution.filteredTailWitnessConstructed = false := rfl

@[simp] theorem finiteScale_estimate_premise_not_discharged :
    finiteScaleFilterResolution.estimatePremiseDischarged = false := rfl

@[simp] theorem finiteScale_rh_bridge_not_discharged :
    finiteScaleFilterResolution.rhBridgeDischarged = false := rfl

@[simp] theorem finiteScale_edges_remain_nontraversable :
    finiteScaleResolvedNoRectangleEdge.traversable = false ∧
      finiteScaleResolvedNoEndpointEdge.traversable = false ∧
      finiteScaleResolvedNoReflectionEdge.traversable = false ∧
      finiteScaleComparesBoundaryEdge.traversable = false := by
  decide

theorem finiteScaleFilter_identifier_present :
    WitnessId.finiteScaleFilterWitnessLabel ∈
      registryWithFiniteScaleFilterResolution.nodeIds := by
  decide

/-- The bounded audit resolves no exact source for the remaining quintic label. -/
theorem quintic_label_remains_unresolved :
    quinticWitnessLabelNode.source = none := rfl

end

end GRWTSK.RiemannHypothesis.RiemannWitnessRegistry
