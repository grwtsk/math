import Lean
open Lean Elab Command
run_cmd liftCoreM do
  addDecl <| .mutualDefnDecl [{
    name := `GRWTSK.Logic.Verification.Controls.GeneratedPartialUnpairedPartial.hostilePartial._unsafe_rec
    levelParams := []
    type := mkConst ``Nat
    value := mkNatLit 0
    hints := .opaque
    safety := .partial
  }]
