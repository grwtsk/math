-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.GraphConsequenceProposition.Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.GraphConsequenceProposition.Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59","mathematical_subject":"Logic.ProofTheory","original_sha256":"6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/TheoremTransfer/Adapters/FCRSFullDerivation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Derivation
import FCRS.TheoremTransfer.Adapters.FCRSTransport
import FCRS.Transport.Derivation

/-!
Projection of one complete, exact `FCRS.Transport.TransportDerivation` into the
domain-neutral theorem-transfer calculus.

The projection does not flatten the native arithmetic, selection, coordinate,
sieve, graph, validation, or commitment records.  Each remains the source of a
separate, version-qualified DAG node.  The intensional and materialized graph
branches both depend on the sieve evaluation; no edge falsely claims that an
intensional occurrence was materialized directly.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.GraphConsequenceProposition.Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59

namespace FCRS.TheoremTransfer.Adapters.FCRSTransport

open FCRS.Transport

universe uInput uWitness uCoordinate uIntensionalEdge uMaterializedEdge

/-- Stable local identifiers used only for universal projection artifacts. -/
def projectionVersion (name : String) : VersionId :=
  .atomic ⟨"https://w3id.org/reflexive/theorem-transfer", name, "1.0.0",
    "sha256:" ++ name ++ "-v1"⟩

/-- Composite identity of the reusable graph theory, never of one theorem. -/
def graphConsequenceTheoryArtifact
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate} {Edge : Type uMaterializedEdge}
    (profile : IntervalProfile Input Witness)
    (specification : SieveSpecification Coordinate)
    (graph : CoordinateGraph .Materialized Coordinate Edge) : VersionId :=
  VersionId.composite (eraseArtifactVersion profile.version)
    (VersionId.composite (eraseArtifactVersion specification.version)
      (eraseArtifactVersion graph.version))

/--
A graph proposition retains endpoint metadata, but its opaque `Prop` semantics
is conservatively assigned universal coordinate support.
-/
structure GraphConsequenceProposition
    {Coordinate : Type uCoordinate} {Edge : Type uMaterializedEdge}
    (graph : CoordinateGraph .Materialized Coordinate Edge) where
  consequence : GraphConsequence graph
  source : Coordinate
  target : Coordinate

/-- Reusable graph-consequence theory; propositions, not theories, vary by claim. -/
def graphConsequenceTheory
    {Coordinate : Type uCoordinate} {Edge : Type uMaterializedEdge}
    (graph : CoordinateGraph .Materialized Coordinate Edge) : Theory where
  Object := Coordinate
  Proposition := GraphConsequenceProposition graph
  Holds := fun proposition => proposition.consequence.statement
  ProofObject := fun proposition => PLift proposition.consequence.statement
  proofObjectSound := fun proof => proof.down
  reifyProofObject := fun proof => ⟨proof⟩
  propositionSupport := fun _proposition => .universal
  propositionProperty := fun proposition _ => proposition.consequence.statement

/-- `Holds` evaluates the proposition's statement, not artifact-name equality. -/
theorem graphConsequenceHolds_exact
    {Coordinate : Type uCoordinate} {Edge : Type uMaterializedEdge}
    {graph : CoordinateGraph .Materialized Coordinate Edge}
    (proposition : GraphConsequenceProposition graph) :
    (graphConsequenceTheory graph).Holds proposition ↔
      proposition.consequence.statement := Iff.rfl

/-- Exact mathematical-theory version of the materialized graph regime. -/
def graphConsequenceTheoryVersion
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate} {Edge : Type uMaterializedEdge}
    (profile : IntervalProfile Input Witness)
    (specification : SieveSpecification Coordinate)
    (graph : CoordinateGraph .Materialized Coordinate Edge) :
    MathematicalTheoryVersion (graphConsequenceTheory graph)
      leanFoundation where
  artifact := graphConsequenceTheoryArtifact
    profile specification graph
  theoryIdentity := ⟨graph.version.authority, graph.version.localName⟩
  signatureVersion := eraseArtifactVersion graph.version
  axiomSetVersion := eraseArtifactVersion specification.version
  definitionSetVersion := projectionVersion
    "supported-graph-consequence-proposition-definition"
  importedTheoryVersions := [eraseArtifactVersion profile.version]
  semanticRegime := "FCRS.Transport.MaterializedGraphConsequence"
  quantifierProfile := neutralQuantifierProfile
  formalizationArtifactVersion := projectionVersion
    "reusable-materialized-graph-consequence-theory"
  releaseStatus := .Released
  provenance := [
    eraseArtifactVersion profile.sourceTheorem,
    eraseArtifactVersion specification.version,
    eraseArtifactVersion graph.version
  ]

/-- Empty target assumptions are explicit and versioned by the reusable graph. -/
def graphConsequenceAssumptions
    {Coordinate : Type uCoordinate} {Edge : Type uMaterializedEdge}
    (graph : CoordinateGraph .Materialized Coordinate Edge) :
    AssumptionSet (graphConsequenceTheory graph) :=
  AssumptionSet.empty.{uCoordinate, uCoordinate, 0} _
    (eraseArtifactVersion graph.version)

section CompleteProjection

variable {Input : Type uInput} {Witness : Type uWitness}
variable {Coordinate : Type uCoordinate}
variable {IntensionalEdge : Type uIntensionalEdge}
variable {MaterializedEdge : Type uMaterializedEdge}
variable {derivationRef : ArtifactRef .transportDerivation}
variable {profile : IntervalProfile Input Witness}
variable {certified : CertifiedIntervalTheorem profile}
variable {input : Input}
variable {methodKind : SelectionMethodKind}
variable {method : SelectionMethod methodKind Input Witness}
variable {interpretation : BinaryInterpretation Input Witness Coordinate}
variable {constraint : BinaryConstraint Coordinate}
variable {interpretationBridge : InterpretationBridge
  profile interpretation constraint}
variable {specification : SieveSpecification Coordinate}
variable {procedure : SieveProcedure specification}
variable {soundness : SieveSoundness procedure}
variable {completeness : Option (SieveCompleteness procedure)}
variable {evidenceTheory : SieveEvidenceTheoryVersion (some soundness) completeness}
variable {constraintSieveBridge : ConstraintSieveBridge constraint specification}
variable {intensionalGraph : CoordinateGraph .Intensional Coordinate IntensionalEdge}
variable {intensionalSemantics : IntensionalGraphSemantics specification intensionalGraph}
variable {materializedGraph : CoordinateGraph .Materialized Coordinate MaterializedEdge}
variable {realizationContract : RealizationContract soundness materializedGraph}
variable {consequence : GraphConsequence materializedGraph}

local notation "CompletedNativeDerivation" => TransportDerivation
  derivationRef profile certified input method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence

/--
Native preservation law for this closed predecessor adapter.  The constructor
is module-private: Lean cannot inspect a function closure to prove that it did
not capture an older completed derivation, so accepting an arbitrary public
`ProfileClaimAt → consequence.statement` would overstate causal provenance.
Public values are instead produced only by kernel-defined structural bridge
constructors such as `sourceClaimBridge` below.  More general domain adapters
use the generic `PreservationTheorem` interface and must define their proof
before entering this closed full-native projection boundary.
-/
structure FullNativePreservationBridge where
  private mk ::
  bridgeArtifact : VersionId
  law : ProfileClaimAt profile input → consequence.statement

