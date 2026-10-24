# Complete source: GRWTSK.Analysis.FunctionalAnalysis.FrobeniusEnergy.Varianta372ec991f4255818a4a7ddeba8ddc4b7a80a89ce1db5a7b14298859ada79b64

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59f8b56c46a8b9e19267f66d77bdbb227dea8a03` · SHA-256 `a372ec991f4255818a4a7ddeba8ddc4b7a80a89ce1db5a7b14298859ada79b64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.FrobeniusTypology
import Folder.Spectral.Energy

/-!
# Folder.Harmonic.FrobeniusEnergy

Radiation role: harmonic-control
BinaryMatrix spine: This module names analytic Frobenius energy controls downstream of finite cellular carriers.
Ontology: harmonic.frobenius_energy
Pivot role: spectral
Zero typology: spectral
Contract boundary: contract
Composite stack role: field
-/

namespace Folder
namespace Harmonic

abbrev AnalyticFrobeniusEnergy :=
  Core.AnalyticFrobeniusEnergy

theorem frobenius_energy_nonnegative
    (F : AnalyticFrobeniusEnergy)
    (x : F.carrier) :
    0 ≤ F.normSq x :=
  Core.analytic_frobenius_nonnegative F x

end Harmonic
end Folder
```
