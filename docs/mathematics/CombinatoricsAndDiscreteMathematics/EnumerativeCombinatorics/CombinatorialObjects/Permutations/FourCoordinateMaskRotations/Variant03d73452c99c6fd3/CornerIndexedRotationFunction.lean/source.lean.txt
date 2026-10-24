/-
CornerIndexedRotationFunction
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac
Organized SHA-256: 18147cff30376cf2b26a729354bbb2914d5a0965b7e297eec3e6c980b337d8b4
PMD: 510.7.010.030.010 permutations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Threshold functions retain all positive/negative/zero branches, complete three-policy datatype and optional owner override. These are exact pure rational-to-Bool functions and conditional equalities, not an ownership authority or evidence of a foreign API. Four-coordinate rotation is copied as a function; no cardinality/inverse law is fabricated. The exact original namespace BitMatrix.Runtime.Semantics is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

import BitMatrix.Codec.BitDocument
import BitMatrix.Core.Basic
import BitMatrix.Geometry.GridCell
import BitMatrix.Geometry.Stroke
import BitMatrix.Rhetorical.Core
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Rat.Floor

import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FiniteBooleanMaskWeights.Variant03d73452c99c6fd3.DistinctOccupancyAndNormalizedSelection

/-!
# Runtime-visible Bit semantics

These definitions are the formal side of the runtime correspondence ledger.
They do not claim byte-for-byte equivalence with a Rust or JavaScript program;
that promotion additionally requires the executable conformance tests recorded
by the concept ledger.
-/

namespace BitMatrix.Runtime.Semantics

/-- The two configured traversal directions used by exact-carrier ties. -/
inductive TraversalDirection where
  | clockwise
  | counterclockwise
  deriving DecidableEq, Repr

/-- Canonical physical corner order `TL, TR, BR, BL`. -/
inductive SquareCorner where
  | topLeft
  | topRight
  | bottomRight
  | bottomLeft
  deriving DecidableEq, Repr

/-- Clockwise quarter turns from the top-left reference corner. -/
def SquareCorner.quarterTurns : SquareCorner → Nat
  | .topLeft => 0
  | .topRight => 1
  | .bottomRight => 2
  | .bottomLeft => 3

/-- Rotate a canonical `TL, TR, BR, BL` mask clockwise.  Output coordinate
`j` reads reference coordinate `j - turns` modulo four, matching the runtime's
`rotated[(index + turns) % 4] = reference[index]`. -/
def rotateOwnershipMask4 (mask : OwnershipSelectionMask 4) (turns : Nat) :
    OwnershipSelectionMask 4 :=
  ⟨fun output =>
    mask ⟨(output.val + 4 - turns % 4) % 4,
      Nat.mod_lt _ (by decide)⟩⟩

end BitMatrix.Runtime.Semantics
