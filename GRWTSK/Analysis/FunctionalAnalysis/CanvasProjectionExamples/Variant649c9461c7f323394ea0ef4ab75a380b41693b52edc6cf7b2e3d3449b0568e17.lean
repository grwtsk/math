import Presentation.CanvasProjection
import Presentation.SpectralFaceProjectionExamples

/-!
# Canvas projection examples

The examples instantiate a toy NDJSON-backed canvas stream. They do not prove
spectral geometry or any analytic theorem.
-/

namespace Presentation

def toyCanvasCursor : CanvasCursor where
  row := 0
  col := 0
  nodeId := 0
  fiberId := 0
  step := 0

def toyCanvasCell : CanvasCell where
  index := 0
  row := 0
  col := 0
  scalarHash := 11
  residue := CanvasResidueRole.aligned
  authorityBoundaryHash := toyPresentationIndex.authorityBoundaryHash
  lossRecordHash := 12

def toyCanvasFeature : CanvasPatternFeature where
  featureId := 1
  supportCellCount := 1
  method := "motif-extraction"
  proposedReduction := "toy finite proposal"
  authorityBoundaryVisible := True
  authorityBoundaryProof := trivial

def toyCanvasCandidate : CanvasTheoremCandidate where
  candidateId := 1
  featureId := toyCanvasFeature.featureId
  statementHash := 21
  proposedOnly := True
  proposedOnlyProof := trivial
  leanOrApprovedAuthorityRequired := True
  leanOrApprovedAuthorityProof := trivial

def toyCanvasProjectionStream : CanvasProjectionStream where
  streamHash := 31
  request := toySpectralFaceUrlRequest
  presentationIndex := toyPresentationIndex
  matrixView := toyMatrixView
  cursor := toyCanvasCursor
  cells := [toyCanvasCell]
  features := [toyCanvasFeature]
  candidates := [toyCanvasCandidate]
  ndjsonCompleteDataSource := True
  ndjsonCompleteDataSourceProof := trivial
  everyVisibleCellFromStream := True
  everyVisibleCellFromStreamProof := trivial
  noColorOnlySemantics := True
  noColorOnlySemanticsProof := trivial
  canvasCreatesNoAuthority := True
  canvasCreatesNoAuthorityProof := trivial

example :
    toyCanvasProjectionStream.ndjsonCompleteDataSource ∧
    toyCanvasProjectionStream.everyVisibleCellFromStream ∧
    toyCanvasProjectionStream.noColorOnlySemantics ∧
    toyCanvasProjectionStream.canvasCreatesNoAuthority :=
  canvas_projection_stream_sound toyCanvasProjectionStream

example : toyCanvasCandidate.proposedOnly ∧
    toyCanvasCandidate.leanOrApprovedAuthorityRequired :=
  canvas_theorem_candidate_firewall toyCanvasCandidate

end Presentation
