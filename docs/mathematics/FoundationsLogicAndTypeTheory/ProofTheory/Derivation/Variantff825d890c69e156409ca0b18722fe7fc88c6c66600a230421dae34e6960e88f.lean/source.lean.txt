import FCRS.Transport.Graph

universe uInput uWitness uCoordinate uIntensionalEdge uMaterializedEdge

namespace FCRS.Transport

/-!
`TransportDerivationIdentity` is the nominal input ledger for one composition
run.  Keeping this ledger as a dependent structure prevents the lifecycle
arguments from being erased behind an existential `TransportDerivation`: the
adoption event and status evidence remain indexed by the exact supplied
interval, status, and successor.
-/

structure TransportDerivationIdentity where
  derivationRef : ArtifactRef .transportDerivation
  applicationArtifact : ArtifactRef .theoremApplication
  existenceArtifact : ArtifactRef .existenceEvidence
  selectionEventArtifact : ArtifactRef .selectionEvent
  arithmeticWitnessArtifact : ArtifactRef .arithmeticWitness
  interpretationEventArtifact : ArtifactRef .interpretationEvent
  sourceDenotationArtifact : ArtifactRef .coordinateDenotation
  targetDenotationArtifact : ArtifactRef .coordinateDenotation
  constraintEvidenceArtifact : ArtifactRef .constraintEvidence
  sieveResultArtifact : ArtifactRef .sieveResult
  evaluationEventArtifact : ArtifactRef .sieveEvaluation
  sieveWitnessArtifact : ArtifactRef .sieveWitness
  realizationRecordArtifact : ArtifactRef .realizationRecord
  realizationEventArtifact : ArtifactRef .realizationEvent
  edgeDeclarationArtifact : ArtifactRef .theoremDerivedEdgeDeclaration
  consequenceProofArtifact : ArtifactRef .consequenceProof
  validationExecutionArtifact : ArtifactRef .validationExecution
  validationResultArtifact : ArtifactRef .validationResult
  acceptanceDecisionArtifact : ArtifactRef .acceptanceDecision
  commitmentArtifact : ArtifactRef .operationalCommitment
  commitmentHolder : ArtifactRef .agent
  commitmentInterval : HalfOpenTemporalInterval
  adoptionEvent : CommitmentAdoptionEvent commitmentInterval
  predecessorCommitment : Option (ArtifactRef .operationalCommitment)
  successorCommitment : Option (ArtifactRef .operationalCommitment)
  commitmentStatus : OperationalCommitmentStatus
  commitmentState : OperationalCommitmentState
    commitmentInterval commitmentStatus successorCommitment

namespace TransportDerivationIdentity

