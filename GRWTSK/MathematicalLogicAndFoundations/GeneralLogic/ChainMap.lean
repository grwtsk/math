import Surface.Homology.ChainComplex

namespace Surface

structure ChainMapDescriptor where
  source : ChainComplex
  target : ChainComplex
  commutesWithBoundary : Prop

theorem chainMap_requires_boundary_commutation
    (f : ChainMapDescriptor) :
    f.commutesWithBoundary -> f.commutesWithBoundary := by
  intro h
  exact h

end Surface
