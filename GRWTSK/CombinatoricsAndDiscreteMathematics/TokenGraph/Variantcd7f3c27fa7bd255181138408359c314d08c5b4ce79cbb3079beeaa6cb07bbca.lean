-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TokenNode.Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TokenNode.Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"cdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/TokenGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.RelationAlgebra
import Mathematics.SemanticTokenization.Segmentation

/-!
# Typed, evidence-bearing token graphs
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TokenNode.Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11

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