/-- Reify the exact nominal and lifecycle arguments supplied to TT-08. -/
def ofSupplied
    (derivationRef : ArtifactRef .transportDerivation)
    (applicationArtifact : ArtifactRef .theoremApplication)
    (existenceArtifact : ArtifactRef .existenceEvidence)
    (selectionEventArtifact : ArtifactRef .selectionEvent)
    (arithmeticWitnessArtifact : ArtifactRef .arithmeticWitness)
    (interpretationEventArtifact : ArtifactRef .interpretationEvent)
    (sourceDenotationArtifact targetDenotationArtifact :
      ArtifactRef .coordinateDenotation)
    (constraintEvidenceArtifact : ArtifactRef .constraintEvidence)
    (sieveResultArtifact : ArtifactRef .sieveResult)
    (evaluationEventArtifact : ArtifactRef .sieveEvaluation)
    (sieveWitnessArtifact : ArtifactRef .sieveWitness)
    (realizationRecordArtifact : ArtifactRef .realizationRecord)
    (realizationEventArtifact : ArtifactRef .realizationEvent)
    (edgeDeclarationArtifact : ArtifactRef .theoremDerivedEdgeDeclaration)
    (consequenceProofArtifact : ArtifactRef .consequenceProof)
    (validationExecutionArtifact : ArtifactRef .validationExecution)
    (validationResultArtifact : ArtifactRef .validationResult)
    (acceptanceDecisionArtifact : ArtifactRef .acceptanceDecision)
    (commitmentArtifact : ArtifactRef .operationalCommitment)
    (commitmentHolder : ArtifactRef .agent)
    (commitmentInterval : HalfOpenTemporalInterval)
    (adoptionEvent : CommitmentAdoptionEvent commitmentInterval)
    (predecessorCommitment successorCommitment :
      Option (ArtifactRef .operationalCommitment))
    (commitmentStatus : OperationalCommitmentStatus)
    (commitmentState : OperationalCommitmentState
      commitmentInterval commitmentStatus successorCommitment) :
    TransportDerivationIdentity where
  derivationRef := derivationRef
  applicationArtifact := applicationArtifact
  existenceArtifact := existenceArtifact
  selectionEventArtifact := selectionEventArtifact
  arithmeticWitnessArtifact := arithmeticWitnessArtifact
  interpretationEventArtifact := interpretationEventArtifact
  sourceDenotationArtifact := sourceDenotationArtifact
  targetDenotationArtifact := targetDenotationArtifact
  constraintEvidenceArtifact := constraintEvidenceArtifact
  sieveResultArtifact := sieveResultArtifact
  evaluationEventArtifact := evaluationEventArtifact
  sieveWitnessArtifact := sieveWitnessArtifact
  realizationRecordArtifact := realizationRecordArtifact
  realizationEventArtifact := realizationEventArtifact
  edgeDeclarationArtifact := edgeDeclarationArtifact
  consequenceProofArtifact := consequenceProofArtifact
  validationExecutionArtifact := validationExecutionArtifact
  validationResultArtifact := validationResultArtifact
  acceptanceDecisionArtifact := acceptanceDecisionArtifact
  commitmentArtifact := commitmentArtifact
  commitmentHolder := commitmentHolder
  commitmentInterval := commitmentInterval
  adoptionEvent := adoptionEvent
  predecessorCommitment := predecessorCommitment
  successorCommitment := successorCommitment
  commitmentStatus := commitmentStatus
  commitmentState := commitmentState

end TransportDerivationIdentity

/-!
`TransportDerivation` is indexed by every immutable semantic component.  Its
fields retain each activity/evidence stage separately, including validation,
decision, and operational commitment.  The selected witness is materializable
only when its method-kind index carries an explicit license.
-/

structure TransportDerivation
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {MaterializedEdge : Type uMaterializedEdge}
    (derivationRef : ArtifactRef .transportDerivation)
    (profile : IntervalProfile Input Witness)
    (certified : CertifiedIntervalTheorem profile)
    (input : Input)
    {methodKind : SelectionMethodKind}
    (method : SelectionMethod methodKind Input Witness)
    (interpretation : BinaryInterpretation Input Witness Coordinate)
    (constraint : BinaryConstraint Coordinate)
    (interpretationBridge : InterpretationBridge
      profile interpretation constraint)
    (specification : SieveSpecification Coordinate)
    (procedure : SieveProcedure specification)
    (soundness : SieveSoundness procedure)
    (completeness : Option (SieveCompleteness procedure))
    (evidenceTheory :
      SieveEvidenceTheoryVersion (some soundness) completeness)
    (constraintSieveBridge : ConstraintSieveBridge constraint specification)
    (intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge)
    (intensionalSemantics :
      IntensionalGraphSemantics specification intensionalGraph)
    (materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge)
    (realizationContract :
      RealizationContract soundness materializedGraph)
    (consequence : GraphConsequence materializedGraph) where
  theoremApplication : TheoremApplication certified input
  existenceEvidence : ExistenceEvidence theoremApplication
  selectionEvent : WitnessSelectionEvent existenceEvidence method
  selectedWitness : SelectedWitness selectionEvent
  materializableSelection : MaterializableSelectionKind methodKind
  arithmeticWitness : ArithmeticWitness selectedWitness
  interpretationEvent : InterpretationEvent interpretationBridge
    input selectedWitness.value
  constraintEvidence : ConstraintEvidence interpretationBridge
    input selectedWitness.value
  constraintSieveEvidence :
    specification.accepts
      (interpretation.source input)
      (interpretation.target selectedWitness.value)
  sieveEvidenceTheory :
    SieveEvidenceTheoryVersion (some soundness) completeness
  sieveEvidenceTheoryExact : sieveEvidenceTheory = evidenceTheory
  procedureAcceptanceEvidence :
    procedure.evaluate
      (interpretation.source input)
      (interpretation.target selectedWitness.value) = .Accepted
  sieveResult : SieveEvaluationResult procedure
    (interpretation.source input)
    (interpretation.target selectedWitness.value)
  sieveEvaluation : SieveEvaluation procedure
    (interpretation.source input)
    (interpretation.target selectedWitness.value)
  sieveResultExact : sieveEvaluation.result = sieveResult
  sieveWitness : SieveWitness soundness sieveEvaluation
  intensionalOccurrence : EdgeOccurrence intensionalGraph
    (interpretation.source input)
    (interpretation.target selectedWitness.value)
  realizationRecord :
    RealizationRecord realizationContract sieveEvaluation sieveWitness
  theoremDerivedEdge :
    TheoremDerivedEdgeDeclaration realizationRecord.occurrence
  graphConsequenceProof :
    GraphConsequenceProof realizationRecord.occurrence consequence
  validationExecution : ValidationExecution derivationRef
  validationResult : ValidationResult validationExecution
  acceptanceDecision : AcceptanceDecision validationResult
  operationalCommitment : OperationalCommitment acceptanceDecision

