-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ParentSelectionKey.Variant8440d585d7261d2fbbb22ea686d882b7000402a1817ee0ffdf37f7e1e7997e17","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8440d585d7261d2fbbb22ea686d882b7000402a1817ee0ffdf37f7e1e7997e17","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ParentSelectionKey.Variant8440d585d7261d2fbbb22ea686d882b7000402a1817ee0ffdf37f7e1e7997e17","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8440d585d7261d2fbbb22ea686d882b7000402a1817ee0ffdf37f7e1e7997e17","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Projection/Candidate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Projection.Profile
import MathDiscovery.Taxonomy.Core

/-!
# Candidate parents and exact lexicographic selection data

All numeric ranks are integral. Learned coordinates and floating-point scores
are deliberately absent.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ParentSelectionKey.Variant8440d585d7261d2fbbb22ea686d882b7000402a1817ee0ffdf37f7e1e7997e17

namespace MathDiscovery.Projection

open MathDiscovery

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

end MathDiscovery.Projection
