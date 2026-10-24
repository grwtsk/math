import Mathematics.SemanticTokenization.ExternalInterpretation
import Mathematics.SemanticTokenization.Tokenization

/-! # Finite typed token graphs -/

namespace Mathematics.SemanticTokenization

inductive SemanticRelationType
  | adjacent
  | syntacticDependency
  | coreference
  | modifier
  | argument
  | sameConcept
  | figurativeSource
  | figurativeTarget
  | idiomMember
  | synonym
  | nearSynonym
  | contrast
  | evidenceFor
  | transportToContext
  deriving DecidableEq, Repr

structure SemanticEdge (text : TextCarrier) where
  edgeId : StableId
  relation : SemanticRelationType
  source : Span text
  target : Span text
  context : Context
  evidence : EvidenceBundle text
  provenance : List (ProvenancePath text)

structure ConnectivityObligation (text : TextCarrier) where
  source : Span text
  target : Span text
  relation : SemanticRelationType

structure TokenGraph (text : TextCarrier) where
  tokenization : Tokenization text
  vertices : List (Span text)
  vertices_exact :
    vertices = tokenization.spans
  edges : List (SemanticEdge text)
  endpoints_registered :
    ∀ edge ∈ edges,
      edge.source ∈ vertices ∧
        edge.target ∈ vertices
  requiredConnections : List (ConnectivityObligation text)
  required_connected :
    ∀ obligation ∈ requiredConnections,
      ∃ edge ∈ edges,
        edge.source.SameCoordinates obligation.source ∧
        edge.target.SameCoordinates obligation.target ∧
        edge.relation = obligation.relation

theorem TokenGraph.vertices_are_tokens
    {text : TextCarrier}
    (graph : TokenGraph text) :
    graph.vertices = graph.tokenization.spans :=
  graph.vertices_exact

end Mathematics.SemanticTokenization
