-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ConnectionFlat.Variant0bb7d2ce9264b69b4d4f15160a75833ec380028f887dbaeef339dd2d8976f10d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0bb7d2ce9264b69b4d4f15160a75833ec380028f887dbaeef339dd2d8976f10d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ConnectionFlat.Variant0bb7d2ce9264b69b4d4f15160a75833ec380028f887dbaeef339dd2d8976f10d","mathematical_subject":"Analysis.Integration","original_sha256":"0bb7d2ce9264b69b4d4f15160a75833ec380028f887dbaeef339dd2d8976f10d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineTensor/IntegrableConnection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.IntegrableConnection

/-!
# Folder.Theorem.CrystallineTensor.IntegrableConnection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports integrable-connection contract exposure facts.
Ontology: proof.crystalline.integrable_connection
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ConnectionFlat.Variant0bb7d2ce9264b69b4d4f15160a75833ec380028f887dbaeef339dd2d8976f10d

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace IntegrableConnection

theorem connection_flat
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (nabla : Folder.CrystallineTensor.Connection F) :
    nabla.flat :=
  Folder.CrystallineTensor.connection_flat nabla

theorem connection_integrable
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (nabla : Folder.CrystallineTensor.Connection F) :
    nabla.integrable :=
  Folder.CrystallineTensor.connection_integrable nabla

theorem horizontal_section_is_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {X : C.Site.Obj}
    (s : Folder.CrystallineTensor.HorizontalSection nabla X) :
    nabla.horizontal X s.value :=
  Folder.CrystallineTensor.horizontal_section_is_horizontal s

end IntegrableConnection
end CrystallineTensor
end Theorem
end Folder
