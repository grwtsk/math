-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PivotOverlap.Variantc004ecb0ee73b96e34251365f703ddc2a5e863416699e8abf0d3413eefe73b42","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c004ecb0ee73b96e34251365f703ddc2a5e863416699e8abf0d3413eefe73b42","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PivotOverlap.Variantc004ecb0ee73b96e34251365f703ddc2a5e863416699e8abf0d3413eefe73b42","mathematical_subject":"Foundations.Unclassified","original_sha256":"c004ecb0ee73b96e34251365f703ddc2a5e863416699e8abf0d3413eefe73b42","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/PivotAtlas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PivotOverlap.Variantc004ecb0ee73b96e34251365f703ddc2a5e863416699e8abf0d3413eefe73b42

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
