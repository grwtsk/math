import Mathematics.SemanticTokenization.Substitution

/-! # Typed idiom–concept networks -/

namespace Mathematics.SemanticTokenization

inductive NetworkVertexKind
  | token
  | phrase
  | idiom
  | metaphor
  | concept
  | context
  deriving DecidableEq, Repr

structure NetworkVertex (text : TextCarrier) where
  vertexId : StableId
  kind : NetworkVertexKind
  context : Context
  evidence : EvidenceBundle text

inductive NetworkEdgeType
  | contains
  | expressesConcept
  | sharedConcept
  | sharedImage
  | contextualSynonym
  | nearSynonym
  | contrast
  | sourceDomain
  | targetDomain
  | supportedBy
  | transportedTo
  deriving DecidableEq, BEq, Repr

structure NetworkEdge (text : TextCarrier) where
  edgeId : StableId
  sourceId : StableId
  targetId : StableId
  relation : NetworkEdgeType
  context : Context
  evidence : EvidenceBundle text

structure IdiomConceptNetwork (text : TextCarrier) where
  vertices : List (NetworkVertex text)
  edges : List (NetworkEdge text)
  vertex_ids_nodup :
    (vertices.map NetworkVertex.vertexId).Nodup
  edge_ids_nodup :
    (edges.map NetworkEdge.edgeId).Nodup
  endpoints_registered :
    ∀ edge ∈ edges,
      (∃ source ∈ vertices,
        source.vertexId = edge.sourceId) ∧
      (∃ target ∈ vertices,
        target.vertexId = edge.targetId)

def NetworkEdgeType.entails
    (source target : NetworkEdgeType) : Bool :=
  match source, target with
  | .sharedImage, .contextualSynonym => false
  | .sharedConcept, .contextualSynonym => false
  | left, right => left == right

@[simp] theorem shared_imagery_not_synonymy :
    NetworkEdgeType.sharedImage.entails
      .contextualSynonym = false :=
  rfl

@[simp] theorem shared_concept_not_synonymy :
    NetworkEdgeType.sharedConcept.entails
      .contextualSynonym = false :=
  rfl

end Mathematics.SemanticTokenization
