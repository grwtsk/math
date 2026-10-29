import Surface.Geometry.Kakeya.Tubes

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Shading data on finite tube configurations.

What is certificate-gated:
Membership of a shading in the configuration is Prop-valued data.

What is not claimed:
No Kakeya estimate follows from a shading descriptor.
-/

/-- A shading carried by a tube configuration. -/
structure Shading
    (K : TubeConfiguration) where
  tubeId : Nat
  shadedSetLabel : String
  belongsToConfiguration : Prop
  belongsToConfigurationCertified : belongsToConfiguration
  boundary : List String

end Surface.Geometry.Kakeya
