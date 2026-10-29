import Formal.Ast.Surface.finite_bit_boundary.authority_pipeline_is_input_forward_9723b2e58406
import Formal.Ast.Checked.finite_bit_boundary.checked_kernel_module_c4a89b6533c9
import Formal.Ast.Checked.finite_bit_boundary.decision_compactifies_below_center_b5c57ccddd06
import Formal.Ast.Checked.projection_operators.localoverwriteflatten_replace_a3f6230869bc

/-!
Checked source band.

This is the first-party checked band root. It is the only source band allowed
to flow into `Formal.Kernel` as theorem-bearing local authority.
-/

namespace Formal.Checked

def modules : List String :=
  [ "Formal.Checked.Geometry"
  , "Formal.Checked.BoundaryMatriciant"
  , "Formal.Checked.Projection.Balance"
  , "Formal.Checked.Projection.Flatten"
  ]

theorem modules_count : modules.length = 4 := by
  rfl

end Formal.Checked
