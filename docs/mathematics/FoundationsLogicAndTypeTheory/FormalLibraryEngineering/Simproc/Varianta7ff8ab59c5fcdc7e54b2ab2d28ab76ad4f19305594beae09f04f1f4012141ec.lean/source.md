# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simproc.Varianta7ff8ab59c5fcdc7e54b2ab2d28ab76ad4f19305594beae09f04f1f4012141ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ad09720f10c92365ea32e27d69bf38eb1f3fc85` · SHA-256 `a7ff8ab59c5fcdc7e54b2ab2d28ab76ad4f19305594beae09f04f1f4012141ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Simproc
public import Lean.Meta.Tactic.Simp.Simproc
public import Lean.Elab.Command

public section

namespace Lean.Elab

open Lean Meta Simp

def elabSimprocPattern (stx : Syntax) : MetaM Expr := do
  let go : TermElabM Expr := do
    let pattern ← Term.elabTerm stx none
    Term.synthesizeSyntheticMVars
    return pattern
  go.run'

def elabSimprocKeys (stx : Syntax) : MetaM (Array Meta.SimpTheoremKey) := do
  let pattern ← elabSimprocPattern stx
  withSimpGlobalConfig <| DiscrTree.mkPath pattern

def checkSimprocType (declName : Name) : CoreM Bool := do
  let decl ← getConstInfo declName
  match decl.type with
  | .const ``Simproc _ => pure false
  | .const ``DSimproc _ => pure true
  | _ => throwError "Unexpected type for simproc pattern: Expected `{.ofConstName ``Simproc}` or \
          `{.ofConstName ``DSimproc}`, but `{declName}` has type{indentExpr decl.type}"

namespace Command

@[builtin_command_elab Lean.Parser.simprocPattern] def elabSimprocPattern : CommandElab := fun stx => do
  let `(simproc_pattern% $pattern => $declName) := stx | throwUnsupportedSyntax
  liftTermElabM do
    let declName ← realizeGlobalConstNoOverload declName
    discard <| checkSimprocType declName
    let keys ← elabSimprocKeys pattern
    registerSimproc declName keys

@[builtin_command_elab Lean.Parser.simprocPatternBuiltin] def elabSimprocPatternBuiltin : CommandElab := fun stx => do
  let `(builtin_simproc_pattern% $pattern => $declName) := stx | throwUnsupportedSyntax
  liftTermElabM do
    let declName ← realizeGlobalConstNoOverload declName
    let dsimp ← checkSimprocType declName
    let keys ← elabSimprocKeys pattern
    let registerProcName := if dsimp then ``registerBuiltinDSimproc else ``registerBuiltinSimproc
    let val := mkAppN (mkConst registerProcName) #[toExpr declName, toExpr keys, mkConst declName]
    let initDeclName ← mkFreshUserName (declName ++ `declare)
    declareBuiltin initDeclName val

end Command

end Lean.Elab
```
