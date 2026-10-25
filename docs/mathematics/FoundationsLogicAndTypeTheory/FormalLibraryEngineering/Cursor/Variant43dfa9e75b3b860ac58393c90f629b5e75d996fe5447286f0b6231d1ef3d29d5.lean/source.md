# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cursor.Variant43dfa9e75b3b860ac58393c90f629b5e75d996fe5447286f0b6231d1ef3d29d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a7449505dfbbcc91cb21aa0190933b7e55f7fa6` · SHA-256 `c6f0abc366e1ef0b3f5b88560955e1703b65e937c2d4079bc17736e2cf5baa2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OutcomeCursor.Varianta620855a06a45b858ee91fa2f3f969db693109d0c43abe5c1ac09e89da6ab096","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a620855a06a45b858ee91fa2f3f969db693109d0c43abe5c1ac09e89da6ab096","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OutcomeCursor.Varianta620855a06a45b858ee91fa2f3f969db693109d0c43abe5c1ac09e89da6ab096","mathematical_subject":"Foundations.Unclassified","original_sha256":"a620855a06a45b858ee91fa2f3f969db693109d0c43abe5c1ac09e89da6ab096","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/network/NetworkElements/Cursor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-! # Monotone outcome and replaceable-view cursors -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OutcomeCursor.Varianta620855a06a45b858ee91fa2f3f969db693109d0c43abe5c1ac09e89da6ab096

namespace URSM.Network

structure OutcomeCursor where
  value : Nat
  deriving DecidableEq, Repr

structure ViewRevision where
  value : Nat
  deriving DecidableEq, Repr

structure ResumePoint where
  outcome : OutcomeCursor
  view : ViewRevision
  deriving DecidableEq, Repr

def OutcomeCursor.Advances
    (previous next : OutcomeCursor) : Prop :=
  previous.value < next.value

def ViewRevision.Reaches
    (previous next : ViewRevision) : Prop :=
  previous.value ≤ next.value

theorem outcome_advance_irreflexive
    (cursor : OutcomeCursor) :
    ¬ cursor.Advances cursor := by
  simp [OutcomeCursor.Advances]

theorem view_reaches_reflexive
    (revision : ViewRevision) :
    revision.Reaches revision := by
  simp [ViewRevision.Reaches]

end URSM.Network
```
