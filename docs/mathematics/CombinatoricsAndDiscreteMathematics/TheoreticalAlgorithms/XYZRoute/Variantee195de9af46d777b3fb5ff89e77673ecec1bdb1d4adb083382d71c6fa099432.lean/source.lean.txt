-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash256ToContentHash256Fields.Variantb5045715e3782e72e0e9de18c7f77ac41e0203978f68c305194240e3e10bd8bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5045715e3782e72e0e9de18c7f77ac41e0203978f68c305194240e3e10bd8bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.Hash256ToContentHash256Fields.Variantb5045715e3782e72e0e9de18c7f77ac41e0203978f68c305194240e3e10bd8bf","mathematical_subject":"Computation.Algorithms","original_sha256":"b5045715e3782e72e0e9de18c7f77ac41e0203978f68c305194240e3e10bd8bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/XYZRoute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.XYZ.Hash
public import Surface.Refactor.Authority

/-!
# XYZ hash presentation adapter

The XYZ transport core deliberately owns an opaque `Hash256` type instead of
depending on the refactor subsystem.  This presentation-only module provides
the mechanical adapter between that wire type and
`Surface.Refactor.ContentHash256`.

The adapter copies the `algorithm` and `hex` fields exactly.  It does not
compute SHA-256, certify that bytes were hashed, validate a source snapshot,
or promote a hash equality to Lean theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash256ToContentHash256Fields.Variantb5045715e3782e72e0e9de18c7f77ac41e0203978f68c305194240e3e10bd8bf

public section

namespace Presentation.XYZRoute

open Surface.Core.XYZ
open Surface.Refactor

/-- Copy XYZ-local hash framing into the refactor wire record. -/
@[expose] def hash256ToContentHash256 (hash : Hash256) : ContentHash256 where
  algorithm := hash.algorithm
  hex := hash.hex

/-- Copy refactor hash framing into the XYZ-local wire record. -/
@[expose] def contentHash256ToHash256 (hash : ContentHash256) : Hash256 where
  algorithm := hash.algorithm
  hex := hash.hex

@[surface_novel, surface_published]
theorem hash256ToContentHash256_fields (hash : Hash256) :
    (hash256ToContentHash256 hash).algorithm = hash.algorithm ∧
      (hash256ToContentHash256 hash).hex = hash.hex := by
  exact ⟨rfl, rfl⟩

@[surface_novel, surface_published]
theorem contentHash256ToHash256_fields (hash : ContentHash256) :
    (contentHash256ToHash256 hash).algorithm = hash.algorithm ∧
      (contentHash256ToHash256 hash).hex = hash.hex := by
  exact ⟨rfl, rfl⟩

@[surface_novel, surface_published]
theorem hash256_contentHash256_roundTrip (hash : Hash256) :
    contentHash256ToHash256 (hash256ToContentHash256 hash) = hash := by
  cases hash
  rfl

@[surface_novel, surface_published]
theorem contentHash256_hash256_roundTrip (hash : ContentHash256) :
    hash256ToContentHash256 (contentHash256ToHash256 hash) = hash := by
  cases hash
  rfl

/-- Field copying is not evidence that either record denotes a computed
digest, much less evidence for an unrelated theorem. -/
@[expose] def ProvesHashAuthority
    (_xyz : Hash256) (_refactor : ContentHash256) : Prop :=
  False

@[surface_novel, surface_published]
theorem xyzHashAdapter_has_no_authority
    (xyz : Hash256) (refactor : ContentHash256) :
    ¬ ProvesHashAuthority xyz refactor := by
  simp [ProvesHashAuthority]

/-- The nominal authority attached to this adapter is presentation-only. -/
@[expose] def xyzHashAdapterAuthority : RefactorAuthority :=
  .presentationOnly

@[surface_novel, surface_published]
theorem xyzHashAdapter_not_kernel_authority :
    xyzHashAdapterAuthority ≠ .leanKernelChecked := by
  decide

end Presentation.XYZRoute
