import DAF.Language.GroundedResponse
import DAF.Tests.RhetoricalHilbert

/-!
# Grounded-language boundary tests

These fixtures use one immutable theorem node.  Negative tests establish that
the relevant proof-bearing acceptance certificate is uninhabited.
-/

namespace DAF.Tests.GroundedLanguage

open DAF.Universe DAF.Language

def theoremId : TerrainNodeId := ⟨"daf:test:theorem"⟩
def missingNodeId : TerrainNodeId := ⟨"daf:test:missing-node"⟩
def hypothesisId : StableId := ⟨"daf:test:hypothesis"⟩
def claimId : ClaimId := ⟨"daf:test:claim"⟩
def traceId : RuntimeTraceId := ⟨"daf:test:trace"⟩
def candidateId : CandidatePatchId := ⟨"daf:test:candidate"⟩
def inventedFoldId : FoldId := ⟨"daf:test:invented-fold"⟩
def inventedEdgeId : TerrainEdgeId := ⟨"daf:test:invented-edge"⟩
def proofEdgeId : TerrainEdgeId := ⟨"daf:test:proof-edge"⟩
def theoremCellId : TerrainCellId := ⟨"daf:test:theorem-cell"⟩
def theoremDescriptorId : TheoremCellId := ⟨"daf:test:theorem-descriptor"⟩
def proofAxisId : StableId := ⟨"daf:test:proof-axis"⟩

def snapshotId : SnapshotId := ⟨"daf-test-snapshot"⟩
def staleSnapshotId : SnapshotId := ⟨"daf-stale-snapshot"⟩
def sourceDigest : Digest := ⟨"sha256", "daf-test-source"⟩
def toolchainDigest : Digest := ⟨"sha256", "daf-test-toolchain"⟩
def statement : NormalizedType := ⟨"P → P"⟩
def hypothesisStatement : NormalizedType := ⟨"P"⟩

def theoremNode : TerrainNode where
  id := theoremId
  kind := .theorem
  stableConceptIds := ∅
  canonicalName := "DAF.Tests.GroundedLanguage.identity"
  sourceLocation := ⟨"Surface/DAF/Tests/GroundedLanguage.lean", 1, 1⟩
  sourceDigest := sourceDigest
  normalizedType := some statement
  authority := .certifiedSource
  internal := false
  nonclaims := ∅

def proofEdge : TerrainEdgeDescriptor where
  id := proofEdgeId
  source := theoremId
  target := theoremId
  relation := .equivalentTo
  sourceDigest := sourceDigest
  targetDigest := sourceDigest
  authority := .kernelChecked

def theoremCell : TerrainCellDescriptor where
  id := theoremCellId
  dimension := 1
  boundaryEdges := {proofEdgeId}
  identityDigest := sourceDigest

def theoremCellDescriptor : TheoremCellDescriptor where
  id := theoremDescriptorId
  theoremNode := theoremId
  statementDigest := sourceDigest
  dependencyDigest := sourceDigest
  requiredAxisCount := 1

def proofFace : CellFaceAddress where
  cell := theoremCellId
  axis := proofAxisId
  value := true

def validReasoningChain : ReasoningChain where
  steps :=
    [{ edge := proofEdgeId
       source := theoremId
       target := theoremId
       relation := .equivalentTo }]

def runtimeBinding : RuntimeBindingDescriptor where
  id := ⟨"daf:test:runtime-binding"⟩
  terrainNode := theoremId
  runtimePath := "tests/grounded-language"
  operation := "identity"
  sourceDigest := sourceDigest
  soundnessDeclaration := some theoremId

def manifest : UniverseManifest where
  schemaVersion := 1
  sourceTreeDigest := sourceDigest
  toolchainDigest := toolchainDigest
  snapshotId := snapshotId
  nodes := {theoremNode}
  edges := {proofEdge}
  higherCells := {theoremCell}
  theoremCells := {theoremCellDescriptor}
  foldData := ∅
  runtimeBindings := {runtimeBinding}
  externalAuthorities := ∅
  closedUnderReferences := by
    simp [ReferencesClosed, runtimeBinding, theoremNode, proofEdge,
      theoremCell, theoremCellDescriptor]
  identityInjective := by
    simp [NodeIdentityInjective]

def hypothesis : HypothesisBinding where
  id := hypothesisId
  normalizedStatement := hypothesisStatement
  sourceDigest := sourceDigest

def generalSource : ClaimSource where
  node := theoremId
  sourceDigest := sourceDigest
  normalizedStatement := statement
  canonicalRendering := "The identity theorem holds."
  dependencies := ∅
  requiredHypotheses := {hypothesis}
  polarity := .positive
  authority := .kernelChecked
  establishment := .established
  domain := .general
  spectralCertificate := none

def spectralSource : ClaimSource :=
  { generalSource with
    domain := .arithmeticSpectral
    spectralCertificate := some theoremId }

def locatorContext : TerrainLocatorContext where
  manifest := manifest
  availableCellFaces := {proofFace}
  harmonicTubes := ∅
  characterChannels := ∅
  operatorTraces := ∅
  runtimeTraces := {traceId}

def contextFor (source : ClaimSource) : GroundingContext where
  terrain := locatorContext
  sourceFor := fun id => if id = theoremId then some source else none
  knownClaimIds := {claimId}
  candidatePatches := {candidateId}

def context : GroundingContext := contextFor generalSource
def spectralContext : GroundingContext := contextFor spectralSource

def documentationNode : TerrainNode :=
  { theoremNode with
    kind := .documentation
    authority := .declarativeArtifact }

def documentationManifest : UniverseManifest where
  schemaVersion := 1
  sourceTreeDigest := sourceDigest
  toolchainDigest := toolchainDigest
  snapshotId := snapshotId
  nodes := {documentationNode}
  edges := ∅
  higherCells := ∅
  theoremCells := ∅
  foldData := ∅
  runtimeBindings := ∅
  externalAuthorities := ∅
  closedUnderReferences := by
    simp [ReferencesClosed]
  identityInjective := by
    simp [NodeIdentityInjective]

