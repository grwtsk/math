# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Simplicial.Variantedbcc97e17c002b42873552a631f6a4a11876bef7f4cee4e796b016c6f9760e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e09bc8f64700939d2136fa0b043b797d3caac054` · SHA-256 `edbcc97e17c002b42873552a631f6a4a11876bef7f4cee4e796b016c6f9760e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity
import Mathlib.Data.Finset.Basic

/-! # Simplicial presentation fabric -/

namespace Mathematics.Fabric

universe u

/-- A finite abstract simplicial shape with explicit downward closure. -/
structure SimplicialShape (Vertex : Type u) where
  simplices : List (Finset Vertex)
  downwardClosed :
    ∀ simplex face,
      simplex ∈ simplices → face ⊆ simplex → face ∈ simplices

/-- A semantic carrier and a presentation shape remain separate data. -/
structure Presentation (Vertex : Type u) where
  carrier : ElementRef
  shape : SimplicialShape Vertex
  presentationDigest : Digest

end Mathematics.Fabric
```
