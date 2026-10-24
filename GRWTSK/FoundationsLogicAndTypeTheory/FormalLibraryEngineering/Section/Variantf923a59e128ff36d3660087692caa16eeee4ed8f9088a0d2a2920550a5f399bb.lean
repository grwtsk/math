import Folder.Stack.Composite
import Folder.Stack.Site

/-!
# Folder.Stack.Section

Radiation role: stack-architecture
BinaryMatrix spine: This module names stack sections without silently proving downstream BinaryMatrix or arithmetic compatibility.
Ontology: stack.section
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Stack

structure StackSection (S : CompositeLayerStack) where
  sectionName : String
  carrierValue : S.cellCarrier.payload
  spectralValue : S.spectralField.payload
  arithmeticValue : S.arithmeticLabel.payload

end Stack
end Folder
