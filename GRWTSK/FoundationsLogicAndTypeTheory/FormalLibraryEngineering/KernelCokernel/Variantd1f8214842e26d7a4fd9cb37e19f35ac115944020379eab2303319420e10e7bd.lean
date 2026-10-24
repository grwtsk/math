-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KernelFinite.Variantd76349ead2d71237493311ba8aa19a937688926eac1d4ac73a5dab6a0b381345","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d76349ead2d71237493311ba8aa19a937688926eac1d4ac73a5dab6a0b381345","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.KernelFinite.Variantd76349ead2d71237493311ba8aa19a937688926eac1d4ac73a5dab6a0b381345","mathematical_subject":"Foundations.Unclassified","original_sha256":"d76349ead2d71237493311ba8aa19a937688926eac1d4ac73a5dab6a0b381345","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineIndex/KernelCokernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.KernelCokernel

/-!
# Folder.Theorem.CrystallineIndex.KernelCokernel

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports kernel/cokernel contract exposure facts.
Ontology: proof.crystalline_index.kernel_cokernel
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KernelFinite.Variantd76349ead2d71237493311ba8aa19a937688926eac1d4ac73a5dab6a0b381345

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace KernelCokernel

theorem kernel_finite
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    (K : Folder.CrystallineIndex.KernelCokernelData D) :
    K.kernelFinite :=
  Folder.CrystallineIndex.kernel_finite K

theorem cokernel_finite
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    (K : Folder.CrystallineIndex.KernelCokernelData D) :
    K.cokernelFinite :=
  Folder.CrystallineIndex.cokernel_finite K

end KernelCokernel
end CrystallineIndex
end Theorem
end Folder
