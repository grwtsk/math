import Folder.Presentation.Rule

/-!
# Folder.Presentation.RuleEngine

Radiation role: presentation-rule-engine
BinaryMatrix spine: This module resolves named presentation rules over materialized carriers.
Ontology: presentation.rule_engine
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

structure RuleEngine where
  RuleId : Type
  decEqRuleId : DecidableEq RuleId
  Input : Type
  Output : Type
  resolve : RuleId → Option (PresentationRule Input Output)

attribute [instance] RuleEngine.decEqRuleId

structure RuleApplication (E : RuleEngine) where
  rule : E.RuleId
  input : E.Input

def RuleApplication.run?
    (A : RuleApplication E) :
    Option E.Output :=
  match E.resolve A.rule with
  | some R => some (R.apply A.input)
  | none => none

theorem run?_resolved
    (E : RuleEngine)
    (A : RuleApplication E)
    (R : PresentationRule E.Input E.Output)
    (h : E.resolve A.rule = some R) :
    A.run? = some (R.apply A.input) := by
  simp [RuleApplication.run?, h]

end Presentation
end Folder
