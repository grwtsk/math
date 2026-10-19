import Mathematics.Mutation.Problem

/-! # Certificate-gated discharge -/

namespace Mathematics.Mutation

inductive DischargeKind
  | clarification
  | juris
  | containment
  | rollback
  | localRepair
  | formal
  | runtime
  | representation
  | branch
  | quarantine
  | snapshotSurgery
  deriving DecidableEq, Repr

structure DischargeCandidate (Certificate : Type) where
  candidateId : StableId
  kind : DischargeKind
  admission : HardAdmission
  accepts : Certificate → Prop

def acceptsDischarge
    (candidate : DischargeCandidate Certificate)
    (certificate : Certificate) : Prop :=
  candidate.accepts certificate

structure AcceptedDischarge
    (candidate : DischargeCandidate Certificate) where
  certificate : Certificate
  accepted :
    acceptsDischarge candidate certificate

theorem discharge_requires_exact_certificate
    (candidate : DischargeCandidate Certificate)
    (discharged : AcceptedDischarge candidate) :
    ∃ certificate,
      acceptsDischarge candidate certificate :=
  ⟨discharged.certificate, discharged.accepted⟩

end Mathematics.Mutation
