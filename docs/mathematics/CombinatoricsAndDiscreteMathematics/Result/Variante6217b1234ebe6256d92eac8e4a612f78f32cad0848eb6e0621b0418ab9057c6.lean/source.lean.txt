import Mathematics.Resolution.Frontier

/-!
# Conservative resolver result boundary
-/

namespace Mathematics.Resolution

universe u v

structure FixedCertificate
    [DecidableEq Obligation]
    [DecidableEq Proof]
    (obligations : Finset Obligation)
    (checker : TrustedChecker Obligation Proof)
    (registry : Obligation → Finset Proof) where
  chosen :
    ∀ obligation, obligation ∈ obligations → Proof
  accepted :
    ∀ (obligation) (required : obligation ∈ obligations),
      chosen obligation required ∈
        accepted checker registry obligation

def fixedCertificateOfUnresolvedEmpty
    [DecidableEq Obligation]
    [LinearOrder Proof]
    (obligations : Finset Obligation)
    (checker : TrustedChecker Obligation Proof)
    (registry : Obligation → Finset Proof)
    (closed :
      unresolved obligations checker registry = ∅) :
    FixedCertificate obligations checker registry := by
  have available :
      ∀ obligation ∈ obligations,
        (accepted checker registry obligation).Nonempty := by
    intro obligation required
    apply Finset.nonempty_iff_ne_empty.mpr
    intro missing
    have member :
        obligation ∈
          unresolved obligations checker registry :=
      mem_unresolved.mpr ⟨required, missing⟩
    rw [closed] at member
    simp at member
  exact {
    chosen := fun obligation required ↦
      (accepted checker registry obligation).min'
        (available obligation required)
    accepted := by
      intro obligation required
      exact Finset.min'_mem _
        (available obligation required)
  }

structure FrontierCertificate
    [DecidableEq Obligation]
    (unresolvedSet : Finset Obligation) where
  nonempty : unresolvedSet.Nonempty
  schedulingOnly : Prop
  schedulingOnly_proved : schedulingOnly

structure RejectionCertificate where
  failure : CutFailure
  cutDigest : String
  deriving Repr

inductive Continuation (Token : Type u)
  | token (value : Token)
  | frontierExhausted
  deriving DecidableEq, Repr

inductive ResolutionResult
    (Solution : Type u)
    (Packet : Type v)
    (Token : Type u)
  | solved (solution : Solution)
  | unknown (packet : Packet) (next : Continuation Token)
  | rejected (certificate : RejectionCertificate)

inductive AuthorityDecision
    (Solution : Type u)
    (Obligation : Type v)
  | solved (solution : Solution)
  | unresolved (obligations : Finset Obligation)
  | rejected (failure : CutFailure)

structure ScheduleView (Packet : Type u) where
  packets : List Packet

def present
    (authority : AuthorityDecision Solution Obligation)
    (schedule : ScheduleView Packet) :
    AuthorityDecision Solution Obligation × ScheduleView Packet :=
  (authority, schedule)

end Mathematics.Resolution
