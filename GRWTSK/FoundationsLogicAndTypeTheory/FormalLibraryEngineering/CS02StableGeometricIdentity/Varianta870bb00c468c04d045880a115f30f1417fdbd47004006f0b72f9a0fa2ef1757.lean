import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/-- CS-02 research-rule projection for versioned geometric identity. -/
theorem cs02_stableGeometricIdentity
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    CS02Claim SM := by
  rcases registry.witnesses with ⟨W⟩
  exact W.stableGeometricIdentity

end FCRS.ControlledSpherical.Theorems
