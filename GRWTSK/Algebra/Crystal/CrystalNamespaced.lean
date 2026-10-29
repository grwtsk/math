-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ThickeningHasNilpotentIdeal.Variant358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ThickeningHasNilpotentIdeal.Variant358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineTensor/Crystal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.InfinitesimalThickening
import Folder.CrystallineTensor.CrystallineSite
import Folder.CrystallineTensor.Crystal

/-!
# Folder.Theorem.CrystallineTensor.Crystal

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline site and crystal contract exposure facts.
Ontology: proof.crystalline.crystal
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.Algebra.ThickeningHasNilpotentIdeal.Variant358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace Crystal

theorem thickening_has_nilpotent_ideal
    (T : Folder.CrystallineTensor.InfinitesimalThickening) :
    T.nilpotentIdeal :=
  Folder.CrystallineTensor.thickening_has_nilpotent_ideal T

theorem crystalline_cover_is_cover
    {C : Folder.CrystallineTensor.CrystallineSite}
    {X : C.Site.Obj}
    (U : Folder.CrystallineTensor.CrystallineCover C X) :
    C.topology.IsCover X U.cover :=
  Folder.CrystallineTensor.crystalline_cover_is_cover U

theorem crystal_has_compatibility
    {C : Folder.CrystallineTensor.CrystallineSite}
    (F : Folder.CrystallineTensor.Crystal C) :
    F.crystalCompatibility :=
  Folder.CrystallineTensor.crystal_has_compatibility F

theorem crystal_has_infinitesimal_rigidity
    {C : Folder.CrystallineTensor.CrystallineSite}
    (F : Folder.CrystallineTensor.Crystal C) :
    F.infinitesimalRigidity :=
  Folder.CrystallineTensor.crystal_has_infinitesimal_rigidity F

end Crystal
end CrystallineTensor
end Theorem
end Folder
