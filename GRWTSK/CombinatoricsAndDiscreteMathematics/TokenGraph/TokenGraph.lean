import Mathematics.SemanticTokenization.RelationAlgebra
import Mathematics.SemanticTokenization.Segmentation

/-!
# Typed, evidence-bearing token graphs
-/

namespace Mathematics.SemanticTokenization

structure TokenNode
    (cut : EvidenceCut)
    (segmentation : CertifiedSegmentation cut) where
  index : Fin segmentation.tokenization.spans.size
  context : ContextId
  metadata :
    MetadataProfile
      cut
      {segmentation.tokenization.spans[index]}
      context

structure SemanticEdge
    (cut : EvidenceCut)
    (Node : Type*) where
  id : RelationId
  relation : SemanticRelationType
  source : Node
  target : Node
  context : ContextId
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  authority : AuthorityClass
  snapshot : SnapshotId

structure TokenGraph
    (cut : EvidenceCut)
    (segmentation : CertifiedSegmentation cut) where
  vertices : Array (TokenNode cut segmentation)
  edges :
    Array
      (SemanticEdge cut
        (TokenNode cut segmentation))
  everyTokenRepresented :
    ∀ token : Fin segmentation.tokenization.spans.size,
      ∃ vertex : Fin vertices.size,
        (vertices[vertex]).index = token
  edgeSnapshotsMatch :
    ∀ edge : Fin edges.size,
      (edges[edge]).snapshot = cut.activeSnapshot
  edgeEvidenceExists :
    ∀ edge : Fin edges.size,
      ∀ evidence ∈ (edges[edge]).evidence,
        cut.hasEvidence evidence

inductive SemanticPath
    {cut : EvidenceCut}
    {segmentation : CertifiedSegmentation cut}
    (graph : TokenGraph cut segmentation) :
    TokenNode cut segmentation →
    TokenNode cut segmentation →
    Type
  | refl (vertex)
  | step
      (edge : Fin graph.edges.size)
  | trans
      (first : SemanticPath graph a b)
      (second : SemanticPath graph b c)

structure TokenConnectivityCertificate
    {cut : EvidenceCut}
    {segmentation : CertifiedSegmentation cut}
    (graph : TokenGraph cut segmentation)
    (vertex : TokenNode cut segmentation) where
  containingPhrase : Option PhraseNodeId
  sentenceContext : ContextId
  discourseContext : Option ContextId
  concept : Option ConceptId
  sourceLocalPath : Prop
  sentencePath : Prop
  discoursePath : Prop
  conceptPath : Prop

theorem tokenGraph_edge_evidence
    {cut : EvidenceCut}
    {segmentation : CertifiedSegmentation cut}
    (graph : TokenGraph cut segmentation)
    (edge : Fin graph.edges.size) :
    (graph.edges[edge]).evidence.Nonempty ∧
    ∀ evidence ∈ (graph.edges[edge]).evidence,
      cut.hasEvidence evidence :=
  ⟨(graph.edges[edge]).evidence_nonempty,
    graph.edgeEvidenceExists edge⟩

end Mathematics.SemanticTokenization
