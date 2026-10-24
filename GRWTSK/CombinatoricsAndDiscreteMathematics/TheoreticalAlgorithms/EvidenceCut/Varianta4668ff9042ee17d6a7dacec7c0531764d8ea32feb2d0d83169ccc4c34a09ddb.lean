import Mathematics.SemanticTokenization.UnknownKind
import Mathematics.SemanticTokenization.Normalization
import Mathematics.SemanticTokenization.SpanFamily

/-! # Immutable evidence-cut inputs to the pure resolver -/

namespace Mathematics.SemanticTokenization

structure EvidencePolicy where
  policyId : StableId
  authorityPrecedence : List SemanticAuthorityClass
  scopePrecedence : List EvidenceScope
  retainConflicts : Bool
  humanOverrideRequiresEvidence : Bool
  modelOutputsProposalOnly : Bool

structure GeneratedSemanticObligations
    (text : TextCarrier) where
  generatorId : StableId
  generator_id_valid : generatorId.Valid
  sourceDigest : Digest
  source_digest_exact :
    sourceDigest = text.sourceDigest
  snapshot : SnapshotId
  sourceUnknowns : List SemanticTokenUnknownKind
  obligations : List StableId
  obligation_count_exact :
    obligations.length = sourceUnknowns.length
  obligation_identities_nodup :
    obligations.Nodup

theorem GeneratedSemanticObligations.obligations_empty_implies_sources_empty
    {text : TextCarrier}
    (generated : GeneratedSemanticObligations text)
    (obligations_empty : generated.obligations = []) :
    generated.sourceUnknowns = [] := by
  cases sourceEquation : generated.sourceUnknowns with
  | nil =>
      rfl
  | cons head tail =>
      have countExact :=
        generated.obligation_count_exact
      rw [obligations_empty, sourceEquation] at countExact
      simp at countExact

/-!
The frame is the immutable semantic-admission identity of a committed cut.
Acceptance and completion certificates are indexed by this value, preventing a
certificate from substituting its own policy, snapshot, generated obligations,
or unresolved set.
-/

structure SemanticCutFrame
    (text : TextCarrier) where
  cutId : StableId
  cut_id_valid : cutId.Valid
  snapshot : SnapshotId
  evidencePolicy : EvidencePolicy
  policy_id_valid : evidencePolicy.policyId.Valid
  generatedObligations :
    GeneratedSemanticObligations text
  generated_snapshot_exact :
    generatedObligations.snapshot = snapshot
  unresolved : List SemanticTokenUnknownKind
  generated_sources_exact :
    generatedObligations.sourceUnknowns = unresolved

theorem SemanticCutFrame.generated_obligations_empty_implies_unresolved_empty
    {text : TextCarrier}
    (frame : SemanticCutFrame text)
    (obligations_empty :
      frame.generatedObligations.obligations = []) :
    frame.unresolved = [] := by
  calc
    frame.unresolved =
        frame.generatedObligations.sourceUnknowns :=
      frame.generated_sources_exact.symm
    _ = [] :=
      frame.generatedObligations
        |>.obligations_empty_implies_sources_empty
          obligations_empty

/-!
This is the admission boundary for an external assertion.  A raw
`SomeExternalAssertion` cannot inhabit a semantic completion certificate.
Every admitted assertion is tied to the cut frame and proves policy
membership, source/authority compatibility, scope admission, and exact
source-local provenance.
-/

