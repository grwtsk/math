# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PivotAtlasConditional.Variantd81327c4654fab685014e978329e25b57edd7d4758f3b86e14e65f861177a9cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `985feb7751fed6540c8d34257c0b8e296f3cd4fa` · SHA-256 `d81327c4654fab685014e978329e25b57edd7d4758f3b86e14e65f861177a9cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.PivotDescent

/-!
# Folder.Theorem.CanonicalPath.PivotAtlasConditional

Radiation role: theorem-wrapper
BinaryMatrix spine: This module exposes only conditional pivot-atlas alignment wrappers.
Ontology: proof.canonical_pivot_atlas_conditional
Pivot role: canonical
Zero typology: barrier-contract
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

def conditional_pivot_atlas_global_alignment
    (I : Folder.CanonicalPath.ConditionalPivotAlignmentInput)
    (hBridge : I.bridgeDescent.spectralBoundaryAlignment) :
    Folder.CanonicalPath.ConditionalSpectralAlignmentConclusion :=
  Folder.CanonicalPath.conditional_pivot_atlas_global_alignment I hBridge

theorem conditional_pivot_atlas_global_alignment_label
    (I : Folder.CanonicalPath.ConditionalPivotAlignmentInput)
    (hBridge : I.bridgeDescent.spectralBoundaryAlignment) :
    (conditional_pivot_atlas_global_alignment I hBridge).label =
      "conditional alignment from supplied pivot-atlas bridge descent" :=
  rfl

theorem conditional_pivot_input_covers_path
    (I : Folder.CanonicalPath.ConditionalPivotAlignmentInput) :
    I.atlas.coversCanonicalPath :=
  Folder.CanonicalPath.conditional_pivot_input_covers_path I

theorem conditional_pivot_input_cocycle
    (I : Folder.CanonicalPath.ConditionalPivotAlignmentInput) :
    I.atlas.cocycleCompatible :=
  Folder.CanonicalPath.conditional_pivot_input_cocycle I

end CanonicalPath
end Theorem
end Folder
```
