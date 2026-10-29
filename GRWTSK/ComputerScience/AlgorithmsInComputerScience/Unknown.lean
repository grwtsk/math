import Mathematics.Concept.Negative

/-!
# Explicit unresolved branches

An unknown branch records what is missing and what may resolve it.  Resolution
creates a distinct record linked to the branch; it never edits history into a
claim that the branch was already known.
-/

namespace Mathematics.Concept

inductive UnknownKind
  | missingType
  | missingDenotation
  | missingRelation
  | ambiguousReference
  | conflictingEvidence
  | unsupportedRepresentation
  | openProof
  | parserFailure
  deriving DecidableEq, Repr, Inhabited

structure UnknownBranch where
  branchId : StableId
  subjectId : ElementId
  kind : UnknownKind
  sourceIds : List StableId
  candidatePointIds : List ElementId
  requiredEvidenceIds : List StableId
  obstructionDigest : Digest
  deriving DecidableEq, Repr

structure BranchResolution (branch : UnknownBranch) where
  resolutionId : StableId
  resolvedPointId : ElementId
  certificateId : CertificateId
  sourceBranchId : StableId
  source_branch_exact : sourceBranchId = branch.branchId

/-- Resolution preserves a direct, immutable link to the unresolved branch. -/
theorem BranchResolution.preserves_branch
    {branch : UnknownBranch}
    (resolution : BranchResolution branch) :
    resolution.sourceBranchId = branch.branchId :=
  resolution.source_branch_exact

end Mathematics.Concept
