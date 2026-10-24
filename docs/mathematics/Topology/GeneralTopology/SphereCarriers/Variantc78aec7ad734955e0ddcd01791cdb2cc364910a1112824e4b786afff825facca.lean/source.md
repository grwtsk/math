# Complete source: GRWTSK.Topology.GeneralTopology.SphereCarriers.Variantc78aec7ad734955e0ddcd01791cdb2cc364910a1112824e4b786afff825facca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eda0db589165cc4a73f8746ea1b2527c6a968407` · SHA-256 `c78aec7ad734955e0ddcd01791cdb2cc364910a1112824e4b786afff825facca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Foundations

universe u1 u2 u3

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/-- Opaque signature-level carrier playing the role of `S¹`. -/
structure Sphere1Carrier where
  Point : Type u1
  compactnessAssertion : Prop

/-- Opaque signature-level carrier playing the role of `S²`. -/
structure Sphere2Carrier where
  Point : Type u2
  compactnessAssertion : Prop

/-- Opaque signature-level carrier playing the role of `S³`. -/
structure Sphere3Carrier where
  Point : Type u3
  compactnessAssertion : Prop

/--
View the existing controlled-plane carrier as the spherical layer's opaque
`S²` carrier.  This is only a signature-level relabelling: its point type and
compactness assertion are reused definitionally, and no sphere topology is
introduced.
-/
def Sphere2Carrier.ofCarrier2D
    (P : Carrier2D.{u2}) : Sphere2Carrier.{u2} where
  Point := P.Point
  compactnessAssertion := P.compactnessAssertion

def CompactSphere1 (S : Sphere1Carrier) : Prop :=
  S.compactnessAssertion

def CompactSphere2 (S : Sphere2Carrier) : Prop :=
  S.compactnessAssertion

def CompactSphere3 (S : Sphere3Carrier) : Prop :=
  S.compactnessAssertion

end FCRS.ControlledSpherical
```
