import Mathematics.NeuralDiffusion.RoutingResidue

/-!
# Exact residue classification

The convolution--involution diffuser is activated by a type, not a score.
Only an unresolved routing residue can inhabit `ResidueWorkItem`; a named
incidence anchor has no constructor into the learning process.

The learning plane has three exits:

* an immutable backpropagation successor for continued classification;
* a persisted handoff to a language model or human mathematician;
* a new probe epoch admitted by `CertifiedSeparator`.

The current classifier never mutates itself into a new mathematical fact.
A certified split is spawned into a new accepted generation, while every
uncertified proposal remains outside the fact-authority cascade.
-/

namespace Mathematics.NeuralDiffusion

open Mathematics.Projection

universe u v w

/--
A named incidence anchor is resolved for routing.  Its exact singleton proof and
external key are retained together; it does not enter neural classification.
-/
structure NamedIncidenceAnchor
    (Element : Type u) [DecidableEq Element] where
  fiber : Finset Element
  singleton : IncidenceSingleton Element fiber
  routeKey : RigidKey
  nameObject : ObjectAddress

/--
Immutable work admitted to the neural plane.  The absence of a stable name is
represented positively by the exact non-singleton residue proof already
carried by `RoutingResidue`.
-/
structure ResidueWorkItem
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element] where
  acceptedGeneration : ObjectAddress
  activationKey : ActivationKey
  persistedObject : ObjectAddress
  predecessor : Option ObjectAddress
  attempt : Nat
  residue : RoutingResidue Element Probe
  provisionalNames : List String

/-- The only entities that may continue an unresolved classification. -/
inductive ClassificationCustodian
  | convolutionInvolutionDiffuser
  | languageModel
  | humanMathematician
  deriving DecidableEq, Repr

/--
A classification proposal is deliberately proof-free.  Names, probes, and
analytic evidence may guide a later proof but authorize no route or folder.
-/
structure ClassificationProposal
    {Element : Type u} {Probe : Type v}
    [DecidableEq Element]
    (work : ResidueWorkItem Element Probe) where
  strategy : ClassificationStrategy
  proposer : ProposalAuthority
  proposedNames : List String
  proposedProbeDescription : Option String
  analyticEvidence : List String

/--
Backpropagation creates a fresh immutable observation linked to its predecessor.
It cannot silently alter the accepted generation or the exact unresolved fiber.
-/
structure Backpropagation
    {Element : Type u} {Probe : Type v}
    [DecidableEq Element]
    (current : ResidueWorkItem Element Probe) where
  next : ResidueWorkItem Element Probe
  sameGeneration :
    next.acceptedGeneration = current.acceptedGeneration
  predecessorRecorded :
    next.predecessor = some current.persistedObject
  attemptAdvances :
    next.attempt = current.attempt + 1
  freshActivation :
    next.activationKey ≠ current.activationKey
  residuePreserved :
    next.residue = current.residue

/--
Durable handoff keeps unresolved mathematics live after the local process exits.
The queue object is immutable and may be claimed by a model or a human.
-/
structure PersistedHandoff
    {Element : Type u} {Probe : Type v}
    [DecidableEq Element]
    (work : ResidueWorkItem Element Probe) where
  queueObject : ObjectAddress
  custodian : ClassificationCustodian
  continuationReason : String

/--
The sole split-admission path.  The proposed separator must conservatively
extend the old incidence code and separate every distinct pair in the complete
residual fiber.  Admission produces a new generation outside the classifier
that proposed it.
-/
structure CertifiedResidueSplit
    {Element : Type u}
    {OldProbe : Type v}
    {NewProbe : Type w}
    [DecidableEq Element]
    (work : ResidueWorkItem Element OldProbe)
    (oldEncode : Element → IncidenceCode OldProbe)
    (newEncode : Element → IncidenceCode NewProbe)
    (extension : ProbeExtension OldProbe NewProbe)
    (obligation : SeparatorObligation Element OldProbe) where
  obligationMatches :
    obligation.residue = work.residue
  separator :
    CertifiedSeparator oldEncode newEncode extension obligation
  admittedProbeEpoch : ObjectAddress
  admittedGeneration : ObjectAddress

/-- A residue work item is always an exact activator request. -/
def ResidueWorkItem.activationRequired
    {Element : Type u} {Probe : Type v}
    [DecidableEq Element]
    (_work : ResidueWorkItem Element Probe) : Bool :=
  true

@[simp] theorem residue_work_activates
    {Element : Type u} {Probe : Type v}
    [DecidableEq Element]
    (work : ResidueWorkItem Element Probe) :
    work.activationRequired = true :=
  rfl

/-- A named incidence anchor is resolved and never activates the diffuser. -/
def NamedIncidenceAnchor.activationRequired
    {Element : Type u} [DecidableEq Element]
    (_point : NamedIncidenceAnchor Element) : Bool :=
  false

@[simp] theorem named_incidence_anchor_does_not_activate
    {Element : Type u} [DecidableEq Element]
    (point : NamedIncidenceAnchor Element) :
    point.activationRequired = false :=
  rfl

end Mathematics.NeuralDiffusion
