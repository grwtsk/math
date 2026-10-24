# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SpectralTripleBridge.Variant5adc1e5c71e1c5123450c20c2626f434fd7afc784028f36e9a2202702bc13cdb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `211c0948020c03db9b651cf1f4f4f234315490c8` · SHA-256 `5adc1e5c71e1c5123450c20c2626f434fd7afc784028f36e9a2202702bc13cdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.SpectralTripleBridge

/-!
# Folder.Theorem.ResearchTopos.SpectralTripleBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports spectral-triple bridge contract exposures.
Ontology: proof.research_topos.spectral_triple_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace SpectralTripleBridge

theorem spectral_triple_metric
    (S : Folder.ResearchTopos.SpectralTripleContract) :
    S.metricSpectralTriple :=
  Folder.ResearchTopos.spectral_triple_metric S

theorem zero_spectrum_bridge_matches
    {F : Folder.ResearchTopos.RodgersTaoHeatFamily}
    {T : Folder.ResearchTopos.TimeDependentSpectralTriple}
    (B : Folder.ResearchTopos.ZeroSpectrumBridge F T) :
    B.spectrumMatchesZeroPositions :=
  Folder.ResearchTopos.zero_spectrum_bridge_matches B

end SpectralTripleBridge
end ResearchTopos
end Theorem
end Folder
```
