# Complete source: GRWTSK.Analysis.RealAnalysis.RealFunctions.ExactRationalRounding.Variant03d73452c99c6fd3.SignedRoundingAndNormalization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `201ec1edefe87aef531ed47a39063015aeb278ba` · SHA-256 `bc14443e293e8285e247637221327c9de94ccb8c3871808ee78f11c9fe531095`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
SignedRoundingAndNormalization
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac
Organized SHA-256: 18147cff30376cf2b26a729354bbb2914d5a0965b7e297eec3e6c980b337d8b4
PMD: 510.5.010.010 real functions (editorial navigation only).
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

/-- The complete configured raster-rounding vocabulary. -/
inductive RasterRounding where
  | nearest
  | floor
  | ceil
  deriving DecidableEq, Repr

/-- Exact counterpart of the runtime rounding operation.  The nearest branch
uses `floor (x + 1/2)`, matching JavaScript's ties-toward-positive-infinity
`Math.round`, including for negative half-integers. -/
def RasterRounding.round : RasterRounding → ℚ → ℤ
  | .nearest, value => Rat.floor (value + 1 / 2)
  | .floor, value => Rat.floor value
  | .ceil, value => Rat.ceil value

@[simp] theorem round_positive_tie :
    RasterRounding.nearest.round (1 / 2) = 1 := by
  change Rat.floor ((1 / 2 : ℚ) + 1 / 2) = 1
  rw [show ((1 / 2 : ℚ) + 1 / 2) = 1 by norm_num]
  change ⌊(1 : ℚ)⌋ = 1
  exact Int.floor_intCast 1

@[simp] theorem round_negative_tie :
    RasterRounding.nearest.round (-1 / 2) = 0 := by
  change Rat.floor ((-1 / 2 : ℚ) + 1 / 2) = 0
  rw [show ((-1 / 2 : ℚ) + 1 / 2) = 0 by norm_num]
  change ⌊(0 : ℚ)⌋ = 0
  exact Int.floor_intCast 0

@[simp] theorem round_zero :
    RasterRounding.nearest.round 0 = 0 := by
  change Rat.floor ((0 : ℚ) + 1 / 2) = 0
  rw [show ((0 : ℚ) + 1 / 2) = 1 / 2 by ring]
  change ⌊(1 / 2 : ℚ)⌋ = 0
  rw [Int.floor_eq_iff]
  norm_num

/-- An integer result with the IEEE-754 sign of zero retained separately.
`negativeZero = true` is meaningful only when `value = 0`. -/
structure SignedInteger where
  value : ℤ
  negativeZero : Bool
  negativeZeroOnlyAtZero : negativeZero = true → value = 0

/-- Exact abstraction of the sign produced by JavaScript rounding on a
nonzero rational input.  Rational inputs cannot themselves distinguish `0`
from `-0`; the output nevertheless records the observable negative zero
created by `Math.round` and `Math.ceil` on negative inputs. -/
def RasterRounding.roundSigned (mode : RasterRounding) (input : ℚ) : SignedInteger :=
  let result := mode.round input
  if zero : result = 0 then
    if negative : input < 0 ∧ mode ≠ .floor then
      { value := result
        negativeZero := true
        negativeZeroOnlyAtZero := fun _ => zero }
    else
      { value := result
        negativeZero := false
        negativeZeroOnlyAtZero := by simp }
  else
    { value := result
      negativeZero := false
      negativeZeroOnlyAtZero := by simp }

@[simp] theorem RasterRounding.roundSigned_value
    (mode : RasterRounding) (input : ℚ) :
    (mode.roundSigned input).value = mode.round input := by
  unfold RasterRounding.roundSigned
  dsimp only
  split
  · split <;> rfl
  · rfl

/-- JavaScript observes `Math.round(-0.5)` as negative zero, even though its
integer value equals zero. -/
@[simp] theorem roundSigned_negative_tie_value :
    (RasterRounding.nearest.roundSigned (-1 / 2)).value = 0 := by
  simp

