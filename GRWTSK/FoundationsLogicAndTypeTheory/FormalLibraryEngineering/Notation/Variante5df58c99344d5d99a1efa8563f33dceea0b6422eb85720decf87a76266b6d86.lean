import Folder.Proposition.Proposition

/-!
# Folder.Proposition.Notation

Radiation role: documentation-support
BinaryMatrix spine: This module provides notation, interpretation, or documentation-facing support around the BinaryMatrix spine.
Ontology: proposition.notation
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Proposition

def holds (P : Proposition) : Prop :=
  P.statement

end Proposition
end Folder
