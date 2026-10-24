# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Graph.Variantdb67f9e459960a4bbedd7ec88af11dd9dc4a3809522da1411495b38186fd692e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7479289f96f143d075566563a34fe858a12ecf53` · SHA-256 `db67f9e459960a4bbedd7ec88af11dd9dc4a3809522da1411495b38186fd692e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Carrier.Grid

/-!
# Folder.Spectral.Graph

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.graph
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Spectral

open Carrier

structure CellGraph (s : GridShape) where
  Adj : Cell s → Cell s → Prop
  symm : Std.Symm Adj
  irrefl : Std.Irrefl Adj
  finite_neighbors : ∀ c, Fintype {d : Cell s // Adj c d}

namespace CellGraph

noncomputable def gridEdgeGraph (s : GridShape) : CellGraph s where
  Adj := Carrier.EdgeAdjacent
  symm := by
    exact ⟨fun _ _ => Carrier.edgeAdjacent_symm⟩
  irrefl := by
    exact ⟨fun a => Carrier.edgeAdjacent_irrefl a⟩
  finite_neighbors := by
    classical
    intro c
    infer_instance

end CellGraph

export CellGraph (gridEdgeGraph)

end Spectral
end Folder
```
