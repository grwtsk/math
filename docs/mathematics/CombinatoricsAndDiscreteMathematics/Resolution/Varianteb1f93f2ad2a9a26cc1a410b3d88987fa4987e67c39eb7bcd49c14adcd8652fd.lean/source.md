# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Resolution.Varianteb1f93f2ad2a9a26cc1a410b3d88987fa4987e67c39eb7bcd49c14adcd8652fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `357d1970d677d8929c9011a00ca3908f2da846ff` · SHA-256 `7ebffc4584cca4dc245bdd498fc0a3c9d3be0f8761955fe3c33f1fb0c779314c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SemanticEvidenceExtension.Variante34ac3ac9cee7bdeccfeba7197574c821450c819ee2fddd913a718358afc9d9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e34ac3ac9cee7bdeccfeba7197574c821450c819ee2fddd913a718358afc9d9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SemanticEvidenceExtension.Variante34ac3ac9cee7bdeccfeba7197574c821450c819ee2fddd913a718358afc9d9b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e34ac3ac9cee7bdeccfeba7197574c821450c819ee2fddd913a718358afc9d9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Resolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.ArchitecturalLanguage

/-!
# Conservative semantic-tokenization resolution payloads

The frozen `EvidenceCut` is extended here with dependent boundary, phrase,
concept, and network data.  This is the safe replacement for a recursively
self-referential cut.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SemanticEvidenceExtension.Variante34ac3ac9cee7bdeccfeba7197574c821450c819ee2fddd913a718358afc9d9b

namespace Mathematics.SemanticTokenization

structure SemanticEvidenceExtension
    (cut : EvidenceCut) where
  boundaryRules : Array BoundaryRule
  candidatePhrases : Array (PhraseCandidate cut)
  conceptOntology : Option ConceptOntology
  admissibleSegmentations : Option (SegmentationFamily cut)

structure UnknownObligation
    (cut : EvidenceCut) where
  id : Nat
  kind : SemanticTokenUnknownKind
  sourceSpans : Finset (Span cut.text)
  context : Option ContextId
  blockedAssertions : Finset AssertionId
  upstreamUnknowns : Finset Nat
  requiredEvidenceKinds : Finset EvidenceSourceKind
  requiredInvariant : Option String
  frontierDescription : String

def UnknownDependsOn
    {cut : EvidenceCut}
    (downstream upstream : UnknownObligation cut) : Prop :=
  upstream.id ∈ downstream.upstreamUnknowns

structure UnknownFrontier
    (cut : EvidenceCut) where
  obligations : Array (UnknownObligation cut)
  openIds : Finset Nat
  blockedIds : Finset Nat
  dependencyClosure :
    ∀ downstream upstream : Fin obligations.size,
      UnknownDependsOn
        obligations[downstream]
        obligations[upstream] →
      obligations[upstream].id ∈ openIds →
      obligations[downstream].id ∈ blockedIds

theorem unresolved_dependency_blocks_certification
    {cut : EvidenceCut}
    (frontier : UnknownFrontier cut)
    (downstream upstream : Fin frontier.obligations.size)
    (dependency :
      UnknownDependsOn
        frontier.obligations[downstream]
        frontier.obligations[upstream])
    (openUpstream :
      frontier.obligations[upstream].id ∈
        frontier.openIds) :
    frontier.obligations[downstream].id ∈
      frontier.blockedIds :=
  frontier.dependencyClosure
    downstream upstream dependency openUpstream

def RequiresExternalEvidence
    {cut : EvidenceCut}
    (obligation : UnknownObligation cut) : Prop :=
  obligation.requiredEvidenceKinds.Nonempty

def RequiresNewLinguisticInvariant
    {cut : EvidenceCut}
    (obligation : UnknownObligation cut) : Prop :=
  obligation.requiredInvariant.isSome

structure BoundaryFalsification
    (cut : EvidenceCut) where
  left : Span cut.text
  right : Span cut.text
  proposed : BoundaryCertificate cut left right
  contradictingEvidence : Finset EvidenceId
  contradictingEvidence_nonempty :
    contradictingEvidence.Nonempty
  protectedViolation : Prop

structure RelationFalsification
    (cut : EvidenceCut) where
  proposedRelation : SemanticRelationType
  sourceNode : Nat
  targetNode : Nat
  context : ContextId
  violatedConstraint : String
  witnessEvidence : Finset EvidenceId
  witnessEvidence_nonempty : witnessEvidence.Nonempty

inductive RejectionReason
  | malformedTextDigest
  | contradictorySnapshots
  | duplicateIdentity
  | invalidRegistryReference
  | impossibleSpan
  | contradictoryAuthorityPolicy
  | invalidResourceBound
  | malformedProvenanceGraph
deriving DecidableEq, Repr

structure RejectionCertificate
    (cut : EvidenceCut) where
  reason : RejectionReason
  witness : String