/-!
Reflective recovery is permitted only for the exact occurrence and declaration
retained by a complete transport derivation.  This wrapper prevents an
independently minted declaration from being presented as provenance for an
otherwise unrelated observed edge.
-/

structure ReflectiveRecoveryProvenance
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {MaterializedEdge : Type uMaterializedEdge}
    {derivationRef : ArtifactRef .transportDerivation}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {methodKind : SelectionMethodKind}
    {method : SelectionMethod methodKind Input Witness}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {constraint : BinaryConstraint Coordinate}
    {interpretationBridge : InterpretationBridge
      profile interpretation constraint}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {completeness : Option (SieveCompleteness procedure)}
    {evidenceTheory :
      SieveEvidenceTheoryVersion (some soundness) completeness}
    {constraintSieveBridge : ConstraintSieveBridge constraint specification}
    {intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge}
    {intensionalSemantics :
      IntensionalGraphSemantics specification intensionalGraph}
    {materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge}
    {realizationContract : RealizationContract soundness materializedGraph}
    {consequence : GraphConsequence materializedGraph}
    (derivation : TransportDerivation
      derivationRef profile certified input method interpretation constraint
      interpretationBridge specification procedure soundness completeness
      evidenceTheory constraintSieveBridge intensionalGraph
      intensionalSemantics materializedGraph realizationContract consequence) where
  occurrence : EdgeOccurrence materializedGraph
    (interpretation.source input)
    (interpretation.target derivation.selectedWitness.value)
  occurrenceExact : occurrence = derivation.realizationRecord.occurrence
  declaration : TheoremDerivedEdgeDeclaration occurrence
  declarationExact : HEq declaration derivation.theoremDerivedEdge

/-!
An independently observed target occurrence for reflective recovery.  Unlike
`ReflectiveRecoveryProvenance`, this record is not indexed by a completed
forward derivation and contains no selected source witness or admissibility
proof.  The recovered witness is only the endpoint named by the observed edge.
-/
structure ReflectiveRecoveryObservation
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate} {MaterializedEdge : Type uMaterializedEdge}
    (profile : IntervalProfile Input Witness)
    (input : Input)
    (interpretation : BinaryInterpretation Input Witness Coordinate)
    (materializedGraph : CoordinateGraph .Materialized Coordinate MaterializedEdge) where
  witness : Witness
  occurrence : EdgeOccurrence materializedGraph
    (interpretation.source input) (interpretation.target witness)
  declaration : TheoremDerivedEdgeDeclaration occurrence

