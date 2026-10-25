# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatQuantizedTorsion.Varianteeb3d12bc014d7817aca1744f55f803904d9ea8100941c003a4ec0c1fd015309

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52d565bc09e384036b19960de0fa4ffe8caadb78` · SHA-256 `eeb3d12bc014d7817aca1744f55f803904d9ea8100941c003a4ec0c1fd015309`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Cellular.ShellCohomology

/-!
# Folder.Cellular.HeatQuantizedTorsion

Radiation role: phase-connection
BinaryMatrix spine: This module turns BinaryMatrix-radiated cell data into finite phase, scan, or connection data.
Ontology: cellular.heat_quantized_torsion
Pivot role: none
Zero typology: shell
Contract boundary: proved
Composite stack role: phase
-/


namespace Folder
namespace Cellular

structure HeatQuantizedShellTorsion
    (d k m : Nat) where
  field : CubeSpectralField d k
  heat : CubeHeatFlow d k
  time : NNReal
  quantizer : PhaseQuantizer m
  scan : ScanTwist d k m

namespace HeatQuantizedShellTorsion

def q
    (T : HeatQuantizedShellTorsion d k m) :
    Cochain0 d k m :=
  quantizedField T.quantizer (T.heat.heat T.time T.field)

def connection
    (T : HeatQuantizedShellTorsion d k m) :
    Cochain1 d k m :=
  phaseConnection T.q T.scan

def torsionClass
    (T : HeatQuantizedShellTorsion d k m) :
    ShellTorsionClass d k m :=
  ⟨T.connection⟩

theorem heatQuantizedShellTorsion_loop_eq_scan
    (T : HeatQuantizedShellTorsion d k m)
    (p : EdgePath d k x x) :
    pathIntegral T.connection p =
      pathIntegral T.scan.value p :=
  phaseConnection_loopIntegral_eq_scan T.q T.scan p

end HeatQuantizedShellTorsion

export HeatQuantizedShellTorsion
  (q connection torsionClass heatQuantizedShellTorsion_loop_eq_scan)

end Cellular
end Folder
```