structure StructuralSemanticCertificate
    (cut : EvidenceCut) where
  cutWellFormed : CutWellFormed cut
  normalizationSound : cut.normalizationCertificate.isSome
  candidateCoverageSound : cut.candidateCoverage.isSome
  tokenizationSound : cut.baseTokenization.isSome
  metadataTyped : Prop
  provenanceComplete : Prop
  contextsValid : Prop
  graphWellFormed : Prop
  snapshotBound : Prop
  replayInputsCanonical : Prop

structure FullSemanticCertificate
    (cut : EvidenceCut)
    (segmentation : CertifiedSegmentation cut)
    (tokenGraph : TokenGraph cut segmentation)
    (network : IdiomConceptNetwork cut) where
  structural : StructuralSemanticCertificate cut
  everyAuthoritativeInterpretationAccepted : Prop
  everyPhraseReadingCertified : Prop
  everyIdiomCertified : Prop
  everyMetaphorCertified : Prop
  everyConceptRelationCertified : Prop
  everySynonymyEdgeHasSubstitution : Prop
  everyContextTransportCertified : Prop
  everyBoundaryRuleCorrect : Prop
  everyRequiredBoundaryStable : Prop
  noUnresolvedRequiredUnknowns : Prop

structure StructuralSolution
    (cut : EvidenceCut) where
  segmentation : CertifiedSegmentation cut
  segmentationStatus : SegmentationStatus cut
  tokenGraph : TokenGraph cut segmentation
  certificate : StructuralSemanticCertificate cut
  semanticFrontierBoundary :
    ∀ obligation : UnknownObligation cut,
      RequiresExternalEvidence obligation ∨
      RequiresNewLinguisticInvariant obligation

structure PartialSemanticSolution
    (cut : EvidenceCut) where
  structural : StructuralSolution cut
  idiomConceptNetwork :
    Option (IdiomConceptNetwork cut)
  acceptedRelations : Array RelationId
  unresolved : Array (UnknownObligation cut)
  certificate : Prop

structure FullSemanticSolution
    (cut : EvidenceCut) where
  segmentation : CertifiedSegmentation cut
  tokenGraph : TokenGraph cut segmentation
  idiomConceptNetwork : IdiomConceptNetwork cut
  certificate :
    FullSemanticCertificate
      cut segmentation tokenGraph idiomConceptNetwork

inductive SemanticTokenResolution
    (cut : EvidenceCut)
  | solved
      (solution : FullSemanticSolution cut)
  | structurallySolved
      (solution : StructuralSolution cut)
      (semanticUnknowns :
        Array (UnknownObligation cut))
  | partiallySolved
      (solution : PartialSemanticSolution cut)
  | falsifiedBoundary
      (witness : BoundaryFalsification cut)
  | falsifiedRelation
      (witness : RelationFalsification cut)
  | unknown
      (kind : SemanticTokenUnknownKind)
      (obligations :
        Array (UnknownObligation cut))
      (frontier : String)
  | rejected
      (reason : RejectionReason)
      (certificate : RejectionCertificate cut)

def StructuralSemanticSound
    (cut : EvidenceCut)
    (solution : StructuralSolution cut) : Prop :=
  CutWellFormed cut ∧
  cut.normalizationCertificate.isSome ∧
  cut.candidateCoverage.isSome ∧
  cut.baseTokenization.isSome ∧
  solution.certificate.metadataTyped ∧
  solution.certificate.provenanceComplete ∧
  solution.certificate.graphWellFormed ∧
  solution.certificate.snapshotBound ∧
  solution.certificate.replayInputsCanonical

def ValidNormalization (cut : EvidenceCut) : Prop :=
  cut.normalizationCertificate.isSome

def ValidCandidateCoverage (cut : EvidenceCut) : Prop :=
  cut.candidateCoverage.isSome

def ValidTokenization
    {cut : EvidenceCut}
    (segmentation : CertifiedSegmentation cut) : Prop :=
  segmentation.tokenization.ordered ∧
  segmentation.tokenization.disjoint ∧
  segmentation.tokenization.covers

def AllAcceptedAssertionsTyped (cut : EvidenceCut) : Prop :=
  ∀ assertion : Fin cut.metadataAssertions.size,
    AcceptedAssertion cut
      (cut.metadataAssertions[assertion]) →
    ∃ metadataType : MetadataType,
      (cut.metadataAssertions[assertion]).1 =
        metadataType

def AllAcceptedAssertionsHaveProvenance
    (cut : EvidenceCut) : Prop :=
  ∀ assertion : Fin cut.metadataAssertions.size,
    AcceptedAssertion cut
      (cut.metadataAssertions[assertion]) →
    cut.hasProvenance
      (cut.metadataAssertions[assertion]).2.id

def AllAcceptedAssertionsAreAuthorized
    (cut : EvidenceCut) : Prop :=
  ∀ assertion : Fin cut.metadataAssertions.size,
    AcceptedAssertion cut
      (cut.metadataAssertions[assertion]) →
    cut.authorityPolicy.permits
      (cut.metadataAssertions[assertion]).2.authority
      (cut.metadataAssertions[assertion]).2.intendedUse =
        true

