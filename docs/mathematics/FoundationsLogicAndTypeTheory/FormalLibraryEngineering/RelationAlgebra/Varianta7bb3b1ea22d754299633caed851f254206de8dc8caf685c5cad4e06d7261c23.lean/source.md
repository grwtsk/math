# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RelationAlgebra.Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51227a30022b640507e9bb7a3b8824b1fb525f07` · SHA-256 `a7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