/--
A conservative graph-theory proposition whose exact statement is the certified
source claim.  It provides a public, non-circular construction path for the
closed full-native bridge without accepting any caller-supplied proof closure.
-/
def sourceClaimConsequence
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate} {MaterializedEdge : Type uMaterializedEdge}
    (profile : IntervalProfile Input Witness) (input : Input)
    (materializedGraph : CoordinateGraph .Materialized Coordinate MaterializedEdge)
    (consequenceArtifact : ArtifactRef .graphConsequence)
    (schema : ArtifactRef .graphPropertySchema) :
    GraphConsequence materializedGraph where
  consequenceArtifact := consequenceArtifact
  schema := schema
  sensitivity := .TypeSensitive
  statement := ProfileClaimAt profile input

/--
The only public constructor currently supplied for the closed full-native
bridge.  Its law is definitionally the source proof; no arbitrary function (and
therefore no closure over a completed derivation) crosses this API.
-/
def sourceClaimBridge
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate} {MaterializedEdge : Type uMaterializedEdge}
    {profile : IntervalProfile Input Witness} {input : Input}
    {materializedGraph : CoordinateGraph .Materialized Coordinate MaterializedEdge}
    {consequenceArtifact : ArtifactRef .graphConsequence}
    {schema : ArtifactRef .graphPropertySchema}
    (bridgeArtifact : VersionId) :
    FullNativePreservationBridge
      (profile := profile) (input := input)
      (consequence := sourceClaimConsequence profile input materializedGraph
        consequenceArtifact schema) where
  bridgeArtifact := bridgeArtifact
  law := fun sourceProof => sourceProof

variable {preservationBridge : FullNativePreservationBridge
  (profile := profile) (input := input) (consequence := consequence)}

/--
Bridge-first native construction input.  It contains every native stage except
the target graph-consequence proof.  That proof is constructed only by
`nativeDerivation`, from the certified source claim through the bridge already
present in this record's type.  There is therefore no API which accepts an
arbitrary completed derivation and attaches a new preservation closure later.
-/
structure FullNativePreservationEvidence
    (preservationBridge : FullNativePreservationBridge
      (profile := profile) (input := input) (consequence := consequence)) where
  theoremApplication : TheoremApplication certified input
  existenceEvidence : FCRS.Transport.ExistenceEvidence theoremApplication
  selectionEvent : WitnessSelectionEvent existenceEvidence method
  selectedWitness : SelectedWitness selectionEvent
  materializableSelection : MaterializableSelectionKind methodKind
  arithmeticWitness : ArithmeticWitness selectedWitness
  interpretationEvent : InterpretationEvent interpretationBridge
    input selectedWitness.value
  constraintEvidence : ConstraintEvidence interpretationBridge
    input selectedWitness.value
  constraintSieveEvidence : specification.accepts
    (interpretation.source input) (interpretation.target selectedWitness.value)
  sieveEvidenceTheory : SieveEvidenceTheoryVersion (some soundness) completeness
  sieveEvidenceTheoryExact : sieveEvidenceTheory = evidenceTheory
  constraintSieveBridgeArtifact : ArtifactRef .constraintSieveBridge
  constraintSieveBridgeArtifactExact :
    constraintSieveBridgeArtifact = constraintSieveBridge.version
  procedureAcceptanceEvidence : procedure.evaluate
    (interpretation.source input) (interpretation.target selectedWitness.value) =
      .Accepted
  sieveResult : SieveEvaluationResult procedure
    (interpretation.source input) (interpretation.target selectedWitness.value)
  sieveEvaluation : SieveEvaluation procedure
    (interpretation.source input) (interpretation.target selectedWitness.value)
  sieveResultExact : sieveEvaluation.result = sieveResult
  sieveWitness : SieveWitness soundness sieveEvaluation
  intensionalOccurrence : EdgeOccurrence intensionalGraph
    (interpretation.source input) (interpretation.target selectedWitness.value)
  intensionalSemanticsArtifact : ArtifactRef .intensionalSemantics
  intensionalSemanticsArtifactExact :
    intensionalSemanticsArtifact = intensionalSemantics.evidenceArtifact
  realizationRecord : RealizationRecord realizationContract
    sieveEvaluation sieveWitness
  theoremDerivedEdge : TheoremDerivedEdgeDeclaration realizationRecord.occurrence
  graphConsequenceProofArtifact : ArtifactRef .consequenceProof
  bridgeDistinctFromTargetProof : preservationBridge.bridgeArtifact ≠
    eraseArtifactVersion graphConsequenceProofArtifact
  validationExecution : ValidationExecution derivationRef
  validationResult : ValidationResult validationExecution
  acceptanceDecision : AcceptanceDecision validationResult
  operationalCommitment : OperationalCommitment acceptanceDecision

local notation "NativeDerivation" => @FullNativePreservationEvidence
  Input Witness Coordinate IntensionalEdge MaterializedEdge
  derivationRef profile certified input methodKind method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence preservationBridge

namespace FullNativePreservationEvidence

/-- Recover the bridge which was fixed before construction of the native stages. -/
def bridge
    (_construction : NativeDerivation) :
    FullNativePreservationBridge
      (profile := profile) (input := input) (consequence := consequence) :=
  preservationBridge

/--
The target proof is synthesized from the exact certified source theorem through
the bridge.  No completed target proof is an input to this definition.
-/
def graphConsequenceProof
    (construction : NativeDerivation) :
    GraphConsequenceProof construction.realizationRecord.occurrence consequence where
  proofArtifact := construction.graphConsequenceProofArtifact
  proof := preservationBridge.law (certified.claim input)

/-- The sole completion path from bridge-first stages to the predecessor value. -/
def nativeDerivation
    (construction : NativeDerivation) :
    CompletedNativeDerivation where
  theoremApplication := construction.theoremApplication
  existenceEvidence := construction.existenceEvidence
  selectionEvent := construction.selectionEvent
  selectedWitness := construction.selectedWitness
  materializableSelection := construction.materializableSelection
  arithmeticWitness := construction.arithmeticWitness
  interpretationEvent := construction.interpretationEvent
  constraintEvidence := construction.constraintEvidence
  constraintSieveEvidence := construction.constraintSieveEvidence
  sieveEvidenceTheory := construction.sieveEvidenceTheory
  sieveEvidenceTheoryExact := construction.sieveEvidenceTheoryExact
  procedureAcceptanceEvidence := construction.procedureAcceptanceEvidence
  sieveResult := construction.sieveResult
  sieveEvaluation := construction.sieveEvaluation
  sieveResultExact := construction.sieveResultExact
  sieveWitness := construction.sieveWitness
  intensionalOccurrence := construction.intensionalOccurrence
  realizationRecord := construction.realizationRecord
  theoremDerivedEdge := construction.theoremDerivedEdge
  graphConsequenceProof := construction.graphConsequenceProof
  validationExecution := construction.validationExecution
  validationResult := construction.validationResult
  acceptanceDecision := construction.acceptanceDecision
  operationalCommitment := construction.operationalCommitment

end FullNativePreservationEvidence

/-- Exact supported proposition produced by the completed native derivation. -/
def fullGraphProposition (derivation : NativeDerivation) :
    GraphConsequenceProposition materializedGraph where
  consequence := consequence
  source := interpretation.source input
  target := interpretation.target derivation.selectedWitness.value

/-- Exact singleton source scope of the native theorem application. -/
def fullSourceScope (_derivation : NativeDerivation) :
    TransferScope (profileTheory profile) where
  artifact := eraseArtifactVersion _derivation.theoremApplication.applicationArtifact
  contains := fun candidate => candidate = input

/--
Universal coordinate scope required by an opaque graph consequence whose
semantic `Prop` does not expose a finite support witness.
-/
def fullTargetScope (_derivation : NativeDerivation) :
    TransferScope (graphConsequenceTheory materializedGraph) where
  artifact := eraseArtifactVersion
    _derivation.interpretationEvent.sourceDenotation.evidenceArtifact
  contains := fun _coordinate => True

