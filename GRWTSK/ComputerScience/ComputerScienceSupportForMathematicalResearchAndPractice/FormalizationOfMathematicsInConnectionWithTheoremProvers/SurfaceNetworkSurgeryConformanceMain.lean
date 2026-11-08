import Lean.Data.Json
import Surface.Core.NetworkSurgery

/-!
# Finite network-surgery conformance corpus

The executable computes a bounded collection of Lean observations shared with
the Rust golden corpus.  `--emit` writes only this requested JSON artifact.  A
matching corpus is finite test evidence: it is not a proposition certificate,
parser proof, filesystem authorization, or universal implementation theorem.
-/

open Lean
open Surface.Core.Transport Surface.Core.NetworkSurgery

namespace SurfaceNetworkSurgeryConformance

def schema : String := "surface.network-surgery.golden.v1"
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

end SurfaceNetworkSurgeryConformance

/-!
Local attribution: grwtsk contributors.
Boundary split of math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec, blob f762014b21f830388d48d4c85053afb9a3db23a0.
Retained definitions/policies keep their original scope; the operational driver
is maintained in Noe at tools/math/relocated/GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceNetworkSurgeryConformanceMain.lean.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
-/
