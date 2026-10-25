import Folder.Basic

/-!
# Folder.Interpretation.Interpretation

Radiation role: documentation-support
BinaryMatrix spine: This module provides notation, interpretation, or documentation-facing support around the BinaryMatrix spine.
Ontology: interpretation.interpretation
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


set_option linter.dupNamespace false

namespace Folder
namespace Interpretation

structure Interpretation (α β : Type _) where
  map : α → β

end Interpretation
end Folder
