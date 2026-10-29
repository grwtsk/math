-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CutDigest.Variant72d0a50762ffeb21a837a8f715a780c9a98a837b566ca77612fe5f3a6c58eaec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72d0a50762ffeb21a837a8f715a780c9a98a837b566ca77612fe5f3a6c58eaec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CutDigest.Variant72d0a50762ffeb21a837a8f715a780c9a98a837b566ca77612fe5f3a6c58eaec","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"72d0a50762ffeb21a837a8f715a780c9a98a837b566ca77612fe5f3a6c58eaec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Sort

/-!
# Graph-access scalar identities

These wrappers are the serialization-independent identities used by the
finite graph-access core.  Display strings and ambient runtime hashes are not
part of mathematical identity.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CutDigest.Variant72d0a50762ffeb21a837a8f715a780c9a98a837b566ca77612fe5f3a6c58eaec

namespace Mathematics.GraphAccess

structure CutDigest where
  bytes : ByteArray
deriving DecidableEq

instance : Repr CutDigest where
  reprPrec digest precedence :=
    Repr.reprPrec digest.bytes.data precedence

structure RequestDigest where
  bytes : ByteArray
deriving DecidableEq

instance : Repr RequestDigest where
  reprPrec digest precedence :=
    Repr.reprPrec digest.bytes.data precedence

structure StateDigest where
  bytes : ByteArray
deriving DecidableEq

instance : Repr StateDigest where
  reprPrec digest precedence :=
    Repr.reprPrec digest.bytes.data precedence

structure ProfileDigest where
  bytes : ByteArray
deriving DecidableEq

instance : Repr ProfileDigest where
  reprPrec digest precedence :=
    Repr.reprPrec digest.bytes.data precedence

structure SourceEventId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure RequestId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PrincipalId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ContextCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ProfileId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ModeRevision where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PersistentId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CanonicalCode where
  value : Nat
deriving DecidableEq, Ord, Repr

instance : LinearOrder SourceEventId :=
  LinearOrder.lift' SourceEventId.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder RequestId :=
  LinearOrder.lift' RequestId.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder PrincipalId :=
  LinearOrder.lift' PrincipalId.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder ContextCutId :=
  LinearOrder.lift' ContextCutId.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder ProfileId :=
  LinearOrder.lift' ProfileId.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder ModeRevision :=
  LinearOrder.lift' ModeRevision.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder PersistentId :=
  LinearOrder.lift' PersistentId.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

instance : LinearOrder CanonicalCode :=
  LinearOrder.lift' CanonicalCode.value (by
    intro a b equality
    cases a
    cases b
    cases equality
    rfl)

end Mathematics.GraphAccess
