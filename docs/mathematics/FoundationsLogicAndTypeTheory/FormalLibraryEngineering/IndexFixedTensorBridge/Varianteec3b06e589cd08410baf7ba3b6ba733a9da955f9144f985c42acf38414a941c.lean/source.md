# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexFixedTensorBridge.Varianteec3b06e589cd08410baf7ba3b6ba733a9da955f9144f985c42acf38414a941c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4971f1ca8daaf57b815e43ac4353fdfa496b0cd1` · SHA-256 `6a5a84f2a7b276c0115b9accf7ef6f6f83ddc5214615da7e6e1794780e77f82e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexToFixedTensorBridge.Variantf618c222b567e75f48d75b96edd46ffcd2b4278c5b8d5891ad17c8a81e2d76c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f618c222b567e75f48d75b96edd46ffcd2b4278c5b8d5891ad17c8a81e2d76c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IndexToFixedTensorBridge.Variantf618c222b567e75f48d75b96edd46ffcd2b4278c5b8d5891ad17c8a81e2d76c7","mathematical_subject":"Foundations.Unclassified","original_sha256":"f618c222b567e75f48d75b96edd46ffcd2b4278c5b8d5891ad17c8a81e2d76c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineIndex/IndexFixedTensorBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.TensorFixedPointContract
import Folder.CrystallineIndex.NonvanishingIndex

/-!
# Folder.CrystallineIndex.IndexFixedTensorBridge

Radiation role: research-boundary
BinaryMatrix spine: This module bridges index contracts to fixed tensors, not BinaryMatrix fixed points.
Ontology: crystalline_index.index_fixed_tensor_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: contract
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexToFixedTensorBridge.Variantf618c222b567e75f48d75b96edd46ffcd2b4278c5b8d5891ad17c8a81e2d76c7

namespace Folder
namespace CrystallineIndex

/--
Bridge from supplied nonzero index data to a supplied fixed tensor contract.

This is the explicit theorem-target boundary where nonzero index may produce
fixed tensor data.
-/
structure IndexToFixedTensorBridge
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {Hflow : CrystallineTensor.HeatFlowAction F}
    {e : CrystallineTensor.CrystalEndomorphism F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    (N : @NonvanishingIndex C F nabla D H T) where
  fixedPointContract :
    CrystallineTensor.TensorFixedPointContract nabla Hflow e
  nonzeroIndexSuppliesFixedTensor :
    N.nonzeroIndex →
      ∃ _ : CrystallineTensor.FixedTensor nabla e fixedPointContract.object, True

namespace IndexFixedTensorBridge

theorem fixed_tensor_from_nonzero_index
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {Hflow : CrystallineTensor.HeatFlowAction F}
    {e : CrystallineTensor.CrystalEndomorphism F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    {N : @NonvanishingIndex C F nabla D H T}
    (B : @IndexToFixedTensorBridge C F nabla Hflow e D H T N)
    (hN : N.nonzeroIndex) :
    ∃ _ : CrystallineTensor.FixedTensor nabla e B.fixedPointContract.object, True :=
  B.nonzeroIndexSuppliesFixedTensor hN

end IndexFixedTensorBridge

end CrystallineIndex
end Folder
```
