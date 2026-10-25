# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexTheoremContract.Variantdbe6a76461eadf94b4b9f3be6701ce157a9e12527a11a32075ceca4552929841

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `951cdc1805e8179e32662ef8e48b040ce42d4eb4` · SHA-256 `d6ec9cc0a105e84ac3a4e29ce3fe73ad239e6598c6d05472876a7154bae06179`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexFormulaCertified.Variantd98b28c459a2233f2c595a77a1a939833148186905736f81687b466fcc505aa2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d98b28c459a2233f2c595a77a1a939833148186905736f81687b466fcc505aa2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IndexFormulaCertified.Variantd98b28c459a2233f2c595a77a1a939833148186905736f81687b466fcc505aa2","mathematical_subject":"Foundations.Unclassified","original_sha256":"d98b28c459a2233f2c595a77a1a939833148186905736f81687b466fcc505aa2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineIndex/IndexTheoremContract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.IndexTheoremContract

/-!
# Folder.Theorem.CrystallineIndex.IndexTheoremContract

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline index theorem contract facts.
Ontology: proof.crystalline_index.index_theorem_contract
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexFormulaCertified.Variantd98b28c459a2233f2c595a77a1a939833148186905736f81687b466fcc505aa2

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace IndexTheoremContract

theorem index_formula_certified
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H) :
    T.indexFormulaCertified :=
  Folder.CrystallineIndex.IndexTheoremContract.index_formula_certified T

theorem index_theorem_characteristic_formula
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H) :
    T.characteristicFormula.formula.compatible :=
  Folder.CrystallineIndex.IndexTheoremContract.index_theorem_characteristic_formula T

end IndexTheoremContract
end CrystallineIndex
end Theorem
end Folder
```
