# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Axiombefore.Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b2afe12d5ba51ba0b80f55db4bcb9daea0def91` · SHA-256 `cd6cefc63d5f89159a30f4c3f865d75031cf9bf3a367f784fe33cf0659327d1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StatementPreservationEvidence.Variant2cc8ffecaf807280e672c02ea0291b8be20c591d0e4fb6c4571eeec2e4c4098a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2cc8ffecaf807280e672c02ea0291b8be20c591d0e4fb6c4571eeec2e4c4098a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.StatementPreservationEvidence.Variant2cc8ffecaf807280e672c02ea0291b8be20c591d0e4fb6c4571eeec2e4c4098a","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"2cc8ffecaf807280e672c02ea0291b8be20c591d0e4fb6c4571eeec2e4c4098a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:d0e6bf40dced7564e727c277/workspace/SurfaceRefactorProbe/Axiombefore.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Receipt

/-!
# Executable evidence verification

Evidence is finite data, verification is executable, and soundness is a Lean
theorem.  No structure carries a proposition together with an assumptive proof
field supplied by an external process.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StatementPreservationEvidence.Variant2cc8ffecaf807280e672c02ea0291b8be20c591d0e4fb6c4571eeec2e4c4098a

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
  apply eq_of_beq
  simpa [verifyStatementPreservation] using h

/-- Receipt verification implies exact statement preservation for its task. -/
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


open Lean

run_meta do
  let axioms ← Lean.collectAxioms `Surface.Core.verifyStatementPreservation_sound
  let names := axioms.toList.map Name.toString |>.mergeSort (· < ·)
  let info ← getConstInfo `Surface.Core.verifyStatementPreservation_sound
  let normalizedType := toString (← Meta.ppExpr info.type)
  let env ← getEnv
  let classifications :=
    (if Surface.Core.surfaceAdapterAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_adapter"] else []) ++
    (if Surface.Core.surfaceNovelAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_novel"] else []) ++
    (if Surface.Core.surfaceCandidateAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_candidate"] else []) ++
    (if Surface.Core.surfacePublishedAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_published"] else []) ++
    (if Surface.Core.surfaceCertificateAttr.hasTag env `Surface.Core.verifyStatementPreservation_sound then ["surface_certificate"] else [])
  liftM <| IO.println <| Json.compress <| Json.mkObj [("schema", toJson "surface.refactor.axiom-probe.v1"), ("axioms", toJson names), ("normalizedType", toJson normalizedType), ("classificationTags", toJson classifications)]
```
