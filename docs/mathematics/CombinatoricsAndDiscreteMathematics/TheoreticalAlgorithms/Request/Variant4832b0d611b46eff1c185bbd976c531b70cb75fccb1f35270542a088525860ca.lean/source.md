# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Request.Variant4832b0d611b46eff1c185bbd976c531b70cb75fccb1f35270542a088525860ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8e6766cab6871efa3f23a994fa14089d865bca2` · SHA-256 `239175e748ade14d89c0f2152273782307be3926559db5c7c32cf536ea0b247a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RequestAuthority.Variant1a38bc3d06cfe8166eebdf29408e552ed7141ed6b80d60124af815512be8191a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a38bc3d06cfe8166eebdf29408e552ed7141ed6b80d60124af815512be8191a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RequestAuthority.Variant1a38bc3d06cfe8166eebdf29408e552ed7141ed6b80d60124af815512be8191a","mathematical_subject":"Computation.DataStructures","original_sha256":"1a38bc3d06cfe8166eebdf29408e552ed7141ed6b80d60124af815512be8191a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Surgery/Request.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Surgery.Boundary

/-! # Explicit surgery requests -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RequestAuthority.Variant1a38bc3d06cfe8166eebdf29408e552ed7141ed6b80d60124af815512be8191a

namespace Mathematics.Surgery

/-- A surgery request is always a candidate; acceptance is a different sealed type. -/
inductive RequestAuthority
  | candidateOnly
  deriving DecidableEq, Repr

structure Request where
  id : SurgeryRequestId
  boundary : BoundaryObservation
  preservedInvariants : List StableId
  changedInvariants : List StableId
  lostInvariants : List StableId
  authority : RequestAuthority := .candidateOnly
  deriving DecidableEq, Repr

@[simp]
theorem request_authority_is_candidate
    (request : Request) :
    request.authority = .candidateOnly := by
  cases request
  rfl

end Mathematics.Surgery
```
