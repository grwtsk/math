/-
SampleCountsAndUnitInterval
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac
Organized SHA-256: 18147cff30376cf2b26a729354bbb2914d5a0965b7e297eec3e6c980b337d8b4
PMD: 510.7.010.010 counting principles (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Midpoint coverage counts Fin samples×Fin samples, zero sampling denotes0 and the unit-interval result retains samplesPositive. Ownership and occupancy records remain distinct; normalized ownership mass requires selectedOwnerCount≠0. The list-selection record retains all four raw data fields. Its separate Coherent predicate requires mask-length agreement, nonempty selection and weight/owner equalities; the raw record constructor does not establish these properties. zip/findSome semantics are unchanged. The exact original namespace BitMatrix.Runtime.Semantics is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

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

import GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ExactRationalPlaneReflections.Variant03d73452c99c6fd3.PointAndFiniteListReflection

/-!
# Runtime-visible Bit semantics

These definitions are the formal side of the runtime correspondence ledger.
They do not claim byte-for-byte equivalence with a Rust or JavaScript program;
that promotion additionally requires the executable conformance tests recorded
by the concept ledger.
-/

namespace BitMatrix.Runtime.Semantics

/-- A Boolean region-membership predicate over rational points. -/
abbrev PointInRegionPredicate := RasterPoint → Bool

/-- A nondegenerate normalized cell support. -/
structure CellSupport where
  minX : ℚ
  maxX : ℚ
  minY : ℚ
  maxY : ℚ
  xNondegenerate : minX < maxX
  yNondegenerate : minY < maxY

/-- The midpoint-quadrature sample associated with a row and column. -/
def cellSamplePoint (cell : CellSupport) (samples : Nat)
    (row column : Fin samples) : RasterPoint where
  x := cell.minX + ((column.val : ℚ) + 1 / 2) / samples *
    (cell.maxX - cell.minX)
  y := cell.minY + ((row.val : ℚ) + 1 / 2) / samples *
    (cell.maxY - cell.minY)

/-- Number of selected midpoint samples. -/
def coverageCount (region : PointInRegionPredicate) (cell : CellSupport)
    (samples : Nat) : Nat :=
  ((Finset.univ : Finset (Fin samples × Fin samples)).filter
    (fun index => region (cellSamplePoint cell samples index.1 index.2))).card

/-- Deterministic midpoint-quadrature coverage fraction.  `samples = 0`
denotes zero because there are no sample points; runtime validation excludes
that configuration before calling the operation. -/
def sampledCoverage (region : PointInRegionPredicate) (cell : CellSupport)
    (samples : Nat) : ℚ :=
  (coverageCount region cell samples : ℚ) / (samples * samples)

@[simp] theorem sampledCoverage_zero (region : PointInRegionPredicate)
    (cell : CellSupport) : sampledCoverage region cell 0 = 0 := by
  simp [sampledCoverage, coverageCount]

/-- Midpoint selection cannot exceed the complete sample grid. -/
theorem coverageCount_le_sampleCount (region : PointInRegionPredicate)
    (cell : CellSupport) (samples : Nat) :
    coverageCount region cell samples ≤ samples * samples := by
  unfold coverageCount
  calc
    ((Finset.univ : Finset (Fin samples × Fin samples)).filter
        (fun index => region
          (cellSamplePoint cell samples index.1 index.2))).card ≤
        (Finset.univ : Finset (Fin samples × Fin samples)).card :=
      Finset.card_filter_le _ _
    _ = samples * samples := by simp

/-- A positively sampled midpoint coverage is a genuine unit-interval
fraction. -/
theorem sampledCoverage_mem_unitInterval (region : PointInRegionPredicate)
    (cell : CellSupport) {samples : Nat} (samplesPositive : 0 < samples) :
    0 ≤ sampledCoverage region cell samples ∧
      sampledCoverage region cell samples ≤ 1 := by
  constructor
  · unfold sampledCoverage
    positivity
  · unfold sampledCoverage
    rw [div_le_one]
    · exact_mod_cast coverageCount_le_sampleCount region cell samples
    · positivity

end BitMatrix.Runtime.Semantics
