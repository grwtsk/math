-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HostedCellState.Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HostedCellState.Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5","mathematical_subject":"Computation.DataStructures","original_sha256":"04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fabric/Runtime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Fabric.Manifest
import DAF.Fabric.Refinement

/-!
# Pure runtime records for hosted fabric cells

The hosted state is indexed by its checked cell implementation and therefore
retains the local refinement-validity proof.  `CellStatus` remains operational
metadata: sequence counters are not Frobenius maps, status priority is not a
Nygaard filtration, and listed certificate names do not produce proofs.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HostedCellState.Variant04cda9b54a58804b308b196c33d1883a0123e7df6a89cfa0896d07fb664499a5

namespace DAF.Fabric

universe u

/-- One implementation state known to satisfy its local refinement invariant. -/
structure HostedCellState
    {P : Presentation}
    (implementation : CellImplementation P) where
  implementationState : implementation.impl.State
  sequence : Nat
  valid : implementation.refinement.Valid implementationState

/-- Human-readable operational summary of one boundary mismatch. -/
structure BoundaryDefectSummary where
  boundaryDimension : Nat
  boundaryName : Lean.Name
  summary : String
  deriving DecidableEq, Repr

/-- Runtime status for a hosted cell; all fields are non-authoritative metadata. -/
structure CellStatus where
  cellId : Lean.Name
  dimension : Nat
  presentationVersion : DAF.Version
  processedSequence : Nat
  boundaryDefects : List BoundaryDefectSummary
  certificates : List Lean.Name

/-- A status record is boundary-clean exactly when no defect summaries remain. -/
def CellStatus.BoundaryClean (status : CellStatus) : Prop :=
  status.boundaryDefects = []

end DAF.Fabric
