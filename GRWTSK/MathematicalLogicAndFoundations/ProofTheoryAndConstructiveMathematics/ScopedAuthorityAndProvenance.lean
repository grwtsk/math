/- Copyright (c) 2026 grwtsk contributors. MIT.

# Scoped authority, foundation provenance, and source-bound verification

A foundation contribution, a user-specific authorization, a proposed implementation,
a publication event, and a proof check are distinct mathematical objects. The
principal granting authority is an authorized user, not automatically a source
provider, repository owner, implementer, tool, or a string appearing in metadata.

Reuse GRWTSK.Evidence.Supported for retained, individually valid consent evidence
and TheoreticalQualification.ExactRepresentation for faithful representation.
No external actor is authenticated by this module: eligibility, evidence validity,
and verification predicates are explicit inputs from their own trusted sources.

SOURCE_PROOF_CANDIDATE: Lean elaboration, fresh kernel replay, transitive axiom
audit, independent mathematical review: NOT_RUN. No service effect, source
publication permission, authorization issuer, or actual verification is created.
-/
import GRWTSK.ComputerScience.TheoryOfData.DataStructures.EvidencePolicyChange
import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TheoreticalQualification

set_option autoImplicit false

namespace GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.ScopedAuthorityAndProvenance

open GRWTSK.Evidence
open GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TheoreticalQualification

universe u v w x y z

/-- The recorded provider of foundations is distinct from anyone's authority
to carry out a subsequent action. A record is not identity authentication. -/
structure FoundationContribution (User : Type u) (Foundation : Type v) where
  provider : User
  material : Foundation

/-- Abstract, externally supplied authorization context. A retained receipt
counts only if its validity relation covers the exact user/action pair. -/
structure AuthorityPolicy (User : Type u) (Action : Type w) (Receipt : Type x) where
  eligible : User → Prop
  observed : Collection Receipt
  valid : Receipt → (User × Action) → Prop

/-- Both recognized user status and a live, scoped consent witness are required.
Neither predicate is inferred from attribution or repository ownership. -/
def ScopedPermission {User : Type u} {Action : Type w} {Receipt : Type x}
    (policy : AuthorityPolicy User Action Receipt) (user : User)
    (action : Action) : Prop :=
  policy.eligible user ∧ Supported policy.valid policy.observed (user, action)

/-- A static proof-bearing authorization, not an executable capability. -/
structure AuthorizationWitness {User : Type u} {Action : Type w}
    {Receipt : Type x} (policy : AuthorityPolicy User Action Receipt)
    (action : Action) where
  principal : User
  eligible : policy.eligible principal
  receipt : Supported policy.valid policy.observed (principal, action)

/-- Every accepted witness exposes an actual retained receipt valid for exactly
the principal and action named in the witness. -/
theorem AuthorizationWitness.has_scoped_receipt
    {User : Type u} {Action : Type w} {Receipt : Type x}
    {policy : AuthorityPolicy User Action Receipt} {action : Action}
    (witness : AuthorizationWitness policy action) :
    ∃ r, policy.observed r ∧
      policy.valid r (witness.principal, action) :=
  witness.receipt

/-- Proposed implementation keeps source-provider attribution and the
implementer separately. The operator need not even have the user's type. -/
structure WorkProposal (User : Type u) (Foundation : Type v)
    (Action : Type w) (Implementer : Type y) where
  source : FoundationContribution User Foundation
  action : Action
  implementer : Implementer

/-- Only a separately supplied scoped authorization turns a proposal into
an *admissible proposal*. No effect is performed by this constructor. -/
structure AdmissibleProposal {User : Type u} {Action : Type w}
    {Receipt : Type x} (policy : AuthorityPolicy User Action Receipt)
    (Foundation : Type v) (Implementer : Type y) where
  proposal : WorkProposal User Foundation Action Implementer
  consent : AuthorizationWitness policy proposal.action

theorem AdmissibleProposal.has_authorized_principal
    {User : Type u} {Action : Type w} {Receipt : Type x}
    {Foundation : Type v} {Implementer : Type y}
    {policy : AuthorityPolicy User Action Receipt}
    (work : AdmissibleProposal policy Foundation Implementer) :
    ScopedPermission policy work.consent.principal work.proposal.action :=
  ⟨work.consent.eligible, work.consent.receipt⟩

/-- Narrowing retained evidence cannot create a new permission. This is a
direct consumer of the existing evidence-pruning theorem. -/
theorem permission_after_pruning_implies_before
    {User : Type u} {Action : Type w} {Receipt : Type x}
    (policy : AuthorityPolicy User Action Receipt) (keep : Receipt → Prop)
    (user : User) (action : Action)
    (permitted : policy.eligible user ∧
      Supported policy.valid
        (fun r => policy.observed r ∧ keep r) (user, action)) :
    ScopedPermission policy user action := by
  refine ⟨permitted.1, ?_⟩
  exact (GRWTSK.Evidence.PolicyChange.pruning_support
    (valid := policy.valid) (observed := policy.observed) keep)
      (user, action) permitted.2

