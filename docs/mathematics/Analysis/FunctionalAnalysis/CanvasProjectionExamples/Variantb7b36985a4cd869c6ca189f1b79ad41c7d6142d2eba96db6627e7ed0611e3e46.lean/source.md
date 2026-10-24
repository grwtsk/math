# Complete source: GRWTSK.Analysis.FunctionalAnalysis.CanvasProjectionExamples.Variantb7b36985a4cd869c6ca189f1b79ad41c7d6142d2eba96db6627e7ed0611e3e46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cc83847ddc4a1871e0af41659c71d517e8f799a` · SHA-256 `98a1172b7c571bef35249a6bb4e3794cbb1d2c01a8d72465269c04fa5f141903`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ToyCanvasCursor.Variant649c9461c7f323394ea0ef4ab75a380b41693b52edc6cf7b2e3d3449b0568e17","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"649c9461c7f323394ea0ef4ab75a380b41693b52edc6cf7b2e3d3449b0568e17","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ToyCanvasCursor.Variant649c9461c7f323394ea0ef4ab75a380b41693b52edc6cf7b2e3d3449b0568e17","mathematical_subject":"Foundations.Unclassified","original_sha256":"649c9461c7f323394ea0ef4ab75a380b41693b52edc6cf7b2e3d3449b0568e17","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/CanvasProjectionExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Presentation.CanvasProjection
import Presentation.SpectralFaceProjectionExamples

/-!
# Canvas projection examples

The examples instantiate a toy NDJSON-backed canvas stream. They do not prove
spectral geometry or any analytic theorem.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ToyCanvasCursor.Variant649c9461c7f323394ea0ef4ab75a380b41693b52edc6cf7b2e3d3449b0568e17

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
