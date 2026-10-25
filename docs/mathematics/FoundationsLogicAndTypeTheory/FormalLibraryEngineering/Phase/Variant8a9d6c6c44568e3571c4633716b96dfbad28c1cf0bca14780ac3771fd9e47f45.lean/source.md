# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Phase.Variant8a9d6c6c44568e3571c4633716b96dfbad28c1cf0bca14780ac3771fd9e47f45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd1dbc9cb0a2d21fc6a20bc7269852ca723ba48b` · SHA-256 `8a9d6c6c44568e3571c4633716b96dfbad28c1cf0bca14780ac3771fd9e47f45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Cellular.Cube

/-!
# Folder.Cellular.Phase

Radiation role: phase-connection
BinaryMatrix spine: This module turns BinaryMatrix-radiated cell data into finite phase, scan, or connection data.
Ontology: cellular.phase
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: phase
-/


namespace Folder
namespace Cellular

abbrev Phase (m : Nat) := ZMod m

structure PhaseQuantizer (m : Nat) where
  quantize : ℝ → Phase m

structure CubeSpectralField (d k : Nat) where
  value : CubeAddress d k → ℝ
  in_unit_interval : ∀ x, 0 ≤ value x ∧ value x ≤ 1

structure CubeHeatFlow (d k : Nat) where
  heat : NNReal → CubeSpectralField d k → CubeSpectralField d k

def quantizedField
    (Q : PhaseQuantizer m)
    (F : CubeSpectralField d k) :
    CubeAddress d k → Phase m :=
  fun x => Q.quantize (F.value x)

end Cellular
end Folder
```
