# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KernelCokernel.Variantc1b7245ac6d6dd5227fa471003f68effd7ee7f73c7e98003b0a81014aa45cde6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69cedba2f5506a8cbc13a2aab40abfc023ef9964` · SHA-256 `cb9254ac4604976b04003924ca924fac26b7a07159280dcf570bf147f0bbc98a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KernelCokernelData.Variant32453d0f128d36e195017d9a5283cd7eac3d47f44e05aba25f4e8df516595667","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32453d0f128d36e195017d9a5283cd7eac3d47f44e05aba25f4e8df516595667","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.KernelCokernelData.Variant32453d0f128d36e195017d9a5283cd7eac3d47f44e05aba25f4e8df516595667","mathematical_subject":"Foundations.Unclassified","original_sha256":"32453d0f128d36e195017d9a5283cd7eac3d47f44e05aba25f4e8df516595667","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineIndex/KernelCokernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.CrystallineDirac

/-!
# Folder.CrystallineIndex.KernelCokernel

Radiation role: research-boundary
BinaryMatrix spine: This module records abstract kernel/cokernel data, not finite BinaryMatrix rank computation.
Ontology: crystalline_index.kernel_cokernel
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KernelCokernelData.Variant32453d0f128d36e195017d9a5283cd7eac3d47f44e05aba25f4e8df516595667

namespace Folder
namespace CrystallineIndex

structure KernelCokernelData
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    (D : CrystallineDiracOperator nabla) where
  Kernel : Type _
  Cokernel : Type _
  kernelFinite : Prop
  kernelFinite_certified : kernelFinite
  cokernelFinite : Prop
  cokernelFinite_certified : cokernelFinite
  kernelDimension? : Option Int
  cokernelDimension? : Option Int

theorem kernel_finite
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    (K : KernelCokernelData D) :
    K.kernelFinite :=
  K.kernelFinite_certified

theorem cokernel_finite
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    (K : KernelCokernelData D) :
    K.cokernelFinite :=
  K.cokernelFinite_certified

end CrystallineIndex
end Folder
```
