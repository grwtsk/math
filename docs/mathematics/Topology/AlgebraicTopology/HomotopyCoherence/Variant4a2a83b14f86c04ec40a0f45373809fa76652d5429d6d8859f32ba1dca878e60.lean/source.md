# Complete source: GRWTSK.Topology.AlgebraicTopology.HomotopyCoherence.Variant4a2a83b14f86c04ec40a0f45373809fa76652d5429d6d8859f32ba1dca878e60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5d882203966e9d8c37c7d2dc8fbdc6998d09b77` · SHA-256 `4a2a83b14f86c04ec40a0f45373809fa76652d5429d6d8859f32ba1dca878e60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.HomotopyCoherence

/-!
# Folder.Theorem.AdelicInfinityTopos.HomotopyCoherence

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports homotopy-coherence contract exposures.
Ontology: proof.adelic.homotopy_coherence
Pivot role: dual
Zero typology: mixed
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace HomotopyCoherence

theorem homotopy_restrictions_identity_coherent
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    (H : Folder.AdelicInfinityTopos.HomotopyCoherentRestrictions S) :
    H.identityCoherent :=
  Folder.AdelicInfinityTopos.homotopy_restrictions_identity_coherent H

theorem homotopy_restrictions_composition_coherent
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    (H : Folder.AdelicInfinityTopos.HomotopyCoherentRestrictions S) :
    H.compositionCoherent :=
  Folder.AdelicInfinityTopos.homotopy_restrictions_composition_coherent H

theorem homotopy_restrictions_higher_coherent
    {S : Folder.AdelicInfinityTopos.AdelicSpectralSheaf}
    (H : Folder.AdelicInfinityTopos.HomotopyCoherentRestrictions S) :
    H.higherCoherence :=
  Folder.AdelicInfinityTopos.homotopy_restrictions_higher_coherent H

end HomotopyCoherence
end AdelicInfinityTopos
end Theorem
end Folder
```
