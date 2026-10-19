import Folder.Core.CompositeStack

/-!
# Folder.Stack.Composite

Radiation role: stack-architecture
BinaryMatrix spine: This module wraps typed composite stack layers whose carrier component may be a BinaryMatrix-derived object.
Ontology: stack.composite
Pivot role: dual
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Stack

structure StackLayer where
  name : String
  payload : Type

structure CompositeLayerStack where
  cellCarrier : StackLayer
  spectralField : StackLayer
  heatResidual : StackLayer
  shellFiber : StackLayer
  phaseConnection : StackLayer
  torsionWitness : StackLayer
  arithmeticLabel : StackLayer

theorem composite_layer_stack_has_carrier
    (S : CompositeLayerStack) :
    S.cellCarrier = S.cellCarrier :=
  rfl

end Stack
end Folder
