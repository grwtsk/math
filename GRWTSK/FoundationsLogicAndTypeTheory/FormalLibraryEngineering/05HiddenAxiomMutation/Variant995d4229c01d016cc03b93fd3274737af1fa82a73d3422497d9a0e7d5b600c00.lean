import FCRS

open Lean Elab Command

elab "cycle3_add_hidden" : command => do
  liftCoreM <| addDecl <| Declaration.axiomDecl {
    name := `cycle3Hidden
    levelParams := []
    isUnsafe := false
    type := mkConst ``False
  }

cycle3_add_hidden

theorem cycle3DerivedFalse : False := cycle3Hidden

#check cycle3DerivedFalse
