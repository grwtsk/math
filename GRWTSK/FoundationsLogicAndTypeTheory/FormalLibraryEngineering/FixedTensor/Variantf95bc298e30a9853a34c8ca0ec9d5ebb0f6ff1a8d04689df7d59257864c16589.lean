-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedTensorIsHorizontal.Variantd150434f8355ee91dafc386fba2fec5da9e62d7a010392d5bb3237bf4b8b1a65","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d150434f8355ee91dafc386fba2fec5da9e62d7a010392d5bb3237bf4b8b1a65","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FixedTensorIsHorizontal.Variantd150434f8355ee91dafc386fba2fec5da9e62d7a010392d5bb3237bf4b8b1a65","mathematical_subject":"Foundations.Unclassified","original_sha256":"d150434f8355ee91dafc386fba2fec5da9e62d7a010392d5bb3237bf4b8b1a65","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineTensor/FixedTensor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.FixedTensor

/-!
# Folder.Theorem.CrystallineTensor.FixedTensor

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports fixed tensor projection facts.
Ontology: proof.crystalline.fixed_tensor
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedTensorIsHorizontal.Variantd150434f8355ee91dafc386fba2fec5da9e62d7a010392d5bb3237bf4b8b1a65

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace FixedTensor

theorem fixed_tensor_is_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {X : C.Site.Obj}
    (T : Folder.CrystallineTensor.FixedTensor nabla e X) :
    nabla.horizontal X T.tensor.underlyingSection :=
  Folder.CrystallineTensor.fixed_tensor_is_horizontal T

theorem fixed_tensor_is_fixed
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {X : C.Site.Obj}
    (T : Folder.CrystallineTensor.FixedTensor nabla e X) :
    e.map X T.tensor.underlyingSection =
      T.tensor.underlyingSection :=
  Folder.CrystallineTensor.fixed_tensor_is_fixed T

end FixedTensor
end CrystallineTensor
end Theorem
end Folder
