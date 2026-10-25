# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PivotDescent.Variant48d5088c4f9a6ba4533a033f80666d69c6b3aac54ed22961d770494439c72224

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14a8b050285df199610aa6b7fae9ec88975b812c` · SHA-256 `48d5088c4f9a6ba4533a033f80666d69c6b3aac54ed22961d770494439c72224`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.PivotAtlas

/-!
# Folder.CanonicalPath.PivotDescent

Radiation role: research-boundary
BinaryMatrix spine: This module composes pivot-atlas contracts, not BinaryMatrix data.
Ontology: canonical_pivot_atlas
Pivot role: canonical
Zero typology: barrier-contract
Contract boundary: conditional-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
Contract for descending local nonzero K-index data across a pivot atlas.
The value of `descendsNonzero` is intentionally a proposition-valued target,
not a theorem supplied by this file.
-/
structure PivotIndexDescentContract (A : CanonicalPivotAtlas) where
  globalIndexLabel : String
  descendsNonzero :
    (∃ i : A.Pivot,
      LocalKIndexNonzero (A.toPivot i).kIndexClass) →
      Prop

/--
Contract for descending local index-spectral bridges through overlaps. This is
the decisive unresolved bridge, so both fields remain supplied data.
-/
structure PivotSpectralBridgeDescentContract
    (A : CanonicalPivotAtlas) where
  bridgeDescends : Prop
  spectralBoundaryAlignment : Prop

/--
All inputs needed for the conditional pivot-atlas alignment wrapper. The fields
make the atlas-existence and descent assumptions explicit.
-/
structure ConditionalPivotAlignmentInput where
  atlas : CanonicalPivotAtlas
  indexDescent : PivotIndexDescentContract atlas
  bridgeDescent : PivotSpectralBridgeDescentContract atlas
  hasBasePivot :
    ∃ i : atlas.Pivot,
      LocalKIndexNonzero (atlas.toPivot i).kIndexClass
  coversPath : atlas.coversCanonicalPath
  barriersClosed : atlas.barrierClosed
  cocycle : atlas.cocycleCompatible

/--
Opaque conclusion object for the conditional pivot-atlas program. This is not
an RH theorem and does not identify zeta zeroes.
-/
structure ConditionalSpectralAlignmentConclusion where
  label : String

theorem conditional_pivot_input_has_base_pivot
    (I : ConditionalPivotAlignmentInput) :
    ∃ i : I.atlas.Pivot,
      LocalKIndexNonzero (I.atlas.toPivot i).kIndexClass :=
  I.hasBasePivot

theorem conditional_pivot_input_covers_path
    (I : ConditionalPivotAlignmentInput) :
    I.atlas.coversCanonicalPath :=
  I.coversPath

theorem conditional_pivot_input_barriers_closed
    (I : ConditionalPivotAlignmentInput) :
    I.atlas.barrierClosed :=
  I.barriersClosed

theorem conditional_pivot_input_cocycle
    (I : ConditionalPivotAlignmentInput) :
    I.atlas.cocycleCompatible :=
  I.cocycle

/--
Conditional wrapper: if the supplied bridge descent already includes spectral
boundary alignment, package the resulting conditional conclusion object.

This is a definition because Lean theorems prove propositions, while the
wrapper returns a data object.
-/
def conditional_pivot_atlas_global_alignment
    (I : ConditionalPivotAlignmentInput)
    (_hBridge : I.bridgeDescent.spectralBoundaryAlignment) :
    ConditionalSpectralAlignmentConclusion :=
  { label := "conditional alignment from supplied pivot-atlas bridge descent" }

theorem conditional_pivot_atlas_global_alignment_label
    (I : ConditionalPivotAlignmentInput)
    (hBridge : I.bridgeDescent.spectralBoundaryAlignment) :
    (conditional_pivot_atlas_global_alignment I hBridge).label =
      "conditional alignment from supplied pivot-atlas bridge descent" :=
  rfl

end CanonicalPath
end Folder
```
