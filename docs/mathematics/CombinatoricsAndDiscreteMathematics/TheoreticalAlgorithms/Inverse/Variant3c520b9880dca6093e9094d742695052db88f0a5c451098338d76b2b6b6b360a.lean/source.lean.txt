-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GuardObservation.Varianta5d35e7bc0dae8cd063e0f9bc6d2eb46e43d6b1ca1a416a79dcdb5a0ce3cd781","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5d35e7bc0dae8cd063e0f9bc6d2eb46e43d6b1ca1a416a79dcdb5a0ce3cd781","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GuardObservation.Varianta5d35e7bc0dae8cd063e0f9bc6d2eb46e43d6b1ca1a416a79dcdb5a0ce3cd781","mathematical_subject":"Computation.DataStructures","original_sha256":"a5d35e7bc0dae8cd063e0f9bc6d2eb46e43d6b1ca1a416a79dcdb5a0ce3cd781","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Refactor/Surgery/Inverse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.Surgery.Operation

/-!
# Exact typed surgery inverses

An inverse is admitted only with exact forward and reverse application facts.
These facts are finite source-model evidence; they do not stand in for parser,
compiler, public-API, theorem-statement, or axiom-closure gates.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GuardObservation.Varianta5d35e7bc0dae8cd063e0f9bc6d2eb46e43d6b1ca1a416a79dcdb5a0ce3cd781

public section

namespace Surface.Refactor.Surgery

open Surface.Core.Transport Surface.Refactor.Syntax

/-- Swap exact byte and hash guards at the resulting half-open range. -/
@[expose] def ExactGuardedByteEdit.typedInverse
    (edit : ExactGuardedByteEdit) (inverseSequenceNumber : Nat) :
    ExactGuardedByteEdit where
  targetPathUtf8 := edit.targetPathUtf8
  targetFile := edit.targetFile
  expectedFileHash := edit.expectedAfterFileHash
  expectedRange := {
    startByte := edit.expectedRange.startByte
    endByte := edit.expectedRange.startByte + edit.afterBytes.length }
  expectedBeforeByteHash := edit.expectedAfterByteHash
  expectedAfterByteHash := edit.expectedBeforeByteHash
  expectedAfterFileHash := edit.expectedFileHash
  beforeBytes := edit.afterBytes
  afterBytes := edit.beforeBytes
  sequenceNumber := inverseSequenceNumber

@[surface_novel]
structure GuardObservation where
  observedFileHash : Hash256
  observedBeforeByteHash : Hash256
deriving DecidableEq, Repr

@[expose] def applyObservedEdit
    (source : CanonicalBytes) (observation : GuardObservation)
    (edit : ExactGuardedByteEdit) : Option CanonicalBytes :=
  applyExactGuardedByteEdit observation.observedFileHash
    observation.observedBeforeByteHash source edit

/-- A bounded sequence fails closed if observation and edit counts differ. -/
@[expose] def applyObservedEditSequence :
    CanonicalBytes → List GuardObservation → List ExactGuardedByteEdit →
      Option CanonicalBytes
  | source, [], [] => some source
  | source, observation :: observations, edit :: edits =>
      match applyObservedEdit source observation edit with
      | none => none
      | some after => applyObservedEditSequence after observations edits
  | _, _, _ => none

@[surface_novel]
structure TypedInverseEditPair where
  forward : ExactGuardedByteEdit
  inverse : ExactGuardedByteEdit
  inverseSequenceNumber : Nat
  inverseIsCanonical : inverse = forward.typedInverse inverseSequenceNumber

