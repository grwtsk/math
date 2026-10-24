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
