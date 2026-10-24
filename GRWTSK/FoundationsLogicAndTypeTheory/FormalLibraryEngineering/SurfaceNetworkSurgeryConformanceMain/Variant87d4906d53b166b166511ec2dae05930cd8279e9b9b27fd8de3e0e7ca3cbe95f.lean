-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Schema.Variantac94f24d7b8f76f0128fd9b9ed72fa14b2e7600ecde5df9e218432efcda30c41","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac94f24d7b8f76f0128fd9b9ed72fa14b2e7600ecde5df9e218432efcda30c41","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.Schema.Variantac94f24d7b8f76f0128fd9b9ed72fa14b2e7600ecde5df9e218432efcda30c41","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"ac94f24d7b8f76f0128fd9b9ed72fa14b2e7600ecde5df9e218432efcda30c41","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0fb42e20fee1ea48f0f02cd1/workspace/tools/SurfaceNetworkSurgeryConformanceMain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Data.Json
import Surface.Core.NetworkSurgery

/-!
# Finite network-surgery conformance corpus

The executable computes a bounded collection of Lean observations shared with
the Rust golden corpus.  `--emit` writes only this requested JSON artifact.  A
matching corpus is finite test evidence: it is not a proposition certificate,
parser proof, filesystem authorization, or universal implementation theorem.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Schema.Variantac94f24d7b8f76f0128fd9b9ed72fa14b2e7600ecde5df9e218432efcda30c41

open Lean
open Surface.Core.Transport Surface.Core.NetworkSurgery

namespace SurfaceNetworkSurgeryConformance

def schema : String := "surface.network-surgery.golden.v1"
def maxEmitPathBytes : Nat := 4096
def corpusEmitPath : String :=
  "tests/network-surgery/golden/lean-observed-v1.json"

private def code (value : Nat) : StableCode :=
  ⟨value % revisionModulus, Nat.mod_lt _ (by simp [revisionModulus])⟩

def signedNegativeHalf : ExactRationalCoordinate where
  numerator := -3
  denominator := 2
  denominatorPositive := by norm_num
  quotient := -2
  remainder := 1
  decomposition := by norm_num
  remainderLt := by norm_num

def signedOneThird : ExactRationalCoordinate where
  numerator := 1
  denominator := 3
  denominatorPositive := by norm_num
  quotient := 0
  remainder := 1
  decomposition := by norm_num
  remainderLt := by norm_num

def signedPositiveHalf : ExactRationalCoordinate where
  numerator := 1
  denominator := 2
  denominatorPositive := by norm_num
  quotient := 0
  remainder := 1
  decomposition := by norm_num
  remainderLt := by norm_num

def signedTwoThirds : ExactRationalCoordinate where
  numerator := 2
  denominator := 3
  denominatorPositive := by norm_num
  quotient := 0
  remainder := 2
  decomposition := by norm_num
  remainderLt := by norm_num

def scaledPositiveHalfAtThree : ExactRationalCoordinate where
  numerator := 3
  denominator := 2
  denominatorPositive := by norm_num
  quotient := 1
  remainder := 1
  decomposition := by norm_num
  remainderLt := by norm_num

def signedRoundingObservation
    (numerator denominator : String)
    (coordinate : ExactRationalCoordinate) : Json :=
  Json.mkObj [
    ("numerator", toJson numerator),
    ("denominator", toJson denominator),
    ("inbound", toJson (inboundRound coordinate)),
    ("outbound", toJson (outboundRound coordinate))
  ]

def phaseEdgeObservation
    (sourcePhase targetPhase : String) (allowed : Bool) : Json :=
  Json.mkObj [
    ("from", toJson sourcePhase),
    ("to", toJson targetPhase),
    ("allowed", toJson allowed)
  ]

def ownershipAtom : InterfaceAtom where
  kind := .ownership
  source := code 2
  target := code 3
  label := code 5

def cancellingOwnershipLedger : PreparedBoundaryLedger where
  excision := [⟨ownershipAtom, 1⟩]
  graft := [⟨ownershipAtom, -1⟩]
  rewrite := []