def AllAcceptedAssertionsAreSnapshotBound
    (cut : EvidenceCut) : Prop :=
  ∀ assertion : Fin cut.metadataAssertions.size,
    AcceptedAssertion cut
      (cut.metadataAssertions[assertion]) →
    (cut.metadataAssertions[assertion]).2.snapshot =
      cut.activeSnapshot

def AllContextTransportsCertified
    (cut : EvidenceCut) : Prop :=
  ∀ transport : Fin cut.contextTransports.size,
    (cut.contextTransports[transport]).snapshot =
      cut.activeSnapshot

def AllAcceptedBoundariesRuleCorrect
    {cut : EvidenceCut}
    (solution : FullSemanticSolution cut) : Prop :=
  solution.certificate.everyBoundaryRuleCorrect

def AllRequiredBoundariesStable
    {cut : EvidenceCut}
    (solution : FullSemanticSolution cut) : Prop :=
  solution.certificate.everyRequiredBoundaryStable

def TokenGraphWellFormed
    {cut : EvidenceCut}
    {segmentation : CertifiedSegmentation cut}
    (graph : TokenGraph cut segmentation) : Prop :=
  (∀ token : Fin segmentation.tokenization.spans.size,
    ∃ vertex : Fin graph.vertices.size,
      (graph.vertices[vertex]).index = token) ∧
  (∀ edge : Fin graph.edges.size,
    (graph.edges[edge]).snapshot = cut.activeSnapshot)

def EveryAuthoritativeReadingExternallyCertified
    (cut : EvidenceCut) : Prop :=
  ∀ interpretation : CertifiedInterpretation cut,
    ∃ external : ExternalInterpretation cut.text,
      interpretation.external = external ∧
      AcceptedInterpretation cut external

def EveryIdiomHasCertificate
    {cut : EvidenceCut}
    (solution : FullSemanticSolution cut) : Prop :=
  solution.certificate.everyIdiomCertified

def EveryMetaphorHasCertificate
    {cut : EvidenceCut}
    (solution : FullSemanticSolution cut) : Prop :=
  solution.certificate.everyMetaphorCertified

def ExactContextualRelationsFieldwiseCertified
    {cut : EvidenceCut}
    (solution : FullSemanticSolution cut) : Prop :=
  solution.certificate.everyConceptRelationCertified

def EverySynonymyRelationHasSubstitutionEvidence
    {cut : EvidenceCut}
    (solution : FullSemanticSolution cut) : Prop :=
  solution.certificate.everySynonymyEdgeHasSubstitution

def IdiomConceptNetworkWellFormed
    {cut : EvidenceCut}
    (network : IdiomConceptNetwork cut) : Prop :=
  PairwiseUnique
      (network.nodes.map IdiomConceptNode.nodeId) ∧
  (∀ edge : Fin network.edges.size,
    (∃ source : Fin network.nodes.size,
      (network.nodes[source]).nodeId =
        (network.edges[edge]).source) ∧
    (∃ target : Fin network.nodes.size,
      (network.nodes[target]).nodeId =
        (network.edges[edge]).target))

abbrev CertifiedMetaOverlapSemanticRealization
    (cut : EvidenceCut)
    (solution : FullSemanticSolution cut) :=
  FullSemanticCertificate
    cut
    solution.segmentation
    solution.tokenGraph
    solution.idiomConceptNetwork

def MissingSemanticEvidence (cut : EvidenceCut) : Prop :=
  cut.interpretations.isEmpty

def StructuralFalsified
    (_cut : EvidenceCut)
    (_solution : StructuralSolution _cut) : Prop :=
  False

structure RelationAvailableInContext
    (cut : EvidenceCut)
    (relation : RelationId)
    (sourceContext targetContext : ContextId) where
  authorization :
    sourceContext = targetContext ∨
    ∃ certificate : Fin cut.contextTransports.size,
      ContextTransportAuthorizes
        cut.contextTransports[certificate]
        relation sourceContext targetContext

theorem context_relation_requires_transport
    {cut : EvidenceCut}
    {relation : RelationId}
    {sourceContext targetContext : ContextId}
    (available :
      RelationAvailableInContext
        cut relation sourceContext targetContext) :
    sourceContext = targetContext ∨
    ∃ certificate : Fin cut.contextTransports.size,
      ContextTransportAuthorizes
        cut.contextTransports[certificate]
        relation sourceContext targetContext :=
  available.authorization

theorem missing_interpretation_does_not_falsify_structure
    {cut : EvidenceCut}
    {structural : StructuralSolution cut}
    (_sound : StructuralSemanticSound cut structural) :
    MissingSemanticEvidence cut →
    ¬ StructuralFalsified cut structural := by
  intro _missing falsified
  exact falsified

end Mathematics.SemanticTokenization
```
