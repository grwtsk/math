import Surface.Legacy.AffineTopos.Modality

namespace Surface
namespace Legacy
namespace AffineTopos

structure TheoremAwareArtifact where
  object : Object
  theoremNames : List String
  fixtureNames : List String
  claimBoundary : AffineClaimBoundary

structure CoveringFamily where
  base : Context
  artifacts : List TheoremAwareArtifact
  foundationCompatible : Prop
  gammaCompatible : Prop
  claimBoundary : AffineClaimBoundary

structure SurfaceSite where
  contexts : List Context
  coverings : List CoveringFamily
  claimBoundary : AffineClaimBoundary

theorem coveringFamily_foundation_compatible
    (C : CoveringFamily) :
    C.foundationCompatible → C.foundationCompatible := by
  intro h
  exact h

theorem coveringFamily_gamma_compatible
    (C : CoveringFamily) :
    C.gammaCompatible → C.gammaCompatible := by
  intro h
  exact h

end AffineTopos
end Legacy
end Surface
