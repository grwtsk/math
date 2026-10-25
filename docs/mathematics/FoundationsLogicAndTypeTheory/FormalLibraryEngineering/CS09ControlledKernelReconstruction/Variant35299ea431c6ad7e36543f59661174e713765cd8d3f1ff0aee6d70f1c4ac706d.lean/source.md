# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CS09ControlledKernelReconstruction.Variant35299ea431c6ad7e36543f59661174e713765cd8d3f1ff0aee6d70f1c4ac706d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0e793e478e502c1a6c6e9e0e91e5dd029f0bcc4` · SHA-256 `d2e57ac29970b816929c1935a8005faf361a264a096aea4b92c3b06f5219d1e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
