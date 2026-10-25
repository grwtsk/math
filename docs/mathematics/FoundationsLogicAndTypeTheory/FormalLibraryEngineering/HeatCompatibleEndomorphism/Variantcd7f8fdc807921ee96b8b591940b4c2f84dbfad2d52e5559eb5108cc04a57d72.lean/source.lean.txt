-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystalEndomorphism.Variant2285c9c638c68ef233966ed27c45b6c1b366a7a12c99071dc66ef39a3ec4aef0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2285c9c638c68ef233966ed27c45b6c1b366a7a12c99071dc66ef39a3ec4aef0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CrystalEndomorphism.Variant2285c9c638c68ef233966ed27c45b6c1b366a7a12c99071dc66ef39a3ec4aef0","mathematical_subject":"Foundations.Unclassified","original_sha256":"2285c9c638c68ef233966ed27c45b6c1b366a7a12c99071dc66ef39a3ec4aef0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineTensor/HeatCompatibleEndomorphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.HeatFlowAction

/-!
# Folder.CrystallineTensor.HeatCompatibleEndomorphism

Radiation role: research-boundary
BinaryMatrix spine: This module records heat-compatible crystal endomorphisms, not BinaryMatrix shell torsion.
Ontology: crystalline.heat_compatible_endomorphism
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: contract
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystalEndomorphism.Variant2285c9c638c68ef233966ed27c45b6c1b366a7a12c99071dc66ef39a3ec4aef0

namespace Folder
namespace CrystallineTensor

structure CrystalEndomorphism
    {C : CrystallineSite}
    (F : Crystal C) where
  map : ∀ X : C.Site.Obj, F.Section X → F.Section X
  label : String

structure HeatCompatibleEndomorphism
    {C : CrystallineSite}
    {F : Crystal C}
    (H : HeatFlowAction F)
    (e : CrystalEndomorphism F) where
  commutesWithHeat : Prop
  commutesWithHeat_certified : commutesWithHeat
  preservesHorizontal :
    ∀ (nabla : Connection F)
      (X : C.Site.Obj)
      (s : F.Section X),
        nabla.horizontal X s →
          nabla.horizontal X (e.map X s)

theorem heat_compatible_commutes
    {C : CrystallineSite}
    {F : Crystal C}
    {H : HeatFlowAction F}
    {e : CrystalEndomorphism F}
    (E : HeatCompatibleEndomorphism H e) :
    E.commutesWithHeat :=
  E.commutesWithHeat_certified

theorem heat_compatible_preserves_horizontal
    {C : CrystallineSite}
    {F : Crystal C}
    {H : HeatFlowAction F}
    {e : CrystalEndomorphism F}
    (E : HeatCompatibleEndomorphism H e)
    (nabla : Connection F)
    (X : C.Site.Obj)
    (s : F.Section X)
    (h : nabla.horizontal X s) :
    nabla.horizontal X (e.map X s) :=
  E.preservesHorizontal nabla X s h

end CrystallineTensor
end Folder
