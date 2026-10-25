# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonvanishingIndex.Variant721488992d7af5c4c9a4122c6b1d34b48f5aff1d16b1126d8976c2353d188e94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4f7a771c2893f1a510155105f8aaa0f66a39fd3` · SHA-256 `fe021537bc3e4d89439bdd788913b567173028d5e93dc32a2bde20a493f66018`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonvanishingIndexNonzero.Variantcfd7b7332481b3460f8c1f915732a4e69f232f45ba584880462cb277566b55d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cfd7b7332481b3460f8c1f915732a4e69f232f45ba584880462cb277566b55d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NonvanishingIndexNonzero.Variantcfd7b7332481b3460f8c1f915732a4e69f232f45ba584880462cb277566b55d5","mathematical_subject":"Foundations.Unclassified","original_sha256":"cfd7b7332481b3460f8c1f915732a4e69f232f45ba584880462cb277566b55d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineIndex/NonvanishingIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.NonvanishingIndex

/-!
# Folder.Theorem.CrystallineIndex.NonvanishingIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports nonvanishing-index contract facts.
Ontology: proof.crystalline_index.nonvanishing_index
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonvanishingIndexNonzero.Variantcfd7b7332481b3460f8c1f915732a4e69f232f45ba584880462cb277566b55d5

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace NonvanishingIndex

theorem nonvanishing_index_nonzero
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H}
    (N : @Folder.CrystallineIndex.NonvanishingIndex C F nabla D H T) :
    N.nonzeroIndex :=
  Folder.CrystallineIndex.NonvanishingIndex.nonvanishing_index_nonzero N

theorem nonvanishing_index_forces_kernel_if_supplied
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H}
    (N : @Folder.CrystallineIndex.NonvanishingIndex C F nabla D H T) :
    N.nonzeroForcesKernel? :=
  Folder.CrystallineIndex.NonvanishingIndex.nonvanishing_index_forces_kernel_if_supplied N

theorem nonvanishing_witt_index_nonzero
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.AdelicInfinityTopos.SheafOfSpectra J}
    {D : Folder.CrystallineIndex.SheafSpectrumOperator F}
    {W : Folder.CrystallineIndex.WittComplex}
    {I : Folder.CrystallineIndex.WittValuedCrystallineIndex D W}
    (N : Folder.CrystallineIndex.NonvanishingWittIndex I) :
    I.Nonzero :=
  Folder.CrystallineIndex.nonvanishing_witt_index_nonzero N

end NonvanishingIndex
end CrystallineIndex
end Theorem
end Folder
```
