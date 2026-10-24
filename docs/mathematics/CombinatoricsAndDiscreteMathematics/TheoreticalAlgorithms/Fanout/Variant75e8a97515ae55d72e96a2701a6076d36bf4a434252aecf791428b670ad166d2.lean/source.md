# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Fanout.Variant75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28661bb82e60a8ead8ab6ccf4618412a3d611121` · SHA-256 `75e8a97515ae55d72e96a2701a6076d36bf4a434252aecf791428b670ad166d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Oracle.Agreement

/-!
# Bounded, lossless oracle fanout

Fanout is a finite predecessor-addressed branch tree.  Rejection and
incompletion remain retained terminal states.
-/

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
```
