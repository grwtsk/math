-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteSurgeryTransport.Variant6f606649fc3d24933a2d05b19c995f6462467732c4fdb3ec49d996754e183b3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f606649fc3d24933a2d05b19c995f6462467732c4fdb3ec49d996754e183b3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FiniteSurgeryTransport.Variant6f606649fc3d24933a2d05b19c995f6462467732c4fdb3ec49d996754e183b3b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6f606649fc3d24933a2d05b19c995f6462467732c4fdb3ec49d996754e183b3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:f516a7eb58dd37c442f43c9b/workspace/lib/Surface/Refactor/Surgery/Authority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Surgery.Verifier
public import Surface.Refactor.Authority

/-! # Structural-surgery authority firewall -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteSurgeryTransport.Variant6f606649fc3d24933a2d05b19c995f6462467732c4fdb3ec49d996754e183b3b

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