def documentationLocatorContext : TerrainLocatorContext where
  manifest := documentationManifest
  availableCellFaces := ∅
  harmonicTubes := ∅
  characterChannels := ∅
  operatorTraces := ∅
  runtimeTraces := ∅

def documentationContext : GroundingContext where
  terrain := documentationLocatorContext
  sourceFor := fun id => if id = theoremId then some generalSource else none
  knownClaimIds := ∅
  candidatePatches := ∅

theorem documentation_cannot_supply_kernel_checked_authority :
    ¬ documentationContext.SourceMatchesManifest generalSource := by
  rintro ⟨node, membership, sameId, _, _, supports⟩
  have nodeEq : node = documentationNode := by
    simpa [documentationContext, documentationLocatorContext,
      documentationManifest] using membership
  subst node
  simp [documentationNode, theoremNode, generalSource, sourceAuthorityCeiling,
    ResponseAuthority.Supports, ResponseAuthority.rank] at supports

def validLocator : TerrainLocator where
  snapshotId := snapshotId
  primaryNodes := {theoremId}
  cellFaces := {proofFace}
  reasoningChain := some validReasoningChain
  harmonicTube := none
  foldRoute := []
  characterChannel := none
  operatorTrace := none
  authority := .kernelChecked

def validBinding : ClaimBinding where
  claimId := claimId
  sourceNode := theoremId
  sourceDigest := sourceDigest
  normalizedStatement := statement
  dependencies := ∅
  suppliedHypotheses := {hypothesis}
  polarity := .positive
  authority := .kernelChecked
  establishment := .established
  domain := .general
  spectralCertificate := none
  support := .locatedEvidence
  contradictedNonclaims := ∅

def validClaim : LocatedClaim where
  payload := .exactTheorem theoremId
  binding := validBinding
  locator := validLocator

def validClause : GroundedClause where
  clauseId := claimId
  kind := .assertion
  text := "The identity theorem holds."
  locatedClaim := some validClaim

def assertionWith (claim : LocatedClaim) : GroundedClause :=
  { validClause with locatedClaim := some claim }

/-- Full validator rejection means no acceptance certificate can be returned. -/
def ValidatorRejects (context : GroundingContext) (clause : GroundedClause) : Prop :=
  ∀ checked, validateGroundedClause context clause ≠ .ok checked

theorem validatorRejects_of_notAccepted
    {groundingContext : GroundingContext}
    {clause : GroundedClause}
    (notAccepted : ¬ clause.Accepted groundingContext) :
    ValidatorRejects groundingContext clause := by
  intro checked accepted
  exact notAccepted ⟨checked⟩

theorem checked_assertion_claim_eq
    (groundingContext : GroundingContext)
    (claim : LocatedClaim)
    (checked : CheckedAssertion groundingContext (assertionWith claim)) :
    checked.claim = claim := by
  simpa [assertionWith] using Option.some.inj checked.claimPresent.symm

theorem checked_assertion_source_eq
    (source : ClaimSource)
    (claim : LocatedClaim)
    (sourceNode : claim.binding.sourceNode = theoremId)
    (checked : CheckedAssertion (contextFor source) (assertionWith claim)) :
    checked.source = source := by
  have lookup := checked.sourceLookup
  rw [checked_assertion_claim_eq (contextFor source) claim checked, sourceNode] at lookup
  simpa [contextFor] using (Option.some.inj lookup).symm

theorem accepted_assertion_elim
    (groundingContext : GroundingContext)
    (claim : LocatedClaim)
    (accepted : (assertionWith claim).Accepted groundingContext) :
    Nonempty (CheckedAssertion groundingContext (assertionWith claim)) := by
  rcases accepted with ⟨checked⟩
  cases checked with
  | assertion assertionChecked => exact ⟨assertionChecked⟩
  | connective connectiveChecked =>
      have impossible := connectiveChecked.clauseIsConnective
      simp [assertionWith, validClause] at impossible

def validLocatorChecked : CheckedTerrainLocator locatorContext validLocator where
  snapshotMatches := rfl
  primaryNodesNonempty := by simp [validLocator]
  primaryNodesResolve := by
    intro nodeId membership
    simp [validLocator] at membership
    subst nodeId
    exact ⟨theoremNode, Finset.mem_singleton_self _, rfl⟩
  cellFacesResolve := by
    simp [validLocator, locatorContext, TerrainLocatorContext.HasCellFace,
      UniverseManifest.HasCell, manifest, proofFace, theoremCell]
  reasoningChainResolves := by
    simp [validLocator, validReasoningChain,
      TerrainLocatorContext.OptionalReasoningChainValid,
      ReasoningChain.Valid, ReasoningChain.StepsContinuous,
      ReasoningChain.StepResolves, locatorContext, manifest, proofEdge]
  foldRouteResolves := by simp [validLocator]
  harmonicTubeResolves := by simp [validLocator, TerrainLocatorContext.OptionalMember]
  characterChannelResolves := by simp [validLocator, TerrainLocatorContext.OptionalMember]
  operatorTraceResolves := by simp [validLocator, TerrainLocatorContext.OptionalMember]

