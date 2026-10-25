# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorFixedPointContract.Variant3a39d9f3a93aeb98d6f9ced7fc471c517876288d016ca74a9499482b8817429f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98a3bbea66b9a530855758b186e02a1df2ca45b4` · SHA-256 `dff8c1826409dad1d09d9d78609fe9302305d1a4f4a925711fdf9f32a6f825d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
