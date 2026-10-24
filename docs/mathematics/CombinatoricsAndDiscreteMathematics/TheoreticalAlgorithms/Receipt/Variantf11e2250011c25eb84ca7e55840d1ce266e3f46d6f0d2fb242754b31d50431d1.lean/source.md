# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Receipt.Variantf11e2250011c25eb84ca7e55840d1ce266e3f46d6f0d2fb242754b31d50431d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e6ee2780498f76a10e8cbc0a9b19597a7dd8f89` · SHA-256 `88bc8ffe6218307372a3e911bf73a619277df2d466280623637282de19692336`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KernelReceipt.Variant6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.KernelReceipt.Variant6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39","mathematical_subject":"Computation.DataStructures","original_sha256":"6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/Receipt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Patch

/-!
# Noninterchangeable receipts

Only `KernelReceipt` describes an observation made from a checked Lean
environment.  Build and reuse receipts intentionally contain no authority flag.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KernelReceipt.Variant6a0115e48fa2c5373cd72315ba416505ddff32776a6fa71e418fe4242f95da39

public section

namespace Surface.Core

open Lean

@[expose] def kernelReceiptSchema : String := "surface.kernel-receipt.v1"
@[expose] def buildReceiptSchema : String := "surface.build-receipt.v1"
@[expose] def reuseReceiptSchema : String := "surface.reuse-receipt.v1"

/-- Environment-derived evidence for one exact checked declaration. -/
@[surface_novel, surface_certificate]
structure KernelReceipt where
  schema : String
  declarationName : Name
  typeHash : Digest
  statementHash : Digest
  moduleName : Name
  axiomClosure : List Name
  environmentFingerprint : Digest
deriving DecidableEq, Repr

/-- Operational evidence emitted by the Lake supervisor. -/
@[surface_novel, surface_certificate]
structure BuildReceipt where
  schema : String
  target : Name
  inputTraceHash : Digest
  outputTraceHash : Digest
  reusedModules : List Name
  builtModules : List Name
  elapsedMilliseconds : Nat
deriving DecidableEq, Repr

/-- Mandatory stages of Mathlib-first retrieval, in increasing repair cost. -/
@[surface_novel]
inductive RetrievalStage where
  | exactTheorem
  | simpaOrExact
  | applyOrRefine
  | rewriteOrTransport
  | specializationOrGeneralization
  | typeclassOrCoercionRepair
  | thinAdapter
  | genuinelyNovel
deriving DecidableEq, Repr, BEq

/-- Why one environment-derived Mathlib candidate did not close the target. -/
@[surface_novel]
structure RetrievalFailure where
  stage : RetrievalStage
  declarationName : Name
  reason : String
deriving DecidableEq, Repr

/-- Complete Mathlib-first evidence required before claiming local novelty. -/
@[surface_novel, surface_certificate]
structure ReuseReceipt where
  schema : String
  normalizedTargetTypeHash : Digest
  mathlibRevision : String
  exactMatchCandidates : List Name
  unificationCandidates : List Name
  rewriteCandidates : List Name
  specializationCandidates : List Name
  candidateFailures : List RetrievalFailure
  minimalRequiredImports : List Name
  retrievalModelVersion : String
  declarationIndexVersion : String
  selectedDeclaration? : Option Name
  adapterJustification? : Option String
deriving DecidableEq, Repr

/-- Search reproducibility data.  This is explicitly not theorem authority. -/
@[surface_novel, surface_certificate]
structure SearchReceipt where
  schema : String
  modelVersion : String
  seed : Nat
  scheduleHash : Digest
  rulesetHash : Digest
  candidateLineage : List Digest
  rejectedAlternatives : List Digest
deriving DecidableEq, Repr

@[expose] def KernelReceipt.MatchesTask (receipt : KernelReceipt) (task : TheoremTask) : Prop :=
  receipt.schema = kernelReceiptSchema ∧
    receipt.declarationName = task.declarationName ∧
    receipt.typeHash = receipt.statementHash ∧
    receipt.statementHash = task.statementHash ∧
    receipt.moduleName = task.targetModule

/-- Executable framing check.  It does not manufacture a kernel receipt. -/
@[expose] def KernelReceipt.matchesTask (receipt : KernelReceipt) (task : TheoremTask) : Bool :=
  receipt.schema == kernelReceiptSchema &&
    receipt.declarationName == task.declarationName &&
    receipt.typeHash == receipt.statementHash &&
    receipt.statementHash == task.statementHash &&
    receipt.moduleName == task.targetModule

@[surface_novel, surface_published, surface_certificate]
theorem KernelReceipt.matchesTask_sound
    (receipt : KernelReceipt)
    (task : TheoremTask)
    (h : receipt.matchesTask task = true) :
    receipt.MatchesTask task := by
  have h' :
      (((receipt.schema = kernelReceiptSchema ∧
            receipt.declarationName = task.declarationName) ∧
          receipt.typeHash = receipt.statementHash) ∧
        receipt.statementHash = task.statementHash) ∧
      receipt.moduleName = task.targetModule := by
    simpa [KernelReceipt.matchesTask, Bool.and_eq_true, beq_iff_eq] using h
  exact ⟨h'.1.1.1.1, h'.1.1.1.2, h'.1.1.2, h'.1.2, h'.2⟩

/-- A checked trial cannot be constructed with a receipt for another statement. -/
@[surface_novel]
structure CheckedTrial extends Trial .kernelChecked where
  receipt : KernelReceipt
  receiptMatchesTask : receipt.MatchesTask toTrial.task
  /-- The checked state carries an actual Lean proof, never merely receipt data. -/
  checkedProof : toTrial.task.proposition

/-- Rust and UI layers may report observations, but never a Boolean authority grant. -/
@[surface_novel]
inductive KernelObservation where
  | notRun
  | running
  | receiptObserved (receiptHash : Digest)
  | rejected (diagnostics : List String)
deriving DecidableEq, Repr

/-- Exact operator-facing status; `kernelAccepted` must carry a checked trial. -/
@[surface_novel]
inductive ProofStatus where
  | active (phase : ProofPhase)
  | kernelAccepted (trial : CheckedTrial)
  | rejected (statementHash : Digest) (counterexampleHash : Digest)

end Surface.Core
```