namespace ReflectiveRecoveryObservation

/-- The observed endpoint is data; no source admissibility follows by projection. -/
def observedWitness
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate} {MaterializedEdge : Type uMaterializedEdge}
    {profile : IntervalProfile Input Witness}
    {input : Input}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {materializedGraph : CoordinateGraph .Materialized Coordinate MaterializedEdge}
    (observation : ReflectiveRecoveryObservation profile input interpretation
      materializedGraph) : Witness :=
  observation.witness

end ReflectiveRecoveryObservation

namespace ReflectiveRecoveryProvenance

/-- Project the exact edge/declaration pair already retained by a derivation. -/
def ofDerivation
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {MaterializedEdge : Type uMaterializedEdge}
    {derivationRef : ArtifactRef .transportDerivation}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {methodKind : SelectionMethodKind}
    {method : SelectionMethod methodKind Input Witness}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {constraint : BinaryConstraint Coordinate}
    {interpretationBridge : InterpretationBridge
      profile interpretation constraint}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {completeness : Option (SieveCompleteness procedure)}
    {evidenceTheory :
      SieveEvidenceTheoryVersion (some soundness) completeness}
    {constraintSieveBridge : ConstraintSieveBridge constraint specification}
    {intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge}
    {intensionalSemantics :
      IntensionalGraphSemantics specification intensionalGraph}
    {materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge}
    {realizationContract : RealizationContract soundness materializedGraph}
    {consequence : GraphConsequence materializedGraph}
    (derivation : TransportDerivation
      derivationRef profile certified input method interpretation constraint
      interpretationBridge specification procedure soundness completeness
      evidenceTheory constraintSieveBridge intensionalGraph
      intensionalSemantics materializedGraph realizationContract consequence) :
    ReflectiveRecoveryProvenance derivation where
  occurrence := derivation.realizationRecord.occurrence
  occurrenceExact := rfl
  declaration := derivation.theoremDerivedEdge
  declarationExact := HEq.rfl

end ReflectiveRecoveryProvenance

/-!
An explicit retention certificate connects every externally supplied identity
and lifecycle value to the corresponding field of an existential derivation.
The full selected witness is retained (not merely its raw value), while `HEq`
is used exactly where a field's type depends on another retained value.
-/

