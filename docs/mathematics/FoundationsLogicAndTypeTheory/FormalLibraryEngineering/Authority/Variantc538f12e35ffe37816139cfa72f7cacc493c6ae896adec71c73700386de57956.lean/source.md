# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7aae1d9e9939755aeb7a5e85c25cf2136c7a6ac6` · SHA-256 `d5669f764ae467509f930bd99df3240b695b6087733e3bc961930229b3d091ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RefactorAuthority.Variant09ff7c70f4f17648eb2150ced384ccb17e1e9e4eeb9870d58057a8b8ed9378ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09ff7c70f4f17648eb2150ced384ccb17e1e9e4eeb9870d58057a8b8ed9378ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RefactorAuthority.Variant09ff7c70f4f17648eb2150ced384ccb17e1e9e4eeb9870d58057a8b8ed9378ca","mathematical_subject":"Foundations.Unclassified","original_sha256":"09ff7c70f4f17648eb2150ced384ccb17e1e9e4eeb9870d58057a8b8ed9378ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Refactor/Authority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Verification
public import Surface.Core.Transport.Hash

/-!
# Refactor authority

Authority is nominal protocol data.  In particular, observations, deterministic
checks, finite experiments, numerical transforms, and model output do not
manufacture a proof of a task proposition.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RefactorAuthority.Variant09ff7c70f4f17648eb2150ced384ccb17e1e9e4eeb9870d58057a8b8ed9378ca

public section

namespace Surface.Refactor

open Surface.Core

@[surface_novel]
inductive RefactorAuthority where
  | leanKernelChecked
  | environmentObserved
  | deterministic
  | finiteEvidence
  | numericalWitness
  | modelProposed
  | presentationOnly
  | unavailable
deriving DecidableEq, Repr, BEq

/-- Cryptographic content hashes share the payload-neutral transport framing.
This remains deliberately distinct from the core `Digest := UInt64`. -/
abbrev ContentHash256 := Surface.Core.Transport.Hash256

abbrev ContentHash256.Valid (hash : ContentHash256) :=
  Surface.Core.Transport.Hash256.Valid hash

abbrev verifyContentHash256 := Surface.Core.Transport.verifyHash256

@[surface_novel, surface_published]
theorem verifyContentHash256_sound (hash : ContentHash256)
    (h : verifyContentHash256 hash = true) : hash.Valid :=
  Surface.Core.Transport.verifyHash256_sound hash h

/-- The closed promotion relation.  Formal authority can only be retained;
there is no constructor promoting operational evidence to kernel authority. -/
@[surface_novel]
inductive AuthorityPromotion : RefactorAuthority → RefactorAuthority → Prop where
  | retain (authority : RefactorAuthority) : AuthorityPromotion authority authority

@[surface_novel, surface_published]
theorem authority_promotion_is_explicit {source target : RefactorAuthority}
    (promotion : AuthorityPromotion source target) : source = target := by
  cases promotion
  rfl

@[surface_novel, surface_published]
theorem model_proposal_not_kernel_authority :
    RefactorAuthority.modelProposed ≠ .leanKernelChecked := by
  decide

@[surface_novel, surface_published]
theorem finite_evidence_not_kernel_authority :
    RefactorAuthority.finiteEvidence ≠ .leanKernelChecked := by
  decide

@[surface_novel, surface_published]
theorem spectral_witness_not_kernel_authority :
    RefactorAuthority.numericalWitness ≠ .leanKernelChecked := by
  decide

/-- An authority-indexed refactor artifact. -/
@[surface_novel]
structure Authorized (authority : RefactorAuthority) (Payload : Type) where
  payload : Payload

/-- Classification may change a proposal payload but keeps proposal authority. -/
@[expose, surface_interface]
def classifyModelProposal {Input Output : Type} (classifier : Input → Output)
    (proposal : Authorized .modelProposed Input) :
    Authorized .modelProposed Output :=
  ⟨classifier proposal.payload⟩

@[expose] def Authorized.authority
    {authority : RefactorAuthority} {Payload : Type}
    (_artifact : Authorized authority Payload) : RefactorAuthority :=
  authority

@[surface_novel, surface_published]
theorem classifier_does_not_promote_model_authority
    {Input Output : Type} (classifier : Input → Output)
    (proposal : Authorized .modelProposed Input) :
    (classifyModelProposal classifier proposal).authority = .modelProposed :=
  rfl

/-- A receipt observation exposes metadata only. -/
@[expose] def receiptAuthority (_receipt : KernelReceipt) : RefactorAuthority :=
  .environmentObserved

@[surface_novel, surface_published]
theorem receipt_alone_does_not_expose_task_proposition (receipt : KernelReceipt) :
    receiptAuthority receipt ≠ .leanKernelChecked := by
  intro h
  cases h

/-- A checked trial exposes its proposition through its stored proof term. -/
@[surface_novel, surface_published]
theorem checked_trial_exposes_task_proposition (trial : CheckedTrial) :
    trial.task.proposition :=
  trial.checkedProof

end Surface.Refactor
```
