# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremEnvelope.Variantb6baf2c295c71c4e844abce8f3d15731e9098ebb12c2e36483445a7bfc78e734

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `650b62493a99908744d4c8fa04759ba283c46ee8` · SHA-256 `b6baf2c295c71c4e844abce8f3d15731e9098ebb12c2e36483445a7bfc78e734`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Transport.Hash
public import Surface.Core.Transport.Revision
public import Surface.Refactor.PatchBundle

/-!
# Identity-preserving theorem metadata transport

An envelope contains finite identity and policy metadata only. It deliberately
does not contain a proof term and cannot expose the proposition of a
`TheoremTask`.
-/

public section

namespace Surface.Refactor

open Lean Surface.Core Surface.Core.Transport

@[surface_novel]
structure TransportedTheoremEnvelope where
  declarationName : Name
  moduleIdentity : Name
  statementHash : Digest
  normalizedTypeHash : ContentHash256
  sourceSnapshotHash : Hash256
  classificationTags : List Name
  axiomPolicy : AxiomPolicy
  kernelReceiptReference? : Option Hash256 := none
  checkedTrialReference? : Option Hash256 := none
  transportRevision : Revision
  authority : RefactorAuthority
deriving DecidableEq, Repr

@[expose] def transportTheoremEnvelope
    (envelope : TransportedTheoremEnvelope) : TransportedTheoremEnvelope :=
  envelope

@[surface_novel, surface_published]
theorem transportedTheoremEnvelope_preserves_declaration_name
    (envelope : TransportedTheoremEnvelope) :
    (transportTheoremEnvelope envelope).declarationName =
      envelope.declarationName :=
  rfl

@[surface_novel, surface_published]
theorem transportedTheoremEnvelope_preserves_statement_hash
    (envelope : TransportedTheoremEnvelope) :
    (transportTheoremEnvelope envelope).statementHash = envelope.statementHash :=
  rfl

@[surface_novel, surface_published]
theorem transportedTheoremEnvelope_preserves_normalized_type_hash
    (envelope : TransportedTheoremEnvelope) :
    (transportTheoremEnvelope envelope).normalizedTypeHash =
      envelope.normalizedTypeHash :=
  rfl

@[surface_novel, surface_published]
theorem transportedTheoremEnvelope_preserves_authority_label
    (envelope : TransportedTheoremEnvelope) :
    (transportTheoremEnvelope envelope).authority = envelope.authority :=
  rfl

/-- The proposition deliberately describing a forbidden metadata-only
authority crossing. It is definitionally false. -/
@[expose] def TransportedTheoremEnvelope.ProvesTask
    (_envelope : TransportedTheoremEnvelope) (_task : TheoremTask) : Prop :=
  False

@[surface_novel, surface_published]
theorem transportedTheoremEnvelope_does_not_prove_task
    (envelope : TransportedTheoremEnvelope) (task : TheoremTask) :
    ¬ envelope.ProvesTask task := by
  simp [TransportedTheoremEnvelope.ProvesTask]

end Surface.Refactor
```