def validAssertionChecked : CheckedAssertion context validClause where
  claim := validClaim
  claimPresent := rfl
  clauseIsAssertion := rfl
  locatorChecked := validLocatorChecked
  source := generalSource
  sourceLookup := by
    simp [context, contextFor, validClaim, validBinding, theoremId]
  sourceMatchesManifest := by
    refine ⟨theoremNode, ?_, rfl, rfl, rfl, ?_⟩
    · simp [context, contextFor, locatorContext, manifest]
    · simp [theoremNode, sourceAuthorityCeiling, generalSource,
        ResponseAuthority.Supports, ResponseAuthority.rank]
  identityBindingValid := by
    simp [LocatedClaim.IdentityBindingValid, validClaim, validBinding,
      validLocator, generalSource]
  hypothesesComplete := by
    simp [LocatedClaim.HypothesesComplete, validClaim, validBinding, generalSource]
  polarityValid := rfl
  renderingValid := rfl
  locatorEvidenceComplete := by
    refine ⟨by simp [validClaim, validLocator], validReasoningChain, rfl, ?_⟩
    simp [ReasoningChain.ConcludesAt, validReasoningChain, generalSource]
  instantiationValid := by
    simp [LocatedClaim.InstantiationValid, validClaim]
  runtimeSoundnessValid := by
    simp [LocatedClaim.RuntimeSoundnessValid, validClaim]
  authorityValid := by
    simp [LocatedClaim.AuthorityValid, validClaim, validBinding, generalSource,
      ClaimPayload.authorityCeiling, ResponseAuthority.Supports,
      ResponseAuthority.rank]
  assertiveSupportValid := by
    simp [LocatedClaim.AssertiveSupportValid, validClause, validClaim, validBinding]
  modelSupportValid := by
    simp [LocatedClaim.ModelSupportValid, validClaim, validBinding]
  payloadValid := by
    simp [LocatedClaim.PayloadValid, validClaim, context, contextFor,
      GroundingContext.HasTheoremNode, GroundingContext.HasTheoremCell,
      locatorContext, manifest, theoremNode, theoremCellDescriptor,
      generalSource]
  spectralCertificateValid := by
    simp [LocatedClaim.SpectralCertificateValid, generalSource]

/-- Positive fixture: a fully located exact theorem has an acceptance certificate. -/
theorem valid_exact_theorem_is_accepted : validClause.Accepted context :=
  ⟨.assertion validAssertionChecked⟩

def falseParaphraseClause : GroundedClause :=
  { validClause with text := "The identity theorem does not hold." }

theorem false_paraphrase_is_rejected :
    ¬ falseParaphraseClause.Accepted context := by
  rintro ⟨checked⟩
  cases checked with
  | connective connectiveChecked =>
      have impossible := connectiveChecked.clauseIsConnective
      simp [falseParaphraseClause, validClause] at impossible
  | assertion assertionChecked =>
      have claimEq : assertionChecked.claim = validClaim := by
        simpa [falseParaphraseClause, validClause] using
          Option.some.inj assertionChecked.claimPresent.symm
      have sourceEq : assertionChecked.source = generalSource := by
        have lookup := assertionChecked.sourceLookup
        rw [claimEq] at lookup
        simpa [validClaim, validBinding, context, contextFor] using
          (Option.some.inj lookup).symm
      have rendering := assertionChecked.renderingValid
      rw [claimEq, sourceEq] at rendering
      simp [LocatedClaim.RenderingValid, falseParaphraseClause,
        validClause, generalSource] at rendering

theorem false_paraphrase_validator_rejects :
    ValidatorRejects context falseParaphraseClause :=
  validatorRejects_of_notAccepted false_paraphrase_is_rejected

def emptyFaceClaim : LocatedClaim :=
  { validClaim with
    locator := { validLocator with cellFaces := ∅ } }

def missingChainClaim : LocatedClaim :=
  { validClaim with
    locator := { validLocator with reasoningChain := none } }

theorem empty_face_evidence_is_rejected :
    ¬ emptyFaceClaim.LocatorEvidenceComplete generalSource := by
  simp [LocatedClaim.LocatorEvidenceComplete, emptyFaceClaim]

theorem missing_chain_evidence_is_rejected :
    ¬ missingChainClaim.LocatorEvidenceComplete generalSource := by
  simp [LocatedClaim.LocatorEvidenceComplete, missingChainClaim]

def staleLocator : TerrainLocator :=
  { validLocator with snapshotId := staleSnapshotId }

/-- A stale snapshot cannot produce a checked locator. -/
theorem stale_snapshot_is_rejected :
    ¬ Nonempty (CheckedTerrainLocator locatorContext staleLocator) := by
  rintro ⟨checked⟩
  simpa [staleLocator, staleSnapshotId, locatorContext, manifest, snapshotId]
    using checked.snapshotMatches

def nonexistentNodeLocator : TerrainLocator :=
  { validLocator with primaryNodes := {missingNodeId} }

/-- A primary node absent from the manifest cannot be grounded. -/
theorem nonexistent_node_is_rejected :
    ¬ Nonempty (CheckedTerrainLocator locatorContext nonexistentNodeLocator) := by
  rintro ⟨checked⟩
  have resolves := checked.primaryNodesResolve missingNodeId (by simp [nonexistentNodeLocator])
  rcases resolves with ⟨node, membership, sameId⟩
  have nodeEq : node = theoremNode := by simpa [locatorContext, manifest] using membership
  subst node
  simp [theoremNode, theoremId, missingNodeId] at sameId

def missingHypothesisClaim : LocatedClaim :=
  { validClaim with
    binding := { validBinding with suppliedHypotheses := ∅ } }

theorem missing_hypothesis_is_rejected :
    ¬ missingHypothesisClaim.HypothesesComplete generalSource := by
  simp [LocatedClaim.HypothesesComplete, missingHypothesisClaim,
    validBinding, generalSource, hypothesis]

def reversedPolarityClaim : LocatedClaim :=
  { validClaim with
    binding := { validBinding with polarity := .negative } }

theorem reversed_polarity_is_rejected :
    ¬ reversedPolarityClaim.PolarityValid generalSource := by
  simp [LocatedClaim.PolarityValid, reversedPolarityClaim, validBinding, generalSource]

def runtimeWithoutSoundness : LocatedClaim :=
  { validClaim with
    payload := .computedFact ⟨traceId, none⟩
    binding := { validBinding with authority := .executable }
    locator := { validLocator with authority := .executable } }

theorem runtime_without_soundness_is_rejected :
    ¬ runtimeWithoutSoundness.RuntimeSoundnessValid context generalSource := by
  simp [LocatedClaim.RuntimeSoundnessValid, runtimeWithoutSoundness]

def modelPromotedClaim : LocatedClaim :=
  { validClaim with
    binding := { validBinding with support := .modelAuthored } }

theorem model_authored_promotion_is_rejected :
    ¬ modelPromotedClaim.ModelSupportValid := by
  simp [LocatedClaim.ModelSupportValid, modelPromotedClaim,
    validBinding]

