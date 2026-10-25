# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuantizationLevel.Variant46fda411748e4abf1c5e0bff6da99b62951f1f08036e18486fc753e7335f09bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bcfd9a9204d99ef91349ba1dcf26d187da05cea` · SHA-256 `46fda411748e4abf1c5e0bff6da99b62951f1f08036e18486fc753e7335f09bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Quantization.Resolution

/-!
# Positive finite quantization levels

`Surface.Quantization.ResolutionBits` supplies the neutral representation
carrier. This module adds assurance-owned encoding, overflow, and rounding
policies without redefining that carrier.

The policy enumerations below describe representation choices.  At present
only bit planes have a formal implementation; registering bounded words does
not manufacture an implementation or an equivalence with bit planes.
-/

namespace Surface.ContinuousAssurance

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
