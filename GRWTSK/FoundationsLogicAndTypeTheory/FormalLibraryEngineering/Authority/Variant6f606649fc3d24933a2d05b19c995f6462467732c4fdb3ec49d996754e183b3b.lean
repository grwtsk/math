module

public import Surface.Refactor.Surgery.Verifier
public import Surface.Refactor.Authority

/-! # Structural-surgery authority firewall -/

public section

namespace Surface.Refactor.Surgery

open Surface.Core.Transport Surface.Refactor Surface.Refactor.Syntax

/-- Finite admission metadata with its explicit non-kernel authority label. -/
@[surface_novel]
structure FiniteSurgeryTransport where
  proposalHash : Hash256
  baseSourceSnapshotHash : Hash256
  expectedAfterSourceSnapshotHash : Hash256
  repositoryRevision : Nat
  authority : RefactorAuthority
deriving DecidableEq, Repr

@[expose] def FiniteSurgeryTransport.Valid
    (artifact : FiniteSurgeryTransport) : Prop :=
  artifact.proposalHash.Valid ∧
    artifact.baseSourceSnapshotHash.Valid ∧
    artifact.expectedAfterSourceSnapshotHash.Valid ∧
    FitsU32 artifact.repositoryRevision ∧
    artifact.authority ≠ .leanKernelChecked

/-- Finite transport data cannot expose an unrelated theorem proposition. -/
@[expose] def FiniteSurgeryTransportHasTheoremAuthority
    (_artifact : FiniteSurgeryTransport) : Prop :=
  False

@[surface_novel, surface_published]
theorem finiteSurgeryTransport_has_no_theorem_authority
    (artifact : FiniteSurgeryTransport) :
    ¬ FiniteSurgeryTransportHasTheoremAuthority artifact := by
  simp [FiniteSurgeryTransportHasTheoremAuthority]

end Surface.Refactor.Surgery