def embeddingOnlyClaim : LocatedClaim :=
  { validClaim with
    binding := { validBinding with support := .embeddingOnly } }

theorem embedding_only_assertion_is_rejected :
    ¬ embeddingOnlyClaim.AssertiveSupportValid .assertion := by
  simp [LocatedClaim.AssertiveSupportValid, embeddingOnlyClaim, validBinding]

def inventedFoldLocator : TerrainLocator :=
  { validLocator with foldRoute := [inventedFoldId] }

theorem invented_fold_route_is_rejected :
    ¬ Nonempty (CheckedTerrainLocator locatorContext inventedFoldLocator) := by
  rintro ⟨checked⟩
  have resolves := checked.foldRouteResolves inventedFoldId (by simp [inventedFoldLocator])
  rcases resolves with ⟨fold, membership, _⟩
  simp [locatorContext, manifest] at membership

def inventedReasoningChain : ReasoningChain where
  steps :=
    [{ edge := inventedEdgeId
       source := theoremId
       target := theoremId
       relation := .dependsOn }]

def inventedReasoningLocator : TerrainLocator :=
  { validLocator with reasoningChain := some inventedReasoningChain }

theorem invented_reasoning_route_is_rejected :
    ¬ Nonempty (CheckedTerrainLocator locatorContext inventedReasoningLocator) := by
  rintro ⟨checked⟩
  have valid := checked.reasoningChainResolves
  have stepValid := valid.2
    { edge := inventedEdgeId
      source := theoremId
      target := theoremId
      relation := .dependsOn }
    (by simp [inventedReasoningChain])
  rcases stepValid with ⟨edge, membership, identities⟩
  have edgeEq : edge = proofEdge := by
    simpa [locatorContext, manifest] using membership
  subst edge
  simp [proofEdge, proofEdgeId, inventedEdgeId] at identities

def invalidSubstitution : FormalSubstitution where
  bindings := []
  normalizedDigest := sourceDigest

def invalidInstantiationCertificate : InstantiationCertificate where
  theoremId := theoremId
  substitutionDigest := toolchainDigest
  checkerNode := theoremId

def invalidTheoremInstanceClaim : LocatedClaim :=
  { validClaim with
    payload := .theoremInstance theoremId invalidSubstitution
      invalidInstantiationCertificate }

theorem invalid_theorem_substitution_is_rejected :
    ¬ invalidTheoremInstanceClaim.InstantiationValid manifest generalSource := by
  simp [LocatedClaim.InstantiationValid, invalidTheoremInstanceClaim,
    invalidSubstitution, invalidInstantiationCertificate, sourceDigest,
    toolchainDigest]

def spectralClaimWithoutCertificate : LocatedClaim :=
  { validClaim with
    binding :=
      { validBinding with
        domain := .arithmeticSpectral
        spectralCertificate := none } }

theorem arithmetic_spectral_claim_without_certificate_is_rejected :
    ¬ spectralClaimWithoutCertificate.SpectralCertificateValid manifest spectralSource := by
  simp [LocatedClaim.SpectralCertificateValid, spectralClaimWithoutCertificate,
    validBinding, spectralSource, generalSource]

def staleSnapshotClaim : LocatedClaim :=
  { validClaim with locator := staleLocator }

def nonexistentNodeClaim : LocatedClaim :=
  { validClaim with locator := nonexistentNodeLocator }

def inventedFoldClaim : LocatedClaim :=
  { validClaim with locator := inventedFoldLocator }

def inventedReasoningClaim : LocatedClaim :=
  { validClaim with locator := inventedReasoningLocator }

theorem stale_snapshot_validator_rejects :
    ValidatorRejects context (assertionWith staleSnapshotClaim) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim context staleSnapshotClaim accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq context staleSnapshotClaim checked
    have locatorChecked := checked.locatorChecked
    rw [claimEq] at locatorChecked
    exact stale_snapshot_is_rejected ⟨by
      simpa [context, contextFor, staleSnapshotClaim] using locatorChecked⟩)

theorem nonexistent_node_validator_rejects :
    ValidatorRejects context (assertionWith nonexistentNodeClaim) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim context nonexistentNodeClaim accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq context nonexistentNodeClaim checked
    have locatorChecked := checked.locatorChecked
    rw [claimEq] at locatorChecked
    exact nonexistent_node_is_rejected ⟨by
      simpa [context, contextFor, nonexistentNodeClaim] using locatorChecked⟩)

theorem missing_hypothesis_validator_rejects :
    ValidatorRejects context (assertionWith missingHypothesisClaim) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim context missingHypothesisClaim accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq context missingHypothesisClaim checked
    have sourceEq := checked_assertion_source_eq generalSource missingHypothesisClaim rfl checked
    have hypothesesComplete := checked.hypothesesComplete
    rw [claimEq, sourceEq] at hypothesesComplete
    exact missing_hypothesis_is_rejected hypothesesComplete)

theorem reversed_polarity_validator_rejects :
    ValidatorRejects context (assertionWith reversedPolarityClaim) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim context reversedPolarityClaim accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq context reversedPolarityClaim checked
    have sourceEq := checked_assertion_source_eq generalSource reversedPolarityClaim rfl checked
    have polarityValid := checked.polarityValid
    rw [claimEq, sourceEq] at polarityValid
    exact reversed_polarity_is_rejected polarityValid)

theorem runtime_soundness_validator_rejects :
    ValidatorRejects context (assertionWith runtimeWithoutSoundness) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim context runtimeWithoutSoundness accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq context runtimeWithoutSoundness checked
    have sourceEq := checked_assertion_source_eq generalSource runtimeWithoutSoundness rfl checked
    have runtimeSoundnessValid := checked.runtimeSoundnessValid
    rw [claimEq, sourceEq] at runtimeSoundnessValid
    exact runtime_without_soundness_is_rejected runtimeSoundnessValid)

