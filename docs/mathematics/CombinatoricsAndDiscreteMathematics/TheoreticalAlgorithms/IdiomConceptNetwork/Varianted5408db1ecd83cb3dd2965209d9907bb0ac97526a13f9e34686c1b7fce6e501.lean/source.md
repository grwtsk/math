# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IdiomConceptNetwork.Varianted5408db1ecd83cb3dd2965209d9907bb0ac97526a13f9e34686c1b7fce6e501

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fca2fbcd4d7455deeaf4c5f4d6ac708159bce03f` · SHA-256 `f2fad7bda37d40d5f39cddaa72017da1f8697f874acb307d23cef29e0813c91e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NetworkVertexKind.Variant3ea114c5b7618c4d065c440bcd27370182a0e5908340f72fc1fcfd44b188f089","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ea114c5b7618c4d065c440bcd27370182a0e5908340f72fc1fcfd44b188f089","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NetworkVertexKind.Variant3ea114c5b7618c4d065c440bcd27370182a0e5908340f72fc1fcfd44b188f089","mathematical_subject":"Computation.DataStructures","original_sha256":"3ea114c5b7618c4d065c440bcd27370182a0e5908340f72fc1fcfd44b188f089","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/IdiomConceptNetwork.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Substitution

/-! # Typed idiom–concept networks -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NetworkVertexKind.Variant3ea114c5b7618c4d065c440bcd27370182a0e5908340f72fc1fcfd44b188f089

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
```
