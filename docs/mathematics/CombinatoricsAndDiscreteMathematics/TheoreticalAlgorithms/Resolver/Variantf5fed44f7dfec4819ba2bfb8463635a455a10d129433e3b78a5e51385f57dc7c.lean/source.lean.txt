import Mathematics.SemanticTokenization.Resolution

/-!
# Total finite conservative resolver

Every phase consumes only the immutable finite cut.  The baseline resolver
does not invent semantic certificates: a well-formed cut without a supplied
complete semantic realization returns the explicit interpretation frontier.
-/

namespace Mathematics.SemanticTokenization

structure NormalizationPhaseCertificate
    (cut : EvidenceCut) where
  certificate :
    NormalizationCertificate
      cut.rawText cut.text cut.normalizationSpec

structure AssertionAcceptanceResult
    (cut : EvidenceCut) where
  accepted : Array (PackedAcceptedAssertion cut)
  unaccepted : Array AssertionId

structure EvidenceAdjudicationResult
    (cut : EvidenceCut) where
  adjudications : Array AdjudicationCertificate
  unresolvedConflicts : Array AssertionId

structure BoundaryResolutionResult
    (cut : EvidenceCut) where
  accepted : Array (CertifiedBoundaryPair cut)
  unknown : Bool

structure SegmentationResolutionResult
    (cut : EvidenceCut) where
  status : Option (SegmentationStatus cut)
  unknown : Bool

structure TokenGraphResolutionResult
    (cut : EvidenceCut) where
  graph :
    Option
      (Sigma fun segmentation :
        CertifiedSegmentation cut =>
        TokenGraph cut segmentation)
  unknown : Bool

structure PhraseResolutionResult
    (cut : EvidenceCut) where
  candidates : Array (PhraseCandidate cut)
  certified : Array AssertionId
  unknown : Bool

structure InterpretationResolutionResult
    (cut : EvidenceCut) where
  certified : Array (CertifiedInterpretation cut)
  unaccepted : Array AssertionId

structure ConceptProfileResolutionResult
    (cut : EvidenceCut) where
  profiles : Array (ConceptProfile cut)
  unknown : Bool

structure SubstitutionResolutionResult
    (cut : EvidenceCut) where
  acceptedRelations : Array RelationId
  unknown : Bool

structure NetworkResolutionResult
    (cut : EvidenceCut) where
  network : Option (IdiomConceptNetwork cut)
  unknown : Bool

structure ResolverState
    (cut : EvidenceCut) where
  open : Array (UnknownObligation cut)
  consumedCost : Nat
  withinBudget : consumedCost ≤ cut.budget.maxSteps

noncomputable def validateCut
    (cut : EvidenceCut) :
    Except
      (RejectionCertificate cut)
      (CutWellFormed cut) := by
  classical
  exact
    if valid : CutWellFormed cut then
      .ok valid
    else
      .error
        { reason := .invalidRegistryReference
          witness :=
            "The immutable evidence cut failed its finite well-formedness predicate." }

def verifyNormalization
    (cut : EvidenceCut) :
    Except
      (UnknownObligation cut)
      (NormalizationPhaseCertificate cut) :=
  match cut.normalizationCertificate with
  | some certificate =>
      .ok ⟨certificate⟩
  | none =>
      .error
        { id := 0
          kind := .structural .characterNormalization
          sourceSpans := ∅
          context := none
          blockedAssertions := ∅
          upstreamUnknowns := ∅
          requiredEvidenceKinds := {.sourceText}
          requiredInvariant := some "NormalizationCertificate"
          frontierDescription :=
            "A certified normalization and offset transport are required." }

def verifyCandidateCoverage
    (cut : EvidenceCut) :
    Except
      (UnknownObligation cut)
      (Sigma fun required : EvidenceRequiredSpans cut.text =>
        CandidateCoverageCertificate
          cut.candidateSpans required) :=
  match cut.candidateCoverage with
  | some certificate => .ok certificate
  | none =>
      .error
        { id := 1
          kind := .structural .candidateSpanCoverage
          sourceSpans := ∅
          context := none
          blockedAssertions := ∅
          upstreamUnknowns := ∅
          requiredEvidenceKinds := {.human, .lexicalResource}
          requiredInvariant := some "CandidateCoverageCertificate"
          frontierDescription :=
            "Evidence-required spans have no supplied coverage certificate." }

def verifyBaseTokenization
    (cut : EvidenceCut) :
    Except
      (UnknownObligation cut)
      (Tokenization cut.text) :=
  match cut.baseTokenization with
  | some tokenization => .ok tokenization
  | none =>
      .error
        { id := 2
          kind := .structural .baseTokenization
          sourceSpans := ∅
          context := none
          blockedAssertions := ∅
          upstreamUnknowns := {1}
          requiredEvidenceKinds := {.sourceText}
          requiredInvariant := some "Tokenization"
          frontierDescription :=
            "The cut has no certified ordered, disjoint, covering tokenization." }

def acceptAssertions
    (cut : EvidenceCut) :
    AssertionAcceptanceResult cut :=
  { accepted := #[]
    unaccepted :=
      cut.metadataAssertions.map
        fun assertion => assertion.2.id }

