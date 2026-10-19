import Folder.Basic

/-!
# Folder.Proposition.Proposition

Radiation role: documentation-support
BinaryMatrix spine: This module provides notation, interpretation, or documentation-facing support around the BinaryMatrix spine.
Ontology: proposition.proposition
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


set_option linter.dupNamespace false

namespace Folder
namespace Proposition

structure Proposition where
  statement : Prop
  label : String

end Proposition
end Folder
