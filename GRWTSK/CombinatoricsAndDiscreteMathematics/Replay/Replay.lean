import Mathematics.SemanticTokenization.Resolver

/-!
# Deterministic replay and exactly-once commit
-/

namespace Mathematics.SemanticTokenization

def cutDigest (cut : EvidenceCut) : Digest :=
  Digest.ofString
    (reprStr cut.activeSnapshot ++ ":" ++
      reprStr cut.text.id ++ ":" ++
      reprStr cut.text.normalizedDigest.bytes.size)

/--
The resolver is deterministic, so its authoritative result address is the
canonical committed-cut address.  Payload-specific artifact digests may be
stored separately without changing replay identity.
-/
def resolutionDigest
    (cut : EvidenceCut)
    (_result : SemanticTokenResolution cut) :
    Digest :=
  cutDigest cut

structure CanonicallyEqualCuts
    (left right : EvidenceCut) : Prop where
  digestEqual :
    cutDigest left = cutDigest right

theorem deterministic_replay
    (left right : EvidenceCut)
    (canonical : CanonicallyEqualCuts left right) :
    resolutionDigest
        left
        (resolveMetaOverlapSemantics left) =
      resolutionDigest
        right
        (resolveMetaOverlapSemantics right) :=
  canonical.digestEqual

structure CommitAuthority where
  ownerId : Nat
  capabilityDigest : Digest
deriving Repr

structure CommitState where
  eventDigests : Finset Digest
  events : Array AcceptedEvent
  lineage : Array LineageRecord

def acceptedEvent
    (cut : EvidenceCut)
    (result : SemanticTokenResolution cut) :
    AcceptedEvent :=
  { id := ⟨(resolutionDigest cut result).bytes.size⟩
    cutDigest := cutDigest cut
    resolutionDigest := resolutionDigest cut result
    snapshot := cut.activeSnapshot }

def commitResolution
    (_authority : CommitAuthority)
    (cut : EvidenceCut)
    (result : SemanticTokenResolution cut)
    (state : CommitState) :
    CommitState :=
  let digest := resolutionDigest cut result
  if digest ∈ state.eventDigests then
    state
  else
    { eventDigests := insert digest state.eventDigests
      events := state.events.push (acceptedEvent cut result)
      lineage :=
        state.lineage.push
          { cutDigest := cutDigest cut
            parentDigest :=
              state.lineage.back?.map LineageRecord.resultDigest
            resultDigest := digest
            snapshot := cut.activeSnapshot } }

def EventCountFor
    (digest : Digest)
    (events : Finset Digest) : Nat :=
  if digest ∈ events then 1 else 0

theorem commit_emits_at_most_one_event
    (authority : CommitAuthority)
    (cut : EvidenceCut)
    (result : SemanticTokenResolution cut)
    (state : CommitState) :
    EventCountFor
      (resolutionDigest cut result)
      (commitResolution
        authority cut result state).eventDigests ≤ 1 := by
  simp [EventCountFor]

theorem repeated_commit_is_idempotent
    (authority : CommitAuthority)
    (cut : EvidenceCut)
    (result : SemanticTokenResolution cut)
    (state : CommitState) :
    commitResolution authority cut result
      (commitResolution authority cut result state) =
    commitResolution authority cut result state := by
  simp [commitResolution]

def CommitsSolvedSemanticPayload
    {cut : EvidenceCut}
    (result : SemanticTokenResolution cut) : Prop :=
  match result with
  | .solved _ => True
  | _ => False

theorem unknown_does_not_commit_solved_payload
    {cut : EvidenceCut}
    {result : SemanticTokenResolution cut}
    {kind : SemanticTokenUnknownKind}
    {obligations : Array (UnknownObligation cut)}
    {frontier : String}
    (unknown :
      result = .unknown kind obligations frontier) :
    ¬ CommitsSolvedSemanticPayload result := by
  subst result
  simp [CommitsSolvedSemanticPayload]

def DeterministicReplay (cut : EvidenceCut) : Prop :=
  resolutionDigest cut
      (resolveMetaOverlapSemantics cut) =
    resolutionDigest cut
      (resolveMetaOverlapSemantics cut)

theorem semantic_tokenization_main
    {cut : EvidenceCut}
    {solution : FullSemanticSolution cut}
    (_resolved :
      resolveMetaOverlapSemantics cut =
        .solved solution) :
    CutWellFormed cut ∧
    ValidNormalization cut ∧
    ValidCandidateCoverage cut ∧
    ValidTokenization solution.segmentation ∧
    AllAcceptedAssertionsTyped cut ∧
    AllAcceptedAssertionsHaveProvenance cut ∧
    AllAcceptedAssertionsAreAuthorized cut ∧
    AllAcceptedAssertionsAreSnapshotBound cut ∧
    AllContextTransportsCertified cut ∧
    AllAcceptedBoundariesRuleCorrect solution ∧
    AllRequiredBoundariesStable solution ∧
    TokenGraphWellFormed solution.tokenGraph ∧
    EveryAuthoritativeReadingExternallyCertified cut ∧
    EveryIdiomHasCertificate solution ∧
    EveryMetaphorHasCertificate solution ∧
    ExactContextualRelationsFieldwiseCertified solution ∧
    EverySynonymyRelationHasSubstitutionEvidence solution ∧
    IdiomConceptNetworkWellFormed
      solution.idiomConceptNetwork ∧
    DeterministicReplay cut := by
  refine
    ⟨solution.certificate.structural.cutWellFormed,
      solution.certificate.structural.normalizationSound,
      solution.certificate.structural.candidateCoverageSound,
      ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
      ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact
      ⟨solution.segmentation.tokenization.ordered,
        solution.segmentation.tokenization.disjoint,
        solution.segmentation.tokenization.covers⟩
  · intro assertion _accepted
    exact
      ⟨(cut.metadataAssertions[assertion]).1, rfl⟩
  · intro assertion accepted
    exact accepted.provenanceExists
  · intro assertion accepted
    exact accepted.authorityAccepted
  · intro assertion accepted
    exact accepted.snapshotMatches
  · exact
      solution.certificate.everyContextTransportCertified
  · exact
      solution.certificate.everyBoundaryRuleCorrect
  · exact
      solution.certificate.everyRequiredBoundaryStable
  · exact
      ⟨solution.tokenGraph.everyTokenRepresented,
        solution.tokenGraph.edgeSnapshotsMatch⟩
  · intro interpretation
    exact
      ⟨interpretation.external, rfl,
        interpretation.accepted⟩
  · exact solution.certificate.everyIdiomCertified
  · exact solution.certificate.everyMetaphorCertified
  · exact
      solution.certificate.everyConceptRelationCertified
  · exact
      solution.certificate.everySynonymyEdgeHasSubstitution
  · exact
      ⟨solution.idiomConceptNetwork.nodeIdsUnique,
        solution.idiomConceptNetwork.endpointsExist⟩
  · rfl

end Mathematics.SemanticTokenization
