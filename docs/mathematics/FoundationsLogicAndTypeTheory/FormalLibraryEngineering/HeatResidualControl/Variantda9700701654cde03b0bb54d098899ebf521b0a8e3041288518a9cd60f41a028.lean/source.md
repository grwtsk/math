# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatResidualControl.Variantda9700701654cde03b0bb54d098899ebf521b0a8e3041288518a9cd60f41a028

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a49d5b8aa8a9025395b8f4440b5909a19cd00b9` · SHA-256 `da9700701654cde03b0bb54d098899ebf521b0a8e3041288518a9cd60f41a028`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Harmonic.HeatResidualControl

/-!
# Folder.Theorem.Harmonic.HeatResidualControl

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes lifted heat visible/residual reconstruction for composite stack control.
Ontology: proof.harmonic.heat_residual_control
Pivot role: spectral
Zero typology: harmonic
Contract boundary: theorem-wrapper
Composite stack role: residual
-/

namespace Folder
namespace Theorem
namespace Harmonic

theorem heat_visible_plus_fiber
    {s : Folder.Carrier.GridShape}
    {k : Nat}
    (H : Folder.Spectral.GraphHeat s k)
    (t : NNReal)
    (X : Folder.Spectral.SpectralTensor s k) :
    Folder.Harmonic.heatVisible H t X +
      Folder.Harmonic.heatFiber H t X = X :=
  Folder.Harmonic.heat_visible_plus_fiber H t X

end Harmonic
end Theorem
end Folder
```
