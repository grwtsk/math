-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.HeatFlowIdentityAtZero.Variantc962962f4004a75c262edb8fe10210a6f0383c68d23473b699989c6de0df6aa7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c962962f4004a75c262edb8fe10210a6f0383c68d23473b699989c6de0df6aa7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.HeatFlowIdentityAtZero.Variantc962962f4004a75c262edb8fe10210a6f0383c68d23473b699989c6de0df6aa7","mathematical_subject":"Algebra.Groups","original_sha256":"c962962f4004a75c262edb8fe10210a6f0383c68d23473b699989c6de0df6aa7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineTensor/HeatCompatibleEndomorphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.HeatCompatibleEndomorphism

/-!
# Folder.Theorem.CrystallineTensor.HeatCompatibleEndomorphism

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports heat-action and heat-compatible-endomorphism contract facts.
Ontology: proof.crystalline.heat_compatible_endomorphism
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.Algebra.GroupTheory.HeatFlowIdentityAtZero.Variantc962962f4004a75c262edb8fe10210a6f0383c68d23473b699989c6de0df6aa7

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace HeatCompatibleEndomorphism

theorem heat_flow_identity_at_zero
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (H : Folder.CrystallineTensor.HeatFlowAction F) :
    H.identityAtZero :=
  Folder.CrystallineTensor.heat_flow_identity_at_zero H

theorem heat_flow_semigroup
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (H : Folder.CrystallineTensor.HeatFlowAction F) :
    H.semigroupLaw :=
  Folder.CrystallineTensor.heat_flow_semigroup H

theorem heat_compatible_commutes
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (E : Folder.CrystallineTensor.HeatCompatibleEndomorphism H e) :
    E.commutesWithHeat :=
  Folder.CrystallineTensor.heat_compatible_commutes E

theorem heat_compatible_preserves_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (E : Folder.CrystallineTensor.HeatCompatibleEndomorphism H e)
    (nabla : Folder.CrystallineTensor.Connection F)
    (X : C.Site.Obj)
    (s : F.Section X)
    (h : nabla.horizontal X s) :
    nabla.horizontal X (e.map X s) :=
  Folder.CrystallineTensor.heat_compatible_preserves_horizontal E nabla X s h

end HeatCompatibleEndomorphism
end CrystallineTensor
end Theorem
end Folder
