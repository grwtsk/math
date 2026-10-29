-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorFixedPointExists.Variant0c33de2534defab3b0c19154dee11063355852aeeb5ced191cfbd15d22c9b3d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c33de2534defab3b0c19154dee11063355852aeeb5ced191cfbd15d22c9b3d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TensorFixedPointExists.Variant0c33de2534defab3b0c19154dee11063355852aeeb5ced191cfbd15d22c9b3d1","mathematical_subject":"Foundations.Unclassified","original_sha256":"0c33de2534defab3b0c19154dee11063355852aeeb5ced191cfbd15d22c9b3d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineTensor/TensorFixedPointContract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.TensorFixedPointContract

/-!
# Folder.Theorem.CrystallineTensor.TensorFixedPointContract

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports the tensor fixed-point contract-composition theorems.
Ontology: proof.crystalline.tensor_fixed_point_contract
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorFixedPointExists.Variant0c33de2534defab3b0c19154dee11063355852aeeb5ced191cfbd15d22c9b3d1

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace TensorFixedPointContract

theorem tensor_fixed_point_exists
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (K : Folder.CrystallineTensor.TensorFixedPointContract nabla H e) :
    ∃ _ : Folder.CrystallineTensor.FixedTensor nabla e K.object, True :=
  Folder.CrystallineTensor.TensorFixedPointContract.tensor_fixed_point_exists K

theorem tensor_fixed_point_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (K : Folder.CrystallineTensor.TensorFixedPointContract nabla H e) :
    ∃ T : Folder.CrystallineTensor.FixedTensor nabla e K.object,
      nabla.horizontal K.object T.tensor.underlyingSection :=
  Folder.CrystallineTensor.TensorFixedPointContract.tensor_fixed_point_horizontal K

theorem tensor_fixed_point_fixed
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (K : Folder.CrystallineTensor.TensorFixedPointContract nabla H e) :
    ∃ T : Folder.CrystallineTensor.FixedTensor nabla e K.object,
      e.map K.object T.tensor.underlyingSection =
        T.tensor.underlyingSection :=
  Folder.CrystallineTensor.TensorFixedPointContract.tensor_fixed_point_fixed K

end TensorFixedPointContract
end CrystallineTensor
end Theorem
end Folder
