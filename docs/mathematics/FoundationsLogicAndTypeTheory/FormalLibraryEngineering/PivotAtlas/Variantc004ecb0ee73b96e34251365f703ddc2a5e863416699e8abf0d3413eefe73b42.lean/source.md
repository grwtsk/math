# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PivotAtlas.Variantc004ecb0ee73b96e34251365f703ddc2a5e863416699e8abf0d3413eefe73b42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bd226b3e9657e1fa0c4f0f049bfce8f3d65e25e` · SHA-256 `c004ecb0ee73b96e34251365f703ddc2a5e863416699e8abf0d3413eefe73b42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.Pivot

/-!
# Folder.CanonicalPath.PivotAtlas

Radiation role: research-boundary
BinaryMatrix spine: This module defines a canonical pivot atlas, not BinaryMatrix data.
Ontology: canonical_pivot_atlas
Pivot role: canonical
Zero typology: barrier-contract
Contract boundary: proposed-definition
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/-- A declared overlap between two canonical pivots. -/
structure PivotOverlap (P Q : CanonicalPivot) where
  label : String

/--
Transition data across a pivot overlap. The transition can propagate a supplied
local nonzero K-index witness from one pivot to the next.
-/
structure PivotTransition (P Q : CanonicalPivot) where
  overlap : PivotOverlap P Q
  transport : LocalQuasiIsomorphism
  preservesIndex :
    LocalKIndexNonzero P.kIndexClass →
      LocalKIndexNonzero Q.kIndexClass

theorem PivotTransition.preserves_index
    {P Q : CanonicalPivot}
    (T : PivotTransition P Q)
    (h : LocalKIndexNonzero P.kIndexClass) :
    LocalKIndexNonzero Q.kIndexClass :=
  T.preservesIndex h

/--
A directed atlas of local analytic pivots. The coverage, cocycle, and barrier
conditions are explicit contract fields; this structure does not assert such an
atlas exists for the de Bruijn-Newman path.
-/
structure CanonicalPivotAtlas where
  Pivot : Type
  toPivot : Pivot → CanonicalPivot
  coversCanonicalPath : Prop
  overlap : Pivot → Pivot → Type
  transition :
    ∀ i j, overlap i j →
      PivotTransition (toPivot i) (toPivot j)
  cocycleCompatible : Prop
  barrierClosed : Prop

theorem CanonicalPivotAtlas.covers_canonical_path
    (A : CanonicalPivotAtlas)
    (h : A.coversCanonicalPath) :
    A.coversCanonicalPath :=
  h

theorem CanonicalPivotAtlas.cocycle_compatible
    (A : CanonicalPivotAtlas)
    (h : A.cocycleCompatible) :
    A.cocycleCompatible :=
  h

theorem CanonicalPivotAtlas.barrier_closed
    (A : CanonicalPivotAtlas)
    (h : A.barrierClosed) :
    A.barrierClosed :=
  h

theorem CanonicalPivotAtlas.transition_preserves_index
    (A : CanonicalPivotAtlas)
    {i j : A.Pivot}
    (o : A.overlap i j)
    (h : LocalKIndexNonzero (A.toPivot i).kIndexClass) :
    LocalKIndexNonzero (A.toPivot j).kIndexClass :=
  (A.transition i j o).preserves_index h

end CanonicalPath
end Folder
```
