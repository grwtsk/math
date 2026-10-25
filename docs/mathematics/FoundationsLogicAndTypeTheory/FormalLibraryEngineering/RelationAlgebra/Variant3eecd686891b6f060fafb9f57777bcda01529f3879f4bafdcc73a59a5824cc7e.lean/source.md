# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RelationAlgebra.Variant3eecd686891b6f060fafb9f57777bcda01529f3879f4bafdcc73a59a5824cc7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f46d59d7212b922941c160d007644d1329010481` · SHA-256 `b9f4492ab02a3590069582d97a9481437a615b2ae83b1f8a13e842c967f483ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AlgebraStatus.Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AlgebraStatus.Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23","mathematical_subject":"Foundations.Unclassified","original_sha256":"a7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/RelationAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.IdiomConceptNetwork

/-! # Relation-specific closure and context-transport restrictions -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AlgebraStatus.Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23

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
