# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LFunctionZero.Variante11b780833188e7d1ccca85398683be7706880d2eff5f8c83ddc5c47d09ae13e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23c65ff143cd30afad41cf1dc94c6973499e2381` · SHA-256 `e11b780833188e7d1ccca85398683be7706880d2eff5f8c83ddc5c47d09ae13e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Research.LFunctionZero

/-!
# Folder.Theorem.Research.LFunctionZero

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports typed L-function zero boundary facts.
Ontology: proof.research.lfunction_zero
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: research
-/

namespace Folder
namespace Theorem
namespace Research
namespace LFunctionZero

theorem criticalLine_of_centered
    (z : Folder.Research.LFunctionZero.LFunctionZeroData)
    (h : Folder.Research.LFunctionZero.CenteredAtSpectralPivot z) :
    Folder.Research.LFunctionZero.LiesOnCriticalLine z :=
  Folder.Research.LFunctionZero.criticalLine_of_centered z h

theorem lFunctionZero_ne_spectralModeZero :
    Folder.Core.ZeroKind.lFunctionZero ≠
      Folder.Core.ZeroKind.spectralModeZero :=
  Folder.Research.LFunctionZero.lFunctionZero_ne_spectralModeZero

theorem lFunctionZero_ne_deBruijnNewmanZero :
    Folder.Core.ZeroKind.lFunctionZero ≠
      Folder.Core.ZeroKind.deBruijnNewmanZero :=
  Folder.Research.LFunctionZero.lFunctionZero_ne_deBruijnNewmanZero

end LFunctionZero
end Research
end Theorem
end Folder
```
