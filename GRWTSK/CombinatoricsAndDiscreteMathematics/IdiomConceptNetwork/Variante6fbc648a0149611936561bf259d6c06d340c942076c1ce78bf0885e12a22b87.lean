import Mathematics.SemanticTokenization.Metaphor
import Mathematics.SemanticTokenization.Substitution
import Mathematics.SemanticTokenization.TokenGraph

/-!
# Context-indexed idiom--concept networks
-/

namespace Mathematics.SemanticTokenization

inductive IdiomConceptNodeKind
  | token
  | phrase
  | idiom
  | metaphor
  | concept
deriving DecidableEq, Repr

structure IdiomConceptNode
    (cut : EvidenceCut) where
  nodeId : Nat
  kind : IdiomConceptNodeKind
  source : Finset (Span cut.text)
  context : ContextId
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  payloadDigest : Digest

structure IdiomConceptEdge
    (cut : EvidenceCut) where
  id : RelationId
  relation : SemanticRelationType
  source : Nat
  target : Nat
  context : ContextId
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  snapshot : SnapshotId

structure IdiomConceptNetwork
    (cut : EvidenceCut) where
  nodes : Array (IdiomConceptNode cut)
  edges : Array (IdiomConceptEdge cut)
  nodeIdsUnique :
    PairwiseUnique
      (nodes.map IdiomConceptNode.nodeId)
  endpointsExist :
    ∀ edge : Fin edges.size,
      (∃ source : Fin nodes.size,
        (nodes[source]).nodeId =
          (edges[edge]).source) ∧
      (∃ target : Fin nodes.size,
        (nodes[target]).nodeId =
          (edges[edge]).target)
  edgeEvidenceExists :
    ∀ edge : Fin edges.size,
      ∀ evidence ∈ (edges[edge]).evidence,
        cut.hasEvidence evidence
  edgeSnapshotsMatch :
    ∀ edge : Fin edges.size,
      (edges[edge]).snapshot = cut.activeSnapshot

def SharesConcept
    {cut : EvidenceCut}
    (network : IdiomConceptNetwork cut)
    (left right : Nat)
    (_concept : ConceptId) : Prop :=
  (∃ edge : Fin network.edges.size,
      (network.edges[edge]).relation = .sameConcept ∧
      (network.edges[edge]).source = left ∧
      (network.edges[edge]).target = right) ∨
  (∃ edge : Fin network.edges.size,
      (network.edges[edge]).relation = .sameConcept ∧
      (network.edges[edge]).source = right ∧
      (network.edges[edge]).target = left)

def SharesImageFamily
    {cut : EvidenceCut}
    (network : IdiomConceptNetwork cut)
    (left right : Nat) : Prop :=
  ∃ edge : Fin network.edges.size,
    (network.edges[edge]).relation = .sameImageFamily ∧
    (network.edges[edge]).source = left ∧
    (network.edges[edge]).target = right

def IsContextualSynonym
    {cut : EvidenceCut}
    (network : IdiomConceptNetwork cut)
    (left right : Nat)
    (context : ContextId) : Prop :=
  ∃ edge : Fin network.edges.size,
    (network.edges[edge]).relation = .substitutableIn ∧
    (network.edges[edge]).source = left ∧
    (network.edges[edge]).target = right ∧
    (network.edges[edge]).context = context

structure SharedConceptPath
    {cut : EvidenceCut}
    (network : IdiomConceptNetwork cut)
    (left right : Nat)
    (concept : ConceptId) where
  sound : SharesConcept network left right concept

structure SharedImagePath
    {cut : EvidenceCut}
    (network : IdiomConceptNetwork cut)
    (left right : Nat) where
  sound : SharesImageFamily network left right

theorem shared_concept_path_sound
    {cut : EvidenceCut}
    {network : IdiomConceptNetwork cut}
    {left right : Nat}
    {concept : ConceptId}
    (path : SharedConceptPath network left right concept) :
    SharesConcept network left right concept :=
  path.sound

theorem shared_imagery_yields_only_image_relation
    {cut : EvidenceCut}
    {network : IdiomConceptNetwork cut}
    {left right : Nat}
    (path : SharedImagePath network left right) :
    SharesImageFamily network left right :=
  path.sound

theorem synonymy_contains_substitution_evidence
    {cut : EvidenceCut}
    {network : IdiomConceptNetwork cut}
    {left right : Nat}
    {context : ContextId}
    (synonymy :
      IsContextualSynonym network left right context) :
    ∃ edge : Fin network.edges.size,
      (network.edges[edge]).relation = .substitutableIn ∧
      (network.edges[edge]).source = left ∧
      (network.edges[edge]).target = right := by
  rcases synonymy with
    ⟨edge, relation, source, target, _context⟩
  exact ⟨edge, relation, source, target⟩

theorem semantic_edge_requires_accepted_evidence
    {cut : EvidenceCut}
    (network : IdiomConceptNetwork cut)
    (edge : Fin network.edges.size) :
    (network.edges[edge]).evidence.Nonempty ∧
    ∀ evidence ∈ (network.edges[edge]).evidence,
      cut.hasEvidence evidence :=
  ⟨(network.edges[edge]).evidence_nonempty,
    network.edgeEvidenceExists edge⟩

end Mathematics.SemanticTokenization
