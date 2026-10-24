import Surface.Homology.Betti

namespace Surface

structure QuasiIsomorphismDescriptor where
  chainMap : ChainMapDescriptor
  inducesHomologyIso : Prop

theorem quasiIsomorphism_requires_homology_certificate
    (Q : QuasiIsomorphismDescriptor) :
    Q.inducesHomologyIso -> Q.inducesHomologyIso := by
  intro h
  exact h

end Surface
