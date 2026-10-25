# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexTheoremContract.Variante0b48c65ccde38e556f39f718a5755bd1533379325bc9fe6cdf3194b56cc5048

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6460bdeff28dec32ceb05d637f60939a32911eb9` · SHA-256 `02ef1d22f5e039c8c87777c7a81a794ed025d952568b7292514983e861707d21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineIndexTheoremContract.Variant3c7b8ec204608c4fe5fc4ddf400178cca6c5f86a50e70b0c11981ec756670dc8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c7b8ec204608c4fe5fc4ddf400178cca6c5f86a50e70b0c11981ec756670dc8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CrystallineIndexTheoremContract.Variant3c7b8ec204608c4fe5fc4ddf400178cca6c5f86a50e70b0c11981ec756670dc8","mathematical_subject":"Foundations.Unclassified","original_sha256":"3c7b8ec204608c4fe5fc4ddf400178cca6c5f86a50e70b0c11981ec756670dc8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineIndex/IndexTheoremContract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.CharacteristicFormula
import Folder.CrystallineIndex.CrystallineTraceFormula
import Folder.CrystallineIndex.GhostZeroObstruction

/-!
# Folder.CrystallineIndex.IndexTheoremContract

Radiation role: research-boundary
BinaryMatrix spine: This module records an index theorem contract, not a BinaryMatrix theorem.
Ontology: crystalline_index.index_theorem_contract
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineIndexTheoremContract.Variant3c7b8ec204608c4fe5fc4ddf400178cca6c5f86a50e70b0c11981ec756670dc8

namespace Folder
namespace CrystallineIndex

/--
Atiyah-Singer-style crystalline index theorem contract.

This is a supplied package of index class, characteristic formula, optional
trace formula, and optional obstruction data. It does not prove the
Atiyah-Singer Index Theorem.
-/
structure CrystallineIndexTheoremContract
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    (H : CohomologyTheory) where
  indexClass : CrystallineIndexClass D H
  characteristicFormula :
    CrystallineCharacteristicFormula H indexClass
  traceFormula? :
    Option (CrystallineTraceFormula H)
  ghostObstruction? :
    Option (GhostZeroObstruction H)
  indexFormulaCertified : Prop
  indexFormulaCertified_certified : indexFormulaCertified
  sourceLabel : String

namespace IndexTheoremContract

theorem index_formula_certified
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    (T : @CrystallineIndexTheoremContract C F nabla D H) :
    T.indexFormulaCertified :=
  T.indexFormulaCertified_certified

theorem index_theorem_characteristic_formula
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    (T : @CrystallineIndexTheoremContract C F nabla D H) :
    T.characteristicFormula.formula.compatible :=
  T.characteristicFormula.formula.compatible_certified

end IndexTheoremContract

end CrystallineIndex
end Folder
```
