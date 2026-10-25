# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleEngine.Variante7ec86e7ce256934223b09f98a1a8953e52b9778e27f1034bad7c821d6c96d95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8be7e3de51a2df24dabbf0cb28b4e2cab038c791` · SHA-256 `e7ec86e7ce256934223b09f98a1a8953e52b9778e27f1034bad7c821d6c96d95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
