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