/-- Native semantic bridge lineage; each transfer component remains visible. -/
def fullTranslationLineage (derivation : NativeDerivation) : TranslationLineage :=
  .composite
    (projectionVersion "full-tta-stage-context-constraint-evidence")
    (eraseArtifactVersion derivation.constraintEvidence.evidenceArtifact)
    (.atomic (eraseArtifactVersion interpretationBridge.version))
    (.composite
      (projectionVersion "full-tta-stage-context-sieve-witness")
      (eraseArtifactVersion derivation.sieveWitness.witnessArtifact)
      (.atomic (eraseArtifactVersion constraintSieveBridge.version))
      (.composite
        (projectionVersion "full-tta-stage-context-consequence-proof")
        (eraseArtifactVersion consequence.schema)
        (.atomic (eraseArtifactVersion realizationContract.version))
        (.atomic derivation.bridge.bridgeArtifact)))

/-- Full native transport represented as one summary translation over its exact DAG. -/
def fullTranslation (derivation : NativeDerivation) :
    Translation (profileTheory profile) (graphConsequenceTheory materializedGraph)
      (profileTheoryVersion profile)
      (graphConsequenceTheoryVersion profile specification materializedGraph)
      (profileAssumptions profile) (graphConsequenceAssumptions materializedGraph)
      (fullSourceScope derivation) (fullTargetScope derivation) where
  artifact := (fullTranslationLineage derivation).rootArtifact
  lineage := fullTranslationLineage derivation
  lineageArtifactExact := rfl
  foundationInterpretation := FoundationInterpretation.identity
    leanFoundation (eraseArtifactVersion certified.kernelBuildEvidence)
  mapObject := interpretation.source
  mapProposition := fun _ => fullGraphProposition derivation
  assumptionTranslation := {
    artifact := eraseArtifactVersion profile.assumptionSet
    mapIndex := fun index => nomatch index.down
    propositionExact := by
      intro index
      exact nomatch index.down
  }
  targetAssumptionPartition := {
    classify := fun index => nomatch index.down
  }
  scopeTranslation := {
    mapsScope := by
      intro _candidate _hCandidate
      trivial
  }
  propositionScopeTranslation := by
    intro _ _
    intro _coordinate
    trivial
  quantifierTransform := {
    artifact := projectionVersion "full-tta-exact-quantifier-transform"
    sourceProfile := neutralQuantifierProfile
    targetProfile := neutralQuantifierProfile
    profileExact := rfl
    unspecifiedCompatibility := .fullySpecified
      (by simp [neutralQuantifierProfile, QuantifierProfile.HasUnspecified])
      (by simp [neutralQuantifierProfile, QuantifierProfile.HasUnspecified])
      (.propositionObjectIndependent (by intros; rfl) (by intros; rfl))
      [projectionVersion "full-tta-exact-quantifier-map-evidence"]
      (by simp)
  }
  quantifierSourceExact := rfl
  quantifierTargetExact := rfl
  informationLoss := [
    {
      artifact := eraseArtifactVersion interpretationBridge.version
      classification := .UnknownInformationLoss
      declaredScope := "arithmetic-to-coordinate interpretation component"
      forgottenInformation := ["no InterpretationReflection is present"]
      assessmentArtifact := projectionVersion "interpretation-loss-assessment"
    },
    {
      artifact := eraseArtifactVersion constraintSieveBridge.version
      classification := .UnknownInformationLoss
      declaredScope := "constraint-to-sieve component"
      forgottenInformation := ["no SieveReflection is present"]
      assessmentArtifact := projectionVersion "sieve-loss-assessment"
    },
    {
      artifact := eraseArtifactVersion realizationContract.version
      classification := .DerivedInvariantOnly
      declaredScope := "accepted-sieve-to-materialized-occurrence component"
      forgottenInformation := ["realization retains an occurrence, not reconstruction"]
      assessmentArtifact := projectionVersion "realization-loss-assessment"
    },
    {
      artifact := eraseArtifactVersion derivation.graphConsequenceProof.proofArtifact
      classification := .DerivedInvariantOnly
      declaredScope := "materialized occurrence-to-consequence component"
      forgottenInformation := ["the conclusion retains only the graph consequence"]
      assessmentArtifact := projectionVersion "consequence-loss-assessment"
    }
  ]
  informationLossNonempty := by simp
  canonicality := [{
    artifact := eraseArtifactVersion derivation.selectionEvent.eventArtifact
    canonicality := .ChoiceDependent
    conclusionDependence := .ChoiceRelative
  }]

/-- Source-proof-dependent preservation through the independent native bridge. -/
def fullPreservation (derivation : NativeDerivation) :
    PreservationTheorem (fullTranslation derivation) where
  evidenceArtifact := derivation.bridge.bridgeArtifact
  law := by
    refine { sound := ?_ }
    intro proposition sourceInScope sourceProof _targetAssumptions
    have propositionExact : proposition = input := sourceInScope.1
    subst proposition
    exact derivation.bridge.law (sourceProof (AssumptionSet.empty_holds _ _))

/-- The exact source input supporting the pointwise claim lies in its singleton scope. -/
theorem fullSourcePropositionInScope (derivation : NativeDerivation) :
    PropositionWithinScope (profileTheory profile) (fullSourceScope derivation)
      (certifiedIntervalTheorem certified input).proposition := by
  exact ⟨rfl, by intros; contradiction⟩

/-- Universal target theorem with translation and preservation identities in its metadata. -/
def fullTargetTheorem (derivation : NativeDerivation) :
    CertifiedTheorem
      (graphConsequenceTheoryVersion profile specification materializedGraph)
      (graphConsequenceAssumptions materializedGraph) :=
  transport_theorem (fullTranslation derivation)
    (fullPreservation derivation)
    (certifiedIntervalTheorem certified input) (fullSourcePropositionInScope derivation)

/-- Opaque target semantics consumes universal coordinate-support evidence. -/
theorem fullTargetPropositionInScope (derivation : NativeDerivation) :
    PropositionWithinScope (graphConsequenceTheory materializedGraph)
      (fullTargetScope derivation) (fullTargetTheorem derivation).proposition := by
  intro _coordinate
  trivial

/-- Every retained native stage has a distinct DAG node. -/
inductive FullTTAStage where
  | SourceTheorem
  | TheoremApplication
  | ExistenceEvidence
  | SelectionEvent
  | SelectedWitness
  | MaterializableSelection
  | ArithmeticWitness
  | SourceDenotation
  | TargetDenotation
  | InterpretationEvent
  | ConstraintEvidence
  | ConstraintSieveEvidence
  | SieveEvidenceTheory
  | SieveEvidenceTheoryExact
  | ProcedureAcceptanceEvidence
  | SieveEvaluation
  | SieveResult
  | SieveResultExact
  | SieveWitness
  | IntensionalOccurrence
  | RealizationEvent
  | RealizationRecord
  | EdgeDeclaration
  | ConsequenceProof
  | UniversalTargetTheorem
  | ValidationExecution
  | ValidationResult
  | AcceptanceDecision
  | OperationalCommitment
deriving Repr, DecidableEq

namespace FullTTAStage