theorem model_promotion_validator_rejects :
    ValidatorRejects context (assertionWith modelPromotedClaim) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim context modelPromotedClaim accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq context modelPromotedClaim checked
    have modelSupportValid := checked.modelSupportValid
    rw [claimEq] at modelSupportValid
    exact model_authored_promotion_is_rejected modelSupportValid)

theorem embedding_only_validator_rejects :
    ValidatorRejects context (assertionWith embeddingOnlyClaim) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim context embeddingOnlyClaim accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq context embeddingOnlyClaim checked
    have assertiveSupportValid := checked.assertiveSupportValid
    rw [claimEq] at assertiveSupportValid
    rw [checked.clauseIsAssertion] at assertiveSupportValid
    exact embedding_only_assertion_is_rejected assertiveSupportValid)

theorem invented_fold_validator_rejects :
    ValidatorRejects context (assertionWith inventedFoldClaim) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim context inventedFoldClaim accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq context inventedFoldClaim checked
    have locatorChecked := checked.locatorChecked
    rw [claimEq] at locatorChecked
    exact invented_fold_route_is_rejected ⟨by
      simpa [context, contextFor, inventedFoldClaim] using locatorChecked⟩)

theorem invented_reasoning_validator_rejects :
    ValidatorRejects context (assertionWith inventedReasoningClaim) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim context inventedReasoningClaim accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq context inventedReasoningClaim checked
    have locatorChecked := checked.locatorChecked
    rw [claimEq] at locatorChecked
    exact invented_reasoning_route_is_rejected ⟨by
      simpa [context, contextFor, inventedReasoningClaim] using locatorChecked⟩)

theorem invalid_substitution_validator_rejects :
    ValidatorRejects context (assertionWith invalidTheoremInstanceClaim) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim
      context invalidTheoremInstanceClaim accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq
      context invalidTheoremInstanceClaim checked
    have sourceEq := checked_assertion_source_eq
      generalSource invalidTheoremInstanceClaim rfl checked
    have instantiationValid := checked.instantiationValid
    rw [claimEq, sourceEq] at instantiationValid
    exact invalid_theorem_substitution_is_rejected instantiationValid)

theorem spectral_certificate_validator_rejects :
    ValidatorRejects spectralContext (assertionWith spectralClaimWithoutCertificate) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim
      spectralContext spectralClaimWithoutCertificate accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq
      spectralContext spectralClaimWithoutCertificate checked
    have sourceEq := checked_assertion_source_eq
      spectralSource spectralClaimWithoutCertificate rfl checked
    have spectralCertificateValid := checked.spectralCertificateValid
    rw [claimEq, sourceEq] at spectralCertificateValid
    exact arithmetic_spectral_claim_without_certificate_is_rejected
      spectralCertificateValid)

theorem documentation_authority_validator_rejects :
    ValidatorRejects documentationContext (assertionWith validClaim) :=
  validatorRejects_of_notAccepted (by
    intro accepted
    rcases accepted_assertion_elim
      documentationContext validClaim accepted with ⟨checked⟩
    have claimEq := checked_assertion_claim_eq documentationContext validClaim checked
    have lookup := checked.sourceLookup
    rw [claimEq] at lookup
    have sourceEq : checked.source = generalSource := by
      simpa [documentationContext, validClaim, validBinding, theoremId]
        using (Option.some.inj lookup).symm
    have sourceMatchesManifest := checked.sourceMatchesManifest
    rw [sourceEq] at sourceMatchesManifest
    exact documentation_cannot_supply_kernel_checked_authority
      sourceMatchesManifest)

/-- Rejected preconditions cannot be hidden behind a Boolean success value. -/
theorem validator_ok_implies_certificate
    (clause : GroundedClause)
    (checked : CheckedGroundedClause context clause)
    (_result : validateGroundedClause context clause = .ok checked) :
    clause.Accepted context := by
  exact ⟨checked⟩

/-! ## Rhetorical-navigation authority boundary -/

namespace RhetoricalFixture

open DAF.Rhetorical
open DAF.Rhetorical.Runtime.RHT1
open DAF.Tests.RhetoricalHilbert

set_option maxRecDepth 50000
set_option maxHeartbeats 0

noncomputable section

/-- The grounding registry packages the actual Rust-emitted trace accepted by
the independent Lean decoder. -/
def gramCertificate : CertifiedRhetoricalGram where
  Index := RhetoricalIndex
  kernel := CrossRuntime.fixtureFormalKernel
  dimension := 10
  commitment := CrossRuntime.rustTraceCommitment
  trace := CrossRuntime.rustTrace
  decoded := by native_decide
  acceptance := by
    simp only [AcceptanceConditions, CrossRuntime.rustTraceCommitment]
    native_decide

def basePointOption : Option PointReport :=
  CrossRuntime.rustTrace.points[0]?

theorem basePoint_isSome : basePointOption.isSome = true := by
  native_decide

def basePointReport : PointReport :=
  basePointOption.get basePoint_isSome

def similarityOption : Option SimilarityReport :=
  CrossRuntime.rustTrace.similarities[0]?

theorem similarity_isSome : similarityOption.isSome = true := by
  native_decide

def similarityReport : SimilarityReport :=
  similarityOption.get similarity_isSome

def pointLocator : RhetoricalPointLocator where
  concept := KernelManifest.positiveRhetoricalKernelConcept
  role := .base
  diagonalRe := basePointReport.normSquared
  certificateId := gramCertificate.pointCertificateId basePointReport

def scoreTemplate : RhetoricalNavigationScore where
  profile := .similarity
  operands := [similarityReport.left, similarityReport.right]
  reportIndex := 0
  certificateId := ⟨"unbound"⟩
  value := .normalized similarityReport.normalizedRe.numerator
    similarityReport.normalizedRe.denominatorSquared
  authority := .navigationOnly

def similarityScore : RhetoricalNavigationScore :=
  { scoreTemplate with
    certificateId := gramCertificate.scoreCertificateId scoreTemplate }

def registry : RhetoricalEvidenceRegistry where
  gramTraceFor := fun traceId =>
    if traceId = gramCertificate.traceId then some gramCertificate else none

