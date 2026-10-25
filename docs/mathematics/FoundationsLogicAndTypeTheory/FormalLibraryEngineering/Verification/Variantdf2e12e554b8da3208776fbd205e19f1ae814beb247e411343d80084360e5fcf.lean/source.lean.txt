-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StatementPreservationEvidence.Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.StatementPreservationEvidence.Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664","mathematical_subject":"Foundations.Unclassified","original_sha256":"16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:96365d75bd4112d21f9208d3/workspace/lib/Surface/Core/Verification.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Receipt

/-!
# Executable evidence verification

Evidence is finite data, verification is executable, and soundness is a Lean
theorem.  No structure carries a proposition together with an assumptive proof
field supplied by an external process.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StatementPreservationEvidence.Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664

public section

namespace Surface.Core

/-- Finite evidence that an observed statement has an expected identity. -/
@[surface_novel, surface_certificate]
structure StatementPreservationEvidence where
  expected : Digest
  observed : Digest
deriving DecidableEq, Repr

@[expose] def StatementPreservationEvidence.Valid
    (evidence : StatementPreservationEvidence) : Prop :=
  evidence.observed = evidence.expected

@[expose] def verifyStatementPreservation
    (evidence : StatementPreservationEvidence) : Bool :=
  evidence.observed == evidence.expected

@[surface_novel, surface_published, surface_certificate]
theorem verifyStatementPreservation_sound
    (evidence : StatementPreservationEvidence)
    (h : verifyStatementPreservation evidence = true) :
    evidence.Valid := by
  change evidence.observed = evidence.expected
  exact eq_of_beq (by simpa [verifyStatementPreservation] using h)
@[surface_novel, surface_published, surface_certificate]
theorem KernelReceipt.matchesTask_preserves_statement
    (receipt : KernelReceipt)
    (task : TheoremTask)
    (h : receipt.matchesTask task = true) :
    receipt.statementHash = task.statementHash :=
  (receipt.matchesTask_sound task h).2.2.2.1

/-- A checked trial always refers to the immutable statement of its task. -/
@[surface_novel, surface_published]
theorem CheckedTrial.statement_preserved (trial : CheckedTrial) :
    trial.receipt.statementHash = trial.task.statementHash :=
  trial.receiptMatchesTask.2.2.2.1

/-- Kernel acceptance exposes the task proposition only because it stores a Lean proof term. -/
@[surface_novel, surface_published]
theorem CheckedTrial.kernel_proof (trial : CheckedTrial) :
    trial.task.proposition :=
  trial.checkedProof

end Surface.Core
