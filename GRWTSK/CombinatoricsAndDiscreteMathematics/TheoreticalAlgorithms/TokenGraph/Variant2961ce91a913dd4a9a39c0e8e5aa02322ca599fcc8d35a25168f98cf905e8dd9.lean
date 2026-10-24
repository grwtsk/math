-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SemanticRelationType.Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SemanticRelationType.Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df","mathematical_subject":"Computation.DataStructures","original_sha256":"fbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/TokenGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.ExternalInterpretation
import Mathematics.SemanticTokenization.Tokenization

/-! # Finite typed token graphs -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SemanticRelationType.Variantfbb9d0ec8ea8d4ab9ad0b813d9be98d4d8bd45dd17f2871bec65353e1522c4df

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