theorem cancellingOwnershipLedger_balanced :
    BoundaryBalanced cancellingOwnershipLedger := by
  norm_num [BoundaryBalanced, PreparedBoundaryLedger.totalBoundary,
    BoundaryLedger.IsZero, BoundaryLedger.add, BoundaryLedger.coefficient,
    cancellingOwnershipLedger, ownershipAtom]

def ownershipResidualCount : Nat :=
  (BoundaryLedger.support [ownershipAtom]
    cancellingOwnershipLedger.totalBoundary).length

theorem ownershipResidualCount_eq_zero : ownershipResidualCount = 0 := by
  decide

/-
The two strings below are a bounded precedence slice of the versioned wire
vocabulary.  They do not claim that a runtime parser or filesystem validator
ran inside Lean.
-/
def rejectionPrecedenceVector : List String :=
  ["PATH_OUTSIDE_ROOT", "STATEMENT_CHANGE"]

def patchPathOrdering : List String := ["src/a.rs", "src/z.rs"]

def observedCorpus : Json :=
  Json.mkObj [
    ("schema", toJson schema),
    ("assurance", toJson "goldenVectors"),
    ("exposesProposition", toJson false),
    ("permitsSourceWrite", toJson false),
    ("rounding", toJson [Json.mkObj [
      ("numerator", toJson "1"),
      ("denominator", toJson "2"),
      ("maximumIndex", toJson "3"),
      ("inbound", toJson (inboundRound scaledPositiveHalfAtThree)),
      ("outbound", toJson (outboundRound scaledPositiveHalfAtThree))]]),
    ("signedRounding", toJson [
      signedRoundingObservation "-3" "2" signedNegativeHalf,
      signedRoundingObservation "1" "3" signedOneThird,
      signedRoundingObservation "1" "2" signedPositiveHalf,
      signedRoundingObservation "2" "3" signedTwoThirds]),
    ("phaseEdges", toJson [
      phaseEdgeObservation "intentPrepared" "proposalVerified" true,
      phaseEdgeObservation "selectionDrafted" "committed" false]),
    ("balancedLedger", Json.mkObj [
      ("hash", toJson
        "64f60ee8f676680531e5e846753d72d05f3e144e26975128b0f74ffefa90fac2"),
      ("residualCount", toJson ownershipResidualCount)]),
    ("rejectionPrecedenceVector", toJson rejectionPrecedenceVector),
    ("patchPathOrdering", toJson patchPathOrdering)
  ]

private def hasFileType
    (path : System.FilePath) (expected : IO.FS.FileType) : IO Bool := do
  try
    return (← path.symlinkMetadata).type == expected
  catch _ =>
    return false

private def isSingleLinkRegularFile (path : System.FilePath) : IO Bool := do
  try
    let metadata ← path.symlinkMetadata
    return metadata.type == .file && metadata.numLinks == 1
  catch _ =>
    return false

def emitCorpus (path : String) : IO UInt32 := do
  if path.toUTF8.size = 0 || path.toUTF8.size > maxEmitPathBytes ||
      path != corpusEmitPath then
    IO.eprintln s!"emit path must be exactly {corpusEmitPath}"
    return 64
  let parentPaths : List System.FilePath :=
    ["tests", "tests/network-surgery", "tests/network-surgery/golden"]
  if !(← parentPaths.allM (hasFileType · .dir)) ||
      !(← isSingleLinkRegularFile path) then
    IO.eprintln "emit path must be an existing single-link regular file under regular corpus directories"
    return 65
  IO.FS.writeFile path (observedCorpus.compress ++ "\n")
  pure 0

def main (args : List String) : IO UInt32 :=
  match args with
  | [] => do
      IO.println observedCorpus.compress
      pure 0
  | ["--emit", path] => emitCorpus path
  | _ => do
      IO.eprintln "usage: surface_network_surgery_conformance [--emit PATH]"
      pure 64

end SurfaceNetworkSurgeryConformance

def main (args : List String) : IO UInt32 :=
  SurfaceNetworkSurgeryConformance.main args
