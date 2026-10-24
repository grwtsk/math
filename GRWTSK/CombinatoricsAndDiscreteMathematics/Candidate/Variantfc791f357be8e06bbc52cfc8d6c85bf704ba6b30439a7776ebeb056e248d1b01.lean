-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ParentSelectionKey.Variant203e0083c2acb8b3f855f389aa5db113b501f7864ca594fc7bfaa42da76dd92a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"203e0083c2acb8b3f855f389aa5db113b501f7864ca594fc7bfaa42da76dd92a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ParentSelectionKey.Variant203e0083c2acb8b3f855f389aa5db113b501f7864ca594fc7bfaa42da76dd92a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"203e0083c2acb8b3f855f389aa5db113b501f7864ca594fc7bfaa42da76dd92a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Projection/Candidate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.Profile
import Mathematics.Taxonomy.Core

/-!
# Candidate parents and exact lexicographic selection data

All numeric ranks are integral. Learned coordinates and floating-point scores
are deliberately absent.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ParentSelectionKey.Variant203e0083c2acb8b3f855f389aa5db113b501f7864ca594fc7bfaa42da76dd92a

namespace Mathematics.Projection

open Mathematics

structure ParentSelectionKey where
  explicitParentRank : Int
  relationPriority : Int
  principalDomainAgreement : Int
  ontologicalCompatibility : Int
  authorityRank : Int
  specificityRank : Int
  provenanceRank : Int
  finalStableId : StableId
  deriving DecidableEq

inductive ParentKind
  | semantic
  | backbone
  | diagnostic
  deriving DecidableEq, Inhabited

structure ParentCandidate where
  childId : ConceptId
  parentId : StableId
  parentKind : ParentKind
  relationId : Option RelationId
  relationType : Option RelationKindId
  selectionKey : ParentSelectionKey
  authorityName : String
  provenance : Finset StableId
  deriving DecidableEq

structure ParentExplanation where
  conceptId : ConceptId
  chosen : ParentCandidate
  rejected : List ParentCandidate
  deriving DecidableEq

end Mathematics.Projection
