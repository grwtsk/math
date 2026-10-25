# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatQuantizedTorsion.Variant182108dbec4724c76535a9a1358c9a744dd486086ffd3a41d4ff6045ec036877

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28fcd8fb07a397dc5c2ef80d2e5938ca0ae0a9d4` · SHA-256 `182108dbec4724c76535a9a1358c9a744dd486086ffd3a41d4ff6045ec036877`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Cellular.HeatQuantizedTorsion

/-!
# Folder.Theorem.Cellular.HeatQuantizedTorsion

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.cellular.heat_quantized_torsion
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Cellular
namespace HeatQuantizedTorsion

theorem heatQuantizedShellTorsion_loop_eq_scan
    (T : Folder.Cellular.HeatQuantizedShellTorsion d k m)
    (p : Folder.Cellular.EdgePath d k x x) :
    Folder.Cellular.pathIntegral T.connection p =
      Folder.Cellular.pathIntegral T.scan.value p :=
  Folder.Cellular.heatQuantizedShellTorsion_loop_eq_scan T p

end HeatQuantizedTorsion
end Cellular
end Theorem
end Folder
```
