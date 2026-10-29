-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RefactorAuthority.Variante7a1743a74432dc5e56a9fc7cbfe7c2d3e7e3b19b15ca8d70ef0341cfad4415a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7a1743a74432dc5e56a9fc7cbfe7c2d3e7e3b19b15ca8d70ef0341cfad4415a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.RefactorAuthority.Variante7a1743a74432dc5e56a9fc7cbfe7c2d3e7e3b19b15ca8d70ef0341cfad4415a","mathematical_subject":"Computation.Algorithms","original_sha256":"e7a1743a74432dc5e56a9fc7cbfe7c2d3e7e3b19b15ca8d70ef0341cfad4415a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/Authority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Verification

/-!
# Refactor authority

Authority is nominal protocol data.  In particular, observations, deterministic
checks, finite experiments, numerical transforms, and model output do not
manufacture a proof of a task proposition.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RefactorAuthority.Variante7a1743a74432dc5e56a9fc7cbfe7c2d3e7e3b19b15ca8d70ef0341cfad4415a

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

/-- Cryptographic content hashes are wire data computed by the Rust runtime.
This is deliberately distinct from the core `Digest := UInt64`. -/
@[surface_novel]
structure ContentHash256 where
  algorithm : String
  hex : String
deriving DecidableEq, Repr

@[expose] def ContentHash256.Valid (hash : ContentHash256) : Prop :=
  hash.algorithm = "sha256" ∧ hash.hex.length = 64

instance (hash : ContentHash256) : Decidable hash.Valid := by
  unfold ContentHash256.Valid
  infer_instance

@[expose] def verifyContentHash256 (hash : ContentHash256) : Bool :=
  hash.algorithm == "sha256" && hash.hex.length == 64

@[surface_novel, surface_published]
theorem verifyContentHash256_sound (hash : ContentHash256)
    (h : verifyContentHash256 hash = true) : hash.Valid := by
  simpa [verifyContentHash256, ContentHash256.Valid, Bool.and_eq_true,
    beq_iff_eq] using h

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
