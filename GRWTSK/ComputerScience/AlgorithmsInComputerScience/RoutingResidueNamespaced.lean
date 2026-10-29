-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ClassificationStrategy.Varianta21054bb6549e6fccd994e7b8164be006af8bbfaed0e93806c56ba18e36a8e6f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a21054bb6549e6fccd994e7b8164be006af8bbfaed0e93806c56ba18e36a8e6f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ClassificationStrategy.Varianta21054bb6549e6fccd994e7b8164be006af8bbfaed0e93806c56ba18e36a8e6f","mathematical_subject":"Computation.DataStructures","original_sha256":"a21054bb6549e6fccd994e7b8164be006af8bbfaed0e93806c56ba18e36a8e6f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/NeuralDiffusion/RoutingResidue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.NeuralDiffusion.Residue
import Mathematics.Projection.SeparatorObligation

/-!
# Residue-driven classification

Routing residue activates continued classification without acquiring authority.
Split and boundary are proof-bearing mathematical diagnoses.  Backpropagation,
human/GPT review, and durable handoff are strategies for proposing a discharge;
they cannot mutate accepted keys, names, routes, or Lean objects.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ClassificationStrategy.Varianta21054bb6549e6fccd994e7b8164be006af8bbfaed0e93806c56ba18e36a8e6f

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