def locatorId : StableId := ⟨"daf:test:rhetorical-locator"⟩

def validLocator : ExternalRhetoricalLocator where
  locatorId := locatorId
  clauseId := claimId
  kernelId := gramCertificate.kernelId
  kernelDigest := gramCertificate.kernelDigest
  activeGramTraceId := gramCertificate.traceId
  traceDigest := gramCertificate.traceDigest
  psdCertificateId := gramCertificate.psdCertificateId
  activeGramBindingDigest := gramCertificate.bindingDigest
  points := [pointLocator]
  scores := [similarityScore]
  authority := .navigationOnly

theorem point_is_certified : gramCertificate.PointCertified pointLocator := by
  change CrossRuntime.rustTrace.points.any (fun report => decide (
    PointReport.Matches CrossRuntime.rustTrace report ∧
      report.source.resolve CrossRuntime.fixtureManifestWire =
        some KernelManifest.positiveRhetoricalKernelConcept.value.toUTF8.toList ∧
      report.roleTag = RhetoricalRole.base.tag ∧
      report.normSquared = basePointReport.normSquared ∧
      gramCertificate.pointCertificateId basePointReport =
        gramCertificate.pointCertificateId report)) = true
  rw [List.any_eq_true]
  refine ⟨basePointReport, by native_decide, ?_⟩
  apply decide_eq_true
  refine ⟨by native_decide, by native_decide, by native_decide, rfl, rfl⟩

theorem score_is_certified : gramCertificate.ScoreCertified similarityScore := by
  constructor
  · rfl
  · change CertifiedRhetoricalGram.traceReportsScore
      CrossRuntime.rustTrace scoreTemplate = true
    native_decide

theorem similarity_score_shape : scoreTemplate.ShapeValid := by
  unfold RhetoricalNavigationScore.ShapeValid
    RhetoricalNavigationScore.shapeValid scoreTemplate
  native_decide

def validLocatorChecked :
    CheckedExternalRhetoricalLocator registry [validClause] validLocator where
  clauseBound := ⟨validClause, by simp, rfl, rfl⟩
  kernelFresh := by
    refine ⟨gramCertificate, ?_, rfl, rfl⟩
    simp [registry, validLocator]
  traceRegistered := by
    refine ⟨gramCertificate, ?_⟩
    simp [registry, validLocator]
  traceDigestFresh := by
    refine ⟨gramCertificate, ?_, rfl⟩
    simp [registry, validLocator]
  gramCertified := by
    refine ⟨gramCertificate, ?_, rfl, rfl, rfl, rfl, rfl, rfl⟩
    simp [registry, validLocator]
  pointsNonempty := by simp [validLocator]
  pointNormsPositive := by
    intro point membership
    simp only [validLocator, List.mem_singleton] at membership
    subst point
    change 0 < basePointReport.normSquared
    native_decide
  pointsCertified := by
    refine ⟨gramCertificate, ?_, ?_⟩
    · simp [registry, validLocator]
    · intro point membership
      simp only [validLocator, List.mem_singleton] at membership
      subst point
      exact point_is_certified
  scoreShapesValid := by
    intro score membership
    simp only [validLocator, List.mem_singleton] at membership
    subst score
    exact similarity_score_shape
  scoresCertified := by
    refine ⟨gramCertificate, ?_, ?_⟩
    · simp [registry, validLocator]
    · intro score membership
      simp only [validLocator, List.mem_singleton] at membership
      subst score
      exact score_is_certified
  navigationOnly := by
    simp [ExternalRhetoricalLocator.NavigationOnly,
      validLocator, similarityScore, scoreTemplate]

theorem valid_locator_is_checked :
    Nonempty (CheckedExternalRhetoricalLocator registry
      [validClause] validLocator) :=
  ⟨validLocatorChecked⟩

def validResponse : GroundedResponse where
  responseId := ⟨"daf:test:rhetorical-response"⟩
  snapshotId := snapshotId
  clauses := [validClause]
  rhetoricalLocators := [validLocator]

def validResponseChecked :
    CheckedRhetoricalGroundedResponse context registry validResponse where
  snapshotMatches := rfl
  clausesChecked :=
    { checked := by
        intro clause membership
        simp [validResponse] at membership
        subst clause
        exact ⟨.assertion validAssertionChecked⟩ }
  rhetoricalLocatorsChecked := .cons validLocatorChecked .nil

theorem valid_response_is_checked :
    Nonempty (CheckedRhetoricalGroundedResponse context registry
      validResponse) :=
  ⟨validResponseChecked⟩

/-! ## Rhetorical grounding mutations -/

theorem registered_certificate_eq
    {certificate : CertifiedRhetoricalGram}
    (lookup : registry.gramTraceFor gramCertificate.traceId =
      some certificate) :
    certificate = gramCertificate := by
  have equality :
      (some gramCertificate : Option CertifiedRhetoricalGram) =
        some certificate := by
    simpa [registry] using lookup
  exact (Option.some.inj equality).symm

def staleKernelDigest : Universe.Digest :=
  { gramCertificate.kernelDigest with algorithm := "stale" }

def staleKernelLocator : ExternalRhetoricalLocator :=
  { validLocator with kernelDigest := staleKernelDigest }

theorem stale_kernel_digest_rejected :
    ¬ Nonempty (CheckedExternalRhetoricalLocator registry
      [validClause] staleKernelLocator) := by
  rintro ⟨checked⟩
  rcases checked.kernelFresh with
    ⟨certificate, lookup, _, digestEquality⟩
  have certificateEquality := registered_certificate_eq (by
    simpa [staleKernelLocator, validLocator] using lookup)
  subst certificate
  simpa [staleKernelLocator, staleKernelDigest,
    CertifiedRhetoricalGram.kernelDigest, rhetoricalDigest] using
    congrArg Universe.Digest.algorithm digestEquality

def staleTraceDigest : Universe.Digest :=
  { gramCertificate.traceDigest with algorithm := "stale" }

def staleTraceLocator : ExternalRhetoricalLocator :=
  { validLocator with traceDigest := staleTraceDigest }

