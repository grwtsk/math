import Folder.Archive.RuleEngine

/-!
# Folder.Theorem.Archive.RuleEngine

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes copy rule-engine materialization.
Ontology: proof.archive.rule_engine
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Archive

theorem copyRuleEngine_realize
    (D : Folder.Archive.MatrixAtomDictionary)
    (r : Folder.Archive.IndexSpinRef Folder.Archive.copyAction)
    (M : Folder.Carrier.BinaryMatrix)
    (hget :
      Folder.Archive.realizeIndexSpin?
        Folder.Archive.copyAction D r = some M) :
    Folder.Archive.realizeLayerRecipe?
        Folder.Archive.copyAction Folder.Archive.copyRuleEngine D
        { ref := r, rule := Folder.Archive.copyRuleEngine.copyId } =
      some M :=
  Folder.Archive.copyRuleEngine_realize D r M hget

end Archive
end Theorem
end Folder
