# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuantizationLevel.Variantab722fd397e04ece80c295826786b47df753a58fe18e0a9c9a2d40914a67f14a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e23c8fc8eea45fda5af1983c1e25d17a36204fd` · SHA-256 `ab722fd397e04ece80c295826786b47df753a58fe18e0a9c9a2d40914a67f14a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Positive finite quantization levels

`ResolutionBits` records representational granularity and its positivity
proof.  It is intentionally independent of matrix dimensions, compiler word
width, evidence authority, assurance level, and claim status.

The policy enumerations below describe representation choices.  At present
only bit planes have a formal implementation; registering bounded words does
not manufacture an implementation or an equivalence with bit planes.
-/

namespace Surface.ContinuousAssurance

/-- A finite, strictly positive number of quantization bits. -/
structure ResolutionBits where
  value : Nat
  positive : 0 < value
  deriving Repr

instance : DecidableEq ResolutionBits :=
  fun left right =>
    if h : left.value = right.value then
      isTrue (by cases left; cases right; simp_all)
    else
      isFalse (fun equality => h (congrArg ResolutionBits.value equality))

/-- The positivity proof carried by every resolution. -/
theorem ResolutionBits.value_pos
    (resolution : ResolutionBits) :
    0 < resolution.value :=
  resolution.positive

/-- Representation family selected by a quantization profile. -/
inductive QuantizationEncoding
  | bitPlanes
  | boundedWords
  deriving DecidableEq, Repr

/-- Behavior requested when a compiler target cannot hold the request. -/
inductive QuantizationOverflowPolicy
  | reject
  | compilerSaturate
  deriving DecidableEq, Repr

/-- Explicit rounding policy for a numerical encoder. -/
inductive QuantizationRoundingPolicy
  | floor
  | ceiling
  | nearestTiesToEven
  deriving DecidableEq, Repr

end Surface.ContinuousAssurance
```