/-- Constructor-specific code used only as the structural node-identity role. -/
def identityCode : FullTTAStage → Nat
  | .SourceTheorem => 0
  | .TheoremApplication => 1
  | .ExistenceEvidence => 2
  | .SelectionEvent => 3
  | .SelectedWitness => 4
  | .MaterializableSelection => 5
  | .ArithmeticWitness => 6
  | .SourceDenotation => 7
  | .TargetDenotation => 8
  | .InterpretationEvent => 9
  | .ConstraintEvidence => 10
  | .ConstraintSieveEvidence => 11
  | .SieveEvidenceTheory => 12
  | .SieveEvidenceTheoryExact => 13
  | .ProcedureAcceptanceEvidence => 14
  | .SieveEvaluation => 15
  | .SieveResult => 16
  | .SieveResultExact => 17
  | .SieveWitness => 18
  | .IntensionalOccurrence => 19
  | .RealizationEvent => 20
  | .RealizationRecord => 21
  | .EdgeDeclaration => 22
  | .ConsequenceProof => 23
  | .UniversalTargetTheorem => 24
  | .ValidationExecution => 25
  | .ValidationResult => 26
  | .AcceptanceDecision => 27
  | .OperationalCommitment => 28

theorem identityCode_injective : Function.Injective identityCode := by
  intro left right equality
  cases left <;> cases right <;> simp_all [identityCode]

def rank : FullTTAStage → Nat
  | .SourceTheorem => 0
  | .TheoremApplication => 1
  | .ExistenceEvidence => 2
  | .SelectionEvent => 3
  | .SelectedWitness => 4
  | .MaterializableSelection => 5
  | .ArithmeticWitness => 6
  | .SourceDenotation => 7
  | .TargetDenotation => 7
  | .InterpretationEvent => 8
  | .ConstraintEvidence => 9
  | .ConstraintSieveEvidence => 10
  | .SieveEvidenceTheory => 11
  | .SieveEvidenceTheoryExact => 12
  | .ProcedureAcceptanceEvidence => 13
  | .SieveEvaluation => 14
  | .SieveResult => 15
  | .SieveResultExact => 16
  | .SieveWitness => 17
  | .IntensionalOccurrence => 18
  | .RealizationEvent => 18
  | .RealizationRecord => 19
  | .EdgeDeclaration => 20
  | .ConsequenceProof => 21
  | .UniversalTargetTheorem => 22
  | .ValidationExecution => 23
  | .ValidationResult => 24
  | .AcceptanceDecision => 25
  | .OperationalCommitment => 26

/-- Stable projection label, separate from any predecessor artifact label. -/
def label : FullTTAStage → String
  | .SourceTheorem => "source-theorem"
  | .TheoremApplication => "theorem-application"
  | .ExistenceEvidence => "existence-evidence"
  | .SelectionEvent => "selection-event"
  | .SelectedWitness => "selected-witness"
  | .MaterializableSelection => "materializable-selection"
  | .ArithmeticWitness => "arithmetic-witness"
  | .SourceDenotation => "source-denotation"
  | .TargetDenotation => "target-denotation"
  | .InterpretationEvent => "interpretation-event"
  | .ConstraintEvidence => "constraint-evidence"
  | .ConstraintSieveEvidence => "constraint-sieve-evidence"
  | .SieveEvidenceTheory => "sieve-evidence-theory"
  | .SieveEvidenceTheoryExact => "sieve-evidence-theory-exact"
  | .ProcedureAcceptanceEvidence => "procedure-acceptance-evidence"
  | .SieveEvaluation => "sieve-evaluation"
  | .SieveResult => "sieve-result"
  | .SieveResultExact => "sieve-result-exact"
  | .SieveWitness => "sieve-witness"
  | .IntensionalOccurrence => "intensional-occurrence"
  | .RealizationEvent => "realization-event"
  | .RealizationRecord => "realization-record"
  | .EdgeDeclaration => "edge-declaration"
  | .ConsequenceProof => "consequence-proof"
  | .UniversalTargetTheorem => "universal-target-theorem"
  | .ValidationExecution => "validation-execution"
  | .ValidationResult => "validation-result"
  | .AcceptanceDecision => "acceptance-decision"
  | .OperationalCommitment => "operational-commitment"

/-- One-to-one generic stage kind used to prove node projection injectivity. -/
def nodeKind : FullTTAStage → TransferNodeKind
  | .SourceTheorem => .SourceTheorem
  | .TheoremApplication => .TheoremApplication
  | .ExistenceEvidence => .ExistenceEvidence
  | .SelectionEvent => .SelectionEvent
  | .SelectedWitness => .SelectedWitness
  | .MaterializableSelection => .MaterializableSelection
  | .ArithmeticWitness => .ArithmeticWitness
  | .SourceDenotation => .SourceDenotation
  | .TargetDenotation => .TargetDenotation
  | .InterpretationEvent => .InterpretationEvent
  | .ConstraintEvidence => .ConstraintEvidence
  | .ConstraintSieveEvidence => .ConstraintSieveEvidence
  | .SieveEvidenceTheory => .SieveEvidenceTheory
  | .SieveEvidenceTheoryExact => .SieveEvidenceTheoryExact
  | .ProcedureAcceptanceEvidence => .ProcedureAcceptanceEvidence
  | .SieveEvaluation => .SieveEvaluation
  | .SieveResult => .SieveResult
  | .SieveResultExact => .SieveResultExact
  | .SieveWitness => .SieveWitness
  | .IntensionalOccurrence => .IntensionalOccurrence
  | .RealizationEvent => .RealizationEvent
  | .RealizationRecord => .RealizationRecord
  | .EdgeDeclaration => .TheoremDerivedEdge
  | .ConsequenceProof => .GraphConsequence
  | .UniversalTargetTheorem => .TargetTheorem
  | .ValidationExecution => .ValidationExecution
  | .ValidationResult => .ValidationResult
  | .AcceptanceDecision => .AcceptanceDecision
  | .OperationalCommitment => .OperationalCommitment

theorem nodeKind_injective : Function.Injective nodeKind := by
  intro left right equality
  cases left <;> cases right <;> simp_all [nodeKind]

end FullTTAStage

