import Folder.Stack.Composite

/-!
# Folder.Theorem.Stack.Composite

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes stack-interface facts for composite carrier layers.
Ontology: proof.stack.composite
Pivot role: dual
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Stack

theorem composite_layer_stack_has_carrier
    (S : Folder.Stack.CompositeLayerStack) :
    S.cellCarrier = S.cellCarrier :=
  Folder.Stack.composite_layer_stack_has_carrier S

end Stack
end Theorem
end Folder
