# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacteristicFormula.Variant557a32af770f0771bf59a1aa8f472bcaf5a4e4c9bccf51d07e1395baa4811452

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04f1c5586e34cd20d8a2542d324918b7f344b51f` · SHA-256 `9ef3bc7c99335f63c7cb725b650c5a81af53b693f87ba035707801d56ad5758f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineCharacteristicFormula.Variantce5ee86e6f5fdd91abdc1bd23073790abeed0abd13859e0606b04444b0a13a77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce5ee86e6f5fdd91abdc1bd23073790abeed0abd13859e0606b04444b0a13a77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CrystallineCharacteristicFormula.Variantce5ee86e6f5fdd91abdc1bd23073790abeed0abd13859e0606b04444b0a13a77","mathematical_subject":"Foundations.Unclassified","original_sha256":"ce5ee86e6f5fdd91abdc1bd23073790abeed0abd13859e0606b04444b0a13a77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineIndex/CharacteristicFormula.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.IndexClass
import Folder.CrystallineIndex.CrystallineChernCharacter
import Folder.CrystallineIndex.CrystallineAhatGenus
import Folder.CrystallineIndex.WittenGenusBoundary

/-!
# Folder.CrystallineIndex.CharacteristicFormula

Radiation role: research-boundary
BinaryMatrix spine: This module records index characteristic formula contracts, not BinaryMatrix formulae.
Ontology: crystalline_index.characteristic_formula
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineCharacteristicFormula.Variantce5ee86e6f5fdd91abdc1bd23073790abeed0abd13859e0606b04444b0a13a77

namespace Folder
namespace CrystallineIndex

/--
Atiyah-Singer-style index formula slot.

This is not the Atiyah-Singer theorem. It is the field in which such an index
formula would be recorded.
-/
structure CrystallineCharacteristicFormula
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    (H : CohomologyTheory)
    (I : CrystallineIndexClass D H) where
  chern : CrystallineChernCharacter H
  ahat? : Option (CrystallineAhatGenus H)
  witten? : Option (WittenGenusIndexBoundary H)
  characteristicClass : CohomologyClass H
  formula :
    ClassEquality I.indexCohomologyClass characteristicClass
  formulaIsAtiyahSingerStyle : Prop
  formulaIsAtiyahSingerStyle_certified : formulaIsAtiyahSingerStyle

theorem characteristic_formula_compatible
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {I : CrystallineIndexClass D H}
    (Phi : CrystallineCharacteristicFormula H I) :
    Phi.formula.compatible :=
  Phi.formula.compatible_certified

theorem characteristic_formula_is_index_style
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {I : CrystallineIndexClass D H}
    (Phi : CrystallineCharacteristicFormula H I) :
    Phi.formulaIsAtiyahSingerStyle :=
  Phi.formulaIsAtiyahSingerStyle_certified

end CrystallineIndex
end Folder
```
