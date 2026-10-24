# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.FlowStability.Variant3ea646a3079c9f4fdd760569940d3aaac8d24a37d6c3d1616c4be9d60474156c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbced67357bb621965f00bd4bb8725636de2a5fa` · SHA-256 `3ea646a3079c9f4fdd760569940d3aaac8d24a37d6c3d1616c4be9d60474156c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Homology.QuasiIsomorphism

namespace Surface
namespace Homology

structure HomologyStabilityCertificate where
  frameCommutation : FrameCommutationCertificate
  chainMap : ChainMapDescriptor
  quasiIso : QuasiIsomorphismDescriptor
  claimSound : Prop

/--
Accessor for the explicit stability claim carried by the certificate.

This is not a heat-flow stability theorem, not a quasi-isomorphism theorem, and
not evidence that homology is preserved.  A theorem with that content must use
the frame-commutation, chain-map, and quasi-isomorphism data in a nontrivial
homological statement.
-/
def HomologyStabilityCertificate.claimSoundInput
    (cert : HomologyStabilityCertificate) : Prop :=
  cert.claimSound

theorem HomologyStabilityCertificate.claimSound_id
    (cert : HomologyStabilityCertificate) :
    cert.claimSoundInput -> cert.claimSoundInput := by
  intro h
  exact h

end Homology
end Surface
```