structure TransportDerivationRetains
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {MaterializedEdge : Type uMaterializedEdge}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {methodKind : SelectionMethodKind}
    {method : SelectionMethod methodKind Input Witness}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {constraint : BinaryConstraint Coordinate}
    {interpretationBridge : InterpretationBridge
      profile interpretation constraint}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {completeness : Option (SieveCompleteness procedure)}
    {evidenceTheory :
      SieveEvidenceTheoryVersion (some soundness) completeness}
    {constraintSieveBridge : ConstraintSieveBridge constraint specification}
    {intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge}
    {intensionalSemantics :
      IntensionalGraphSemantics specification intensionalGraph}
    {materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge}
    {realizationContract : RealizationContract soundness materializedGraph}
    {consequence : GraphConsequence materializedGraph}
    {derivationRef : ArtifactRef .transportDerivation}
    (derivation : TransportDerivation
      derivationRef profile certified input method interpretation constraint
      interpretationBridge specification procedure soundness completeness
      evidenceTheory constraintSieveBridge intensionalGraph
      intensionalSemantics materializedGraph realizationContract consequence)
    (identity : TransportDerivationIdentity)
    (selectedIntervalWitness : IntervalWitness profile input)
    (materializable : MaterializableSelectionKind methodKind)
    (selectionMethodEvidence :
      method.certifies input selectedIntervalWitness.value)
    (validationClaim : Prop)
    (validationEvidence : validationClaim) where
  derivationRefExact : identity.derivationRef = derivationRef
  theoremApplicationArtifactExact :
    derivation.theoremApplication.applicationArtifact =
      identity.applicationArtifact
  existenceEvidenceArtifactExact :
    derivation.existenceEvidence.evidenceArtifact = identity.existenceArtifact
  selectionEventArtifactExact :
    derivation.selectionEvent.eventArtifact = identity.selectionEventArtifact
  selectionEventResultExact :
    derivation.selectionEvent.result = selectedIntervalWitness
  selectionMethodEvidenceExact :
    HEq derivation.selectionEvent.methodEvidence selectionMethodEvidence
  selectedIntervalWitnessExact :
    derivation.selectedWitness.intervalWitness = selectedIntervalWitness
  materializableSelectionExact :
    derivation.materializableSelection = materializable
  arithmeticWitnessArtifactExact :
    derivation.arithmeticWitness.witnessArtifact =
      identity.arithmeticWitnessArtifact
  interpretationEventArtifactExact :
    derivation.interpretationEvent.eventArtifact =
      identity.interpretationEventArtifact
  sourceDenotationArtifactExact :
    derivation.interpretationEvent.sourceDenotation.evidenceArtifact =
      identity.sourceDenotationArtifact
  targetDenotationArtifactExact :
    derivation.interpretationEvent.targetDenotation.evidenceArtifact =
      identity.targetDenotationArtifact
  constraintEvidenceArtifactExact :
    derivation.constraintEvidence.evidenceArtifact =
      identity.constraintEvidenceArtifact
  sieveEvidenceTheoryExact : derivation.sieveEvidenceTheory = evidenceTheory
  sieveResultArtifactExact :
    derivation.sieveResult.resultArtifact = identity.sieveResultArtifact
  sieveEvaluationEventExact :
    derivation.sieveEvaluation.evaluationEvent =
      identity.evaluationEventArtifact
  sieveWitnessArtifactExact :
    derivation.sieveWitness.witnessArtifact = identity.sieveWitnessArtifact
  realizationRecordArtifactExact :
    derivation.realizationRecord.recordArtifact =
      identity.realizationRecordArtifact
  realizationEventArtifactExact :
    derivation.realizationRecord.realizationActivity =
      identity.realizationEventArtifact
  edgeDeclarationArtifactExact :
    derivation.theoremDerivedEdge.declarationArtifact =
      identity.edgeDeclarationArtifact
  consequenceProofArtifactExact :
    derivation.graphConsequenceProof.proofArtifact =
      identity.consequenceProofArtifact
  validationExecutionArtifactExact :
    derivation.validationExecution.executionArtifact =
      identity.validationExecutionArtifact
  validationResultArtifactExact :
    derivation.validationResult.resultArtifact = identity.validationResultArtifact
  validationClaimExact : derivation.validationResult.conforms = validationClaim
  validationEvidenceExact :
    HEq derivation.validationResult.evidence validationEvidence
  acceptanceDecisionArtifactExact :
    derivation.acceptanceDecision.decisionArtifact =
      identity.acceptanceDecisionArtifact
  commitmentArtifactExact :
    derivation.operationalCommitment.commitmentArtifact =
      identity.commitmentArtifact
  commitmentHolderExact :
    derivation.operationalCommitment.commitmentHolder = identity.commitmentHolder
  commitmentContentExact :
    derivation.operationalCommitment.commitmentContent = identity.derivationRef
  commitmentIntervalExact :
    derivation.operationalCommitment.effectiveInterval =
      identity.commitmentInterval
  adoptionEventExact :
    HEq derivation.operationalCommitment.adoptionEvent identity.adoptionEvent
  adoptionResponsibleAgentExact :
    derivation.operationalCommitment.responsibleAgent =
      identity.adoptionEvent.responsibleAgent
  adoptionReasonExact :
    derivation.operationalCommitment.reason = identity.adoptionEvent.reason
  predecessorCommitmentExact :
    derivation.operationalCommitment.predecessorCommitment =
      identity.predecessorCommitment
  successorCommitmentExact :
    derivation.operationalCommitment.successorCommitment =
      identity.successorCommitment
  commitmentStatusExact :
    derivation.operationalCommitment.status = identity.commitmentStatus
  commitmentStateExact :
    HEq derivation.operationalCommitment.statusState identity.commitmentState

end FCRS.Transport
