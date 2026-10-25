# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cube.Variantb478ed3f10576779705ac30120d57ffee3af769cb6b8cecfbed26aa542a44eaa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c20b7e89755469a2279dad79101187fe7747cbb1` · SHA-256 `b478ed3f10576779705ac30120d57ffee3af769cb6b8cecfbed26aa542a44eaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Cellular.Cube

/-!
# Folder.Theorem.Cellular.Cube

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.cellular.cube
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Cellular
namespace Cube

theorem cubeSide_succ
    (k : Nat) :
    Folder.Cellular.cubeSide (k + 1) =
      2 * Folder.Cellular.cubeSide k :=
  Folder.Cellular.cubeSide_succ k

theorem appendBits_coord_val
    {d k : Nat}
    (x : Folder.Cellular.CubeAddress d k)
    (b : Fin d → Fin 2)
    (i : Fin d) :
    (Folder.Cellular.appendBits x b i).val =
      2 * (x i).val + (b i).val :=
  Folder.Cellular.appendBits_coord_val x b i

theorem embedLow_coord_val
    {d k : Nat}
    (x : Folder.Cellular.CubeAddress d k)
    (i : Fin d) :
    (Folder.Cellular.embedLow x i).val = 2 * (x i).val :=
  Folder.Cellular.embedLow_coord_val x i

end Cube
end Cellular
end Theorem
end Folder
```
