# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralDiracBridge.Variant62f1857a96e9f7d5d6db5a6ad44d382d080cd4abc2f49bff8214b07f3b9adcb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `368a32d3146f4a179ae144ddcd45fe71d22b5976` · SHA-256 `9cfcf4c8cbb2c14aafcba352bb4f7fe4e59dfae3d766e4dc44e326fdcdb4841f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.CrystallineDiracHasSpectralObject.Variant63adc1538f2f06a55963652b176a36c73b52b191b0ab7e478def99e23a1b2587","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63adc1538f2f06a55963652b176a36c73b52b191b0ab7e478def99e23a1b2587","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CrystallineDiracHasSpectralObject.Variant63adc1538f2f06a55963652b176a36c73b52b191b0ab7e478def99e23a1b2587","mathematical_subject":"Foundations.Unclassified","original_sha256":"63adc1538f2f06a55963652b176a36c73b52b191b0ab7e478def99e23a1b2587","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineIndex/SpectralDiracBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.SpectralDiracBridge

/-!
# Folder.Theorem.CrystallineIndex.SpectralDiracBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline Dirac spectral bridge facts, not BinaryMatrix data.
Ontology: crystalline_index.crystalline_dirac_to_spectral
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.CrystallineDiracHasSpectralObject.Variant63adc1538f2f06a55963652b176a36c73b52b191b0ab7e478def99e23a1b2587

namespace Folder
namespace Theorem
namespace CrystallineIndex

theorem crystalline_dirac_has_spectral_object
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    (B : Folder.CrystallineIndex.CrystallineDiracToSpectralObject D) :
    B.spectrumRepresentsDirac :=
  Folder.CrystallineIndex.crystalline_dirac_has_spectral_object B

end CrystallineIndex
end Theorem
end Folder
```
