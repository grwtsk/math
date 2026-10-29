import Mathematics.SemanticTokenization.IdiomConceptNetwork

/-! # Relation-specific closure and context-transport restrictions -/

namespace Mathematics.SemanticTokenization

inductive AlgebraStatus
  | required
  | forbidden
  | conditional
  | unknown
  deriving DecidableEq, Repr

structure RelationAlgebra where
  reflexivity : AlgebraStatus
  symmetry : AlgebraStatus
  transitivity : AlgebraStatus
  contextSensitive : Bool

def semanticRelationAlgebra :
    SemanticRelationType → RelationAlgebra
  | .sameConcept =>
      ⟨.required, .required, .required, true⟩
  | .nearSynonym =>
      ⟨.forbidden, .conditional, .forbidden, true⟩
  | .synonym =>
      ⟨.conditional, .conditional, .conditional, true⟩
  | .adjacent =>
      ⟨.forbidden, .forbidden, .forbidden, true⟩
  | _ =>
      ⟨.unknown, .unknown, .unknown, true⟩

@[simp] theorem near_synonym_is_not_transitive :
    (semanticRelationAlgebra .nearSynonym).transitivity =
      .forbidden :=
  rfl

structure TransportedSemanticEdge
    (text : TextCarrier)
    (edge : SemanticEdge text)
    (target : Context) where
  transport :
    ContextTransportCertificate text edge.context target

theorem context_relation_requires_transport
    {text : TextCarrier}
    {edge : SemanticEdge text}
    {target : Context}
    (transported :
      TransportedSemanticEdge text edge target) :
    Nonempty
      (ContextTransportCertificate
        text edge.context target) :=
  ⟨transported.transport⟩

end Mathematics.SemanticTokenization
