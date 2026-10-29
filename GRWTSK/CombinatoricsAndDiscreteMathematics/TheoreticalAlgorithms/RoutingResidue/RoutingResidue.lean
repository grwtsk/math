import Mathematics.NeuralDiffusion.Residue
import Mathematics.Projection.SeparatorObligation

/-!
# Residue-driven classification

Routing residue activates continued classification without acquiring authority.
Split and boundary are proof-bearing mathematical diagnoses.  Backpropagation,
human/GPT review, and durable handoff are strategies for proposing a discharge;
they cannot mutate accepted keys, names, routes, or Lean objects.
-/

namespace Mathematics.NeuralDiffusion

open Mathematics.Projection

universe u v w

inductive ClassificationStrategy
  | splitProposal
  | backpropagate
  | requestExternalMathematics
  | persistAndExit
  deriving DecidableEq, Repr

inductive RouteAssessment
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element]
  | named (key : RigidKey)
  | opaque (key : RigidKey) (residue : RoutingResidue Element Probe)
  | unrouted (residue : RoutingResidue Element Probe)
  | undischarged (obligation : SeparatorObligation Element Probe)

namespace RouteAssessment

variable
    {Element : Type u} {Probe : Type v}
    [DecidableEq Element]

def needsClassification :
    RouteAssessment Element Probe → Bool
  | .named _ => false
  | .opaque _ _ => true
  | .unrouted _ => true
  | .undischarged _ => true

@[simp] theorem named_does_not_activate (key : RigidKey) :
    needsClassification
      (RouteAssessment.named (Element := Element) (Probe := Probe) key) =
        false :=
  rfl

@[simp] theorem residue_activates
    (residue : RoutingResidue Element Probe) :
    (RouteAssessment.unrouted residue).needsClassification = true :=
  rfl

end RouteAssessment

/--
Immutable proposal-only observation.  It points to an accepted generation;
accepted compiler objects never point back to this mutable learning plane.
-/
structure ResidueObservation
    (Element : Type u) (Probe : Type v)
    [DecidableEq Element] where
  acceptedGeneration : ObjectAddress
  activationKey : ActivationKey
  residue : RoutingResidue Element Probe
  proposedStrategy : ClassificationStrategy
  modelEvidence : List String
  authority : ProposalAuthority := .languageModel

/--
Deterministic coupling of exact residue into an analytic carrier.  Equivariance
laws belong here; the resulting neural value remains proposal evidence.
-/
structure ResidueCoupling
    (Residue : Type u) (Carrier : Type v)
    [Zero Residue] [Zero Carrier] where
  realize : Residue → Carrier
  realize_zero : realize 0 = 0

end Mathematics.NeuralDiffusion
