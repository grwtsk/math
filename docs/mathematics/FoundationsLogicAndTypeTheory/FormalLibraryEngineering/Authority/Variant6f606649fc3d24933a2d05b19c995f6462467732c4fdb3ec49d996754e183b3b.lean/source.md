# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variant6f606649fc3d24933a2d05b19c995f6462467732c4fdb3ec49d996754e183b3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26e4239c053c15142a277cd27bf1c533575c7632` · SHA-256 `6f606649fc3d24933a2d05b19c995f6462467732c4fdb3ec49d996754e183b3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