structure AcceptedExternalAssertion
    {text : TextCarrier}
    (frame : SemanticCutFrame text) where
  packed : SomeExternalAssertion text
  acceptedCutId : StableId
  accepted_cut_exact :
    acceptedCutId = frame.cutId
  acceptanceReceiptId : StableId
  acceptance_receipt_id_valid :
    acceptanceReceiptId.Valid
  assertion_snapshot_exact :
    packed.assertion.snapshot = frame.snapshot
  assertion_authority_in_policy :
    packed.assertion.authority ∈
      frame.evidencePolicy.authorityPrecedence
  assertion_authority_eligible :
    SemanticCompletionAuthorityEligible
      packed.assertion.authority
  evidence_authority_in_policy :
    ∀ evidence ∈ packed.assertion.evidence.refs,
      evidence.authority ∈
        frame.evidencePolicy.authorityPrecedence
  evidence_authority_eligible :
    ∀ evidence ∈ packed.assertion.evidence.refs,
      SemanticCompletionAuthorityEligible
        evidence.authority
  evidence_source_authority_compatible :
    ∀ evidence ∈ packed.assertion.evidence.refs,
      evidence.sourceAuthorityCompatible
  evidence_scope_in_policy :
    ∀ evidence ∈ packed.assertion.evidence.refs,
      evidence.scope ∈
        frame.evidencePolicy.scopePrecedence
  provenance_supports_evidence :
    ∀ evidence ∈ packed.assertion.evidence.refs,
      ∃ path ∈ packed.assertion.provenance,
        path.assertionId =
            packed.assertion.metadata.assertionId ∧
          path.SupportsEvidence evidence
  policy_keeps_model_outputs_proposal_only :
    frame.evidencePolicy.modelOutputsProposalOnly = true

inductive CutRejectionReason
  | malformed
  | invalidDigest
  | invalidSnapshot
  | liveReadAuthority
  | contradictoryIdentity
  | contradictoryEvidence
  deriving DecidableEq, Repr

inductive CutValidation
  | accepted
  | rejected (reason : CutRejectionReason)
  deriving DecidableEq, Repr

structure StructuralCertificate
    (raw : RawTextCarrier)
    (text : TextCarrier) where
  normalizationSpec : NormalizationSpec
  normalization :
    NormalizationCertificate normalizationSpec raw text
  candidateFamily : CandidateSpanFamily text
  tokenization : Tokenization text
  metadata : MetadataProfile text
  graph : TokenGraph text
  graph_tokenization_exact :
    graph.tokenization = tokenization
  provenance : List (ProvenancePath text)
  provenanceComplete : Prop
  provenance_complete : provenanceComplete
  snapshot : SnapshotId

structure SemanticCompletionCertificate
    {text : TextCarrier}
    (frame : SemanticCutFrame text) where
  assertions : List (AcceptedExternalAssertion frame)
  assertions_nonempty : assertions ≠ []
  network : IdiomConceptNetwork text
  certificateCutId : StableId
  certificate_cut_exact :
    certificateCutId = frame.cutId
  snapshot : SnapshotId
  snapshot_exact :
    snapshot = frame.snapshot
  generated_obligations_exhausted :
    frame.generatedObligations.obligations = []
  cut_unresolved_exhausted :
    frame.unresolved = []
  certificateDigest : Digest
  certificate_digest_valid :
    certificateDigest.Valid

structure PartialSemanticCertificate
    (text : TextCarrier) where
  assertions : List (SomeExternalAssertion text)
  network : IdiomConceptNetwork text
  unresolved : List SemanticTokenUnknownKind
  unresolved_nonempty : unresolved ≠ []
  certificateDigest : Digest
  certificate_digest_valid :
    certificateDigest.Valid

structure RelationFalsificationWitness
    (text : TextCarrier) where
  proposedEdge : NetworkEdge text
  protectedConstraintId : StableId
  contradictoryEvidence : EvidenceBundle text

structure CommittedSemanticCut where
  cutDigest : Digest
  cut_digest_valid : cutDigest.Valid
  raw : RawTextCarrier
  text : TextCarrier
  frame : SemanticCutFrame text
  validation : CutValidation
  liveReadsAllowed : Bool
  structural : Option (StructuralCertificate raw text)
  semanticCompletion :
    Option (SemanticCompletionCertificate frame)
  partialSemantic :
    Option (PartialSemanticCertificate text)
  boundaryFalsification :
    Option (BoundaryFalsificationWitness text)
  relationFalsification :
    Option (RelationFalsificationWitness text)
  frontier : List StableId

end Mathematics.SemanticTokenization
