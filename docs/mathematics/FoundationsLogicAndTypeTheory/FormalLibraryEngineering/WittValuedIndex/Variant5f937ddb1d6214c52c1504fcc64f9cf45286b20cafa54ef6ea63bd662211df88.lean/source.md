# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittValuedIndex.Variant5f937ddb1d6214c52c1504fcc64f9cf45286b20cafa54ef6ea63bd662211df88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e592783931d7c05adc4b0c0a40480a8062514da5` · SHA-256 `0b7d53e5498d5249918edcb2f7a24b8799a73a017f12c10e34d92ef1a554e737`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittIndexRepresentsOperatorIndex.Variant9890546e1ea3c6af3e80856f9b3a9ebb4cede4909c7a594cabc0256f3cbea363","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9890546e1ea3c6af3e80856f9b3a9ebb4cede4909c7a594cabc0256f3cbea363","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WittIndexRepresentsOperatorIndex.Variant9890546e1ea3c6af3e80856f9b3a9ebb4cede4909c7a594cabc0256f3cbea363","mathematical_subject":"Foundations.Unclassified","original_sha256":"9890546e1ea3c6af3e80856f9b3a9ebb4cede4909c7a594cabc0256f3cbea363","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineIndex/WittValuedIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.WittValuedIndex

/-!
# Folder.Theorem.CrystallineIndex.WittValuedIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Witt-valued index contract facts.
Ontology: proof.crystalline_index.witt_valued_index
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittIndexRepresentsOperatorIndex.Variant9890546e1ea3c6af3e80856f9b3a9ebb4cede4909c7a594cabc0256f3cbea363

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace WittValuedIndex

theorem witt_index_represents_operator_index
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.AdelicInfinityTopos.SheafOfSpectra J}
    {D : Folder.CrystallineIndex.SheafSpectrumOperator F}
    {W : Folder.CrystallineIndex.WittComplex}
    (I : Folder.CrystallineIndex.WittValuedCrystallineIndex D W) :
    I.representsOperatorIndex :=
  Folder.CrystallineIndex.witt_index_represents_operator_index I

theorem witt_index_has_witt_element
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.AdelicInfinityTopos.SheafOfSpectra J}
    {D : Folder.CrystallineIndex.SheafSpectrumOperator F}
    {W : Folder.CrystallineIndex.WittComplex}
    (I : Folder.CrystallineIndex.WittValuedCrystallineIndex D W) :
    ∃ x : Folder.CrystallineIndex.WittElement W, x = I.index :=
  Folder.CrystallineIndex.witt_index_has_witt_element I

end WittValuedIndex
end CrystallineIndex
end Theorem
end Folder
```
