# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CbvSimproc.Variant8a892efb268e958f85c84b9bf68d2b4481e6cd22dd6b543db80f189f4e87d77f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f05916165f45788e302cec374b7b1765c168d77b` · SHA-256 `8a892efb268e958f85c84b9bf68d2b4481e6cd22dd6b543db80f189f4e87d77f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Init.CbvSimproc
public import Lean.Meta.Tactic.Cbv.CbvSimproc
public import Lean.Elab.Command

public section

namespace Lean.Elab
open Lean Meta Sym

-- NB: This duplicates `elabSimprocPattern` from `Lean.Elab.Tactic.Simproc`
-- to avoid pulling in simp simproc elaboration as a dependency.
def elabCbvSimprocPattern (stx : Syntax) : MetaM Expr := do
  let go : TermElabM Expr := do
    let pattern ← Term.elabTerm stx none
    Term.synthesizeSyntheticMVars
    return pattern
  go.run'

-- **Note**: `abstractMVars` returns a lambda expression, but `mkPatternFromExpr` expects a
-- proof term (it calls `inferType` to get the forall type used as the pattern). We convert the
-- lambda telescope into a forall telescope, then create a metavariable of that forall type so
-- that `mkPatternFromExpr` can recover it via `inferType`. This is a workaround until the
-- pattern API supports lambda telescopes directly (see `Sym.mkSimprocPatternFromExpr'`).
public def mkSimprocPatternFromExpr (e : Expr) : MetaM Pattern := do
  let result ← abstractMVars e
  let forallExpr ← lambdaTelescope result.expr fun args body => mkForallFVars args body
  let term ← mkFreshExprMVar forallExpr
  mkPatternFromExpr term result.paramNames.toList


def elabCbvSimprocKeys (stx : Syntax) : MetaM (Array DiscrTree.Key) := do
  let pattern ← elabCbvSimprocPattern stx
  let symPattern ← mkSimprocPatternFromExpr pattern
  return symPattern.mkDiscrTreeKeys

def checkCbvSimprocType (declName : Name) : CoreM Unit := do
  let decl ← getConstInfo declName
  match decl.type with
  | .const ``Sym.Simp.Simproc _ => pure ()
  | _ => throwError "Unexpected type for cbv simproc pattern: Expected \
      `{.ofConstName ``Sym.Simp.Simproc}`, but `{declName}` has type{indentExpr decl.type}"

namespace Command
open Lean.Meta.Tactic.Cbv

@[builtin_command_elab Lean.Parser.cbvSimprocPattern] def elabCbvSimprocPattern : CommandElab := fun stx => do
  let `(cbv_simproc_pattern% $pattern => $declName) := stx | throwUnsupportedSyntax
  liftTermElabM do
    let declName ← realizeGlobalConstNoOverload declName
    checkCbvSimprocType declName
    let keys ← elabCbvSimprocKeys pattern
    registerCbvSimproc declName keys

@[builtin_command_elab Lean.Parser.cbvSimprocPatternBuiltin] def elabCbvSimprocPatternBuiltin : CommandElab := fun stx => do
  let `(builtin_cbv_simproc_pattern% $pattern => $declName) := stx | throwUnsupportedSyntax
  liftTermElabM do
    let declName ← realizeGlobalConstNoOverload declName
    checkCbvSimprocType declName
    let keys ← elabCbvSimprocKeys pattern
    let val := mkAppN (mkConst ``registerBuiltinCbvSimproc)
      #[toExpr declName, toExpr keys, mkConst declName]
    let initDeclName ← mkFreshUserName (declName ++ `declare)
    declareBuiltin initDeclName val

end Command

end Lean.Elab
```
