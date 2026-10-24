-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndexedClaim.Variant8076e1569d0be5af039b3918042d6e766b6197388d5963f5ad60b143025977bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8076e1569d0be5af039b3918042d6e766b6197388d5963f5ad60b143025977bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IndexedClaim.Variant8076e1569d0be5af039b3918042d6e766b6197388d5963f5ad60b143025977bf","mathematical_subject":"Computation.DataStructures","original_sha256":"8076e1569d0be5af039b3918042d6e766b6197388d5963f5ad60b143025977bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/Index/Records.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Claim
import Surface.ContinuousAssurance.Index.Core

/-!
# Typed canonical-index records

Aliases below remain distinct through their `IndexRecordKind` parameter.  This
prevents a raster record, review binding, or runtime observation from being
silently consumed where a theorem declaration is required.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndexedClaim.Variant8076e1569d0be5af039b3918042d6e766b6197388d5963f5ad60b143025977bf

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
