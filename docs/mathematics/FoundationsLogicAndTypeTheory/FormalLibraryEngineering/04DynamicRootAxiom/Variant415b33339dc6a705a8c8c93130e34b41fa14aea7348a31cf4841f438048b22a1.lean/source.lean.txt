import FCRS

namespace FCRS.TheoremTransfer.NegativeChecks

open Lean Parser Elab Command

/-!
Both declarations are parsed from strings, so the source lexer sees neither an
`axiom` token nor any of its currently prohibited environment-mutation tokens.
Root-qualified names also fall outside the exported-environment scan's `FCRS`
prefix filter.
-/
run_cmd do
  let parsed := Parser.runParserCategory (← getEnv) `command
    "axiom _root_.cycle4HiddenRoot : False"
  match parsed with
  | .ok commandSyntax => elabCommand commandSyntax
  | .error message => throwError message

run_cmd do
  let parsed := Parser.runParserCategory (← getEnv) `command
    "theorem _root_.cycle4DerivedFalse : False := cycle4HiddenRoot"
  match parsed with
  | .ok commandSyntax => elabCommand commandSyntax
  | .error message => throwError message

#check _root_.cycle4DerivedFalse
#print axioms _root_.cycle4DerivedFalse

end FCRS.TheoremTransfer.NegativeChecks
