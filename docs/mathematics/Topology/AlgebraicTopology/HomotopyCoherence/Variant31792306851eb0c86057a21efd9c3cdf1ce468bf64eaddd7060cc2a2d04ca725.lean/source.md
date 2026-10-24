# Complete source: GRWTSK.Topology.AlgebraicTopology.HomotopyCoherence.Variant31792306851eb0c86057a21efd9c3cdf1ce468bf64eaddd7060cc2a2d04ca725

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd4f475a5313023b2b8d81aa381bcd4962439f77` · SHA-256 `31792306851eb0c86057a21efd9c3cdf1ce468bf64eaddd7060cc2a2d04ca725`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.RestrictionMap

/-!
# Folder.AdelicInfinityTopos.HomotopyCoherence

Radiation role: research-boundary
BinaryMatrix spine: This module stores infinity-categorical coherence as contract fields.
Ontology: adelic.homotopy_coherence
Pivot role: dual
Zero typology: mixed
Contract boundary: contract
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace AdelicInfinityTopos

structure HomotopyCoherentRestrictions
    (S : AdelicSpectralSheaf) where
  restriction :
    Place → Place → Type _
  rho :
    ∀ i j, restriction i j → AdelicRestrictionMap S i j
  identityCoherent : Prop
  identityCoherent_certified : identityCoherent
  compositionCoherent : Prop
  compositionCoherent_certified : compositionCoherent
  higherCoherence : Prop
  higherCoherence_certified : higherCoherence

theorem homotopy_restrictions_identity_coherent
    {S : AdelicSpectralSheaf}
    (H : HomotopyCoherentRestrictions S) :
    H.identityCoherent :=
  H.identityCoherent_certified

theorem homotopy_restrictions_composition_coherent
    {S : AdelicSpectralSheaf}
    (H : HomotopyCoherentRestrictions S) :
    H.compositionCoherent :=
  H.compositionCoherent_certified

theorem homotopy_restrictions_higher_coherent
    {S : AdelicSpectralSheaf}
    (H : HomotopyCoherentRestrictions S) :
    H.higherCoherence :=
  H.higherCoherence_certified

end AdelicInfinityTopos
end Folder
```
