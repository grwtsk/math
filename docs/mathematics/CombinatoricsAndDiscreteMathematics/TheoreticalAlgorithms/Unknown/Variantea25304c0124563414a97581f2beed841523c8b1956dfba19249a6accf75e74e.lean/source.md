# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Unknown.Variantea25304c0124563414a97581f2beed841523c8b1956dfba19249a6accf75e74e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d6415a5794a3b4a8b8d79a0885a5405762ec1a5` · SHA-256 `ea25304c0124563414a97581f2beed841523c8b1956dfba19249a6accf75e74e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