def adjudicateEvidence
    (cut : EvidenceCut) :
    EvidenceAdjudicationResult cut :=
  { adjudications := cut.adjudications
    unresolvedConflicts := #[] }

def computeBoundaries
    (cut : EvidenceCut) :
    BoundaryResolutionResult cut :=
  { accepted := #[]
    unknown := true }

def constructSegmentations
    (cut : EvidenceCut) :
    SegmentationResolutionResult cut :=
  { status := none
    unknown := true }

def constructTokenGraphs
    (cut : EvidenceCut) :
    TokenGraphResolutionResult cut :=
  { graph := none
    unknown := true }

def verifyPhraseComposition
    (cut : EvidenceCut) :
    PhraseResolutionResult cut :=
  { candidates := #[]
    certified := #[]
    unknown := true }

def importCertifiedReadings
    (cut : EvidenceCut) :
    InterpretationResolutionResult cut :=
  { certified := #[]
    unaccepted :=
      cut.interpretations.map
        fun interpretation => interpretation.id }

def constructConceptProfiles
    (cut : EvidenceCut) :
    ConceptProfileResolutionResult cut :=
  { profiles := #[]
    unknown := true }

def verifySubstitutions
    (cut : EvidenceCut) :
    SubstitutionResolutionResult cut :=
  { acceptedRelations := #[]
    unknown := true }

def constructIdiomConceptNetwork
    (cut : EvidenceCut) :
    NetworkResolutionResult cut :=
  { network := none
    unknown := true }

def exposeNextUnknownLayer
    {cut : EvidenceCut}
    (state : ResolverState cut) :
    Array (UnknownObligation cut) :=
  state.open

def interpretationFrontier
    (cut : EvidenceCut) :
    UnknownObligation cut :=
  { id := 3
    kind := .interpretationAdequacy
    sourceSpans := ∅
    context := none
    blockedAssertions :=
      cut.interpretations.toList
        |>.map ExternalInterpretation.id
        |>.toFinset
    upstreamUnknowns := ∅
    requiredEvidenceKinds :=
      {.human, .lexicalResource, .corpus}
    requiredInvariant :=
      some "AcceptedInterpretation"
    frontierDescription :=
      "Authoritative natural-language interpretation must be supplied and accepted externally." }

def resolveValidatedCut
    (cut : EvidenceCut)
    (_wellFormed : CutWellFormed cut) :
    SemanticTokenResolution cut :=
  .unknown
    .interpretationAdequacy
    #[interpretationFrontier cut]
    "Structural verification cannot synthesize authoritative meaning."

noncomputable def resolveMetaOverlapSemantics
    (cut : EvidenceCut) :
    SemanticTokenResolution cut :=
  match validateCut cut with
  | .error rejection =>
      .rejected rejection.reason rejection
  | .ok wellFormed =>
      resolveValidatedCut cut wellFormed

theorem resolve_total
    (cut : EvidenceCut) :
    ∃ result,
      resolveMetaOverlapSemantics cut = result :=
  ⟨resolveMetaOverlapSemantics cut, rfl⟩

theorem resolve_deterministic
    (cut : EvidenceCut)
    {first second : SemanticTokenResolution cut} :
    resolveMetaOverlapSemantics cut = first →
    resolveMetaOverlapSemantics cut = second →
    first = second := by
  intro firstEquality secondEquality
  exact firstEquality.symm.trans secondEquality

theorem structurallySolved_sound
    {cut : EvidenceCut}
    {solution : StructuralSolution cut}
    {unknowns : Array (UnknownObligation cut)}
    (_resolved :
      resolveMetaOverlapSemantics cut =
        .structurallySolved solution unknowns) :
    StructuralSemanticSound cut solution := by
  exact
    ⟨solution.certificate.cutWellFormed,
      solution.certificate.normalizationSound,
      solution.certificate.candidateCoverageSound,
      solution.certificate.tokenizationSound,
      solution.certificate.metadataTyped,
      solution.certificate.provenanceComplete,
      solution.certificate.graphWellFormed,
      solution.certificate.snapshotBound,
      solution.certificate.replayInputsCanonical⟩

theorem structurally_solved_preserves_semantic_frontier
    {cut : EvidenceCut}
    {solution : StructuralSolution cut}
    {unknowns : Array (UnknownObligation cut)}
    (_resolved :
      resolveMetaOverlapSemantics cut =
        .structurallySolved solution unknowns) :
    StructuralSemanticSound cut solution ∧
    ∀ obligation : Fin unknowns.size,
      RequiresExternalEvidence unknowns[obligation] ∨
      RequiresNewLinguisticInvariant
        unknowns[obligation] := by
  constructor
  · exact
      ⟨solution.certificate.cutWellFormed,
        solution.certificate.normalizationSound,
        solution.certificate.candidateCoverageSound,
        solution.certificate.tokenizationSound,
        solution.certificate.metadataTyped,
        solution.certificate.provenanceComplete,
        solution.certificate.graphWellFormed,
        solution.certificate.snapshotBound,
        solution.certificate.replayInputsCanonical⟩
  · intro obligation
    exact
      solution.semanticFrontierBoundary
        unknowns[obligation]

theorem solved_semantic_sound
    {cut : EvidenceCut}
    {solution : FullSemanticSolution cut}
    (_resolved :
      resolveMetaOverlapSemantics cut =
        .solved solution) :
    CertifiedMetaOverlapSemanticRealization cut solution :=
  solution.certificate

end Mathematics.SemanticTokenization
