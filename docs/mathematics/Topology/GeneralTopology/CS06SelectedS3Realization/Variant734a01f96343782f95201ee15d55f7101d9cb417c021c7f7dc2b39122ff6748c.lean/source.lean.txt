import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/--
CS-06 projects the branch-relative `S³` claim.  When `S³` is selected this
is its compactness assertion; an `S²` selection creates no `S³` witness.
-/
theorem cs06_selectedS3Realization
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS06Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs06Claim⟩

end FCRS.ControlledSpherical.Theorems
