-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs09ControlledKernelReconstruction.Variantf176e46c1e35b1a69a1b3b7440ae7e6dbd1174f8dfb1e7d5914023bab8dd6af1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f176e46c1e35b1a69a1b3b7440ae7e6dbd1174f8dfb1e7d5914023bab8dd6af1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cs09ControlledKernelReconstruction.Variantf176e46c1e35b1a69a1b3b7440ae7e6dbd1174f8dfb1e7d5914023bab8dd6af1","mathematical_subject":"Foundations.Unclassified","original_sha256":"f176e46c1e35b1a69a1b3b7440ae7e6dbd1174f8dfb1e7d5914023bab8dd6af1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Theorems/CS09_ControlledKernelReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cs09ControlledKernelReconstruction.Variantf176e46c1e35b1a69a1b3b7440ae7e6dbd1174f8dfb1e7d5914023bab8dd6af1

namespace FCRS.ControlledSpherical.Theorems

open FCRS.ControlledPlane

/-- CS-09 derives image reconstruction, paired injectivity, and diagonal kernel. -/
theorem cs09_controlledKernelReconstruction
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (D : LosslessDecoder M.observation) :
    CS09Claim D := by
  exact {
    imageLeftInverse := imageDecoder_leftInverse D
    pairedInjective := controlledProduct_injective D
    kernelDiagonal := controlledProduct_kernel_diagonal D
  }

end FCRS.ControlledSpherical.Theorems
