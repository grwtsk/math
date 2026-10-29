import FCRS.ControlledSpherical.Registry

namespace FCRS.ControlledSpherical.Theorems

/--
CS-04 projects the branch-relative `S²` claim.  When `S²` is selected this
is its compactness assertion; an `S³` selection creates no `S²` witness.
-/
theorem cs04_selectedS2Realization
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS04Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs04Claim⟩

end FCRS.ControlledSpherical.Theorems
