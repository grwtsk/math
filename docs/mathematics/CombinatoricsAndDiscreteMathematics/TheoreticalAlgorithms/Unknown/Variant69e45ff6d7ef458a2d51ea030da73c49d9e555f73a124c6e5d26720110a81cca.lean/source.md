# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Unknown.Variant69e45ff6d7ef458a2d51ea030da73c49d9e555f73a124c6e5d26720110a81cca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4c5ec43e3150b1750fbbff015020326625a4f82` · SHA-256 `02181e456fb9bcf82b49c65980767f160d5e9ad6e5004b2adf5ee4e05bf8109a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnknownKind.Variantea25304c0124563414a97581f2beed841523c8b1956dfba19249a6accf75e74e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea25304c0124563414a97581f2beed841523c8b1956dfba19249a6accf75e74e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.UnknownKind.Variantea25304c0124563414a97581f2beed841523c8b1956dfba19249a6accf75e74e","mathematical_subject":"Computation.DataStructures","original_sha256":"ea25304c0124563414a97581f2beed841523c8b1956dfba19249a6accf75e74e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Concept/Unknown.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.Negative

/-!
# Explicit unresolved branches

An unknown branch records what is missing and what may resolve it.  Resolution
creates a distinct record linked to the branch; it never edits history into a
claim that the branch was already known.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnknownKind.Variantea25304c0124563414a97581f2beed841523c8b1956dfba19249a6accf75e74e

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
