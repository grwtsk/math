import FCRS.Transport.Theorem

universe uInput uWitness

namespace FCRS.Transport

/-- One application of one certified theorem to one exact input. -/
structure TheoremApplication
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    (certified : CertifiedIntervalTheorem profile)
    (input : Input) where
  applicationArtifact : ArtifactRef .theoremApplication
  domainEvidence : profile.domain input

namespace TheoremApplication

/-- Construct an application from explicit domain evidence. -/
def ofDomain
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    (applicationArtifact : ArtifactRef .theoremApplication)
    (domainEvidence : profile.domain input) :
    TheoremApplication certified input where
  applicationArtifact := applicationArtifact
  domainEvidence := domainEvidence

end TheoremApplication

/-- Existential evidence is indexed by, but is not, its theorem application. -/
structure ExistenceEvidence
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    (application : TheoremApplication certified input) where
  evidenceArtifact : ArtifactRef .existenceEvidence
  witnessExists : ∃ witness, profile.admissible input witness

namespace ExistenceEvidence

/-- Apply the certified claim and retain a distinct existence-evidence record. -/
def ofApplication
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    (application : TheoremApplication certified input)
    (evidenceArtifact : ArtifactRef .existenceEvidence) :
    ExistenceEvidence application where
  evidenceArtifact := evidenceArtifact
  witnessExists := certified.claim input application.domainEvidence

end ExistenceEvidence

/-- Operational selection kinds; classical choice is a distinct type index. -/
inductive SelectionMethodKind where
  | ConstructiveExtraction
  | VerifiedSearch
  | CertifiedExternalComputation
  | ClassicalChoice
  | HumanSelectionWithMachineCheckedCertificate
deriving Repr, DecidableEq

/--
An immutable method designation indexed by its semantic kind. `certifies`
records the exact input/value relation claimed by this method; it is not
inferred from the designation string.
-/
structure SelectionMethod
    (kind : SelectionMethodKind)
    (Input : Type uInput) (Witness : Type uWitness) where
  version : ArtifactRef .selectionMethod
  designation : String
  certifies : Input → Witness → Prop

/-- Exactly the selection kinds licensed for materialized realization. -/
inductive MaterializableSelectionKind : SelectionMethodKind → Prop where
  | constructive : MaterializableSelectionKind .ConstructiveExtraction
  | verifiedSearch : MaterializableSelectionKind .VerifiedSearch
  | certifiedExternal :
      MaterializableSelectionKind .CertifiedExternalComputation
  | humanCertified :
      MaterializableSelectionKind .HumanSelectionWithMachineCheckedCertificate

/--
Selection activity indexed by exact existence evidence and method. Its result
is an admissible witness for the same profile/input, with separate proof that
the declared method certifies that exact value.
-/
structure WitnessSelectionEvent
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {application : TheoremApplication certified input}
    (existence : ExistenceEvidence application)
    {kind : SelectionMethodKind}
    (method : SelectionMethod kind Input Witness) where
  eventArtifact : ArtifactRef .selectionEvent
  result : IntervalWitness profile input
  methodEvidence : method.certifies input result.value

/-- A supplied witness proved equal to the exact result of its selection event. -/
structure SelectedWitness
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {application : TheoremApplication certified input}
    {existence : ExistenceEvidence application}
    {kind : SelectionMethodKind}
    {method : SelectionMethod kind Input Witness}
    (selection : WitnessSelectionEvent existence method) where
  intervalWitness : IntervalWitness profile input
  eventResultExact : intervalWitness = selection.result

namespace SelectedWitness

/-- The raw value remains subordinate to the selected-witness record. -/
def value
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {application : TheoremApplication certified input}
    {existence : ExistenceEvidence application}
    {kind : SelectionMethodKind}
    {method : SelectionMethod kind Input Witness}
    {selection : WitnessSelectionEvent existence method}
    (selected : SelectedWitness selection) : Witness :=
  selected.intervalWitness.value

/-- Reify the exact result already retained by a selection event. -/
def ofSelection
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {application : TheoremApplication certified input}
    {existence : ExistenceEvidence application}
    {kind : SelectionMethodKind}
    {method : SelectionMethod kind Input Witness}
    (selection : WitnessSelectionEvent existence method) :
    SelectedWitness selection where
  intervalWitness := selection.result
  eventResultExact := rfl

end SelectedWitness

/-- Arithmetic witness evidence remains distinct from the selection activity. -/
structure ArithmeticWitness
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {application : TheoremApplication certified input}
    {existence : ExistenceEvidence application}
    {kind : SelectionMethodKind}
    {method : SelectionMethod kind Input Witness}
    {selection : WitnessSelectionEvent existence method}
    (selected : SelectedWitness selection) where
  witnessArtifact : ArtifactRef .arithmeticWitness
  intervalLocation : profile.contains input selected.value
  qualification : profile.witnessQualifies selected.value

namespace ArithmeticWitness

/-- Separate certificates are projected from the exact selected record. -/
def ofSelected
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {application : TheoremApplication certified input}
    {existence : ExistenceEvidence application}
    {kind : SelectionMethodKind}
    {method : SelectionMethod kind Input Witness}
    {selection : WitnessSelectionEvent existence method}
    (selected : SelectedWitness selection)
    (witnessArtifact : ArtifactRef .arithmeticWitness) :
    ArithmeticWitness selected where
  witnessArtifact := witnessArtifact
  intervalLocation := selected.intervalWitness.evidence.2.1
  qualification := selected.intervalWitness.evidence.2.2

end ArithmeticWitness

end FCRS.Transport
