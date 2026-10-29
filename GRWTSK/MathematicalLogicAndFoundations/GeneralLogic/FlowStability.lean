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
