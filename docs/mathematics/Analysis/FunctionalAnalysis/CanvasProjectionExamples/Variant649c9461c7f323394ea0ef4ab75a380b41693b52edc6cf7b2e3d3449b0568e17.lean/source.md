# Complete source: GRWTSK.Analysis.FunctionalAnalysis.CanvasProjectionExamples.Variant649c9461c7f323394ea0ef4ab75a380b41693b52edc6cf7b2e3d3449b0568e17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c07904b6ac3f06204a2d1f816207b519ea59692f` · SHA-256 `649c9461c7f323394ea0ef4ab75a380b41693b52edc6cf7b2e3d3449b0568e17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
