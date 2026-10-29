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
