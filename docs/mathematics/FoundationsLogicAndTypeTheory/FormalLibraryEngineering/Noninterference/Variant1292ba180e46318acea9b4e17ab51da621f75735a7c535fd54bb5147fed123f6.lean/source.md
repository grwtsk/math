# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Noninterference.Variant1292ba180e46318acea9b4e17ab51da621f75735a7c535fd54bb5147fed123f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77eea89d440c021cca35444193fa8aae494443e4` · SHA-256 `1292ba180e46318acea9b4e17ab51da621f75735a7c535fd54bb5147fed123f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Presentation.NodeProfile

namespace Mathematics.SemiLocalDefect.Presentation

def NodeProfile.withPresentation
    (profile : NodeProfile)
    (presentationRef : String) :
    NodeProfile where
  nodeRef := profile.nodeRef
  capacityRef := profile.capacityRef
  openObligationRefs := profile.openObligationRefs
  presentationRef := presentationRef
  authoritativeEffect := profile.authoritativeEffect

theorem presentation_preserves_capacity_reference
    (profile : NodeProfile)
    (presentationRef : String) :
    (profile.withPresentation presentationRef).capacityRef =
      profile.capacityRef :=
  rfl

theorem presentation_has_no_authoritative_effect
    (profile : NodeProfile)
    (presentationRef : String)
    (profile_nonauthoritative :
      profile.authoritativeEffect = false) :
    (profile.withPresentation presentationRef).authoritativeEffect =
      false :=
  profile_nonauthoritative

end Mathematics.SemiLocalDefect.Presentation
```
