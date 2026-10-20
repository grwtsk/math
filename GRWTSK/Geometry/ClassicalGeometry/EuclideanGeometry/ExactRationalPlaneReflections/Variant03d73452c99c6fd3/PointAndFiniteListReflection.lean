/-
PointAndFiniteListReflection
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac
Organized SHA-256: 18147cff30376cf2b26a729354bbb2914d5a0965b7e297eec3e6c980b337d8b4
PMD: 510.3.010.010 euclidean geometry (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Rational nearest rounding is floor(x+1/2), including negative ties; signed-zero records retain value/sign consistency. Axis normalization statements retain the original unrestricted Nat extent (including zero), rather than silently adding positivity. Rational line reflection keeps its nonzero-normal constructor premise; only diagonal involution/list-length identities actually proved are claimed. The exact original namespace BitMatrix.Runtime.Semantics is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

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

/-!
# Runtime-visible Bit semantics

These definitions are the formal side of the runtime correspondence ledger.
They do not claim byte-for-byte equivalence with a Rust or JavaScript program;
that promotion additionally requires the executable conformance tests recorded
by the concept ledger.
-/

namespace BitMatrix.Runtime.Semantics

/-- A rational point at the raster boundary. -/
structure RasterPoint where
  x : ℚ
  y : ℚ
  deriving DecidableEq, Repr

/-- Coordinate-swap reflection used by `reflectDiagonal`. -/
def RasterPoint.reflectDiagonal (point : RasterPoint) : RasterPoint :=
  { x := point.y, y := point.x }

@[simp] theorem RasterPoint.reflectDiagonal_involutive (point : RasterPoint) :
    point.reflectDiagonal.reflectDiagonal = point := by
  cases point
  rfl

/-- Exact reflection descriptors supported by the JavaScript carrier API. -/
inductive ReflectionDescriptor where
  | identity
  | xAxis (offset : ℚ)
  | yAxis (offset : ℚ)
  | diagonal (offset : ℚ)
  | antiDiagonal (offset : ℚ)
  | central (center : RasterPoint)
  | line (normal : RasterPoint) (offset : ℚ)
      (normalNonzero : normal.x ≠ 0 ∨ normal.y ≠ 0)

/-- Exact rational point reflection. -/
def reflectPoint (point : RasterPoint) : ReflectionDescriptor → RasterPoint
  | .identity => point
  | .xAxis offset => { x := point.x, y := 2 * offset - point.y }
  | .yAxis offset => { x := 2 * offset - point.x, y := point.y }
  | .diagonal offset => { x := point.y + offset, y := point.x - offset }
  | .antiDiagonal offset => { x := offset - point.y, y := offset - point.x }
  | .central center => { x := 2 * center.x - point.x, y := 2 * center.y - point.y }
  | .line normal offset _ =>
      let squaredNorm := normal.x ^ 2 + normal.y ^ 2
      let displacement :=
        (normal.x * point.x + normal.y * point.y - offset) / squaredNorm
      { x := point.x - 2 * displacement * normal.x
        y := point.y - 2 * displacement * normal.y }

/-- Reflect every point of a finite iterable without changing its order. -/
def reflectCarrierSpace (points : List RasterPoint)
    (descriptor : ReflectionDescriptor) : List RasterPoint :=
  points.map (fun point => reflectPoint point descriptor)

/-- Iterable specialization of coordinate-swap reflection. -/
def reflectCarrierDiagonal (points : List RasterPoint) : List RasterPoint :=
  points.map RasterPoint.reflectDiagonal

@[simp] theorem reflectCarrierSpace_length (points : List RasterPoint)
    (descriptor : ReflectionDescriptor) :
    (reflectCarrierSpace points descriptor).length = points.length := by
  simp [reflectCarrierSpace]

@[simp] theorem reflectPoint_diagonal_zero (point : RasterPoint) :
    reflectPoint point (.diagonal 0) = point.reflectDiagonal := by
  cases point
  simp [reflectPoint, RasterPoint.reflectDiagonal]

@[simp] theorem reflectCarrierDiagonal_involutive (points : List RasterPoint) :
    reflectCarrierDiagonal (reflectCarrierDiagonal points) = points := by
  simp [reflectCarrierDiagonal, List.map_map, Function.comp_def]

end BitMatrix.Runtime.Semantics
