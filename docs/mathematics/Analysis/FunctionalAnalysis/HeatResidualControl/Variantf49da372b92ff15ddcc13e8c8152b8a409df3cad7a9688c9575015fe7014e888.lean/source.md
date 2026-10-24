# Complete source: GRWTSK.Analysis.FunctionalAnalysis.HeatResidualControl.Variantf49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e96b9e229e9d4585befcc4e6290dd11ea7b19c06` · SHA-256 `f49da372b92ff15ddcc13e8c8152b8a409df3cad7a9688c9575015fe7014e888`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Spectral.Heat
import Folder.Spectral.Residual

/-!
# Folder.Harmonic.HeatResidualControl

Radiation role: harmonic-control
BinaryMatrix spine: This module repackages lifted heat residual reconstruction for downstream BinaryMatrix-radiated stack control.
Ontology: harmonic.heat_residual_control
Pivot role: spectral
Zero typology: harmonic
Contract boundary: proved
Composite stack role: residual
-/

namespace Folder
namespace Harmonic

def heatVisible
    {s : Carrier.GridShape}
    {k : Nat}
    (H : Spectral.GraphHeat s k)
    (t : NNReal)
    (X : Spectral.SpectralTensor s k) :
    Spectral.SpectralTensor s k :=
  H.heat t X

def heatFiber
    {s : Carrier.GridShape}
    {k : Nat}
    (H : Spectral.GraphHeat s k)
    (t : NNReal)
    (X : Spectral.SpectralTensor s k) :
    Spectral.SpectralTensor s k :=
  Spectral.heatResidual H t X

theorem heat_visible_plus_fiber
    {s : Carrier.GridShape}
    {k : Nat}
    (H : Spectral.GraphHeat s k)
    (t : NNReal)
    (X : Spectral.SpectralTensor s k) :
    heatVisible H t X + heatFiber H t X = X :=
  Spectral.heat_add_residual H t X

end Harmonic
end Folder
```
