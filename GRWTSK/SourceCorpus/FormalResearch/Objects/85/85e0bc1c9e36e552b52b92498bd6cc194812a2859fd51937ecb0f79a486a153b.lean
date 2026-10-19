/-!
# Immutable spectral-closure cut

Every boundary law, operator, transform, and trace is bound to one committed
finite snapshot.  A later mutation mints a different cut.
-/

namespace Mathematics.ConnesBitfield

universe u

structure SpectralClosureCut where
  Digest : Type u
  snapshotDigest : Digest
  bitfieldDigest : Digest
  kernelFamilyDigest : Digest
  crossedProductDigest : Digest
  operatorDigest : Digest
  traceRegistryDigest : Digest
  authorityDigest : Digest
  immutable : Prop
  immutableProof : immutable
  certificatesBoundToSnapshot : Prop
  certificatesBoundProof :
    certificatesBoundToSnapshot

end Mathematics.ConnesBitfield