theorem stale_trace_digest_rejected :
    ¬ Nonempty (CheckedExternalRhetoricalLocator registry
      [validClause] staleTraceLocator) := by
  rintro ⟨checked⟩
  rcases checked.traceDigestFresh with
    ⟨certificate, lookup, digestEquality⟩
  have certificateEquality := registered_certificate_eq (by
    simpa [staleTraceLocator, validLocator] using lookup)
  subst certificate
  simpa [staleTraceLocator, staleTraceDigest,
    CertifiedRhetoricalGram.traceDigest, rhetoricalDigest] using
    congrArg Universe.Digest.algorithm digestEquality

def forgedPsdCertificateId : StableId :=
  ⟨gramCertificate.psdCertificateId.value ++ ":forged"⟩

def forgedPsdLocator : ExternalRhetoricalLocator :=
  { validLocator with psdCertificateId := forgedPsdCertificateId }

theorem forged_psd_certificate_rejected :
    ¬ Nonempty (CheckedExternalRhetoricalLocator registry
      [validClause] forgedPsdLocator) := by
  rintro ⟨checked⟩
  rcases checked.gramCertified with
    ⟨certificate, lookup, _, _, _, _, certificateEquality, _⟩
  have registeredEquality := registered_certificate_eq (by
    simpa [forgedPsdLocator, validLocator] using lookup)
  subst certificate
  have valueEquality := congrArg StableId.value certificateEquality
  have lengthEquality := congrArg String.length valueEquality
  simp [forgedPsdLocator, forgedPsdCertificateId] at lengthEquality

def zeroNormPoint : RhetoricalPointLocator :=
  { pointLocator with diagonalRe := 0 }

def zeroNormLocator : ExternalRhetoricalLocator :=
  { validLocator with points := [zeroNormPoint] }

theorem zero_norm_point_rejected :
    ¬ Nonempty (CheckedExternalRhetoricalLocator registry
      [validClause] zeroNormLocator) := by
  rintro ⟨checked⟩
  have positive := checked.pointNormsPositive zeroNormPoint (by
    simp [zeroNormLocator])
  simp [zeroNormPoint] at positive

def promotedScore : RhetoricalNavigationScore :=
  { similarityScore with authority := .theoremAuthorityClaim }

def promotedAuthorityLocator : ExternalRhetoricalLocator :=
  { validLocator with scores := [promotedScore] }

theorem theorem_authority_promotion_rejected :
    ¬ Nonempty (CheckedExternalRhetoricalLocator registry
      [validClause] promotedAuthorityLocator) := by
  rintro ⟨checked⟩
  have navigation := checked.navigationOnly.2 promotedScore (by
    simp [promotedAuthorityLocator])
  simp [promotedScore] at navigation

theorem singleton_uncertified_score_rejected
    (score : RhetoricalNavigationScore)
    (locator : ExternalRhetoricalLocator)
    (traceIdentity : locator.activeGramTraceId = gramCertificate.traceId)
    (scoreIdentity : locator.scores = [score])
    (uncertified : ¬ gramCertificate.ScoreCertified score) :
    ¬ Nonempty (CheckedExternalRhetoricalLocator registry
      [validClause] locator) := by
  rintro ⟨checked⟩
  rcases checked.scoresCertified with
    ⟨certificate, lookup, everyScore⟩
  rw [traceIdentity] at lookup
  have certificateEquality := registered_certificate_eq lookup
  subst certificate
  apply uncertified
  exact everyScore score (by simp [scoreIdentity])

def wrongValueTemplate : RhetoricalNavigationScore :=
  { scoreTemplate with
    value := .normalized (similarityReport.normalizedRe.numerator + 1)
      similarityReport.normalizedRe.denominatorSquared }

def wrongValueScore : RhetoricalNavigationScore :=
  { wrongValueTemplate with
    certificateId := gramCertificate.scoreCertificateId wrongValueTemplate }

def wrongValueLocator : ExternalRhetoricalLocator :=
  { validLocator with scores := [wrongValueScore] }

theorem wrong_value_not_certified :
    ¬ gramCertificate.ScoreCertified wrongValueScore := by
  rintro ⟨_, reported⟩
  change CertifiedRhetoricalGram.traceReportsScore
    CrossRuntime.rustTrace wrongValueTemplate = true at reported
  have rejected : CertifiedRhetoricalGram.traceReportsScore
      CrossRuntime.rustTrace wrongValueTemplate = false := by
    native_decide
  simp [rejected] at reported

theorem changed_report_value_rejected :
    ¬ Nonempty (CheckedExternalRhetoricalLocator registry
      [validClause] wrongValueLocator) :=
  singleton_uncertified_score_rejected wrongValueScore wrongValueLocator
    (by rfl) (by rfl) wrong_value_not_certified

def wrongOperandsTemplate : RhetoricalNavigationScore :=
  { scoreTemplate with
    operands := [similarityReport.left,
      similarityReport.right + CrossRuntime.rustTrace.gram.dimension + 1] }

def wrongOperandsScore : RhetoricalNavigationScore :=
  { wrongOperandsTemplate with
    certificateId := gramCertificate.scoreCertificateId wrongOperandsTemplate }

def wrongOperandsLocator : ExternalRhetoricalLocator :=
  { validLocator with scores := [wrongOperandsScore] }

theorem wrong_operands_not_certified :
    ¬ gramCertificate.ScoreCertified wrongOperandsScore := by
  rintro ⟨_, reported⟩
  change CertifiedRhetoricalGram.traceReportsScore
    CrossRuntime.rustTrace wrongOperandsTemplate = true at reported
  have rejected : CertifiedRhetoricalGram.traceReportsScore
      CrossRuntime.rustTrace wrongOperandsTemplate = false := by
    native_decide
  simp [rejected] at reported

theorem changed_score_operands_rejected :
    ¬ Nonempty (CheckedExternalRhetoricalLocator registry
      [validClause] wrongOperandsLocator) :=
  singleton_uncertified_score_rejected wrongOperandsScore
    wrongOperandsLocator (by rfl) (by rfl) wrong_operands_not_certified