/-- Exact proof-dependency edges, including the universal summary edge. -/
inductive FullTTADependency : FullTTAStage → FullTTAStage → Type where
  | sourceToApplication : FullTTADependency .SourceTheorem .TheoremApplication
  | applicationToExistence : FullTTADependency .TheoremApplication .ExistenceEvidence
  | existenceToSelection : FullTTADependency .ExistenceEvidence .SelectionEvent
  | selectionToSelectedWitness : FullTTADependency .SelectionEvent .SelectedWitness
  | selectedWitnessToMaterializable :
      FullTTADependency .SelectedWitness .MaterializableSelection
  | materializableToWitness :
      FullTTADependency .MaterializableSelection .ArithmeticWitness
  | witnessToSourceDenotation :
      FullTTADependency .ArithmeticWitness .SourceDenotation
  | witnessToTargetDenotation :
      FullTTADependency .ArithmeticWitness .TargetDenotation
  | sourceDenotationToInterpretation :
      FullTTADependency .SourceDenotation .InterpretationEvent
  | targetDenotationToInterpretation :
      FullTTADependency .TargetDenotation .InterpretationEvent
  | interpretationToConstraint : FullTTADependency .InterpretationEvent .ConstraintEvidence
  | constraintToConstraintSieve :
      FullTTADependency .ConstraintEvidence .ConstraintSieveEvidence
  | constraintSieveToSieveTheory :
      FullTTADependency .ConstraintSieveEvidence .SieveEvidenceTheory
  | sieveTheoryToExact :
      FullTTADependency .SieveEvidenceTheory .SieveEvidenceTheoryExact
  | sieveTheoryExactToAcceptance :
      FullTTADependency .SieveEvidenceTheoryExact .ProcedureAcceptanceEvidence
  | acceptanceToEvaluation :
      FullTTADependency .ProcedureAcceptanceEvidence .SieveEvaluation
  | evaluationToResult : FullTTADependency .SieveEvaluation .SieveResult
  | resultToExact : FullTTADependency .SieveResult .SieveResultExact
  | resultExactToWitness : FullTTADependency .SieveResultExact .SieveWitness
  | evaluationToIntensional : FullTTADependency .SieveEvaluation .IntensionalOccurrence
  | witnessToRealizationEvent : FullTTADependency .SieveWitness .RealizationEvent
  | realizationEventToRecord : FullTTADependency .RealizationEvent .RealizationRecord
  | realizationToDeclaration : FullTTADependency .RealizationRecord .EdgeDeclaration
  | declarationToConsequence : FullTTADependency .EdgeDeclaration .ConsequenceProof
  | consequenceToUniversal : FullTTADependency .ConsequenceProof .UniversalTargetTheorem
  | universalToValidation : FullTTADependency .UniversalTargetTheorem .ValidationExecution
  | executionToResult : FullTTADependency .ValidationExecution .ValidationResult
  | resultToDecision : FullTTADependency .ValidationResult .AcceptanceDecision
  | decisionToCommitment : FullTTADependency .AcceptanceDecision .OperationalCommitment
  /-- Ordered lineage summaries retain the four semantic translation components. -/
  | lineageInterpretation : FullTTADependency .SourceTheorem .ConstraintEvidence
  | lineageConstraintSieve : FullTTADependency .ConstraintEvidence .SieveWitness
  | lineageRealization : FullTTADependency .SieveWitness .ConsequenceProof
  | lineagePreservation : FullTTADependency .ConsequenceProof .UniversalTargetTheorem
  | sourceToUniversal : FullTTADependency .SourceTheorem .UniversalTargetTheorem

theorem FullTTADependency.rankIncreases
    {source target : FullTTAStage}
    (dependency : FullTTADependency source target) :
    source.rank < target.rank := by
  cases dependency <;> decide

/-- Build one existentially role-bound support reference. -/
def roleArtifact (role : ArtifactSemanticRole) (identity : VersionId) :
    RoleBoundArtifact :=
  ⟨role, ⟨identity⟩⟩

/-- Native artifact which anchors each projected stage. -/
def fullStageNativeArtifact (derivation : NativeDerivation) :
    FullTTAStage → VersionId
  | .SourceTheorem => eraseArtifactVersion certified.theoremArtifact
  | .TheoremApplication =>
      eraseArtifactVersion derivation.theoremApplication.applicationArtifact
  | .ExistenceEvidence =>
      eraseArtifactVersion derivation.existenceEvidence.evidenceArtifact
  | .SelectionEvent => eraseArtifactVersion derivation.selectionEvent.eventArtifact
  | .SelectedWitness => VersionId.composite
      (projectionVersion "full-tta-selected-witness-record")
      (eraseArtifactVersion derivation.selectionEvent.eventArtifact)
  | .MaterializableSelection => VersionId.composite
      (projectionVersion "full-tta-materializable-selection-record")
      (eraseArtifactVersion method.version)
  | .ArithmeticWitness =>
      eraseArtifactVersion derivation.arithmeticWitness.witnessArtifact
  | .SourceDenotation => eraseArtifactVersion
      derivation.interpretationEvent.sourceDenotation.evidenceArtifact
  | .TargetDenotation => eraseArtifactVersion
      derivation.interpretationEvent.targetDenotation.evidenceArtifact
  | .InterpretationEvent =>
      eraseArtifactVersion derivation.interpretationEvent.eventArtifact
  | .ConstraintEvidence =>
      eraseArtifactVersion derivation.constraintEvidence.evidenceArtifact
  | .ConstraintSieveEvidence =>
      eraseArtifactVersion constraintSieveBridge.proofArtifact
  | .SieveEvidenceTheory => eraseArtifactVersion derivation.sieveEvidenceTheory.version
  | .SieveEvidenceTheoryExact => VersionId.composite
      (projectionVersion "full-tta-sieve-evidence-theory-exact")
      (eraseArtifactVersion evidenceTheory.version)
  | .ProcedureAcceptanceEvidence => VersionId.composite
      (projectionVersion "full-tta-procedure-acceptance-evidence")
      (eraseArtifactVersion procedure.version)
  | .SieveEvaluation => eraseArtifactVersion derivation.sieveEvaluation.evaluationEvent
  | .SieveResult => eraseArtifactVersion derivation.sieveResult.resultArtifact
  | .SieveResultExact => VersionId.composite
      (projectionVersion "full-tta-sieve-result-exact")
      (eraseArtifactVersion derivation.sieveResult.resultArtifact)
  | .SieveWitness => eraseArtifactVersion derivation.sieveWitness.witnessArtifact
  | .IntensionalOccurrence =>
      eraseArtifactVersion derivation.intensionalOccurrence.occurrenceArtifact
  | .RealizationEvent =>
      eraseArtifactVersion derivation.realizationRecord.realizationActivity
  | .RealizationRecord => eraseArtifactVersion derivation.realizationRecord.recordArtifact
  | .EdgeDeclaration =>
      eraseArtifactVersion derivation.theoremDerivedEdge.declarationArtifact
  | .ConsequenceProof =>
      eraseArtifactVersion derivation.graphConsequenceProof.proofArtifact
  | .UniversalTargetTheorem =>
      (fullTargetTheorem derivation).theoremArtifact
  | .ValidationExecution =>
      eraseArtifactVersion derivation.validationExecution.executionArtifact
  | .ValidationResult => eraseArtifactVersion derivation.validationResult.resultArtifact
  | .AcceptanceDecision =>
      eraseArtifactVersion derivation.acceptanceDecision.decisionArtifact
  | .OperationalCommitment =>
      eraseArtifactVersion derivation.operationalCommitment.commitmentArtifact

