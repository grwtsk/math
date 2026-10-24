# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TokenGraph.Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e70eab2b1e5f69188da23b18a2b0f77077f0c9d0` · SHA-256 `cdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
