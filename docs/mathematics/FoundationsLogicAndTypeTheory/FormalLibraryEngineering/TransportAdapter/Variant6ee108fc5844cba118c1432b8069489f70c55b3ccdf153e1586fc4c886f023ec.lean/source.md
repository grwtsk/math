# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransportAdapter.Variant6ee108fc5844cba118c1432b8069489f70c55b3ccdf153e1586fc4c886f023ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b31fe811803ddd1d2dd41fe19255513cc1706c12` · SHA-256 `0dff2d465804ed6fb0948e39930f3220fde24d389946abbf3076e2a732c35c48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckedTransportedTheorem.Variant58130ef10ffced4a8747743815c381d8b8f69e261eb44693ce32ecc49eaf1401","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58130ef10ffced4a8747743815c381d8b8f69e261eb44693ce32ecc49eaf1401","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CheckedTransportedTheorem.Variant58130ef10ffced4a8747743815c381d8b8f69e261eb44693ce32ecc49eaf1401","mathematical_subject":"Foundations.Unclassified","original_sha256":"58130ef10ffced4a8747743815c381d8b8f69e261eb44693ce32ecc49eaf1401","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Refactor/TransportAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.TheoremEnvelope

/-!
# Checked theorem-envelope adapter

Only this proof-bearing adapter crosses from transported identity metadata to
the exact task proposition, and it does so by storing an actual Lean proof.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckedTransportedTheorem.Variant58130ef10ffced4a8747743815c381d8b8f69e261eb44693ce32ecc49eaf1401

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
```