/-- Exact native records retained at each stage, with their semantic role. -/
def fullStageSupportingArtifacts (derivation : NativeDerivation) :
    FullTTAStage → List RoleBoundArtifact
  | .SourceTheorem => [
      roleArtifact .Theorem (eraseArtifactVersion certified.theoremArtifact),
      roleArtifact .Proposition (eraseArtifactVersion certified.formalDeclaration),
      roleArtifact .Proof (eraseArtifactVersion certified.proofArtifact)]
  | .SelectedWitness => [roleArtifact .OtherEvidence
      (fullStageNativeArtifact derivation .SelectedWitness)]
  | .MaterializableSelection => [roleArtifact .OtherEvidence
      (fullStageNativeArtifact derivation .MaterializableSelection)]
  | .SourceDenotation => [roleArtifact .Denotation (eraseArtifactVersion
      derivation.interpretationEvent.sourceDenotation.evidenceArtifact)]
  | .TargetDenotation => [roleArtifact .Denotation (eraseArtifactVersion
      derivation.interpretationEvent.targetDenotation.evidenceArtifact)]
  | .InterpretationEvent => [
      roleArtifact .Event (eraseArtifactVersion derivation.interpretationEvent.eventArtifact),
      roleArtifact .Interpretation (eraseArtifactVersion interpretation.version),
      roleArtifact .Proof (eraseArtifactVersion interpretationBridge.preservationProof)]
  | .ConstraintEvidence => [
      roleArtifact .Constraint (eraseArtifactVersion constraint.version),
      roleArtifact .OtherEvidence
        (eraseArtifactVersion derivation.constraintEvidence.evidenceArtifact)]
  | .ConstraintSieveEvidence => [roleArtifact .OtherEvidence
      (eraseArtifactVersion constraintSieveBridge.proofArtifact)]
  | .SieveEvidenceTheoryExact => [roleArtifact .OtherEvidence
      (fullStageNativeArtifact derivation .SieveEvidenceTheoryExact)]
  | .ProcedureAcceptanceEvidence => [roleArtifact .OtherEvidence
      (fullStageNativeArtifact derivation .ProcedureAcceptanceEvidence)]
  | .SieveResult => [roleArtifact .SieveResult
      (eraseArtifactVersion derivation.sieveResult.resultArtifact)]
  | .SieveResultExact => [roleArtifact .OtherEvidence
      (fullStageNativeArtifact derivation .SieveResultExact)]
  | .SieveWitness => [roleArtifact .SieveWitness
      (eraseArtifactVersion derivation.sieveWitness.witnessArtifact)]
  | .RealizationEvent => [roleArtifact .Event
      (eraseArtifactVersion derivation.realizationRecord.realizationActivity)]
  | .RealizationRecord => [
      roleArtifact .Realization
        (eraseArtifactVersion derivation.realizationRecord.recordArtifact),
      roleArtifact .OtherEvidence (eraseArtifactVersion
        derivation.realizationRecord.occurrence.occurrenceArtifact)]
  | .ConsequenceProof => [
      roleArtifact .Proof
        (eraseArtifactVersion derivation.graphConsequenceProof.proofArtifact),
      roleArtifact .Theorem (eraseArtifactVersion consequence.consequenceArtifact),
      roleArtifact .Proposition (eraseArtifactVersion consequence.schema)]
  | .UniversalTargetTheorem => [
      roleArtifact .Translation (fullTranslation derivation).artifact,
      roleArtifact .Proof (fullPreservation derivation).evidenceArtifact]
  | .ValidationExecution => [roleArtifact .Validation
      (eraseArtifactVersion derivation.validationExecution.executionArtifact)]
  | .ValidationResult => [roleArtifact .Validation
      (eraseArtifactVersion derivation.validationResult.resultArtifact)]
  | .AcceptanceDecision => [roleArtifact .Validation
      (eraseArtifactVersion derivation.acceptanceDecision.decisionArtifact)]
  | .OperationalCommitment => [roleArtifact .Validation
      (eraseArtifactVersion derivation.operationalCommitment.commitmentArtifact)]
  | stage => [roleArtifact .OtherEvidence
      (fullStageNativeArtifact derivation stage)]

/-- Only source and final nodes use mathematical-theory version identities. -/
def fullStageTheoryContext (_derivation : NativeDerivation) :
    FullTTAStage → VersionId
  | .SourceTheorem => (profileTheoryVersion profile).artifact
  | .UniversalTargetTheorem =>
      (graphConsequenceTheoryVersion profile specification
        materializedGraph).artifact
  | .ValidationExecution | .ValidationResult | .AcceptanceDecision |
      .OperationalCommitment =>
      (graphConsequenceTheoryVersion profile specification
        materializedGraph).artifact
  | stage => projectionVersion ("full-tta-stage-context-" ++ stage.label)

/-- Exact role-safe node projection for every native stage. -/
def fullStageNode (derivation : NativeDerivation)
    (stage : FullTTAStage) :
    TransferNode where
  nodeArtifact := ⟨VersionId.roleTagged
    "FCRS.TheoremTransfer.FullTTAStage" stage.identityCode
    (fullStageNativeArtifact derivation stage)⟩
  kind := stage.nodeKind
  theoryVersionArtifact := ⟨fullStageTheoryContext derivation stage⟩
  theoremArtifact := match stage with
    | .SourceTheorem => some ⟨eraseArtifactVersion certified.theoremArtifact⟩
    | .UniversalTargetTheorem =>
        some ⟨(fullTargetTheorem derivation).theoremArtifact⟩
    | _ => none
  propositionArtifact := match stage with
    | .SourceTheorem => some ⟨eraseArtifactVersion certified.formalDeclaration⟩
    | .ConstraintEvidence =>
        some ⟨eraseArtifactVersion derivation.constraintEvidence.evidenceArtifact⟩
    | .SieveWitness =>
        some ⟨eraseArtifactVersion derivation.sieveWitness.witnessArtifact⟩
    | .ConsequenceProof => some ⟨eraseArtifactVersion consequence.schema⟩
    | .UniversalTargetTheorem =>
        some ⟨(fullTargetTheorem derivation).propositionArtifact⟩
    | _ => none
  supportingArtifacts := fullStageSupportingArtifacts derivation stage

theorem fullStageNode_injective (derivation : NativeDerivation) :
    Function.Injective (fullStageNode derivation) := by
  intro left right equality
  apply FullTTAStage.nodeKind_injective
  exact congrArg TransferNode.kind equality

/-- Projected native stages also have injective node-artifact identities. -/
theorem fullStageNodeArtifact_injective (derivation : NativeDerivation) :
    Function.Injective (fun stage =>
      (fullStageNode derivation stage).nodeArtifact) := by
  intro left right equality
  apply FullTTAStage.identityCode_injective
  have identityEquality := congrArg TypedVersionId.identity equality
  exact (VersionId.roleTagged.inj identityEquality).2.1

