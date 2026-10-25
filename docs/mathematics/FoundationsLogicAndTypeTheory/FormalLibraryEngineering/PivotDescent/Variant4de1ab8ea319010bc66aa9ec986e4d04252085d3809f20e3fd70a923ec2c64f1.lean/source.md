# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PivotDescent.Variant4de1ab8ea319010bc66aa9ec986e4d04252085d3809f20e3fd70a923ec2c64f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcd87893893b4617ef3f987fbdb98c9d18cab307` · SHA-256 `4de1ab8ea319010bc66aa9ec986e4d04252085d3809f20e3fd70a923ec2c64f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.PivotDescent

/-!
# Folder.Theorem.CanonicalPath.PivotDescent

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports pivot descent projection facts.
Ontology: proof.canonical_pivot_descent
Pivot role: canonical
Zero typology: barrier-contract
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem transition_preserves_index
    {P Q : Folder.CanonicalPath.CanonicalPivot}
    (T : Folder.CanonicalPath.PivotTransition P Q)
    (h : Folder.CanonicalPath.LocalKIndexNonzero P.kIndexClass) :
    Folder.CanonicalPath.LocalKIndexNonzero Q.kIndexClass :=
  T.preserves_index h

theorem atlas_transition_preserves_index
    (A : Folder.CanonicalPath.CanonicalPivotAtlas)
    {i j : A.Pivot}
    (o : A.overlap i j)
    (h :
      Folder.CanonicalPath.LocalKIndexNonzero
        (A.toPivot i).kIndexClass) :
    Folder.CanonicalPath.LocalKIndexNonzero
      (A.toPivot j).kIndexClass :=
  A.transition_preserves_index o h

theorem conditional_pivot_input_has_base_pivot
    (I : Folder.CanonicalPath.ConditionalPivotAlignmentInput) :
    ∃ i : I.atlas.Pivot,
      Folder.CanonicalPath.LocalKIndexNonzero
        (I.atlas.toPivot i).kIndexClass :=
  Folder.CanonicalPath.conditional_pivot_input_has_base_pivot I

theorem conditional_pivot_input_barriers_closed
    (I : Folder.CanonicalPath.ConditionalPivotAlignmentInput) :
    I.atlas.barrierClosed :=
  Folder.CanonicalPath.conditional_pivot_input_barriers_closed I

end CanonicalPath
end Theorem
end Folder
```
