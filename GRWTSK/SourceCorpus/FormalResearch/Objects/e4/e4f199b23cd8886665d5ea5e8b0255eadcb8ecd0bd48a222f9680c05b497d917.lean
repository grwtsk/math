import Mathematics.Capability.Scope

/-!
# Scope-confined respect evidence

Respect records exact post-authorization performance counts.  It is evidence,
not a grant constructor.
-/

namespace Mathematics.Juris

open Mathematics.Capability

structure RespectEvidence where
  participant : PrincipalId
  scope : OperationalCapability
  eligible : Nat
  scopeConformant : Nat
  replayStable : Nat
  boundaryFaithful : Nat
  challengeSurvived : Nat
  correctionsCompleted : Nat
  violations : Nat
  evidenceDigest : Digest

def RespectEvidence.AppliesTo
    (evidence : RespectEvidence)
    (scope : OperationalCapability) : Prop :=
  evidence.scope = scope

def RespectEvidence.impliesTrust
    (_ : RespectEvidence) : Bool :=
  false

@[simp] theorem trust_not_implied_by_respect
    (evidence : RespectEvidence) :
    evidence.impliesTrust = false :=
  rfl

theorem respect_is_scope_bound
    (evidence : RespectEvidence)
    (otherScope : OperationalCapability)
    (different : evidence.scope ≠ otherScope) :
    ¬ evidence.AppliesTo otherScope := by
  exact different

end Mathematics.Juris
