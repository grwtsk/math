import Surface.ContinuousAssurance.Claim
import Surface.ContinuousAssurance.Index.Core

/-!
# Typed canonical-index records

Aliases below remain distinct through their `IndexRecordKind` parameter.  This
prevents a raster record, review binding, or runtime observation from being
silently consumed where a theorem declaration is required.
-/

namespace Surface.ContinuousAssurance

abbrev MathematicalObjectRecord := IndexRecord .mathematicalObject
abbrev FormalDeclarationRecord := IndexRecord .formalDeclaration
abbrev PropositionRecord := IndexRecord .proposition
abbrev GlobalReferenceRecord := IndexRecord .globalReference
abbrev AbsoluteRegionRecord := IndexRecord .absoluteRegion
abbrev WindowSystemRecord := IndexRecord .windowSystem
abbrev ConvolutionInvolutionCoreRecord := IndexRecord .convolutionInvolutionCore
abbrev HierarchyLevelRecord := IndexRecord .hierarchyLevel
abbrev BinaryChargeRecord := IndexRecord .binaryCharge
abbrev RasterRecord := IndexRecord .raster
abbrev MetricFlowRecord := IndexRecord .metricFlow
abbrev TorsionModelRecord := IndexRecord .torsionModel
abbrev ThresholdStateRecord := IndexRecord .thresholdState
abbrev AvalanchePartitionRecord := IndexRecord .avalanchePartition
abbrev SurgeryPatchRecord := IndexRecord .surgeryPatch
abbrev SubmatrixLocusRecord := IndexRecord .submatrixLocus
abbrev ImplementationRefinementRecord := IndexRecord .implementationRefinement
abbrev ExampleRecord := IndexRecord .example
abbrev CounterexampleRecord := IndexRecord .counterexample
abbrev DiagramRecord := IndexRecord .diagram
abbrev EvidenceEventRecord := IndexRecord .evidenceEvent
abbrev RepresentationChangeRecord := IndexRecord .representationChange
abbrev ObligationRecord := IndexRecord .obligation
abbrev ReviewBindingRecord := IndexRecord .reviewBinding
abbrev AuthorizationBindingRecord := IndexRecord .authorizationBinding

/-- Claims about the indexed payload must still name an authority class. -/
structure IndexedClaim where
  objectId : MathematicalObjectId
  declaration : Option FormalDeclarationId
  statement : String
  assumptions : List String
  proofAuthority : AuthorityClass
  evidenceClass : EvidenceClass
  status : ClaimStatus
  assuranceLevel : AssuranceLevel
  openObligations : List ObligationId
  deriving Repr

end Surface.ContinuousAssurance
