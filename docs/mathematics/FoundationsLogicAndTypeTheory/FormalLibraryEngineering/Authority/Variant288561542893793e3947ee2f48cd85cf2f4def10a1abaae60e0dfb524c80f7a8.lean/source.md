# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variant288561542893793e3947ee2f48cd85cf2f4def10a1abaae60e0dfb524c80f7a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `981e57978bfea3c4425944fdc5836a94aa232c45` · SHA-256 `288561542893793e3947ee2f48cd85cf2f4def10a1abaae60e0dfb524c80f7a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.Surgery.Verifier
public import Surface.Refactor.Surgery.Patch
public import Surface.Core.Transport.Certificate
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

@[surface_novel, surface_certificate]
structure RustSurgeryVerifierCertificate
    (context : SurgeryAdmissionContextV1) (proposal : SurgeryProposalV1) where
  record : FiniteConformanceRecord
  recordValid : record.Valid
  rustResult : SurgeryVerificationResult
  conforms : rustResult = verifySurgeryProposal context proposal

@[expose] def RustSurgeryVerifierConforms
    {context : SurgeryAdmissionContextV1} {proposal : SurgeryProposalV1}
    (certificate : RustSurgeryVerifierCertificate context proposal) : Prop :=
  certificate.record.Valid ∧
    certificate.rustResult = verifySurgeryProposal context proposal

@[surface_novel, surface_published, surface_certificate]
theorem rustSurgeryVerifier_eq_leanSurgeryVerifier
    {context : SurgeryAdmissionContextV1} {proposal : SurgeryProposalV1}
    (certificate : RustSurgeryVerifierCertificate context proposal)
    (conforms : RustSurgeryVerifierConforms certificate) :
    certificate.rustResult = verifySurgeryProposal context proposal :=
  conforms.2

@[surface_novel, surface_certificate]
structure RustPatchCompilerCertificate
    (input : PatchCompilationRecordV1)
    (rustPatch : CanonicalSourcePatchV1) where
  record : FiniteConformanceRecord
  recordValid : record.Valid
  conforms : rustPatch = input.patch

@[expose] def RustPatchCompilerConforms
    {input : PatchCompilationRecordV1} {rustPatch : CanonicalSourcePatchV1}
    (certificate : RustPatchCompilerCertificate input rustPatch) : Prop :=
  certificate.record.Valid ∧ rustPatch = input.patch

@[surface_novel, surface_published, surface_certificate]
theorem rustPatchCompiler_eq_leanPatchArtifact
    {input : PatchCompilationRecordV1} {rustPatch : CanonicalSourcePatchV1}
    (certificate : RustPatchCompilerCertificate input rustPatch)
    (conforms : RustPatchCompilerConforms certificate) :
    rustPatch = input.patch :=
  conforms.2

end Surface.Refactor.Surgery
```