/-- Every projected edge names the exact bridge and evidence used at that stage. -/
def fullStageEdge (derivation : NativeDerivation)
    {source target : FullTTAStage}
    (dependency : FullTTADependency source target) :
    TransferEdge (fullStageNode derivation source)
      (fullStageNode derivation target) :=
  match dependency with
  | .sourceToApplication =>
      ⟨eraseArtifactVersion derivation.theoremApplication.applicationArtifact,
        .Instantiates, eraseArtifactVersion certified.theoremArtifact,
        eraseArtifactVersion certified.proofArtifact⟩
  | .applicationToExistence =>
      ⟨eraseArtifactVersion derivation.existenceEvidence.evidenceArtifact,
        .Derives, eraseArtifactVersion derivation.theoremApplication.applicationArtifact,
        eraseArtifactVersion derivation.existenceEvidence.evidenceArtifact⟩
  | .existenceToSelection =>
      ⟨eraseArtifactVersion derivation.selectionEvent.eventArtifact,
        .Constructs, eraseArtifactVersion method.version,
        eraseArtifactVersion derivation.selectionEvent.eventArtifact⟩
  | .selectionToSelectedWitness =>
      ⟨fullStageNativeArtifact derivation .SelectedWitness,
        .Realizes, eraseArtifactVersion method.version,
        eraseArtifactVersion derivation.selectionEvent.eventArtifact⟩
  | .selectedWitnessToMaterializable =>
      ⟨fullStageNativeArtifact derivation .MaterializableSelection,
        .Constructs, eraseArtifactVersion method.version,
        fullStageNativeArtifact derivation .SelectedWitness⟩
  | .materializableToWitness =>
      ⟨eraseArtifactVersion derivation.arithmeticWitness.witnessArtifact,
        .Realizes, eraseArtifactVersion method.version,
        eraseArtifactVersion derivation.arithmeticWitness.witnessArtifact⟩
  | .witnessToSourceDenotation =>
      ⟨projectionVersion "full-tta-witness-to-source-denotation",
        .Interprets, eraseArtifactVersion interpretationBridge.version,
        eraseArtifactVersion
          derivation.interpretationEvent.sourceDenotation.evidenceArtifact⟩
  | .witnessToTargetDenotation =>
      ⟨projectionVersion "full-tta-witness-to-target-denotation",
        .Interprets, eraseArtifactVersion interpretationBridge.version,
        eraseArtifactVersion
          derivation.interpretationEvent.targetDenotation.evidenceArtifact⟩
  | .sourceDenotationToInterpretation =>
      ⟨projectionVersion "full-tta-source-denotation-to-interpretation",
        .Interprets, eraseArtifactVersion interpretationBridge.version,
        eraseArtifactVersion derivation.interpretationEvent.eventArtifact⟩
  | .targetDenotationToInterpretation =>
      ⟨eraseArtifactVersion derivation.interpretationEvent.eventArtifact,
        .Interprets, eraseArtifactVersion interpretationBridge.version,
        eraseArtifactVersion interpretationBridge.preservationProof⟩
  | .interpretationToConstraint =>
      ⟨eraseArtifactVersion derivation.constraintEvidence.evidenceArtifact,
        .Preserves, eraseArtifactVersion interpretationBridge.version,
        eraseArtifactVersion derivation.constraintEvidence.evidenceArtifact⟩
  | .constraintToConstraintSieve =>
      ⟨eraseArtifactVersion constraintSieveBridge.proofArtifact,
        .Preserves, eraseArtifactVersion constraintSieveBridge.version,
        eraseArtifactVersion constraintSieveBridge.proofArtifact⟩
  | .constraintSieveToSieveTheory =>
      ⟨eraseArtifactVersion derivation.sieveEvidenceTheory.version,
        .Preserves, eraseArtifactVersion constraintSieveBridge.version,
        eraseArtifactVersion constraintSieveBridge.proofArtifact⟩
  | .sieveTheoryToExact =>
      ⟨fullStageNativeArtifact derivation .SieveEvidenceTheoryExact,
        .UsesEquivalence, eraseArtifactVersion evidenceTheory.version,
        eraseArtifactVersion derivation.sieveEvidenceTheory.version⟩
  | .sieveTheoryExactToAcceptance =>
      ⟨fullStageNativeArtifact derivation .ProcedureAcceptanceEvidence,
        .Preserves, eraseArtifactVersion soundness.evidenceArtifact,
        eraseArtifactVersion procedure.version⟩
  | .acceptanceToEvaluation =>
      ⟨eraseArtifactVersion derivation.sieveEvaluation.evaluationEvent,
        .Instantiates, eraseArtifactVersion procedure.version,
        eraseArtifactVersion soundness.evidenceArtifact⟩
  | .evaluationToResult =>
      ⟨eraseArtifactVersion derivation.sieveResult.resultArtifact,
        .Derives, eraseArtifactVersion derivation.sieveEvaluation.evaluationEvent,
        eraseArtifactVersion derivation.sieveResult.resultArtifact⟩
  | .resultToExact =>
      ⟨fullStageNativeArtifact derivation .SieveResultExact,
        .UsesEquivalence,
        eraseArtifactVersion derivation.sieveEvaluation.evaluationEvent,
        eraseArtifactVersion derivation.sieveResult.resultArtifact⟩
  | .resultExactToWitness =>
      ⟨eraseArtifactVersion derivation.sieveWitness.witnessArtifact,
        .Preserves, eraseArtifactVersion soundness.evidenceArtifact,
        eraseArtifactVersion derivation.sieveWitness.witnessArtifact⟩
  | .evaluationToIntensional =>
      ⟨eraseArtifactVersion derivation.intensionalOccurrence.occurrenceArtifact,
        .Realizes, eraseArtifactVersion intensionalSemantics.evidenceArtifact,
        eraseArtifactVersion derivation.intensionalOccurrence.occurrenceArtifact⟩
  | .witnessToRealizationEvent =>
      ⟨eraseArtifactVersion derivation.realizationRecord.realizationActivity,
        .Realizes, eraseArtifactVersion realizationContract.version,
        eraseArtifactVersion derivation.sieveWitness.witnessArtifact⟩
  | .realizationEventToRecord =>
      ⟨eraseArtifactVersion derivation.realizationRecord.recordArtifact,
        .Realizes, eraseArtifactVersion realizationContract.version,
        eraseArtifactVersion derivation.realizationRecord.realizationActivity⟩
  | .realizationToDeclaration =>
      ⟨eraseArtifactVersion derivation.theoremDerivedEdge.declarationArtifact,
        .Derives, eraseArtifactVersion derivation.realizationRecord.recordArtifact,
        eraseArtifactVersion derivation.theoremDerivedEdge.declarationArtifact⟩
  | .declarationToConsequence =>
      ⟨eraseArtifactVersion derivation.graphConsequenceProof.proofArtifact,
        .Derives, eraseArtifactVersion derivation.theoremDerivedEdge.declarationArtifact,
        eraseArtifactVersion derivation.graphConsequenceProof.proofArtifact⟩
  | .consequenceToUniversal =>
      ⟨(fullTargetTheorem derivation).theoremArtifact,
        .Constructs, (fullTranslation derivation).artifact,
        (fullPreservation derivation).evidenceArtifact⟩
  | .universalToValidation =>
      ⟨eraseArtifactVersion derivation.validationExecution.executionArtifact,
        .Instantiates, eraseArtifactVersion derivationRef,
        eraseArtifactVersion derivation.validationExecution.executionArtifact⟩
  | .executionToResult =>
      ⟨eraseArtifactVersion derivation.validationResult.resultArtifact,
        .Derives, eraseArtifactVersion derivation.validationExecution.executionArtifact,
        eraseArtifactVersion derivation.validationResult.resultArtifact⟩
  | .resultToDecision =>
      ⟨eraseArtifactVersion derivation.acceptanceDecision.decisionArtifact,
        .Derives, eraseArtifactVersion derivation.validationResult.resultArtifact,
        eraseArtifactVersion derivation.acceptanceDecision.decisionArtifact⟩
  | .decisionToCommitment =>
      ⟨eraseArtifactVersion derivation.operationalCommitment.commitmentArtifact,
        .Derives, eraseArtifactVersion derivation.acceptanceDecision.decisionArtifact,
        eraseArtifactVersion derivation.operationalCommitment.commitmentArtifact⟩
  | .lineageInterpretation =>
      ⟨projectionVersion "full-tta-lineage-interpretation-edge",
        .Interprets, eraseArtifactVersion interpretationBridge.version,
        eraseArtifactVersion interpretationBridge.preservationProof⟩
  | .lineageConstraintSieve =>
      ⟨projectionVersion "full-tta-lineage-constraint-sieve-edge",
        .Preserves, eraseArtifactVersion constraintSieveBridge.version,
        eraseArtifactVersion constraintSieveBridge.proofArtifact⟩
  | .lineageRealization =>
      ⟨projectionVersion "full-tta-lineage-realization-edge",
        .Realizes, eraseArtifactVersion realizationContract.version,
        eraseArtifactVersion derivation.realizationRecord.recordArtifact⟩
  | .lineagePreservation =>
      ⟨projectionVersion "full-tta-lineage-preservation-edge",
        .Preserves, derivation.bridge.bridgeArtifact,
        derivation.bridge.bridgeArtifact⟩
  | .sourceToUniversal =>
      ⟨projectionVersion "full-tta-summary-edge",
        .Preserves, (fullTranslation derivation).artifact,
        (fullPreservation derivation).evidenceArtifact⟩

/-- Policy accepts exactly nodes projected from this exact native derivation. -/
def fullStageValidationPolicy (derivation : NativeDerivation) :
    TransferNodeValidationPolicy where
  policyArtifact := VersionId.composite
    (projectionVersion "full-tta-structural-validation-policy")
    (eraseArtifactVersion derivationRef)
  accepts := fun node => ∃ stage, node = fullStageNode derivation stage

