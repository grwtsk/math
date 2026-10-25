# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Spectral.Variantbe269bdc7949677572f4d73441341f16e6e7a2f8561a28b07ee0c0c45a3cf267

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8a884e186c75ed034850c6e42ef0769bde4b0ef` · SHA-256 `be269bdc7949677572f4d73441341f16e6e7a2f8561a28b07ee0c0c45a3cf267`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Real.Basic

/-!
# Conditional pointed spectral contracts

The runtime accepts an external distance provider. These declarations model
that dependency explicitly and do not construct a Dirac operator or assert a
general Connes distance theorem.
-/

namespace BitMatrix.Runtime.Spectral

/-- A supplied nonnegative distance-like provider. -/
structure DistanceProvider (Point : Type) where
  distance : Point → Point → ℝ
  nonnegative : ∀ left right, 0 ≤ distance left right

/-- Pointed data packages a finite point family with an explicit provider. -/
structure PointedData (Point : Type) where
  points : List Point
  spectralDistance : DistanceProvider Point

/-- Equality with an independently supplied metric is a separate obligation. -/
def RecoversMetric {Point : Type}
    (spectral geodesic : DistanceProvider Point) : Prop :=
  ∀ left right, spectral.distance left right = geodesic.distance left right

/-- Conditional evidence for metric recovery; no provider is manufactured. -/
structure MetricRecoveryCapability (Point : Type) where
  spectral : DistanceProvider Point
  geodesic : DistanceProvider Point
  recovers : RecoversMetric spectral geodesic

end BitMatrix.Runtime.Spectral
```
