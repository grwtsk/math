-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanvasResidueRole.Variant3d8c50acf82aaec2c80245d0c1e8b23358f4fc18770e3eb06ac1c65e21145140","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d8c50acf82aaec2c80245d0c1e8b23358f4fc18770e3eb06ac1c65e21145140","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CanvasResidueRole.Variant3d8c50acf82aaec2c80245d0c1e8b23358f4fc18770e3eb06ac1c65e21145140","mathematical_subject":"Computation.DataStructures","original_sha256":"3d8c50acf82aaec2c80245d0c1e8b23358f4fc18770e3eb06ac1c65e21145140","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/CanvasProjection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Presentation.SpectralFaceProjection

/-!
# Canvas-first finite projection

This module formalizes the canvas workbench as finite Presentation metadata.
The NDJSON stream is the finite data source for the canvas.  The canvas can
carry object identity, residue roles, pattern features, and theorem-candidate
proposals, but it does not prove an analytic theorem.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanvasResidueRole.Variant3d8c50acf82aaec2c80245d0c1e8b23358f4fc18770e3eb06ac1c65e21145140

namespace Presentation

/-- Residue role rendered by a finite canvas cell. -/
inductive CanvasResidueRole where
  | aligned
  | analyticSideResidue
  | finiteSideResidue
  | authorityBoundaryResidue
  | unavailableAuthority
deriving Repr, DecidableEq

/-- One finite shadow cell in the request-time canvas stream. -/
structure CanvasCell where
  index : Nat
  row : Nat
  col : Nat
  scalarHash : Nat
  residue : CanvasResidueRole
  authorityBoundaryHash : Nat
  lossRecordHash : Nat

/-- Cursor state is finite navigation metadata. -/
structure CanvasCursor where
  row : Nat
  col : Nat
  nodeId : Nat
  fiberId : Nat
  step : Nat

/-- Pattern features are finite proposals extracted from the cell stream. -/
structure CanvasPatternFeature where
  featureId : Nat
  supportCellCount : Nat
  method : String
  proposedReduction : String
  authorityBoundaryVisible : Prop
  authorityBoundaryProof : authorityBoundaryVisible

/-- Canvas theorem candidates are proposals until routed through proof authority. -/
structure CanvasTheoremCandidate where
  candidateId : Nat
  featureId : Nat
  statementHash : Nat
  proposedOnly : Prop
  proposedOnlyProof : proposedOnly
  leanOrApprovedAuthorityRequired : Prop
  leanOrApprovedAuthorityProof : leanOrApprovedAuthorityRequired

/-- One NDJSON-backed canvas stream for a finite Presentation-indexed face. -/
structure CanvasProjectionStream where
  streamHash : Nat
  request : SpectralFaceUrlRequest
  presentationIndex : SpectralProjectionPresentationIndex
  matrixView : FiniteShadowMatrixPageView
  cursor : CanvasCursor
  cells : List CanvasCell
  features : List CanvasPatternFeature
  candidates : List CanvasTheoremCandidate
  ndjsonCompleteDataSource : Prop
  ndjsonCompleteDataSourceProof : ndjsonCompleteDataSource
  everyVisibleCellFromStream : Prop
  everyVisibleCellFromStreamProof : everyVisibleCellFromStream
  noColorOnlySemantics : Prop
  noColorOnlySemanticsProof : noColorOnlySemantics
  canvasCreatesNoAuthority : Prop
  canvasCreatesNoAuthorityProof : canvasCreatesNoAuthority

/-- The canvas is sound as a finite Presentation projection when its stream is complete
and it creates no authority. -/
theorem canvas_projection_stream_sound
    (S : CanvasProjectionStream) :
    S.ndjsonCompleteDataSource ∧
    S.everyVisibleCellFromStream ∧
    S.noColorOnlySemantics ∧
    S.canvasCreatesNoAuthority :=
  by
    exact
      ⟨S.ndjsonCompleteDataSourceProof,
       S.everyVisibleCellFromStreamProof,
       S.noColorOnlySemanticsProof,
       S.canvasCreatesNoAuthorityProof⟩

/-- A theorem candidate remains proposal-only unless a separate authority route is supplied. -/
theorem canvas_theorem_candidate_firewall
    (C : CanvasTheoremCandidate) :
    C.proposedOnly ∧ C.leanOrApprovedAuthorityRequired :=
  by
    exact ⟨C.proposedOnlyProof, C.leanOrApprovedAuthorityProof⟩

end Presentation