@[simp] theorem roundSigned_negative_tie_sign :
    (RasterRounding.nearest.roundSigned (-1 / 2)).negativeZero = true := by
  simp only [RasterRounding.roundSigned, round_negative_tie]
  simp [show (-1 / 2 : ℚ) < 0 by norm_num]

@[simp] theorem roundSigned_positive_tie_sign :
    (RasterRounding.nearest.roundSigned (1 / 2)).negativeZero = false := by
  simp only [RasterRounding.roundSigned, round_positive_tie]
  simp

/-- Increasing and decreasing display axes. -/
inductive AxisDirection where
  | increasing
  | decreasing
  deriving DecidableEq, Repr

/-- Signed rational result used after normalized coordinate division. -/
structure SignedRational where
  value : ℚ
  negativeZero : Bool
  negativeZeroOnlyAtZero : negativeZero = true → value = 0

/-- Normalize an already-quantized signed integer. -/
def normalizeSignedInteger (direction : AxisDirection) (extent : Nat)
    (quantized : SignedInteger) : SignedRational :=
  match direction with
  | .increasing =>
      { value := (quantized.value : ℚ) / extent
        negativeZero := quantized.negativeZero
        negativeZeroOnlyAtZero := by
          intro negative
          have quantizedZero := quantized.negativeZeroOnlyAtZero negative
          simp [quantizedZero] }
  | .decreasing =>
      { value := 1 - (quantized.value : ℚ) / extent
        negativeZero := false
        negativeZeroOnlyAtZero := by simp }

/-- Normalize a signed quantized coordinate while retaining negative zero on
an increasing axis.  Axis reversal maps numeric zero to one and therefore
clears the zero sign. -/
def normalizeSignedRasterCoordinate (rounding : RasterRounding)
    (direction : AxisDirection) (extent : Nat) (coordinate : ℚ) :
    SignedRational :=
  normalizeSignedInteger direction extent (rounding.roundSigned coordinate)

@[simp] theorem normalizeSigned_negative_tie_value (extent : Nat) :
    (normalizeSignedRasterCoordinate .nearest .increasing extent (-1 / 2)).value =
  0 := by
  simp [normalizeSignedRasterCoordinate, normalizeSignedInteger]

@[simp] theorem normalizeSigned_negative_tie_sign (extent : Nat) :
    (normalizeSignedRasterCoordinate .nearest .increasing extent
      (-1 / 2)).negativeZero = true := by
  simp [normalizeSignedRasterCoordinate, normalizeSignedInteger]

@[simp] theorem normalizeSigned_negative_tie_decreasing (extent : Nat) :
    (normalizeSignedRasterCoordinate .nearest .decreasing extent
      (-1 / 2)).value = 1 ∧
    (normalizeSignedRasterCoordinate .nearest .decreasing extent
      (-1 / 2)).negativeZero = false := by
  constructor <;>
    simp [normalizeSignedRasterCoordinate, normalizeSignedInteger]

/-- Quantize a pixel coordinate, normalize by a positive extent, and apply
the configured axis direction.  No clamping is performed. -/
def normalizeRasterCoordinate (rounding : RasterRounding)
    (direction : AxisDirection) (extent : Nat) (coordinate : ℚ) : ℚ :=
  let normalized := (rounding.round coordinate : ℚ) / extent
  match direction with
  | .increasing => normalized
  | .decreasing => 1 - normalized

@[simp] theorem normalizeRasterCoordinate_decreasing (rounding)
    (extent : Nat) (coordinate : ℚ) :
    normalizeRasterCoordinate rounding .decreasing extent coordinate =
      1 - normalizeRasterCoordinate rounding .increasing extent coordinate := by
  rfl

/-- Three-valued sign of the scalar used by exact-threshold ownership policy. -/
inductive RoundingScalarSign where
  | negative
  | zero
  | positive
  deriving DecidableEq, Repr

def roundingScalarSign (scalar : ℚ) : RoundingScalarSign :=
  if scalar > 0 then .positive else if scalar < 0 then .negative else .zero

@[simp] theorem roundingScalarSign_zero : roundingScalarSign 0 = .zero := by
  simp [roundingScalarSign]

end BitMatrix.Runtime.Semantics
```
