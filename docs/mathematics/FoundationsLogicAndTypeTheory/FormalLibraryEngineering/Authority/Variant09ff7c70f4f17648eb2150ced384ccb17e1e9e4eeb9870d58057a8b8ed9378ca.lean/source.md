# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variant09ff7c70f4f17648eb2150ced384ccb17e1e9e4eeb9870d58057a8b8ed9378ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6afc1aeb8961b306b31f6429ddfc3323df761a0` · SHA-256 `09ff7c70f4f17648eb2150ced384ccb17e1e9e4eeb9870d58057a8b8ed9378ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Verification
public import Surface.Core.Transport.Hash

/-!
# Refactor authority

Authority is nominal protocol data.  In particular, observations, deterministic
checks, finite experiments, numerical transforms, and model output do not
manufacture a proof of a task proposition.
-/

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