/--
Finite witness that one resolved supported operation performs exactly the
declared forward edit sequence and exactly restores the starting bytes.
-/
@[surface_novel]
structure SupportedOperationInverse where
  resolved : ResolvedSurgeryOperation
  inversePairs : List TypedInverseEditPair
  beforeSource : CanonicalBytes
  afterSource : CanonicalBytes
  forwardObservations : List GuardObservation
  inverseObservations : List GuardObservation
  forwardEditsMatch : inversePairs.map TypedInverseEditPair.forward =
    resolved.compiledEdits
  inverseEditsOrdered : CompiledEditsOrdered
    (inversePairs.map TypedInverseEditPair.inverse)
  inverseEditsNonoverlapping : CompiledEditsNonoverlapping
    (inversePairs.map TypedInverseEditPair.inverse)
  forwardAppliesExactly :
    applyObservedEditSequence beforeSource forwardObservations
      resolved.compiledEdits = some afterSource
  inverseAppliesExactly :
    applyObservedEditSequence afterSource inverseObservations
      (inversePairs.map TypedInverseEditPair.inverse) = some beforeSource

@[surface_novel, surface_published]
theorem supportedOperation_inverse_roundtrip
    (supported : SupportedOperationInverse) :
    applyObservedEditSequence supported.beforeSource
        supported.forwardObservations supported.resolved.compiledEdits =
      some supported.afterSource ∧
    applyObservedEditSequence supported.afterSource
        supported.inverseObservations
        (supported.inversePairs.map TypedInverseEditPair.inverse) =
      some supported.beforeSource :=
  ⟨supported.forwardAppliesExactly, supported.inverseAppliesExactly⟩

@[surface_novel]
structure SourceSnapshotModel where
  snapshotHash : Hash256
  repositoryRevision : Nat
  canonicalSourceBytes : CanonicalBytes
deriving DecidableEq, Repr

@[surface_novel]
structure SurgeryBundle where
  baseSnapshot : SourceSnapshotModel
  afterSnapshot : SourceSnapshotModel
  resolvedOperations : List ResolvedSurgeryOperation
  forwardEdits : List ExactGuardedByteEdit
  inverseEdits : List ExactGuardedByteEdit
  forwardObservations : List GuardObservation
  inverseObservations : List GuardObservation
  inverseResultSnapshotHash : Hash256
  inverseResultRepositoryRevision : Nat
  forwardEditsOrdered : CompiledEditsOrdered forwardEdits
  forwardEditsNonoverlapping : CompiledEditsNonoverlapping forwardEdits
  inverseEditsOrdered : CompiledEditsOrdered inverseEdits
  inverseEditsNonoverlapping : CompiledEditsNonoverlapping inverseEdits
  forwardAppliesExactly :
    applyObservedEditSequence baseSnapshot.canonicalSourceBytes forwardObservations
      forwardEdits = some afterSnapshot.canonicalSourceBytes
  inverseAppliesExactly :
    applyObservedEditSequence afterSnapshot.canonicalSourceBytes inverseObservations
      inverseEdits = some baseSnapshot.canonicalSourceBytes
  inverseHashRestores : inverseResultSnapshotHash = baseSnapshot.snapshotHash
  inverseRevisionRestores :
    inverseResultRepositoryRevision = baseSnapshot.repositoryRevision

@[expose] def SurgeryBundle.restoredSourceSnapshot
    (bundle : SurgeryBundle) : Option SourceSnapshotModel :=
  match applyObservedEditSequence bundle.afterSnapshot.canonicalSourceBytes
      bundle.inverseObservations bundle.inverseEdits with
  | none => none
  | some bytes => some {
      snapshotHash := bundle.inverseResultSnapshotHash
      repositoryRevision := bundle.inverseResultRepositoryRevision
      canonicalSourceBytes := bytes }

@[surface_novel, surface_published]
theorem surgeryBundle_inverse_restores_sourceSnapshot
    (bundle : SurgeryBundle) :
    bundle.restoredSourceSnapshot = some bundle.baseSnapshot := by
  unfold SurgeryBundle.restoredSourceSnapshot
  rw [bundle.inverseAppliesExactly]
  simp only
  congr
  · exact bundle.inverseHashRestores
  · exact bundle.inverseRevisionRestores

end Surface.Refactor.Surgery