/-- Structural validation witnesses exact membership in the native-stage image. -/
def fullStageValidation (derivation : NativeDerivation)
    (stage : FullTTAStage) :
    TransferNodeValidation (fullStageValidationPolicy derivation)
      (fullStageNode derivation stage) where
  resultArtifact := VersionId.composite
    (projectionVersion "full-tta-node-structural-validation")
    (fullStageNode derivation stage).nodeArtifact.identity
  accepted := ⟨stage, rfl⟩

/-- Complete ranked native-stage DAG with a separately typed summary edge. -/
def fullDependencyGraph (derivation : NativeDerivation) :
    TransferDependencyGraph where
  Node := FullTTAStage
  node := fullStageNode derivation
  nodeInjective := fullStageNode_injective derivation
  nodeArtifactInjective := fullStageNodeArtifact_injective derivation
  dependsOn := FullTTADependency
  edge := fullStageEdge derivation
  dependencyRank := FullTTAStage.rank
  rankIncreases := FullTTADependency.rankIncreases
  validationPolicy := fullStageValidationPolicy derivation
  validation := fullStageValidation derivation

/--
Complete generic derivation projected from the exact native transport value.
The generic source/target edge is a summary in the same DAG; all intermediate
native stages remain independently addressable and validated.
-/
def fullGenericDerivationProjection (derivation : NativeDerivation) :
    TheoremTransferDerivation (fullTranslation derivation)
      (fullPreservation derivation) where
  derivationArtifact := eraseArtifactVersion derivationRef
  sourceTheorem := certifiedIntervalTheorem certified input
  sourcePropositionInScope := fullSourcePropositionInScope derivation
  targetTheorem := fullTargetTheorem derivation
  targetTheoremExact := rfl
  targetPropositionInScope := fullTargetPropositionInScope derivation
  dependencyGraph := fullDependencyGraph derivation
  sourceNode := .SourceTheorem
  targetNode := .UniversalTargetTheorem
  dependency := .sourceToUniversal
  lineageRealization := .composite .ConstraintEvidence rfl rfl
    (.atomic .lineageInterpretation (Or.inl rfl))
    (.composite .SieveWitness rfl rfl
      (.atomic .lineageConstraintSieve (Or.inl rfl))
      (.composite .ConsequenceProof rfl rfl
        (.atomic .lineageRealization (Or.inl rfl))
        (.atomic .lineagePreservation (Or.inl rfl))))
  sourceTheoryVersionExact := rfl
  targetTheoryVersionExact := rfl
  sourceTheoremArtifactExact := rfl
  targetTheoremArtifactExact := rfl
  sourcePropositionArtifactExact := rfl
  targetPropositionArtifactExact := rfl
  edgeKindExact := rfl
  bridgeArtifactExact := rfl
  evidenceArtifactExact := rfl
  declaredInformationLoss := (fullTranslation derivation).informationLoss
  informationLossExact := rfl
  informationLossAssessment := by
    intro lossProfile _membership
    exact .declaredMetadata lossProfile
  declaredCanonicality := (fullTranslation derivation).canonicality
  canonicalityExact := rfl
  lifecycle := {
    ledgerArtifact := projectionVersion "full-tta-lifecycle-ledger"
    states := [.Draft, .StructurallyValidated, .Accepted,
      .OperationallyCommitted]
    statesNonempty := by simp
    evidenceArtifacts := [
      eraseArtifactVersion derivation.validationExecution.executionArtifact,
      eraseArtifactVersion derivation.validationResult.resultArtifact,
      eraseArtifactVersion derivation.acceptanceDecision.decisionArtifact,
      eraseArtifactVersion derivation.operationalCommitment.commitmentArtifact]
    evidenceNonempty := by simp
  }
  equivalenceRegime := none
  soundnessLevel := .SemanticallyPreserved
  soundnessEvidence := .semanticallyPreserved

/--
Lossless adapter boundary.  The generic derivation is accompanied by the exact
typed native value and by explicit identities for evidence that cannot occupy
generic theorem/proposition slots without semantic-role erasure.
-/
structure FullTransportDerivationProjection (derivation : NativeDerivation) where
  nativeDerivation : CompletedNativeDerivation
  nativeDerivationExact : nativeDerivation = derivation.nativeDerivation
  genericDerivation : TheoremTransferDerivation
    (fullTranslation derivation)
    (fullPreservation derivation)
  sourceDenotationArtifact : ArtifactRef .coordinateDenotation
  sourceDenotationArtifactExact : sourceDenotationArtifact =
    derivation.interpretationEvent.sourceDenotation.evidenceArtifact
  targetDenotationArtifact : ArtifactRef .coordinateDenotation
  targetDenotationArtifactExact : targetDenotationArtifact =
    derivation.interpretationEvent.targetDenotation.evidenceArtifact
  sieveResultArtifact : ArtifactRef .sieveResult
  sieveResultArtifactExact : sieveResultArtifact =
    derivation.sieveResult.resultArtifact
  sieveWitnessArtifact : ArtifactRef .sieveWitness
  sieveWitnessArtifactExact : sieveWitnessArtifact =
    derivation.sieveWitness.witnessArtifact
  realizationEventArtifact : ArtifactRef .realizationEvent
  realizationEventArtifactExact : realizationEventArtifact =
    derivation.realizationRecord.realizationActivity
  validationExecutionArtifact : ArtifactRef .validationExecution
  validationExecutionArtifactExact : validationExecutionArtifact =
    derivation.validationExecution.executionArtifact
  validationResultArtifact : ArtifactRef .validationResult
  validationResultArtifactExact : validationResultArtifact =
    derivation.validationResult.resultArtifact
  acceptanceDecisionArtifact : ArtifactRef .acceptanceDecision
  acceptanceDecisionArtifactExact : acceptanceDecisionArtifact =
    derivation.acceptanceDecision.decisionArtifact
  operationalCommitmentArtifact : ArtifactRef .operationalCommitment
  operationalCommitmentArtifactExact : operationalCommitmentArtifact =
    derivation.operationalCommitment.commitmentArtifact

/-- Complete role-preserving projection of one exact native derivation. -/
def fullTransportDerivationProjection (derivation : NativeDerivation) :
    FullTransportDerivationProjection derivation where
  nativeDerivation := derivation.nativeDerivation
  nativeDerivationExact := rfl
  genericDerivation := fullGenericDerivationProjection derivation
  sourceDenotationArtifact :=
    derivation.interpretationEvent.sourceDenotation.evidenceArtifact
  sourceDenotationArtifactExact := rfl
  targetDenotationArtifact :=
    derivation.interpretationEvent.targetDenotation.evidenceArtifact
  targetDenotationArtifactExact := rfl
  sieveResultArtifact := derivation.sieveResult.resultArtifact
  sieveResultArtifactExact := rfl
  sieveWitnessArtifact := derivation.sieveWitness.witnessArtifact
  sieveWitnessArtifactExact := rfl
  realizationEventArtifact := derivation.realizationRecord.realizationActivity
  realizationEventArtifactExact := rfl
  validationExecutionArtifact := derivation.validationExecution.executionArtifact
  validationExecutionArtifactExact := rfl
  validationResultArtifact := derivation.validationResult.resultArtifact
  validationResultArtifactExact := rfl
  acceptanceDecisionArtifact := derivation.acceptanceDecision.decisionArtifact
  acceptanceDecisionArtifactExact := rfl
  operationalCommitmentArtifact :=
    derivation.operationalCommitment.commitmentArtifact
  operationalCommitmentArtifactExact := rfl

end CompleteProjection

end FCRS.TheoremTransfer.Adapters.FCRSTransport
