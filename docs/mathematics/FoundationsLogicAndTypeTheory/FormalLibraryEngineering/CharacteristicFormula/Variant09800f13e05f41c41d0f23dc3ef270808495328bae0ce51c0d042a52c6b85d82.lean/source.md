# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacteristicFormula.Variant09800f13e05f41c41d0f23dc3ef270808495328bae0ce51c0d042a52c6b85d82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99bd692fd0765e7302b66284e52966787cada20c` · SHA-256 `14e2cdaedc4c638034a2ca759eef66d5b82c26b7382bf742d841b43369f2b3c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ChernCharacterAdditive.Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ChernCharacterAdditive.Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87","mathematical_subject":"Foundations.Unclassified","original_sha256":"96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineIndex/CharacteristicFormula.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.CharacteristicFormula

/-!
# Folder.Theorem.CrystallineIndex.CharacteristicFormula

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports characteristic-class boundary facts.
Ontology: proof.crystalline_index.characteristic_formula
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ChernCharacterAdditive.Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace CharacteristicFormula

theorem chern_character_additive
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (ch : Folder.CrystallineIndex.CrystallineChernCharacter H) :
    ch.additive :=
  Folder.CrystallineIndex.chern_character_additive ch

theorem chern_character_connection_compatible
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (ch : Folder.CrystallineIndex.CrystallineChernCharacter H) :
    ch.compatibleWithConnection :=
  Folder.CrystallineIndex.chern_character_connection_compatible ch

theorem ahat_genus_multiplicative
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (A : Folder.CrystallineIndex.CrystallineAhatGenus H) :
    A.multiplicative :=
  Folder.CrystallineIndex.ahat_genus_multiplicative A

theorem witten_genus_refines_ahat_if_supplied
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (W : Folder.CrystallineIndex.WittenGenusIndexBoundary H) :
    W.refinesAhat :=
  Folder.CrystallineIndex.witten_genus_refines_ahat_if_supplied W

theorem witten_genus_requires_string_orientation
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (W : Folder.CrystallineIndex.WittenGenusIndexBoundary H) :
    W.stringOrientationRequired :=
  Folder.CrystallineIndex.witten_genus_requires_string_orientation W

theorem characteristic_formula_compatible
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {I : Folder.CrystallineIndex.CrystallineIndexClass D H}
    (Phi : Folder.CrystallineIndex.CrystallineCharacteristicFormula H I) :
    Phi.formula.compatible :=
  Folder.CrystallineIndex.characteristic_formula_compatible Phi

theorem characteristic_formula_is_index_style
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {I : Folder.CrystallineIndex.CrystallineIndexClass D H}
    (Phi : Folder.CrystallineIndex.CrystallineCharacteristicFormula H I) :
    Phi.formulaIsAtiyahSingerStyle :=
  Folder.CrystallineIndex.characteristic_formula_is_index_style Phi

end CharacteristicFormula
end CrystallineIndex
end Theorem
end Folder
```
