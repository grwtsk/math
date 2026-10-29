-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorFixedPointContract.Variant2a0920b33990eef3f1ab040103552f40a5d197c7c939ee882e6156d6195e4fab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a0920b33990eef3f1ab040103552f40a5d197c7c939ee882e6156d6195e4fab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TensorFixedPointContract.Variant2a0920b33990eef3f1ab040103552f40a5d197c7c939ee882e6156d6195e4fab","mathematical_subject":"Foundations.Unclassified","original_sha256":"2a0920b33990eef3f1ab040103552f40a5d197c7c939ee882e6156d6195e4fab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineTensor/TensorFixedPointContract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.FixedTensor

/-!
# Folder.CrystallineTensor.TensorFixedPointContract

Radiation role: research-boundary
BinaryMatrix spine: This module exposes supplied tensor fixed-point contracts, not BinaryMatrix fixed-point dynamics.
Ontology: crystalline.tensor_fixed_point_contract
Pivot role: spectral
Zero typology: none
Contract boundary: contract-composition
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorFixedPointContract.Variant2a0920b33990eef3f1ab040103552f40a5d197c7c939ee882e6156d6195e4fab

namespace Folder
namespace CrystallineTensor

/--
Central fixed-tensor contract.

This record does not prove a tensor-valued fixed-point theorem. It packages a
supplied heat-compatible endomorphism and a supplied fixed tensor witness.
-/
structure TensorFixedPointContract
    {C : CrystallineSite}
    {F : Crystal C}
    (nabla : Connection F)
    (H : HeatFlowAction F)
    (e : CrystalEndomorphism F) where
  compatibleEndomorphism :
    HeatCompatibleEndomorphism H e
  object : C.Site.Obj
  existsFixedTensor :
    ∃ _ : FixedTensor nabla e object, True
  uniqueness? : Prop

namespace TensorFixedPointContract

theorem tensor_fixed_point_exists
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {H : HeatFlowAction F}
    {e : CrystalEndomorphism F}
    (K : TensorFixedPointContract nabla H e) :
    ∃ _ : FixedTensor nabla e K.object, True :=
  K.existsFixedTensor

theorem tensor_fixed_point_horizontal
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {H : HeatFlowAction F}
    {e : CrystalEndomorphism F}
    (K : TensorFixedPointContract nabla H e) :
    ∃ T : FixedTensor nabla e K.object,
      nabla.horizontal K.object T.tensor.underlyingSection := by
  rcases K.existsFixedTensor with ⟨T, _⟩
  exact ⟨T, T.horizontal⟩

theorem tensor_fixed_point_fixed
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {H : HeatFlowAction F}
    {e : CrystalEndomorphism F}
    (K : TensorFixedPointContract nabla H e) :
    ∃ T : FixedTensor nabla e K.object,
      e.map K.object T.tensor.underlyingSection =
        T.tensor.underlyingSection := by
  rcases K.existsFixedTensor with ⟨T, _⟩
  exact ⟨T, T.fixed⟩

end TensorFixedPointContract

end CrystallineTensor
end Folder
