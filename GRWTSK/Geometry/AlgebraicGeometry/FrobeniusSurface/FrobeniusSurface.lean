set_option autoImplicit false

namespace Think.Geometry.FrobeniusSurface

structure FrobeniusSurface where
  absoluteFrobeniusImplemented : Bool := false
  geometricFrobeniusGlued : Bool := false
  mathlibSchemeInterfaceActive : Bool := false
  drinfeldShtukaResidueIsolated : Bool := true

def currentGeometryBoundary : FrobeniusSurface := {}

theorem absolute_frobenius_not_implemented :
    currentGeometryBoundary.absoluteFrobeniusImplemented = false :=
  rfl

theorem geometric_frobenius_not_glued :
    currentGeometryBoundary.geometricFrobeniusGlued = false :=
  rfl

theorem mathlib_scheme_interface_not_active :
    currentGeometryBoundary.mathlibSchemeInterfaceActive = false :=
  rfl

theorem drinfeld_shtuka_residue_isolated :
    currentGeometryBoundary.drinfeldShtukaResidueIsolated = true :=
  rfl

end Think.Geometry.FrobeniusSurface
