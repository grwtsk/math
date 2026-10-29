import Mathematics.NeuralDiffusion.ResidueClassification
import Mathematics.Projection.GeodesicCompletion

/-!
# External heat for unresolved mathematics

External heat means new proposal energy: a probe, separator, name, or exact
Boolean midpoint offered to an unresolved fiber.  It never means weakening a
kernel check.

Agreement is observed against an already certified rigidifier name and adds no
authority.  Persistent disagreement is represented as an exact infinite
sequence, while finite implementations may retain arbitrary prefixes as
evidence.  Crucially, no prefix length is an activation threshold: the
non-singleton residue itself is the activator.
-/

namespace Mathematics.NeuralDiffusion

open Mathematics.Projection

universe u v

/-- One exact comparison between the certified name and a model proposal. -/
structure RigidifierModelObservation where
  rigidifierName : String
  modelName : String
  modelEvidence : String

inductive RigidifierModelComparison
    (observation : RigidifierModelObservation)
  | agrees (proof : observation.modelName = observation.rigidifierName)
  | disagrees (proof : observation.modelName ≠ observation.rigidifierName)

/--
Mathematical persistence has no arbitrary retry count: every member of an
unbounded observation stream disagrees with the same certified name.
-/
structure PersistentDisagreement where
  certifiedName : String
  observation : Nat → RigidifierModelObservation
  rigidifierFixed :
    ∀ attempt, (observation attempt).rigidifierName = certifiedName
  disagrees :
    ∀ attempt,
      (observation attempt).modelName ≠
        (observation attempt).rigidifierName

inductive HeatTarget
  | separatorProbe
  | booleanMidpoint
  | namingDenotation
  | structuralRelation
  deriving DecidableEq, Repr

inductive HeatSource
  | convolutionInvolutionDiffuser
  | externalLanguageModel
  | humanMathematician
  deriving DecidableEq, Repr

/--
Proposal-only external interface payload.  The accepted generation and exact
residue remain fixed while new mathematics is proposed to close the fiber.
-/
structure HeatInjectionRequest
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element] where
  work : ResidueWorkItem Element Probe
  source : HeatSource
  target : HeatTarget
  disagreementPrefix : List RigidifierModelObservation
  proposedMathematics : List String
  evidenceObjects : List ObjectAddress
  authority : ProposalAuthority

/-- Heat is enabled by exact residue, not by disagreement count or magnitude. -/
def HeatInjectionRequest.activationRequired
    {Element : Type u} {Probe : Type v}
    [DecidableEq Element]
    (request : HeatInjectionRequest Element Probe) : Bool :=
  request.work.activationRequired

@[simp] theorem heat_request_activates
    {Element : Type u} {Probe : Type v}
    [DecidableEq Element]
    (request : HeatInjectionRequest Element Probe) :
    request.activationRequired = true :=
  rfl

/--
Agreement with a model leaves the already certified route unchanged; the
model does not become a source of name authority.
-/
structure ResolvedNameAgreement
    (Element : Type u) [DecidableEq Element] where
  point : NamedIncidenceAnchor Element
  observation : RigidifierModelObservation
  agreement :
    observation.modelName = observation.rigidifierName

def ResolvedNameAgreement.activationRequired
    {Element : Type u} [DecidableEq Element]
    (agreement : ResolvedNameAgreement Element) : Bool :=
  agreement.point.activationRequired

@[simp] theorem resolved_name_agreement_does_not_activate
    {Element : Type u} [DecidableEq Element]
    (agreement : ResolvedNameAgreement Element) :
    agreement.activationRequired = false :=
  rfl

end Mathematics.NeuralDiffusion
