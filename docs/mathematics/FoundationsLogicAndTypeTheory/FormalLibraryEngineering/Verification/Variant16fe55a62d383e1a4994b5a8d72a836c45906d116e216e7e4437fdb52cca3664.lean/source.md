# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Verification.Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43a56f2752eae8c4474af3fc5a31ce6a37af54d1` · SHA-256 `16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Receipt

/-!
# Executable evidence verification

Evidence is finite data, verification is executable, and soundness is a Lean
theorem.  No structure carries a proposition together with an assumptive proof
field supplied by an external process.
-/

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
```