def wrongIndexTemplate : RhetoricalNavigationScore :=
  { scoreTemplate with
    reportIndex := CrossRuntime.rustTrace.similarities.length }

def wrongIndexScore : RhetoricalNavigationScore :=
  { wrongIndexTemplate with
    certificateId := gramCertificate.scoreCertificateId wrongIndexTemplate }

def wrongIndexLocator : ExternalRhetoricalLocator :=
  { validLocator with scores := [wrongIndexScore] }

theorem wrong_report_index_not_certified :
    ¬ gramCertificate.ScoreCertified wrongIndexScore := by
  rintro ⟨_, reported⟩
  change CertifiedRhetoricalGram.traceReportsScore
    CrossRuntime.rustTrace wrongIndexTemplate = true at reported
  have rejected : CertifiedRhetoricalGram.traceReportsScore
      CrossRuntime.rustTrace wrongIndexTemplate = false := by
    native_decide
  simp [rejected] at reported

theorem changed_report_index_rejected :
    ¬ Nonempty (CheckedExternalRhetoricalLocator registry
      [validClause] wrongIndexLocator) :=
  singleton_uncertified_score_rejected wrongIndexScore wrongIndexLocator
    (by rfl) (by rfl) wrong_report_index_not_certified

def analogyOption : Option AnalogyReport :=
  CrossRuntime.rustTrace.analogies[0]?

theorem analogy_isSome : analogyOption.isSome = true := by
  native_decide

def analogyReport : AnalogyReport :=
  analogyOption.get analogy_isSome

def wrongExactAnalogyTemplate : RhetoricalNavigationScore where
  profile := .analogyTranslationExact
  operands := [analogyReport.sourceLeft, analogyReport.sourceRight,
    analogyReport.targetLeft, analogyReport.targetRight]
  reportIndex := 0
  certificateId := ⟨"unbound"⟩
  value := .exactEquality (!analogyReport.equalDisplacements)
  authority := .navigationOnly

def wrongExactAnalogyScore : RhetoricalNavigationScore :=
  { wrongExactAnalogyTemplate with
    certificateId := gramCertificate.scoreCertificateId
      wrongExactAnalogyTemplate }

def wrongExactAnalogyLocator : ExternalRhetoricalLocator :=
  { validLocator with scores := [wrongExactAnalogyScore] }

theorem wrong_exact_analogy_not_certified :
    ¬ gramCertificate.ScoreCertified wrongExactAnalogyScore := by
  rintro ⟨_, reported⟩
  change CertifiedRhetoricalGram.traceReportsScore
    CrossRuntime.rustTrace wrongExactAnalogyTemplate = true at reported
  have rejected : CertifiedRhetoricalGram.traceReportsScore
      CrossRuntime.rustTrace wrongExactAnalogyTemplate = false := by
    native_decide
  simp [rejected] at reported

theorem changed_exact_analogy_claim_rejected :
    ¬ Nonempty (CheckedExternalRhetoricalLocator registry
      [validClause] wrongExactAnalogyLocator) :=
  singleton_uncertified_score_rejected wrongExactAnalogyScore
    wrongExactAnalogyLocator (by rfl) (by rfl)
    wrong_exact_analogy_not_certified

def staleScoreCertificateId : StableId :=
  ⟨similarityScore.certificateId.value ++ ":stale"⟩

def staleCertificateScore : RhetoricalNavigationScore :=
  { similarityScore with certificateId := staleScoreCertificateId }

def staleCertificateLocator : ExternalRhetoricalLocator :=
  { validLocator with scores := [staleCertificateScore] }

theorem stale_score_certificate_not_certified :
    ¬ gramCertificate.ScoreCertified staleCertificateScore := by
  rintro ⟨certificateEquality, _⟩
  change staleScoreCertificateId = similarityScore.certificateId at certificateEquality
  have valueEquality := congrArg StableId.value certificateEquality
  have lengthEquality := congrArg String.length valueEquality
  simp [staleScoreCertificateId] at lengthEquality

theorem stale_score_certificate_rejected :
    ¬ Nonempty (CheckedExternalRhetoricalLocator registry
      [validClause] staleCertificateLocator) :=
  singleton_uncertified_score_rejected staleCertificateScore
    staleCertificateLocator (by rfl) (by rfl)
    stale_score_certificate_not_certified

/-- The optional pair-kernel analogy profile is formal-only until a distinct
runtime report is added; it cannot be mislabeled as a translation report. -/
def unsupportedProductKernelTemplate : RhetoricalNavigationScore where
  profile := .analogyTensorAffinity
  operands := [0, 1, 2, 3]
  reportIndex := 0
  certificateId := ⟨"unbound"⟩
  value := .normalized 0 1
  authority := .navigationOnly

def unsupportedProductKernelScore : RhetoricalNavigationScore :=
  { unsupportedProductKernelTemplate with
    certificateId := gramCertificate.scoreCertificateId
      unsupportedProductKernelTemplate }

def unsupportedProductKernelLocator : ExternalRhetoricalLocator :=
  { validLocator with scores := [unsupportedProductKernelScore] }

theorem unsupported_product_kernel_not_certified :
    ¬ gramCertificate.ScoreCertified unsupportedProductKernelScore := by
  rintro ⟨_, reported⟩
  change CertifiedRhetoricalGram.traceReportsScore
    CrossRuntime.rustTrace unsupportedProductKernelTemplate = true at reported
  have rejected : CertifiedRhetoricalGram.traceReportsScore
      CrossRuntime.rustTrace unsupportedProductKernelTemplate = false := by
    native_decide
  simp [rejected] at reported

theorem unsupported_product_kernel_score_rejected :
    ¬ Nonempty (CheckedExternalRhetoricalLocator registry
      [validClause] unsupportedProductKernelLocator) :=
  singleton_uncertified_score_rejected unsupportedProductKernelScore
    unsupportedProductKernelLocator (by rfl) (by rfl)
    unsupported_product_kernel_not_certified


end

end RhetoricalFixture

end DAF.Tests.GroundedLanguage
