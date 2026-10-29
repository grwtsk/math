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
