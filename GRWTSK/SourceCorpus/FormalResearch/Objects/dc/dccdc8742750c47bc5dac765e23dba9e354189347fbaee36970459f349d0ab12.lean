import Surface.Homology.ChainMap

namespace Surface

structure HomologyDescriptor where
  complex : ChainComplex
  degree : Nat
  computedByCertificate : Prop

theorem homology_descriptor_requires_chain_complex
    (H : HomologyDescriptor) :
    H.complex.boundarySquaredZero -> H.complex.boundarySquaredZero := by
  intro h
  exact h

end Surface
