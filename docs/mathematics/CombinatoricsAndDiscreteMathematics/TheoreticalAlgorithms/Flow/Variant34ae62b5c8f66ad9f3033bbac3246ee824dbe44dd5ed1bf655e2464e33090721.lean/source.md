# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Flow.Variant34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33c389ee9501eafdc82da777a99e2b04cb10afe1` · SHA-256 `34ae62b5c8f66ad9f3033bbac3246ee824dbe44dd5ed1bf655e2464e33090721`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Flow.Arithmetic
import Surface.Arithmetic.FiniteField
import Surface.Arithmetic.EllipticCurve.PointCounting
import Surface.Arithmetic.EllipticCurve.LFunction

namespace Surface.Arithmetic.EllipticCurve.BSD

/-!
# BSD-aware Boolean flow constructors

These constructors connect the symbolic Boolean flow grammar to the typed
arithmetic layer.  They do not assert BSD, analytic continuation, or rank-loop
equivalence.
-/

namespace Flow

open Surface.Arithmetic
open Surface.Arithmetic.EllipticCurve

/-- Build a local point-count flow datum from an actual finite enumeration count. -/
def pointCountModuloFromCurve
    (curveLabel : String)
    (F : FiniteFieldLike)
    (E : ShortWeierstrass F.field) :
    Flow.LocalPointCount where
  curve := curveLabel
  p := F.cardinality
  Np := PointCounting.pointCount F E

/-- Convert an arithmetic point count into a local factor flow node. -/
def localFactorFromPointCount
    (c : Flow.LocalPointCount) :
    Flow.Expression String :=
  Flow.localFactorOfCount c

/-- Euler-product approximation from arithmetic-backed local counts. -/
def eulerProductApproxFromCurve
    (bound : Nat)
    (counts : List Flow.LocalPointCount) :
    Flow.Expression String :=
  Flow.eulerProductApprox bound counts

/-- Log-scaling claim node; this is a comparison node, not an analytic theorem. -/
def logScalingClaim
    (bound rank : Nat)
    (counts : List Flow.LocalPointCount) :
    Flow.Expression String :=
  Flow.asymptoticLogScaling bound rank counts

/-- Analytic-rank comparison node gated by an order-of-vanishing certificate. -/
def analyticRankComparisonNode
    {K : FieldLike}
    {E : ShortWeierstrass K}
    {L : HasseWeilLFunction K E}
    (curveLabel : String)
    (C : OrderOfVanishingCertificate L) :
    Flow.Expression String :=
  Flow.analyticContinuationBridge
    curveLabel
    (orderOfVanishing C)

/-- A checked finite example node built from the F5 example point count. -/
def exampleF5PointCountNode : Flow.Expression String :=
  Flow.localFactorOfCount
    (pointCountModuloFromCurve
      "example F5 curve"
      F5
      exampleCurveF5)

theorem exampleF5PointCountNode_uses_checked_count :
    (pointCountModuloFromCurve
      "example F5 curve"
      F5
      exampleCurveF5).Np = 9 := by
  native_decide

end Flow
end Surface.Arithmetic.EllipticCurve.BSD
```
