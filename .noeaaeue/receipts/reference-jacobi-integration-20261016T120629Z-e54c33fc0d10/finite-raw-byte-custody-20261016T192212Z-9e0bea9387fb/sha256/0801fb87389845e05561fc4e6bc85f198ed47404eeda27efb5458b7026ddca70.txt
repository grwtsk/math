import Lean
open Lean Elab Command
def GRWTSK.Logic.Verification.Controls.GeneratedPartialFakePairedSuffix.hostilePartial : Nat := 0
run_cmd liftCoreM do
  addDecl <| .mutualDefnDecl [{
    name := `GRWTSK.Logic.Verification.Controls.GeneratedPartialFakePairedSuffix.hostilePartial._unsafe_rec
    levelParams := []
    type := mkConst ``Nat
    value := mkNatLit 0
    hints := .opaque
    safety := .partial
  }]