/-- Even an attributed, retained foundation does not automatically supply
authorization. The countermodel has an eligible user but no valid consent. -/
theorem foundation_exists_without_action_consent :
    ∃ (policy : AuthorityPolicy Unit Unit Unit)
      (_foundation : FoundationContribution Unit Unit),
      ¬ Nonempty (AuthorizationWitness policy ()) := by
  refine ⟨{
    eligible := fun _ => True
    observed := fun _ => True
    valid := fun _ _ => False
  }, ⟨(), ()⟩, ?_⟩
  rintro ⟨witness⟩
  obtain ⟨_, _, invalid⟩ := witness.receipt
  exact invalid

/-- A foundation provider and the consenting user may differ. In this finite
model the provider is false and the uniquely eligible principal is true.
Thus identifying authority with attribution is not a valid general rule. -/
theorem provider_need_not_be_authorized_principal :
    ∃ (policy : AuthorityPolicy Bool Unit Unit)
      (work : AdmissibleProposal policy Unit Unit),
      work.proposal.source.provider ≠ work.consent.principal := by
  let policy : AuthorityPolicy Bool Unit Unit := {
    eligible := fun user => user = true
    observed := fun _ => True
    valid := fun _ pair => pair.1 = true
  }
  have consent : AuthorizationWitness policy () := {
    principal := true
    eligible := rfl
    receipt := ⟨(), trivial, rfl⟩
  }
  refine ⟨policy, {
    proposal := {
      source := ⟨false, ()⟩
      action := ()
      implementer := ()
    }
    consent := consent
  }, ?_⟩
  decide

/-- A retained historical receipt can lose validity while the underlying
record stays present. This is a logical countermodel, not a revocation action. -/
theorem stale_receipt_does_not_grant_current_permission :
    ∃ (before after : AuthorityPolicy Unit Unit Unit),
      ScopedPermission before () () ∧
      ¬ ScopedPermission after () () ∧
      before.observed = after.observed := by
  let before : AuthorityPolicy Unit Unit Unit := {
    eligible := fun _ => True
    observed := fun _ => True
    valid := fun _ _ => True
  }
  let after : AuthorityPolicy Unit Unit Unit := {
    eligible := fun _ => True
    observed := fun _ => True
    valid := fun _ _ => False
  }
  refine ⟨before, after, ?_, ?_, rfl⟩
  · exact ⟨trivial, ⟨(), trivial, trivial⟩⟩
  · intro permitted
    obtain ⟨_, _, invalid⟩ := permitted.2
    exact invalid

/-- Exact encoding of actions transports the policy only WITH an explicit
source/model permission bridge. The earlier representation theorem is reused;
a codec round trip alone cannot manufacture this bridge. -/
theorem scoped_permission_under_exact_representation
    {User : Type u} {Action : Type w} {Receipt : Type x}
    {EncodedAction : Type y}
    (encoding : ExactRepresentation Action EncodedAction)
    (policy : AuthorityPolicy User Action Receipt) (user : User)
    (encodedPermission : EncodedAction → Prop)
    (bridge : ∀ a, ScopedPermission policy user a ↔
      encodedPermission (encoding.encode a)) :
    (∀ a, ScopedPermission policy user a) ↔
      (∀ b, encodedPermission b) :=
  source_forall_iff_model_forall encoding
    (ScopedPermission policy user) encodedPermission bridge

/-- Publication and verification are independently supplied facts, indexed
by an exact source revision. Neither is proof of mathematical soundness by itself. -/
structure SourceEvidence (Revision : Type z) (Claim : Type y) where
  published : Revision → Prop
  checked : Revision → Claim → Prop

/-- Publication can hold with no verification at the identical revision. -/
theorem published_does_not_imply_checked :
    ∃ (evidence : SourceEvidence Unit Unit),
      evidence.published () ∧ ¬ evidence.checked () () := by
  refine ⟨{
    published := fun _ => True
    checked := fun _ _ => False
  }, trivial, ?_⟩
  intro checked
  exact checked

/-- A check reported for one revision cannot be inherited by a different
revision without a comparison of their exact source and dependent claims. -/
theorem checked_revision_need_not_cover_another :
    ∃ (evidence : SourceEvidence Bool Unit),
      evidence.checked false () ∧ ¬ evidence.checked true () := by
  refine ⟨{
    published := fun _ => True
    checked := fun revision _ => revision = false
  }, rfl, ?_⟩
  intro h
  cases h

/-- Equality of the relevant revision is one sufficient source return.
An arbitrary new revision lacks this equality unless separately proved. -/
theorem checked_at_equal_revision
    {Revision : Type z} {Claim : Type y}
    (evidence : SourceEvidence Revision Claim) (old new : Revision)
    (claim : Claim) (same : old = new)
    (checked : evidence.checked old claim) :
    evidence.checked new claim := by
  cases same
  exact checked

end GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.ScopedAuthorityAndProvenance
