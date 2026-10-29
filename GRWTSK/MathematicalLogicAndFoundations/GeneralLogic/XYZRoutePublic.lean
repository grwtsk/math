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
