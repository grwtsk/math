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
