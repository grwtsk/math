module

public import Surface.Refactor.TheoremEnvelope

/-!
# Checked theorem-envelope adapter

Only this proof-bearing adapter crosses from transported identity metadata to
the exact task proposition, and it does so by storing an actual Lean proof.
-/

public section

namespace Surface.Refactor

open Surface.Core

@[surface_novel, surface_certificate]
structure CheckedTransportedTheorem where
  envelope : TransportedTheoremEnvelope
  task : TheoremTask
  declarationMatches : envelope.declarationName = task.declarationName
  statementMatches : envelope.statementHash = task.statementHash
  moduleMatches : envelope.moduleIdentity = task.targetModule
  checkedProof : task.proposition

@[surface_novel, surface_published]
theorem checkedTransportedTheorem_exposes_exact_task
    (checked : CheckedTransportedTheorem) : checked.task.proposition :=
  checked.checkedProof

@[surface_novel, surface_published]
theorem checkedTransportedTheorem_preserves_statement_identity
    (checked : CheckedTransportedTheorem) :
    checked.envelope.statementHash = checked.task.statementHash :=
  checked.statementMatches

end Surface.Refactor
