# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremEnvelope.Variant8155746e86fb64800d221efe09603b6ec9d2ffeac17846bb2a3f40b1926ad9bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28112dc69be8de01b585377add399614fa8b0e0e` · SHA-256 `3061e5d757ddb511bd8e83202bf9fe8466b13114e8226896d6e123639e221db9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TransportedTheoremEnvelope.Variantb6baf2c295c71c4e844abce8f3d15731e9098ebb12c2e36483445a7bfc78e734","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6baf2c295c71c4e844abce8f3d15731e9098ebb12c2e36483445a7bfc78e734","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TransportedTheoremEnvelope.Variantb6baf2c295c71c4e844abce8f3d15731e9098ebb12c2e36483445a7bfc78e734","mathematical_subject":"Computation.DataStructures","original_sha256":"b6baf2c295c71c4e844abce8f3d15731e9098ebb12c2e36483445a7bfc78e734","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Refactor/TheoremEnvelope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TransportedTheoremEnvelope.Variantb6baf2c295c71c4e844abce8f3d15731e9098ebb12c2e36483445a7bfc78e734

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
