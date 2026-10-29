-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FanoutDisposition.Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FanoutDisposition.Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2","mathematical_subject":"Computation.DataStructures","original_sha256":"75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Oracle/Fanout.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Oracle.Agreement

/-!
# Bounded, lossless oracle fanout

Fanout is a finite predecessor-addressed branch tree.  Rejection and
incompletion remain retained terminal states.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FanoutDisposition.Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2

namespace Mathematics.Oracle

abbrev FanoutBranchId := StableId

inductive FanoutDisposition
  | pending
  | acceptedAsEvidence
  | challenged
  | rejected
  | failed
  deriving DecidableEq, Repr, Inhabited

inductive FanoutMergeStatus
  | unmerged
  | exactIdentity
  | certifiedEquivalence
  | compatibleComposition
  | explicitlySelected
  | preservedDisagreement
  deriving DecidableEq, Repr, Inhabited

structure FanoutBudget where
  maximumSteps : Nat
  maximumOutputBytes : Nat
  budgetDigest : Digest
  deriving DecidableEq, Repr

structure FanoutBranch where
  branchId : FanoutBranchId
  parentBranchId : Option FanoutBranchId
  purposeId : StableId
  oracleId : OracleId
  pointUniverseId : StableId
  snapshotId : StableId
  budget : FanoutBudget
  authorityCeiling : OracleAuthorityCeiling
  depth : Nat
  responseDigest : Digest
  producedPointIds : List ElementId
  producedRelationIds : List RelationId
  closedObligationIds : List StableId
  newObligationIds : List StableId
  disposition : FanoutDisposition
  mergeStatus : FanoutMergeStatus
  diagnosticIds : List StableId
  deriving DecidableEq, Repr

structure FanoutTree where
  fanoutId : StableId
  rootTaskDigest : Digest
  pointUniverseId : StableId
  snapshotId : StableId
  maximumDepth : Nat
  maximumBranches : Nat
  branches : List FanoutBranch
  branch_ids_unique :
    (branches.map FanoutBranch.branchId).Nodup
  branch_bound : branches.length ≤ maximumBranches
  depth_bound :
    ∀ branch ∈ branches,
      branch.depth ≤ maximumDepth
  parents_resolve :
    ∀ branch ∈ branches,
      ∀ parentId,
        branch.parentBranchId = some parentId →
          ∃ parent ∈ branches,
            parent.branchId = parentId ∧
            parent.depth < branch.depth
  branches_bound :
    ∀ branch ∈ branches,
      branch.pointUniverseId = pointUniverseId ∧
      branch.snapshotId = snapshotId
  fanoutDigest : Digest

/-- Rejected branches remain members of the retained fanout. -/
theorem FanoutTree.rejected_retained
    (tree : FanoutTree)
    {branch : FanoutBranch}
    (member : branch ∈ tree.branches)
    (_rejected : branch.disposition = .rejected) :
    branch ∈ tree.branches :=
  member

end Mathematics.Oracle
