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
